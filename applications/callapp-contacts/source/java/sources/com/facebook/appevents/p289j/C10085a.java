package com.facebook.appevents.p289j;

import android.util.Patterns;
import com.callapp.contacts.model.Constants;
import com.facebook.internal.p299b.p301b.C10249a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.C20753d;
import org.apache.commons.lang3.StringUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.j.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/a.class */
public final class C10085a {

    /* renamed from: a */
    private static Map<String, String> f33412a;

    /* renamed from: b */
    private static Map<String, String> f33413b;

    /* renamed from: c */
    private static Map<String, String> f33414c;

    /* renamed from: d */
    private static JSONObject f33415d;

    /* renamed from: e */
    private static boolean f33416e = false;

    C10085a() {
    }

    /* renamed from: a */
    public static String m23450a(String str, String str2, String str3) {
        if (C10249a.m23108a(C10085a.class)) {
            return null;
        }
        try {
            return (str3 + " | " + str2 + ", " + str).toLowerCase();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23452a(File file) {
        if (C10249a.m23108a(C10085a.class)) {
            return;
        }
        try {
            try {
                f33415d = new JSONObject();
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                f33415d = new JSONObject(new String(bArr, "UTF-8"));
                HashMap hashMap = new HashMap();
                f33412a = hashMap;
                hashMap.put("ENGLISH", "1");
                f33412a.put("GERMAN", "2");
                f33412a.put("SPANISH", "3");
                f33412a.put("JAPANESE", "4");
                HashMap hashMap2 = new HashMap();
                f33413b = hashMap2;
                hashMap2.put("VIEW_CONTENT", "0");
                f33413b.put("SEARCH", "1");
                f33413b.put("ADD_TO_CART", "2");
                f33413b.put("ADD_TO_WISHLIST", "3");
                f33413b.put("INITIATE_CHECKOUT", "4");
                f33413b.put("ADD_PAYMENT_INFO", "5");
                f33413b.put("PURCHASE", "6");
                f33413b.put("LEAD", "7");
                f33413b.put("COMPLETE_REGISTRATION", "8");
                HashMap hashMap3 = new HashMap();
                f33414c = hashMap3;
                hashMap3.put("BUTTON_TEXT", "1");
                f33414c.put("PAGE_TITLE", "2");
                f33414c.put("RESOLVED_DOCUMENT_LINK", "3");
                f33414c.put("BUTTON_ID", "4");
                f33416e = true;
            } catch (Exception e) {
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0086 -> B:21:0x0077). Please submit an issue!!! */
    /* renamed from: a */
    private static void m23446a(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        if (C10249a.m23108a(C10085a.class)) {
            return;
        }
        try {
            String lowerCase = jSONObject.optString("text", "").toLowerCase();
            String lowerCase2 = jSONObject.optString("hint", "").toLowerCase();
            if (!lowerCase.isEmpty()) {
                sb.append(lowerCase);
                sb.append(StringUtils.SPACE);
            }
            if (!lowerCase2.isEmpty()) {
                sb2.append(lowerCase2);
                sb2.append(StringUtils.SPACE);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null) {
                return;
            }
            int i = 0;
            while (true) {
                if (i >= optJSONArray.length()) {
                    return;
                }
                try {
                    m23446a(optJSONArray.getJSONObject(i), sb, sb2);
                } catch (JSONException e) {
                }
                i++;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
        }
    }

    /* renamed from: a */
    private static void m23443a(float[] fArr, float[] fArr2) {
        if (C10249a.m23108a(C10085a.class)) {
            return;
        }
        for (int i = 0; i < 30; i++) {
            fArr[i] = fArr[i] + fArr2[i];
        }
    }

    /* renamed from: a */
    public static boolean m23453a() {
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            return f33416e;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23451a(String str, String str2) {
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23449a(String str, String str2, String str3, String str4) {
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            return m23451a(f33415d.optJSONObject("rulesForLanguage").optJSONObject(f33412a.get(str)).optJSONObject("rulesForEvent").optJSONObject(f33413b.get(str2)).optJSONObject("positiveRules").optString(f33414c.get(str3)), str4);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23445a(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z;
        boolean z2;
        boolean z3;
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return true;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int i = 0;
            while (true) {
                if (i >= optJSONArray.length()) {
                    z = false;
                    z2 = false;
                    break;
                } else if (optJSONArray.getJSONObject(i).optBoolean("is_interacted")) {
                    z = true;
                    z2 = true;
                    break;
                } else {
                    i++;
                }
            }
            JSONArray jSONArray2 = new JSONArray();
            if (z) {
                int i2 = 0;
                while (true) {
                    z3 = z2;
                    if (i2 >= optJSONArray.length()) {
                        break;
                    }
                    jSONArray.put(optJSONArray.getJSONObject(i2));
                    i2++;
                }
            } else {
                for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                    if (m23445a(jSONObject2, jSONArray)) {
                        jSONArray2.put(jSONObject2);
                        z2 = true;
                    }
                }
                jSONObject.put("childviews", jSONArray2);
                z3 = z2;
            }
            return z3;
        } catch (JSONException e) {
            return false;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23442a(String[] strArr, String[] strArr2) {
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (str2.contains(str)) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: a */
    private static float[] m23448a(JSONObject jSONObject) {
        if (C10249a.m23108a(C10085a.class)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            String lowerCase = jSONObject.optString("text").toLowerCase();
            String lowerCase2 = jSONObject.optString("hint").toLowerCase();
            String lowerCase3 = jSONObject.optString("classname").toLowerCase();
            int optInt = jSONObject.optInt("inputtype", -1);
            String[] strArr = new String[2];
            strArr[0] = lowerCase;
            strArr[1] = lowerCase2;
            if (m23442a(new String[]{C20753d.f67243b, "amount", "price", "total"}, strArr)) {
                fArr[0] = (float) (fArr[0] + 1.0d);
            }
            if (m23442a(new String[]{"password", "pwd"}, strArr)) {
                fArr[1] = (float) (fArr[1] + 1.0d);
            }
            if (m23442a(new String[]{MRAIDNativeFeature.TEL, Constants.EXTRA_PHONE_NUMBER}, strArr)) {
                fArr[2] = (float) (fArr[2] + 1.0d);
            }
            if (m23442a(new String[]{"search"}, strArr)) {
                fArr[4] = (float) (fArr[4] + 1.0d);
            }
            if (optInt >= 0) {
                fArr[5] = (float) (fArr[5] + 1.0d);
            }
            if (optInt == 3 || optInt == 2) {
                fArr[6] = (float) (fArr[6] + 1.0d);
            }
            if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = (float) (fArr[7] + 1.0d);
            }
            if (lowerCase3.contains("checkbox")) {
                fArr[8] = (float) (fArr[8] + 1.0d);
            }
            if (m23442a(new String[]{EventConstants.COMPLETE, "confirm", "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = (float) (fArr[10] + 1.0d);
            }
            if (lowerCase3.contains("radio") && lowerCase3.contains("button")) {
                fArr[12] = (float) (fArr[12] + 1.0d);
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    m23443a(fArr, m23448a(optJSONArray.getJSONObject(i)));
                }
            } catch (JSONException e) {
            }
            return fArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return null;
        }
    }

    /* renamed from: a */
    public static float[] m23447a(JSONObject jSONObject, String str) {
        String lowerCase;
        JSONObject jSONObject2;
        String optString;
        JSONArray jSONArray;
        JSONObject m23440c;
        if (C10249a.m23108a(C10085a.class)) {
            return null;
        }
        try {
            if (!f33416e) {
                return null;
            }
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            try {
                lowerCase = str.toLowerCase();
                jSONObject2 = new JSONObject(jSONObject.optJSONObject("view").toString());
                optString = jSONObject.optString("screenname");
                jSONArray = new JSONArray();
                m23445a(jSONObject2, jSONArray);
                m23443a(fArr, m23448a(jSONObject2));
                m23440c = m23440c(jSONObject2);
            } catch (JSONException e) {
            }
            if (m23440c == null) {
                return null;
            }
            m23443a(fArr, m23444a(m23440c, jSONArray, optString, jSONObject2.toString(), lowerCase));
            return fArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return null;
        }
    }

    /* renamed from: a */
    private static float[] m23444a(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        int length;
        if (C10249a.m23108a(C10085a.class)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            fArr[3] = jSONArray.length() > 1 ? length - 1 : 0;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    if (m23441b(jSONArray.getJSONObject(i))) {
                        fArr[9] = fArr[9] + 1.0f;
                    }
                } catch (JSONException e) {
                }
            }
            fArr[13] = -1.0f;
            fArr[14] = -1.0f;
            String str4 = str + '|' + str3;
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            m23446a(jSONObject, sb2, sb);
            String sb3 = sb.toString();
            String sb4 = sb2.toString();
            fArr[15] = m23449a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
            fArr[16] = m23449a("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
            fArr[17] = m23449a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb3) ? 1.0f : 0.0f;
            fArr[18] = str2.contains("password") ? 1.0f : 0.0f;
            fArr[19] = m23451a("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2) ? 1.0f : 0.0f;
            fArr[20] = m23451a("(?i)(sign in)|login|signIn", str2) ? 1.0f : 0.0f;
            fArr[21] = m23451a("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2) ? 1.0f : 0.0f;
            fArr[22] = m23449a("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
            fArr[24] = m23449a("ENGLISH", "PURCHASE", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
            fArr[25] = m23451a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb4) ? 1.0f : 0.0f;
            fArr[27] = m23451a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4) ? 1.0f : 0.0f;
            fArr[28] = m23449a("ENGLISH", "LEAD", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
            fArr[29] = m23449a("ENGLISH", "LEAD", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
            return fArr;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return null;
        }
    }

    /* renamed from: b */
    private static boolean m23441b(JSONObject jSONObject) {
        if (C10249a.m23108a(C10085a.class)) {
            return false;
        }
        try {
            return (jSONObject.optInt("classtypebitmask") & 32) > 0;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return false;
        }
    }

    /* renamed from: c */
    private static JSONObject m23440c(JSONObject jSONObject) {
        if (C10249a.m23108a(C10085a.class)) {
            return null;
        }
        try {
            if (jSONObject.optBoolean("is_interacted")) {
                return jSONObject;
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null) {
                return null;
            }
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject m23440c = m23440c(optJSONArray.getJSONObject(i));
                if (m23440c != null) {
                    return m23440c;
                }
            }
            return null;
        } catch (JSONException e) {
            return null;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10085a.class);
            return null;
        }
    }
}
