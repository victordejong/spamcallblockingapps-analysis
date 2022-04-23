package com.facebook.appevents.j;

import android.util.Patterns;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.FileInputStream;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import net.pubnative.lite.sdk.mraid.MRAIDNativeFeature;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.d;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/j/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f19629a;

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, String> f19630b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, String> f19631c;

    /* renamed from: d  reason: collision with root package name */
    private static JSONObject f19632d;
    private static boolean e = false;

    a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2, String str3) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            return (str3 + " | " + str2 + ", " + str).toLowerCase();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(File file) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            try {
                try {
                    f19632d = new JSONObject();
                    FileInputStream fileInputStream = new FileInputStream(file);
                    byte[] bArr = new byte[fileInputStream.available()];
                    fileInputStream.read(bArr);
                    fileInputStream.close();
                    f19632d = new JSONObject(new String(bArr, "UTF-8"));
                    HashMap hashMap = new HashMap();
                    f19629a = hashMap;
                    hashMap.put("ENGLISH", "1");
                    f19629a.put("GERMAN", "2");
                    f19629a.put("SPANISH", "3");
                    f19629a.put("JAPANESE", "4");
                    HashMap hashMap2 = new HashMap();
                    f19630b = hashMap2;
                    hashMap2.put("VIEW_CONTENT", "0");
                    f19630b.put("SEARCH", "1");
                    f19630b.put("ADD_TO_CART", "2");
                    f19630b.put("ADD_TO_WISHLIST", "3");
                    f19630b.put("INITIATE_CHECKOUT", "4");
                    f19630b.put("ADD_PAYMENT_INFO", "5");
                    f19630b.put("PURCHASE", "6");
                    f19630b.put("LEAD", "7");
                    f19630b.put("COMPLETE_REGISTRATION", "8");
                    HashMap hashMap3 = new HashMap();
                    f19631c = hashMap3;
                    hashMap3.put("BUTTON_TEXT", "1");
                    f19631c.put("PAGE_TITLE", "2");
                    f19631c.put("RESOLVED_DOCUMENT_LINK", "3");
                    f19631c.put("BUTTON_ID", "4");
                    e = true;
                } catch (Exception e2) {
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0086 -> B:21:0x0077). Please submit an issue!!! */
    private static void a(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
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
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        try {
                            a(optJSONArray.getJSONObject(i), sb, sb2);
                        } catch (JSONException e2) {
                        }
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, a.class);
            }
        }
    }

    private static void a(float[] fArr, float[] fArr2) {
        if (!com.facebook.internal.b.b.a.a(a.class)) {
            for (int i = 0; i < 30; i++) {
                fArr[i] = fArr[i] + fArr2[i];
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return e;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static boolean a(String str, String str2) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static boolean a(String str, String str2, String str3, String str4) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return a(f19632d.optJSONObject("rulesForLanguage").optJSONObject(f19629a.get(str)).optJSONObject("rulesForEvent").optJSONObject(f19630b.get(str2)).optJSONObject("positiveRules").optString(f19631c.get(str3)), str4);
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static boolean a(JSONObject jSONObject, JSONArray jSONArray) {
        boolean z;
        boolean z2;
        boolean z3;
        if (com.facebook.internal.b.b.a.a(a.class)) {
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
                    if (a(jSONObject2, jSONArray)) {
                        jSONArray2.put(jSONObject2);
                        z2 = true;
                    }
                }
                jSONObject.put("childviews", jSONArray2);
                z3 = z2;
            }
            return z3;
        } catch (JSONException e2) {
            return false;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static boolean a(String[] strArr, String[] strArr2) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
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
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static float[] a(JSONObject jSONObject) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
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
            if (a(new String[]{d.f39169b, "amount", "price", "total"}, strArr)) {
                fArr[0] = (float) (fArr[0] + 1.0d);
            }
            if (a(new String[]{"password", "pwd"}, strArr)) {
                fArr[1] = (float) (fArr[1] + 1.0d);
            }
            if (a(new String[]{MRAIDNativeFeature.TEL, Constants.EXTRA_PHONE_NUMBER}, strArr)) {
                fArr[2] = (float) (fArr[2] + 1.0d);
            }
            if (a(new String[]{"search"}, strArr)) {
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
            if (a(new String[]{EventConstants.COMPLETE, "confirm", "done", "submit"}, new String[]{lowerCase})) {
                fArr[10] = (float) (fArr[10] + 1.0d);
            }
            if (lowerCase3.contains("radio") && lowerCase3.contains("button")) {
                fArr[12] = (float) (fArr[12] + 1.0d);
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                int length = optJSONArray.length();
                for (int i = 0; i < length; i++) {
                    a(fArr, a(optJSONArray.getJSONObject(i)));
                }
            } catch (JSONException e2) {
            }
            return fArr;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float[] a(JSONObject jSONObject, String str) {
        String lowerCase;
        JSONObject jSONObject2;
        String optString;
        JSONArray jSONArray;
        JSONObject c2;
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            if (!e) {
                return null;
            }
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            try {
                lowerCase = str.toLowerCase();
                jSONObject2 = new JSONObject(jSONObject.optJSONObject("view").toString());
                optString = jSONObject.optString("screenname");
                jSONArray = new JSONArray();
                a(jSONObject2, jSONArray);
                a(fArr, a(jSONObject2));
                c2 = c(jSONObject2);
            } catch (JSONException e2) {
            }
            if (c2 == null) {
                return null;
            }
            a(fArr, a(c2, jSONArray, optString, jSONObject2.toString(), lowerCase));
            return fArr;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    private static float[] a(JSONObject jSONObject, JSONArray jSONArray, String str, String str2, String str3) {
        int length;
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            Arrays.fill(fArr, (float) BitmapDescriptorFactory.HUE_RED);
            fArr[3] = jSONArray.length() > 1 ? length - 1 : 0;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    if (b(jSONArray.getJSONObject(i))) {
                        fArr[9] = fArr[9] + 1.0f;
                    }
                } catch (JSONException e2) {
                }
            }
            fArr[13] = -1.0f;
            fArr[14] = -1.0f;
            String str4 = str + '|' + str3;
            StringBuilder sb = new StringBuilder();
            StringBuilder sb2 = new StringBuilder();
            a(jSONObject, sb2, sb);
            String sb3 = sb.toString();
            String sb4 = sb2.toString();
            fArr[15] = a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_TEXT", sb4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[16] = a("ENGLISH", "COMPLETE_REGISTRATION", "PAGE_TITLE", str4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[17] = a("ENGLISH", "COMPLETE_REGISTRATION", "BUTTON_ID", sb3) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[18] = str2.contains("password") ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[19] = a("(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)", str2) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[20] = a("(?i)(sign in)|login|signIn", str2) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[21] = a("(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)", str2) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[22] = a("ENGLISH", "PURCHASE", "BUTTON_TEXT", sb4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[24] = a("ENGLISH", "PURCHASE", "PAGE_TITLE", str4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[25] = a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart", sb4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[27] = a("(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy", str4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[28] = a("ENGLISH", "LEAD", "BUTTON_TEXT", sb4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            fArr[29] = a("ENGLISH", "LEAD", "PAGE_TITLE", str4) ? 1.0f : BitmapDescriptorFactory.HUE_RED;
            return fArr;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }

    private static boolean b(JSONObject jSONObject) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
            return false;
        }
        try {
            return (jSONObject.optInt("classtypebitmask") & 32) > 0;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return false;
        }
    }

    private static JSONObject c(JSONObject jSONObject) {
        if (com.facebook.internal.b.b.a.a(a.class)) {
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
                JSONObject c2 = c(optJSONArray.getJSONObject(i));
                if (c2 != null) {
                    return c2;
                }
            }
            return null;
        } catch (JSONException e2) {
            return null;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, a.class);
            return null;
        }
    }
}
