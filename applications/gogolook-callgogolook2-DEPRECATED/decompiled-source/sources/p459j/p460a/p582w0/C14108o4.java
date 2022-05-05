package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Pattern;
import p459j.p460a.p568u.C13640c;
/* renamed from: j.a.w0.o4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/o4.class */
public class C14108o4 {

    /* renamed from: a */
    public static HashMap<String, String> f31603a = new HashMap<>();

    /* renamed from: b */
    public static HashMap<String, String> f31604b = new HashMap<>();

    /* renamed from: j.a.w0.o4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o4$a.class */
    public enum EnumC14109a {
        Unknown,
        Mobile_2G,
        Mobile_3G,
        Mobile_4G
    }

    /* renamed from: j.a.w0.o4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/o4$b.class */
    public enum EnumC14110b {
        MESSAGE,
        CALL,
        OTHERS
    }

    static {
        Collections.synchronizedMap(f31603a);
        Collections.synchronizedMap(f31604b);
    }

    /* renamed from: a */
    public static TelephonyManager m2503a(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
        if (r0.isValidNumber(r8) == false) goto L_0x0032;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.i18n.phonenumbers.Phonenumber.PhoneNumber m2495a(java.lang.String r5, java.lang.String r6) {
        /*
            com.google.i18n.phonenumbers.PhoneNumberUtil r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.getInstance()
            r7 = r0
            r0 = r7
            r1 = r5
            r2 = r6
            java.util.Locale r3 = java.util.Locale.US     // Catch: all -> 0x0014
            java.lang.String r2 = r2.toUpperCase(r3)     // Catch: all -> 0x0014
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r0 = r0.parse(r1, r2)     // Catch: all -> 0x0014
            r8 = r0
            goto L_0x0017
        L_0x0014:
            r8 = move-exception
            r0 = 0
            r8 = r0
        L_0x0017:
            r0 = r8
            r9 = r0
            r0 = r6
            java.lang.String r1 = "BR"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x0071
            r0 = r8
            if (r0 == 0) goto L_0x0032
            r0 = r8
            r9 = r0
            r0 = r7
            r1 = r8
            boolean r0 = r0.isValidNumber(r1)
            if (r0 != 0) goto L_0x0071
        L_0x0032:
            java.lang.String r0 = "DDDSetting"
            java.lang.String r1 = ""
            java.lang.String r0 = p459j.p460a.p582w0.C13915b3.m3056b(r0, r1)
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x0071
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0074
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: all -> 0x0074
            r0 = r9
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0074
            r0 = r9
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0074
            r0 = r7
            r1 = r9
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0074
            r2 = r6
            java.util.Locale r3 = java.util.Locale.US     // Catch: all -> 0x0074
            java.lang.String r2 = r2.toUpperCase(r3)     // Catch: all -> 0x0074
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r0 = r0.parse(r1, r2)     // Catch: all -> 0x0074
            r9 = r0
        L_0x0071:
            r0 = r9
            return r0
        L_0x0074:
            r5 = move-exception
            r0 = r8
            r9 = r0
            goto L_0x0071
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14108o4.m2495a(java.lang.String, java.lang.String):com.google.i18n.phonenumbers.Phonenumber$PhoneNumber");
    }

    /* renamed from: a */
    public static String m2504a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m2500a(RowInfo rowInfo, String str) {
        NumberInfo g = rowInfo == null ? null : rowInfo.m28226g();
        return g != null ? g.m28377S() : C14189u3.m2264c().m2269a(str, "");
    }

    /* renamed from: a */
    public static String m2497a(@NonNull String str, @NonNull PhoneNumberUtil.PhoneNumberFormat phoneNumberFormat) {
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber f = m2480f(str);
        String str2 = str;
        if (f != null) {
            try {
                str2 = instance.format(f, phoneNumberFormat);
            } catch (Exception e) {
                e.printStackTrace();
                str2 = str;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m2494a(String str, boolean z) {
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parse = instance.parse(str, C14017g4.m2810n().toUpperCase(Locale.US));
            return z ? m2486c(instance.format(parse, PhoneNumberUtil.PhoneNumberFormat.NATIONAL)) : String.valueOf(parse.getNationalNumber());
        } catch (NumberParseException e) {
            C14080m2.m2612a((Throwable) e);
            return str;
        }
    }

    /* renamed from: a */
    public static String m2493a(@NonNull String str, boolean z, boolean z2) {
        boolean b = C14217x3.m2160b(str);
        String str2 = "";
        if (b || FavoriteGroupRealmObject.PARENDID_DELETED.equals(str) || "-2".equals(str) || "-3".equals(str)) {
            if (z) {
                str2 = m2504a((int) R$string.unknown_number);
            }
            return str2;
        }
        if (!z2 || !C14093n4.m2569f(str)) {
            try {
                str = m2497a(str, PhoneNumberUtil.getInstance().getRegionCodeForNumber(m2480f(str)).equals(C14017g4.m2810n().toUpperCase(Locale.US)) ^ true ? PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL : PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            } catch (Exception e) {
            }
        } else {
            String a = m2497a(str, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
            str = (str.startsWith("+") || !a.startsWith("+")) ? a : a.replace("+", "");
        }
        return str;
    }

    /* renamed from: a */
    public static void m2506a() {
        f31603a.clear();
        f31604b.clear();
    }

    /* renamed from: a */
    public static boolean m2505a(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N' || c == ';' || c == ',';
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r4.mo6870l() != false) goto L_0x0059;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2502a(@androidx.annotation.NonNull android.content.Context r4, @androidx.annotation.Nullable java.lang.Integer r5) {
        /*
            j.a.s.v r0 = p459j.p460a.p564s.C13565v.m3921g()
            boolean r0 = r0.m23335b()
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0031
            r0 = r4
            android.content.SharedPreferences r0 = android.preference.PreferenceManager.getDefaultSharedPreferences(r0)
            java.lang.String r1 = "develop_is_roaming"
            java.lang.String r2 = "default"
            java.lang.String r0 = r0.getString(r1, r2)
            r4 = r0
            java.lang.String r0 = "enable"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0026
            r0 = 1
            return r0
        L_0x0026:
            java.lang.String r0 = "disable"
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0031
            r0 = 0
            return r0
        L_0x0031:
            r0 = r5
            if (r0 == 0) goto L_0x0040
            r0 = r5
            int r0 = r0.intValue()
            j.a.c0.h.l0 r0 = p459j.p460a.p474c0.p499h.AbstractC12181l0.m6895b(r0)
            r4 = r0
            goto L_0x0044
        L_0x0040:
            j.a.c0.h.l0 r0 = p459j.p460a.p474c0.p499h.AbstractC12181l0.m6886t()
            r4 = r0
        L_0x0044:
            r0 = r4
            boolean r0 = r0.mo6868o()     // Catch: Exception -> 0x005b
            if (r0 == 0) goto L_0x0057
            r0 = r4
            boolean r0 = r0.mo6870l()     // Catch: Exception -> 0x005b
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0057
            goto L_0x0059
        L_0x0057:
            r0 = 0
            r7 = r0
        L_0x0059:
            r0 = r7
            return r0
        L_0x005b:
            r4 = move-exception
            r0 = r4
            p459j.p460a.p582w0.C14080m2.m2612a(r0)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14108o4.m2502a(android.content.Context, java.lang.Integer):boolean");
    }

    /* renamed from: a */
    public static boolean m2501a(Context context, String str) {
        TelephonyManager a;
        String substring = (str.length() <= 8 || !str.startsWith("*#*#") || !str.endsWith("#*#*")) ? null : str.substring(4, str.length() - 4);
        if (substring == null) {
            return false;
        }
        if (!C14017g4.m2801w()) {
            context.sendBroadcast(new Intent("android.provider.Telephony.SECRET_CODE", Uri.parse("android_secret_code://" + substring)));
            return true;
        } else if (!CallUtils.m26536h() || (a = m2503a(context)) == null) {
            return false;
        } else {
            a.sendDialerSpecialCode(substring);
            return true;
        }
    }

    /* renamed from: a */
    public static boolean m2499a(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!(charSequence.charAt(i) == '(' || charSequence.charAt(i) == ')' || charSequence.charAt(i) == '-' || charSequence.charAt(i) == ' ' || m2505a(charSequence.charAt(i)))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m2498a(String str) {
        return m2475k(str) || (C13640c.m3745d().m3753a("is_enable_non_standard_number_search") && m2476j(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0079, code lost:
        if (r3.matches("^[\\w\\+-_]+[\\w\\.\\+-_]+[\\w\\+-_]+@\\w+[\\w\\.]+(\\w+|\\w+:\\d+)$") == false) goto L_0x007c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2496a(java.lang.String r3, p459j.p460a.p582w0.C14108o4.EnumC14110b r4) {
        /*
            j.a.w0.o4$b r0 = p459j.p460a.p582w0.C14108o4.EnumC14110b.CALL
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r4
            r1 = r5
            if (r0 == r1) goto L_0x0040
            r0 = r4
            j.a.w0.o4$b r1 = p459j.p460a.p582w0.C14108o4.EnumC14110b.OTHERS
            if (r0 != r1) goto L_0x0018
            goto L_0x0040
        L_0x0018:
            r0 = r3
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x003a
            java.lang.String r0 = "-1"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x003a
            java.lang.String r0 = "-2"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x003a
            java.lang.String r0 = "-3"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x003d
        L_0x003a:
            r0 = 1
            r7 = r0
        L_0x003d:
            r0 = r7
            return r0
        L_0x0040:
            r0 = r3
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x007c
            java.lang.String r0 = "-1"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x007c
            java.lang.String r0 = "-2"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x007c
            java.lang.String r0 = "-3"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x007c
            r0 = r6
            r7 = r0
            r0 = r3
            java.lang.String r1 = "([*#]+[\\d*#]+[*#]+)?\\+?([\\d\\s-]*\\({1}[\\d\\s-]+\\){1}[\\d\\s*#-]*$|[\\d\\s#*-]+$)?"
            boolean r0 = r0.matches(r1)
            if (r0 != 0) goto L_0x007f
            r0 = r6
            r7 = r0
            r0 = r3
            java.lang.String r1 = "^[\\w\\+-_]+[\\w\\.\\+-_]+[\\w\\+-_]+@\\w+[\\w\\.]+(\\w+|\\w+:\\d+)$"
            boolean r0 = r0.matches(r1)
            if (r0 != 0) goto L_0x007f
        L_0x007c:
            r0 = 1
            r7 = r0
        L_0x007f:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14108o4.m2496a(java.lang.String, j.a.w0.o4$b):boolean");
    }

    /* renamed from: b */
    public static EnumC14109a m2492b() {
        switch (((TelephonyManager) MyApplication.m29013o().getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return EnumC14109a.Mobile_2G;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return EnumC14109a.Mobile_3G;
            case 13:
                return EnumC14109a.Mobile_4G;
            default:
                return EnumC14109a.Unknown;
        }
    }

    /* renamed from: b */
    public static String m2490b(String str) {
        if (str == null) {
            return "";
        }
        if (str.startsWith("#31#")) {
            return str.substring(4);
        }
        String str2 = str;
        if (str.endsWith("#")) {
            str2 = str.substring(0, str.length() - 1);
        }
        return str2;
    }

    /* renamed from: b */
    public static String m2489b(String str, String str2) {
        if (f31603a.containsKey(str)) {
            return f31603a.get(str);
        }
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber f = C14217x3.m2160b(str2) ? m2480f(str) : m2495a(str, str2);
        String format = (f == null || !instance.isValidNumber(f)) ? str : instance.format(f, PhoneNumberUtil.PhoneNumberFormat.E164);
        f31603a.put(str, format);
        return format;
    }

    /* renamed from: b */
    public static final boolean m2491b(Context context) {
        boolean z = false;
        if (Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static String m2488c() {
        try {
            return ((TelephonyManager) MyApplication.m29013o().getSystemService("phone")).getSimOperator();
        } catch (SecurityException e) {
            return "";
        }
    }

    /* renamed from: c */
    public static String m2486c(String str) {
        return str != null ? str.replaceAll("[ ()\\-—）（]", "") : null;
    }

    /* renamed from: c */
    public static String m2485c(String str, String str2) {
        if (f31604b.containsKey(str)) {
            return f31604b.get(str);
        }
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber f = C14217x3.m2160b(str2) ? m2480f(str) : m2495a(str, str2);
        String c = (f == null || !instance.isValidNumber(f)) ? str : m2486c(instance.format(f, PhoneNumberUtil.PhoneNumberFormat.NATIONAL));
        f31604b.put(str, c);
        return c;
    }

    /* renamed from: c */
    public static boolean m2487c(@NonNull Context context) {
        return m2502a(context, (Integer) null);
    }

    /* renamed from: d */
    public static String m2484d() {
        try {
            return ((TelephonyManager) MyApplication.m29013o().getSystemService("phone")).getLine1Number();
        } catch (SecurityException e) {
            return "";
        }
    }

    /* renamed from: d */
    public static String m2482d(String str) {
        if (str == null) {
            return "";
        }
        if (str.startsWith("#31#")) {
            String substring = str.substring(4);
            int indexOf = substring.indexOf(",");
            String str2 = substring;
            if (indexOf != -1) {
                str2 = substring.substring(0, indexOf);
            }
            return str2;
        }
        int indexOf2 = str.indexOf(",");
        String str3 = str;
        if (indexOf2 != -1) {
            str3 = str.substring(0, indexOf2);
        }
        return str3;
    }

    /* renamed from: d */
    public static boolean m2483d(Context context) {
        boolean z = false;
        try {
            if (m2503a(context).getVoiceMailNumber() != null) {
                z = true;
            }
        } catch (SecurityException e) {
        }
        return z;
    }

    /* renamed from: e */
    public static String m2481e(String str) {
        return m2493a(str, true, false).replace(" ", "");
    }

    /* renamed from: f */
    public static Phonenumber.PhoneNumber m2480f(String str) {
        Phonenumber.PhoneNumber phoneNumber;
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber a = m2495a(str, C14017g4.m2810n().toUpperCase(Locale.US));
        if (a == null || !instance.isValidNumber(a)) {
            String p = C14017g4.m2808p();
            String str2 = "";
            Phonenumber.PhoneNumber a2 = m2495a(str, p == null ? "" : p.toUpperCase(Locale.US));
            if (a2 == null || !instance.isValidNumber(a2)) {
                String k = C14017g4.m2813k();
                if (k != null) {
                    str2 = k.toUpperCase(Locale.US);
                }
                phoneNumber = m2495a(str, str2);
                if (phoneNumber == null || !instance.isValidNumber(phoneNumber)) {
                    phoneNumber = null;
                }
            } else {
                phoneNumber = a2;
            }
        } else {
            phoneNumber = a;
        }
        return phoneNumber;
    }

    /* renamed from: g */
    public static String m2479g(String str) {
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        Phonenumber.PhoneNumber f = m2480f(str);
        String n = C14017g4.m2810n();
        String str2 = n;
        if (f != null) {
            str2 = n;
            try {
                if (instance.isValidNumber(f)) {
                    str2 = instance.getRegionCodeForNumber(f).toUpperCase(Locale.US);
                }
            } catch (Exception e) {
                str2 = n;
            }
        }
        return str2;
    }

    /* renamed from: h */
    public static boolean m2478h(String str) {
        try {
            return PhoneNumberUtil.getInstance().getNumberType(m2480f(str)).equals(PhoneNumberUtil.PhoneNumberType.FIXED_LINE);
        } catch (NullPointerException e) {
            return false;
        }
    }

    /* renamed from: i */
    public static boolean m2477i(String str) {
        try {
            return PhoneNumberUtil.getInstance().getNumberType(m2480f(str)).equals(PhoneNumberUtil.PhoneNumberType.MOBILE);
        } catch (NullPointerException e) {
            return false;
        }
    }

    /* renamed from: j */
    public static boolean m2476j(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.compile("([0-9+#*]+)").matcher(str).matches();
    }

    /* renamed from: k */
    public static boolean m2475k(String str) {
        try {
            return PhoneNumberUtil.getInstance().isValidNumber(m2480f(str));
        } catch (Throwable th) {
            C14080m2.m2612a(th);
            return false;
        }
    }

    /* renamed from: l */
    public static String m2474l(String str) {
        return m2489b(str, null);
    }

    /* renamed from: m */
    public static String m2473m(String str) {
        return m2485c(str, null);
    }
}
