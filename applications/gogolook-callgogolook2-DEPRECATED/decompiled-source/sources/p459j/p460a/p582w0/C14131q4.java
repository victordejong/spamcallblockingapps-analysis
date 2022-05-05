package p459j.p460a.p582w0;

import androidx.core.util.PatternsCompat;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import p459j.p460a.p521j0.p529x.C12757d;
/* renamed from: j.a.w0.q4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/q4.class */
public class C14131q4 {

    /* renamed from: a */
    public static String f31644a;

    /* renamed from: a */
    public static int m2413a(int i) {
        int i2 = 5;
        switch (i) {
            case -2:
                i2 = -2;
                break;
            case -1:
                i2 = -1;
                break;
            case 0:
                break;
            case 1:
                i2 = 1;
                break;
            case 2:
                i2 = 2;
                break;
            case 3:
                i2 = 3;
                break;
            case 4:
                i2 = 4;
                break;
            default:
                i2 = 5;
                break;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m2412a(int i, int i2) {
        int b = m2409b(i);
        int i3 = b;
        if (2 == i2) {
            i3 = i != -2 ? i != -1 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? b : R$string.sms_alert_spam_unratedurl : R$string.sms_dialog_alert_spam_haveapk : R$string.sms_alert_spam_safeurl : R$string.sms_alert_spam_suspiciousurl : R$string.sms_alert_spam_maliciousurl : R$string.sms_dialog_alert_spam_nointernet : R$string.sms_alert_spam_haveurl;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m2411a(String str) {
        if (C14217x3.m2160b(str)) {
            return 0;
        }
        List<String> e = m2404e(str);
        if (C14217x3.m2173a(e)) {
            return 0;
        }
        for (String str2 : e) {
            if (PatternsCompat.AUTOLINK_WEB_URL.matcher(str2).matches()) {
                return str2.toLowerCase(Locale.US).endsWith(".apk") ? 2 : 1;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static String m2410a(String str, List<Character> list) {
        for (Character ch : list) {
            str = str.replace(ch.charValue(), ' ');
        }
        return str;
    }

    /* renamed from: b */
    public static int m2409b(int i) {
        if (f31644a == null) {
            if (C14017g4.m2830F()) {
                f31644a = "wrs";
            } else {
                f31644a = "naver";
            }
        }
        switch (i) {
            case -2:
                return R$string.smsdialog_haveurl;
            case -1:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_nointernet_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_nointernet_naver;
                }
                return 0;
            case 0:
            default:
                return 0;
            case 1:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_dangerous_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_dangerous_naver;
                }
                return 0;
            case 2:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_suspicious_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_suspicious_naver;
                }
                return 0;
            case 3:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_safe_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_safe_naver;
                }
                return 0;
            case 4:
                return R$string.smsdialog_haveapk;
            case 5:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_unrated_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_unrated_naver;
                }
                return 0;
            case 6:
                if (f31644a.equals("wrs")) {
                    return R$string.smsdialog_urlscan_start_trend;
                }
                if (f31644a.equals("naver")) {
                    return R$string.smsdialog_urlscan_start_naver;
                }
                return 0;
        }
    }

    /* renamed from: b */
    public static C12757d m2408b(String str) {
        int i;
        String str2 = "naver";
        str2 = "wrs";
        try {
            JSONObject jSONObject = new JSONObject(str);
            boolean z = false;
            if (!jSONObject.isNull("wrs")) {
                i = jSONObject.getJSONObject("wrs").getInt(SmsUrlScanResultRealmObject.RATING);
                f31644a = "wrs";
                z = true;
            } else {
                str2 = null;
                i = -1;
            }
            if (!jSONObject.isNull("naver")) {
                i = m2406c(jSONObject.getJSONObject("naver").getString("result"));
                f31644a = "naver";
                z = true;
            }
            if (!z || i == -1) {
                return null;
            }
            return new C12757d(str2, i);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public static int m2406c(String str) {
        if (str == null) {
            return -1;
        }
        if (str.equalsIgnoreCase("unsafe")) {
            return 1;
        }
        if (str.equalsIgnoreCase("warn")) {
            return 2;
        }
        return str.equalsIgnoreCase("safe") ? 3 : -1;
    }

    /* renamed from: c */
    public static boolean m2407c(int i) {
        boolean z = true;
        if (i != 1) {
            z = true;
            if (i != 2) {
                z = i == 4;
            }
        }
        return z;
    }

    /* renamed from: d */
    public static List<Character> m2405d(String str) {
        char[] charArray;
        ArrayList arrayList = new ArrayList();
        for (char c : str.toCharArray()) {
            if ((c & 65280) == 65280) {
                arrayList.add(Character.valueOf(c));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
        if (r4.contains("\uffff") != false) goto L_0x007c;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m2404e(java.lang.String r4) {
        /*
            r0 = r4
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 == 0) goto L_0x000f
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            return r0
        L_0x000f:
            r0 = r4
            java.util.List r0 = m2405d(r0)
            r5 = r0
            r0 = r4
            r6 = r0
            r0 = r5
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2173a(r0)
            if (r0 != 0) goto L_0x0023
            r0 = r4
            r1 = r5
            java.lang.String r0 = m2410a(r0, r1)
            r6 = r0
        L_0x0023:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r6
            java.lang.String r1 = "\\s"
            java.lang.String[] r0 = r0.split(r1)
            r7 = r0
            r0 = r7
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0039:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x0093
            r0 = r7
            r1 = r9
            r0 = r0[r1]
            r6 = r0
            r0 = r6
            r4 = r0
            r0 = r6
            java.lang.String r1 = "http"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x005b
            r0 = r6
            r1 = r6
            java.lang.String r2 = "http"
            int r1 = r1.indexOf(r2)
            java.lang.String r0 = r0.substring(r1)
            r4 = r0
        L_0x005b:
            java.util.regex.Pattern r0 = androidx.core.util.PatternsCompat.AUTOLINK_WEB_URL
            r1 = r4
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L_0x008d
            r0 = r4
            java.lang.String r1 = "\ufeff"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x007c
            r0 = r4
            r6 = r0
            r0 = r4
            java.lang.String r1 = "\uffff"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x0085
        L_0x007c:
            r0 = r4
            java.lang.String r1 = "[\ufeff-\uffff]"
            java.lang.String r2 = ""
            java.lang.String r0 = r0.replaceAll(r1, r2)
            r6 = r0
        L_0x0085:
            r0 = r5
            r1 = r6
            boolean r0 = r0.add(r1)
        L_0x008d:
            int r9 = r9 + 1
            goto L_0x0039
        L_0x0093:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14131q4.m2404e(java.lang.String):java.util.List");
    }
}
