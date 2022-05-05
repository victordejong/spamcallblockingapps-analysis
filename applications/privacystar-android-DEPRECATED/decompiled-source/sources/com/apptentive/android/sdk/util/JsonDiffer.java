package com.apptentive.android.sdk.util;

import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/JsonDiffer.class */
public class JsonDiffer {
    private JsonDiffer() {
    }

    public static boolean areObjectsEqual(Object obj, Object obj2) {
        boolean z = true;
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
            JSONObject jSONObject = (JSONObject) obj;
            JSONObject jSONObject2 = (JSONObject) obj2;
            if (jSONObject.length() != jSONObject2.length()) {
                return false;
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    String next = keys.next();
                    if (!areObjectsEqual(jSONObject.get(next), jSONObject2.get(next))) {
                        return false;
                    }
                } catch (JSONException e) {
                    ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e, "Error comparing JSONObjects", new Object[0]);
                    return false;
                }
            }
            return true;
        } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
            JSONArray jSONArray = (JSONArray) obj;
            JSONArray jSONArray2 = (JSONArray) obj2;
            if (jSONArray.length() != jSONArray2.length()) {
                return false;
            }
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    if (!areObjectsEqual(jSONArray.get(i), jSONArray2.get(i))) {
                        return false;
                    }
                } catch (JSONException e2) {
                    ApptentiveLog.m408e(e2, "", new Object[0]);
                    return false;
                }
            }
            return true;
        } else if (!(obj instanceof Number) || !(obj2 instanceof Number)) {
            return obj.equals(obj2);
        } else {
            double doubleValue = ((Number) obj).doubleValue();
            double doubleValue2 = ((Number) obj2).doubleValue();
            if (Math.abs(doubleValue - doubleValue2) > Math.abs(1.0E-6d * doubleValue2)) {
                z = false;
            }
            return z;
        }
    }

    public static JSONObject getDiff(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObject3 = new JSONObject();
        Set<String> keys = getKeys(jSONObject);
        Set<String> keys2 = getKeys(jSONObject2);
        Iterator<String> it = keys.iterator();
        while (it.hasNext()) {
            String next = it.next();
            keys2.remove(next);
            try {
                try {
                    Object opt = jSONObject.opt(next);
                    Object opt2 = jSONObject2.opt(next);
                    if (isEmpty(opt)) {
                        if (!isEmpty(opt2)) {
                            jSONObject3.put(next, opt2);
                        }
                    } else if (isEmpty(opt2)) {
                        jSONObject3.put(next, JSONObject.NULL);
                    } else if (!(opt instanceof JSONObject) || !(opt2 instanceof JSONObject)) {
                        if ((opt instanceof JSONArray) && (opt2 instanceof JSONArray)) {
                            jSONObject3.put(next, opt2);
                        } else if (!opt.equals(opt2)) {
                            jSONObject3.put(next, opt2);
                        } else {
                            opt.equals(opt2);
                        }
                    } else if (!areObjectsEqual(opt, opt2)) {
                        jSONObject3.put(next, opt2);
                    }
                } catch (JSONException e) {
                    ApptentiveLog.m398w(ApptentiveLogTag.UTIL, e, "Error diffing object with key %s", next);
                }
            } finally {
                it.remove();
            }
        }
        for (String str : keys2) {
            try {
                jSONObject3.put(str, jSONObject2.get(str));
            } catch (JSONException e2) {
            }
        }
        JSONObject jSONObject4 = jSONObject3;
        if (jSONObject3.length() == 0) {
            jSONObject4 = null;
        }
        ApptentiveLog.m403v(ApptentiveLogTag.UTIL, "Generated diff: %s", jSONObject4);
        return jSONObject4;
    }

    private static Set<String> getKeys(JSONObject jSONObject) {
        HashSet hashSet = new HashSet();
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
        }
        return hashSet;
    }

    private static boolean isEmpty(Object obj) {
        return obj == null || obj.equals("");
    }
}
