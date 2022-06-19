package com.facebook.appevents.p035q0;

import android.util.Patterns;
import com.amazon.device.ads.DtbConstants;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import java.io.File;
import java.io.FileInputStream;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import s1.f0.b;
import s1.f0.v;
import s1.k;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010$\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0006H\u0007J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0019\u001a\u00020\u0012H\u0002J \u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0007J\u0012\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007J\u0010\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0012H\u0002J\b\u0010#\u001a\u00020\u000fH\u0007J)\u0010$\u001a\u00020\u000f2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060&2\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060&H\u0002¢\u0006\u0002\u0010(J0\u0010)\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0002J\u0010\u0010.\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0018\u0010/\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00122\u0006\u0010*\u001a\u00020+H\u0002J\u0018\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0002J(\u00100\u001a\u00020\u000f2\u0006\u00103\u001a\u00020\u00062\u0006\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0002J\u0018\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u00152\u0006\u00108\u001a\u00020\u0015H\u0002J(\u00109\u001a\u00020\u001e2\u0006\u0010\u0019\u001a\u00020\u00122\n\u0010:\u001a\u00060;j\u0002`<2\n\u0010=\u001a\u00060;j\u0002`<H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\rX\u0082.¢\u0006\u0002\n��¨\u0006>"}, d2 = {"Lcom/facebook/appevents/suggestedevents/FeatureExtractor;", "", "()V", "NUM_OF_FEATURES", "", "REGEX_ADD_TO_CART_BUTTON_TEXT", "", "REGEX_ADD_TO_CART_PAGE_TITLE", "REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD", "REGEX_CR_HAS_LOG_IN_KEYWORDS", "REGEX_CR_HAS_SIGN_ON_KEYWORDS", "REGEX_CR_PASSWORD_FIELD", "eventInfo", "", "initialized", "", "languageInfo", "rules", "Lorg/json/JSONObject;", "textTypeInfo", "getDenseFeatures", "", "viewHierarchy", "appName", "getInteractedNode", ViewAction.VIEW, "getTextFeature", "buttonText", "activityName", "initialize", "", "file", "Ljava/io/File;", "isButton", "node", "isInitialized", "matchIndicators", "indicators", "", "values", "([Ljava/lang/String;[Ljava/lang/String;)Z", "nonparseFeatures", "siblings", "Lorg/json/JSONArray;", "screenName", "formFieldsJSON", "parseFeatures", "pruneTree", "regexMatched", "pattern", "matchText", "language", "event", "textType", "sum", "a", C22021b.f61237c, "updateHintAndTextRecursively", "textSB", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "hintSB", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.q0.e */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/q0/e.class */
public final class C1080e {

    /* renamed from: a */
    public static final C1080e f2977a = new C1080e();

    /* renamed from: b */
    public static Map<String, String> f2978b;

    /* renamed from: c */
    public static Map<String, String> f2979c;

    /* renamed from: d */
    public static Map<String, String> f2980d;

    /* renamed from: e */
    public static JSONObject f2981e;

    /* renamed from: f */
    public static boolean f2982f;

