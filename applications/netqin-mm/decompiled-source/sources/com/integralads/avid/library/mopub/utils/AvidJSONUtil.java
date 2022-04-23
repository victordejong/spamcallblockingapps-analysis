package com.integralads.avid.library.mopub.utils;

import android.content.Context;
import android.content.res.Resources;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/utils/AvidJSONUtil.class */
public class AvidJSONUtil {
    public static final String KEY_CHILD_VIEWS = "childViews";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_ID = "id";
    public static final String KEY_IS_FRIENDLY_OBSTRUCTION_FOR = "isFriendlyObstructionFor";
    public static final String KEY_ROOT_VIEW = "rootView";
    public static final String KEY_TIMESTAMP = "timestamp";
    public static final String KEY_WIDTH = "width";
    public static final String KEY_X = "x";
    public static final String KEY_Y = "y";

    /* renamed from: a */
    public static String[] f33096a = {"x", "y", "width", "height"};

    /* renamed from: b */
    public static float f33097b = Resources.getSystem().getDisplayMetrics().density;

    /* renamed from: a */
    public static float m5374a(int i) {
        return i / f33097b;
    }

    /* renamed from: a */
    public static boolean m5373a(JSONArray jSONArray, JSONArray jSONArray2) {
        boolean z = true;
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray == null && jSONArray2 != null) {
            return false;
        }
        if (jSONArray != null && jSONArray2 == null) {
            return false;
        }
        if (jSONArray.length() != jSONArray2.length()) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m5372a(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray(KEY_CHILD_VIEWS);
        JSONArray optJSONArray2 = jSONObject2.optJSONArray(KEY_CHILD_VIEWS);
        if (!m5373a(optJSONArray, optJSONArray2)) {
            return false;
        }
        if (optJSONArray == null) {
            return true;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!equalStates(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    public static void addAvidId(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("id", str);
        } catch (JSONException e) {
            AvidLogs.m5366e("Error with setting avid id", e);
        }
    }

    public static void addChildState(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray(KEY_CHILD_VIEWS);
            JSONArray jSONArray = optJSONArray;
            if (optJSONArray == null) {
                jSONArray = new JSONArray();
                jSONObject.put(KEY_CHILD_VIEWS, jSONArray);
            }
            jSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void addFriendlyObstruction(JSONObject jSONObject, List<String> list) {
        JSONArray jSONArray = new JSONArray();
        for (String str : list) {
            jSONArray.put(str);
        }
        try {
            jSONObject.put(KEY_IS_FRIENDLY_OBSTRUCTION_FOR, jSONArray);
        } catch (JSONException e) {
            AvidLogs.m5366e("Error with setting friendly obstruction", e);
        }
    }

    /* renamed from: b */
    public static boolean m5371b(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray(KEY_IS_FRIENDLY_OBSTRUCTION_FOR);
        JSONArray optJSONArray2 = jSONObject2.optJSONArray(KEY_IS_FRIENDLY_OBSTRUCTION_FOR);
        if (!m5373a(optJSONArray, optJSONArray2)) {
            return false;
        }
        if (optJSONArray == null) {
            return true;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m5370c(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f33096a) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    public static boolean m5369d(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("id", "").equals(jSONObject2.optString("id", ""));
    }

    public static boolean equalStates(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            return false;
        }
        boolean z = false;
        if (m5370c(jSONObject, jSONObject2)) {
            z = false;
            if (m5369d(jSONObject, jSONObject2)) {
                z = false;
                if (m5371b(jSONObject, jSONObject2)) {
                    z = false;
                    if (m5372a(jSONObject, jSONObject2)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static void fixStateFrame(JSONObject jSONObject) {
        JSONArray optJSONArray = jSONObject.optJSONArray(KEY_CHILD_VIEWS);
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i3);
                i = i;
                i2 = i2;
                if (optJSONObject != null) {
                    int optInt = optJSONObject.optInt("x");
                    int optInt2 = optJSONObject.optInt("y");
                    int optInt3 = optJSONObject.optInt("width");
                    int optInt4 = optJSONObject.optInt("height");
                    i = Math.max(i, optInt + optInt3);
                    i2 = Math.max(i2, optInt2 + optInt4);
                }
            }
            try {
                jSONObject.put("width", i);
                jSONObject.put("height", i2);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    public static JSONObject getEmptyTreeJSONObject() {
        return getTreeJSONObject(getViewState(0, 0, 0, 0), AvidTimestamp.getCurrentTime());
    }

    public static JSONObject getTreeJSONObject(JSONObject jSONObject, double d) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put(KEY_TIMESTAMP, d);
            jSONObject2.put(KEY_ROOT_VIEW, jSONObject);
        } catch (JSONException e) {
            AvidLogs.m5366e("Error with creating treeJSONObject", e);
        }
        return jSONObject2;
    }

    public static JSONObject getViewState(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m5374a(i));
            jSONObject.put("y", m5374a(i2));
            jSONObject.put("width", m5374a(i3));
            jSONObject.put("height", m5374a(i4));
        } catch (JSONException e) {
            AvidLogs.m5366e("Error with creating viewStateObject", e);
        }
        return jSONObject;
    }

    public static void init(Context context) {
        if (context != null) {
            f33097b = context.getResources().getDisplayMetrics().density;
        }
    }
}
