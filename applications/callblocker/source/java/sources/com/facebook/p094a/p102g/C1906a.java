package com.facebook.p094a.p102g;

import android.util.Patterns;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.g.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/g/a.class */
final class C1906a {

    /* renamed from: a */
    private static Map<String, String> f5754a;

    /* renamed from: b */
    private static Map<String, String> f5755b;

    /* renamed from: c */
    private static Map<String, String> f5756c;

    /* renamed from: d */
    private static JSONObject f5757d;

    /* renamed from: e */
    private static boolean f5758e = false;

    /* renamed from: a */
    public static String m15923a(String str, String str2, String str3) {
        return (str3 + " | " + str2 + ", " + str).toLowerCase();
    }

    /* renamed from: a */
    public static void m15925a(File file) {
        try {
            f5757d = new JSONObject();
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            f5757d = new JSONObject(new String(bArr, "UTF-8"));
            f5754a = new HashMap();
            f5754a.put("ENGLISH", "1");
            f5754a.put("GERMAN", "2");
            f5754a.put("SPANISH", "3");
            f5754a.put("JAPANESE", "4");
            f5755b = new HashMap();
            f5755b.put("VIEW_CONTENT", "0");
            f5755b.put("SEARCH", "1");
            f5755b.put("ADD_TO_CART", "2");
            f5755b.put("ADD_TO_WISHLIST", "3");
            f5755b.put("INITIATE_CHECKOUT", "4");
            f5755b.put("ADD_PAYMENT_INFO", "5");
            f5755b.put("PURCHASE", "6");
            f5755b.put("LEAD", "7");
            f5755b.put("COMPLETE_REGISTRATION", "8");
            f5756c = new HashMap();
            f5756c.put("BUTTON_TEXT", "1");
            f5756c.put("PAGE_TITLE", "2");
            f5756c.put("RESOLVED_DOCUMENT_LINK", "3");
            f5756c.put("BUTTON_ID", "4");
            f5758e = true;
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static void m15919a(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        String lowerCase = jSONObject.optString("text", "").toLowerCase();
        String lowerCase2 = jSONObject.optString("hint", "").toLowerCase();
        if (!lowerCase.isEmpty()) {
            sb.append(lowerCase).append(" ");
        }
        if (!lowerCase2.isEmpty()) {
            sb2.append(lowerCase2).append(" ");
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
        if (optJSONArray == null) {
            return;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            m15919a(jSONObject, sb, sb2);
        }
    }

    /* renamed from: a */
    private static void m15916a(float[] fArr, float[] fArr2) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = fArr[i] + fArr2[i];
        }
    }

    /* renamed from: a */
    public static boolean m15926a() {
        return f5758e;
    }

    /* renamed from: a */
    private static boolean m15924a(String str, String str2) {
        return Pattern.compile(str).matcher(str2).find();
    }

    /* renamed from: a */
    private static boolean m15922a(String str, String str2, String str3, String str4) {
        return m15924a(f5757d.optJSONObject("rulesForLanguage").optJSONObject(f5754a.get(str)).optJSONObject("rulesForEvent").optJSONObject(f5755b.get(str2)).optJSONObject("positiveRules").optString(f5756c.get(str3)), str4);
    }

    /* renamed from: a */
    private static boolean m15918a(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = true;
        try {
            if (!jSONObject.optBoolean("is_interacted")) {
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
                if (z2) {
                    int i2 = 0;
                    while (true) {
                        z3 = z;
                        if (i2 >= optJSONArray.length()) {
                            break;
                        }
                        jSONArray.put(optJSONArray.getJSONObject(i2));
                        i2++;
                    }
                } else {
                    for (int i3 = 0; i3 < optJSONArray.length(); i3++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                        if (m15918a(jSONObject2, jSONArray)) {
                            jSONArray2.put(jSONObject2);
                            z = true;
                        }
                    }
                    jSONObject.put("childviews", jSONArray2);
                    z3 = z;
                }
                z4 = z3;
            }
        } catch (JSONException e) {
            z4 = false;
        }
        return z4;
    }

    /* renamed from: a */
    private static boolean m15915a(String[] strArr, String[] strArr2) {
        boolean z;
        int length = strArr.length;
        int i = 0;
        loop0: while (true) {
            z = false;
            if (i >= length) {
                break;
            }
            String str = strArr[i];
            for (String str2 : strArr2) {
                if (str2.contains(str)) {
                    z = true;
                    break loop0;
                }
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    private static float[] m15921a(JSONObject jSONObject) {
        float[] fArr = new float[30];
        Arrays.fill(fArr, 0.0f);
        String lowerCase = jSONObject.optString("text").toLowerCase();
        String lowerCase2 = jSONObject.optString("hint").toLowerCase();
        String lowerCase3 = jSONObject.optString("classname").toLowerCase();
        int optInt = jSONObject.optInt("inputtype", -1);
        String[] strArr = {lowerCase, lowerCase2};
        if (m15915a(new String[]{"$", "amount", "price", "total"}, strArr)) {
            fArr[0] = (float) (fArr[0] + 1.0d);
        }
        if (m15915a(new String[]{"password", "pwd"}, strArr)) {
            fArr[1] = (float) (fArr[1] + 1.0d);
        }
        if (m15915a(new String[]{"tel", "phone"}, strArr)) {
            fArr[2] = (float) (fArr[2] + 1.0d);
        }
        if (m15915a(new String[]{"search"}, strArr)) {
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
        if (m15915a(new String[]{"complete", "confirm", "done", "submit"}, new String[]{lowerCase})) {
            fArr[10] = (float) (fArr[10] + 1.0d);
        }
        if (lowerCase3.contains("radio") && lowerCase3.contains("button")) {
            fArr[12] = (float) (fArr[12] + 1.0d);
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                m15916a(fArr, m15921a(optJSONArray.getJSONObject(i)));
            }
        } catch (JSONException e) {
        }
        return fArr;
    }

    /* renamed from: a */
    public static float[] m15920a(JSONObject jSONObject, String str) {
        float[] fArr;
        if (!f5758e) {
            fArr = null;
        } else {
            float[] fArr2 = new float[30];
            Arrays.fill(fArr2, 0.0f);
            try {
                String lowerCase = str.toLowerCase();
                JSONObject jSONObject2 = new JSONObject(jSONObject.optJSONObject("view").toString());
                String optString = jSONObject.optString("screenname");
                JSONArray jSONArray = new JSONArray();
                m15918a(jSONObject2, jSONArray);
                m15916a(fArr2, m15921a(jSONObject2));
                JSONObject m15913c = m15913c(jSONObject2);
                fArr = null;
                if (m15913c != null) {
                    m15916a(fArr2, m15917a(m15913c, jSONArray, optString, jSONObject2.toString(), lowerCase));
                    fArr = fArr2;
                }
            } catch (JSONException e) {
                fArr = fArr2;
            }
        }
        return fArr;
    }

    /* renamed from: a */
    private static float[] m15917a(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        int length;
        float[] fArr = new float[30];
        Arrays.fill(fArr, 0.0f);
        fArr[3] = jSONArray.length() > 1 ? length - 1 : 0;
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                if (m15914b(jSONArray.getJSONObject(i))) {
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
        m15919a(jSONObject, sb, sb2);
        String sb3 = sb.toString();
        String sb4 = sb2.toString();
        fArr[15] = m15922a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        fArr[16] = m15922a("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
        fArr[17] = m15922a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb3) ? 1.0f : 0.0f;
        fArr[18] = str2.contains("password") ? 1.0f : 0.0f;
        fArr[19] = m15924a("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2) ? 1.0f : 0.0f;
        fArr[20] = m15924a("(?i)(sign in)|login|signIn", str2) ? 1.0f : 0.0f;
        fArr[21] = m15924a("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2) ? 1.0f : 0.0f;
        fArr[22] = m15922a("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        fArr[24] = m15922a("ENGLISH", "PURCHASE", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
        fArr[25] = m15924a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb4) ? 1.0f : 0.0f;
        fArr[27] = m15924a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4) ? 1.0f : 0.0f;
        fArr[28] = m15922a("ENGLISH", "LEAD", "BUTTON_TEXT", sb4) ? 1.0f : 0.0f;
        fArr[29] = m15922a("ENGLISH", "LEAD", "PAGE_TITLE", str4) ? 1.0f : 0.0f;
        return fArr;
    }

    /* renamed from: b */
    private static boolean m15914b(JSONObject jSONObject) {
        return (jSONObject.optInt("classtypebitmask") & 32) > 0;
    }

    /* renamed from: c */
    private static JSONObject m15913c(JSONObject jSONObject) {
        if (!jSONObject.optBoolean("is_interacted")) {
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null) {
                jSONObject = null;
            } else {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject m15913c = m15913c(optJSONArray.getJSONObject(i));
                    jSONObject = m15913c;
                    if (m15913c != null) {
                        break;
                    }
                }
                jSONObject = null;
            }
        }
        return jSONObject;
    }
}