    /* renamed from: a */
    public static final float[] m41816a(JSONObject jSONObject, String str) {
        String lowerCase;
        JSONObject jSONObject2;
        String optString;
        JSONArray jSONArray;
        C1080e c1080e;
        JSONObject m41815b;
        if (C1220a.m41623b(C1080e.class)) {
            return null;
        }
        try {
            l.e(jSONObject, "viewHierarchy");
            l.e(str, "appName");
            if (!f2982f) {
                return null;
            }
            float[] fArr = new float[30];
            for (int i = 0; i < 30; i++) {
                fArr[i] = 0.0f;
            }
            try {
                lowerCase = str.toLowerCase();
                l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                jSONObject2 = new JSONObject(jSONObject.optJSONObject(ViewAction.VIEW).toString());
                optString = jSONObject.optString("screenname");
                jSONArray = new JSONArray();
                c1080e = f2977a;
                c1080e.m41809h(jSONObject2, jSONArray);
                c1080e.m41806k(fArr, c1080e.m41810g(jSONObject2));
                m41815b = c1080e.m41815b(jSONObject2);
            } catch (JSONException e) {
            }
            if (m41815b == null) {
                return null;
            }
            l.d(optString, "screenName");
            String jSONObject3 = jSONObject2.toString();
            l.d(jSONObject3, "viewTree.toString()");
            c1080e.m41806k(fArr, c1080e.m41811f(m41815b, jSONArray, optString, jSONObject3, lowerCase));
            return fArr;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1080e.class);
            return null;
        }
    }

    /* renamed from: c */
    public static final String m41814c(String str, String str2, String str3) {
        if (C1220a.m41623b(C1080e.class)) {
            return null;
        }
        try {
            l.e(str, "buttonText");
            l.e(str2, "activityName");
            l.e(str3, "appName");
            String str4 = str3 + " | " + str2 + ", " + str;
            if (str4 == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = str4.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            return lowerCase;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1080e.class);
            return null;
        }
    }

    /* renamed from: d */
    public static final void m41813d(File file) {
        if (C1220a.m41623b(C1080e.class)) {
            return;
        }
        try {
            try {
                f2981e = new JSONObject();
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                fileInputStream.close();
                f2981e = new JSONObject(new String(bArr, b.a));
                f2978b = i.W(new k[]{new k("ENGLISH", "1"), new k("GERMAN", "2"), new k("SPANISH", "3"), new k("JAPANESE", "4")});
                f2979c = i.W(new k[]{new k("VIEW_CONTENT", DtbConstants.NETWORK_TYPE_UNKNOWN), new k("SEARCH", "1"), new k("ADD_TO_CART", "2"), new k("ADD_TO_WISHLIST", "3"), new k("INITIATE_CHECKOUT", "4"), new k("ADD_PAYMENT_INFO", "5"), new k("PURCHASE", "6"), new k("LEAD", "7"), new k("COMPLETE_REGISTRATION", "8")});
                f2980d = i.W(new k[]{new k("BUTTON_TEXT", "1"), new k("PAGE_TITLE", "2"), new k("RESOLVED_DOCUMENT_LINK", "3"), new k("BUTTON_ID", "4")});
                f2982f = true;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1080e.class);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: b */
    public final JSONObject m41815b(JSONObject jSONObject) {
        if (C1220a.m41623b(this)) {
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
            int i = 0;
            int length = optJSONArray.length();
            if (length <= 0) {
                return null;
            }
            while (true) {
                int i2 = i + 1;
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                l.d(jSONObject2, "children.getJSONObject(i)");
                JSONObject m41815b = m41815b(jSONObject2);
                if (m41815b != null) {
                    return m41815b;
                }
                if (i2 >= length) {
                    return null;
                }
                i = i2;
            }
        } catch (JSONException e) {
            return null;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: e */
    public final boolean m41812e(String[] strArr, String[] strArr2) {
        if (C1220a.m41623b(this)) {
            return false;
        }
        try {
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                int i2 = i + 1;
                int length2 = strArr2.length;
                int i3 = 0;
                while (true) {
                    i = i2;
                    if (i3 < length2) {
                        String str2 = strArr2[i3];
                        i3++;
                        if (v.B(str2, str, false, 2)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:127:0x00bc A[EDGE_INSN: B:127:0x00bc->B:36:0x00bc ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5 A[LOOP:1: B:19:0x0052->B:35:0x00b5, LOOP_END] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] m41811f(org.json.JSONObject r7, org.json.JSONArray r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p035q0.C1080e.m41811f(org.json.JSONObject, org.json.JSONArray, java.lang.String, java.lang.String, java.lang.String):float[]");
    }

    /* renamed from: g */
    public final float[] m41810g(JSONObject jSONObject) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            int i = 0;
            for (int i2 = 0; i2 < 30; i2++) {
                fArr[i2] = 0.0f;
            }
            String optString = jSONObject.optString("text");
            l.d(optString, "node.optString(TEXT_KEY)");
            String lowerCase = optString.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString("hint");
            l.d(optString2, "node.optString(HINT_KEY)");
            String lowerCase2 = optString2.toLowerCase();
            l.d(lowerCase2, "(this as java.lang.String).toLowerCase()");
            String optString3 = jSONObject.optString("classname");
            l.d(optString3, "node.optString(CLASS_NAME_KEY)");
            String lowerCase3 = optString3.toLowerCase();
            l.d(lowerCase3, "(this as java.lang.String).toLowerCase()");
            int optInt = jSONObject.optInt("inputtype", -1);
            String[] strArr = new String[2];
            strArr[0] = lowerCase;
            strArr[1] = lowerCase2;
            if (m41812e(new String[]{"$", AnalyticsConstants.AMOUNT, "price", "total"}, strArr)) {
                fArr[0] = fArr[0] + 1.0f;
            }
            if (m41812e(new String[]{"password", "pwd"}, strArr)) {
                fArr[1] = fArr[1] + 1.0f;
            }
            if (m41812e(new String[]{"tel", AnalyticsConstants.PHONE}, strArr)) {
                fArr[2] = fArr[2] + 1.0f;
            }
            if (m41812e(new String[]{"search"}, strArr)) {
                fArr[4] = fArr[4] + 1.0f;
            }
            if (optInt >= 0) {
                fArr[5] = fArr[5] + 1.0f;
            }
            if (optInt == 3 || optInt == 2) {
                fArr[6] = fArr[6] + 1.0f;
            }
            if (optInt == 32 || Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                fArr[7] = fArr[7] + 1.0f;
            }
            if (v.B(lowerCase3, "checkbox", false, 2)) {
                fArr[8] = fArr[8] + 1.0f;
            }
            if (m41812e(new String[]{AnalyticsConstants.COMPLETE, "confirm", "done", AnalyticsConstants.SUBMIT}, new String[]{lowerCase})) {
                fArr[10] = fArr[10] + 1.0f;
            }
            if (v.B(lowerCase3, "radio", false, 2) && v.B(lowerCase3, "button", false, 2)) {
                fArr[12] = fArr[12] + 1.0f;
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
                int length = optJSONArray.length();
                if (length > 0) {
                    while (true) {
                        int i3 = i;
                        i = i3 + 1;
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                        l.d(jSONObject2, "childViews.getJSONObject(i)");
                        m41806k(fArr, m41810g(jSONObject2));
                        if (i >= length) {
                            break;
                        }
                    }
                }
            } catch (JSONException e) {
            }
            return fArr;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069 A[Catch: all -> 0x0104, JSONException -> 0x010c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x010c, all -> 0x0104, blocks: (B:5:0x0009, B:8:0x0015, B:12:0x0031, B:20:0x005a, B:22:0x0069, B:27:0x0081, B:32:0x00a1, B:37:0x00b9, B:39:0x00cd, B:41:0x00d7, B:46:0x00f7), top: B:53:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a1 A[Catch: all -> 0x0104, JSONException -> 0x010c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x010c, all -> 0x0104, blocks: (B:5:0x0009, B:8:0x0015, B:12:0x0031, B:20:0x005a, B:22:0x0069, B:27:0x0081, B:32:0x00a1, B:37:0x00b9, B:39:0x00cd, B:41:0x00d7, B:46:0x00f7), top: B:53:0x0009 }] */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m41809h(org.json.JSONObject r5, org.json.JSONArray r6) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p035q0.C1080e.m41809h(org.json.JSONObject, org.json.JSONArray):boolean");
    }

    /* renamed from: i */
    public final boolean m41808i(String str, String str2) {
        if (C1220a.m41623b(this)) {
            return false;
        }
        try {
            return Pattern.compile(str).matcher(str2).find();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return false;
        }
    }

    /* renamed from: j */
    public final boolean m41807j(String str, String str2, String str3, String str4) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        String str5;
        JSONObject optJSONObject;
        boolean z = false;
        if (C1220a.m41623b(this)) {
            return false;
        }
        try {
            JSONObject jSONObject3 = f2981e;
            if (jSONObject3 == null) {
                l.l("rules");
                throw null;
            }
            JSONObject optJSONObject2 = jSONObject3.optJSONObject("rulesForLanguage");
            if (optJSONObject2 == null) {
                jSONObject = null;
            } else {
                Map<String, String> map = f2978b;
                if (map == null) {
                    l.l("languageInfo");
                    throw null;
                }
                jSONObject = optJSONObject2.optJSONObject(map.get(str));
            }
            if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("rulesForEvent")) == null) {
                jSONObject2 = null;
            } else {
                Map<String, String> map2 = f2979c;
                if (map2 == null) {
                    l.l("eventInfo");
                    throw null;
                }
                jSONObject2 = optJSONObject.optJSONObject(map2.get(str2));
            }
            if (jSONObject2 == null) {
                str5 = null;
            } else {
                JSONObject optJSONObject3 = jSONObject2.optJSONObject("positiveRules");
                if (optJSONObject3 == null) {
                    str5 = null;
                } else {
                    Map<String, String> map3 = f2980d;
                    if (map3 == null) {
                        l.l("textTypeInfo");
                        throw null;
                    }
                    str5 = optJSONObject3.optString(map3.get(str3));
                }
            }
            if (str5 != null) {
                z = m41808i(str5, str4);
            }
            return z;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return false;
        }
    }

    /* renamed from: k */
    public final void m41806k(float[] fArr, float[] fArr2) {
        if (C1220a.m41623b(this)) {
            return;
        }
        int i = 0;
        try {
            int length = fArr.length - 1;
            if (length < 0) {
                return;
            }
            while (true) {
                int i2 = i + 1;
                fArr[i] = fArr[i] + fArr2[i];
                if (i2 > length) {
                    return;
                }
                i = i2;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: l */
    public final void m41805l(JSONObject jSONObject, StringBuilder sb, StringBuilder sb2) {
        int length;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            String optString = jSONObject.optString("text", "");
            l.d(optString, "view.optString(TEXT_KEY, \"\")");
            String lowerCase = optString.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            String optString2 = jSONObject.optString("hint", "");
            l.d(optString2, "view.optString(HINT_KEY, \"\")");
            String lowerCase2 = optString2.toLowerCase();
            l.d(lowerCase2, "(this as java.lang.String).toLowerCase()");
            int i = 0;
            if (lowerCase.length() > 0) {
                sb.append(lowerCase);
                sb.append(StringConstant.SPACE);
            }
            if (lowerCase2.length() > 0) {
                sb2.append(lowerCase2);
                sb2.append(StringConstant.SPACE);
            }
            JSONArray optJSONArray = jSONObject.optJSONArray("childviews");
            if (optJSONArray == null || (length = optJSONArray.length()) <= 0) {
                return;
            }
            while (true) {
                int i2 = i;
                i = i2 + 1;
                try {
                    JSONObject jSONObject2 = optJSONArray.getJSONObject(i2);
                    l.d(jSONObject2, "currentChildView");
                    m41805l(jSONObject2, sb, sb2);
                } catch (JSONException e) {
                }
                if (i >= length) {
                    return;
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
