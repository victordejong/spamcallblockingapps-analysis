package com.tmobile.services.nameid.utility;

import androidx.annotation.NonNull;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.geocoding.PhoneNumberOfflineGeocoder;
import com.tmobile.services.nameid.model.TmoUserStatus;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/PhoneNumberHelper.class */
public class PhoneNumberHelper {

    /* renamed from: a */
    private static PhoneNumberUtil f14421a = PhoneNumberUtil.m7999t();

    /* renamed from: b */
    private static HashMap<String, String> f14422b = new HashMap<>();

    /* renamed from: c */
    private static HashMap<String, String> f14423c = new HashMap<>();

    private PhoneNumberHelper() {
        throw new IllegalAccessError("This is a utility class, no need to create it");
    }

    /* renamed from: a */
    public static String m5418a(String str) {
        if (str.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
            return str;
        }
        return TmoUserStatus.CUSTOMER_TYPE_POSTPAID + str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r2.isEmpty() != false) goto L_0x000d;
     */
    @androidx.annotation.NonNull
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m5417b(java.lang.String r2) {
        /*
            r0 = r2
            if (r0 == 0) goto L_0x000d
            r0 = r2
            r3 = r0
            r0 = r2
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0011
        L_0x000d:
            java.lang.String r0 = com.tmobile.services.nameid.utility.DeviceInfoUtils.m5757g()
            r3 = r0
        L_0x0011:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.PhoneNumberHelper.m5417b(java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public static String m5416c(String str) {
        return str.replaceAll("\\D+", "");
    }

    @NonNull
    /* renamed from: d */
    public static String m5415d(@Nullable String str) {
        return m5414e(str, "");
    }

    @NonNull
    /* renamed from: e */
    public static String m5414e(@Nullable String str, @Nullable String str2) {
        String str3;
        if (str == null) {
            return "";
        }
        if (str.length() < 10) {
            return str;
        }
        if (str.startsWith("+") || (str2 != null && !str2.isEmpty())) {
            str3 = str;
        } else {
            str3 = "+" + str;
        }
        if (f14423c.containsKey(str + str2)) {
            return f14423c.get(str);
        }
        PhoneNumberUtil t = PhoneNumberUtil.m7999t();
        Phonenumber.PhoneNumber k = m5408k(str3, str2);
        if (k == null) {
            f14423c.put(str, str);
            return str;
        }
        String k2 = t.m8011k(k, PhoneNumberUtil.PhoneNumberFormat.E164);
        f14423c.put(str + str2, k2);
        return k2;
    }

    /* renamed from: f */
    private static int m5413f() {
        if (DeviceInfoUtils.m5757g().equalsIgnoreCase(Locale.US.getCountry())) {
            return 1;
        }
        return DeviceInfoUtils.m5757g().equalsIgnoreCase("ES") ? 52 : -1;
    }

    @NonNull
    /* renamed from: g */
    public static String m5412g(@Nullable String str, @Nullable String str2) {
        if (str == null || str.isEmpty()) {
            LogUtil.m5643d("PhoneNumberHelper#getDisplayNumber", "Can not format a null or empty number String.");
            return "";
        }
        if (!StringParsingUtils.m5336d(str) && str.length() >= 4) {
            String str3 = str;
            if (!str.startsWith("+")) {
                str3 = str;
                if (str.length() > 10) {
                    str3 = "+" + str;
                }
            }
            if (f14422b.containsKey(str3)) {
                return f14422b.get(str3);
            }
            boolean startsWith = str3.startsWith("+");
            Phonenumber.PhoneNumber k = m5408k(str3, str2);
            if (k == null) {
                return str3;
            }
            String k2 = (!startsWith || k.m7902e() == m5413f()) ? f14421a.m8011k(k, PhoneNumberUtil.PhoneNumberFormat.NATIONAL) : f14421a.m8011k(k, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
            f14422b.put(str3, k2);
            return k2;
        }
        return str;
    }

    /* renamed from: h */
    public static String m5411h(String str) {
        String str2 = str;
        if (!str.startsWith("+")) {
            str2 = str;
            if (str.length() > 10) {
                str2 = "+" + str;
            }
        }
        Phonenumber.PhoneNumber k = m5408k(str2, null);
        return k == null ? "" : PhoneNumberOfflineGeocoder.m7874d().m7876b(k, DeviceInfoUtils.m5758f());
    }

    @NonNull
    /* renamed from: i */
    public static String m5410i(@Nullable String str) {
        if (!StringParsingUtils.m5336d(str)) {
            return str != null ? m5414e(str, "").replaceAll("\\+", "") : "";
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: j */
    public static String m5409j(@NonNull String str) {
        boolean q = m5402q(str);
        boolean l = m5407l(str);
        String str2 = str;
        if (q) {
            str2 = str;
            if (!l) {
                str2 = m5418a(str);
            }
        }
        return str2;
    }

    @Nullable
    /* renamed from: k */
    private static Phonenumber.PhoneNumber m5408k(String str, @Nullable String str2) {
        if (!str.matches("^.*\\d.*$")) {
            return null;
        }
        try {
            return str.startsWith("+") ? PhoneNumberUtil.m7999t().m8026c0(str, "") : PhoneNumberUtil.m7999t().m8026c0(str, m5417b(str2));
        } catch (Exception e) {
            LogUtil.m5631p("PhoneNumberHelper#getParsedPhoneNumber", "error parsing phone number - " + e.getMessage() + " (" + str + ")");
            return null;
        }
    }

    /* renamed from: l */
    public static boolean m5407l(String str) {
        return str.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
    }

    /* renamed from: m */
    public static boolean m5406m(String str) {
        return str.startsWith("+1");
    }

    /* renamed from: n */
    private static boolean m5405n(@NonNull String str) {
        boolean l = m5407l(str);
        boolean z = true;
        boolean z2 = true;
        int length = str.length();
        if (!l) {
            if (length < 10) {
                z2 = false;
            }
            return z2;
        }
        if (length < 11) {
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public static boolean m5404o(String str) {
        return Pattern.matches("(^\\+?[0-9].*$)", str) && Pattern.matches("(^1[0-9]{10}$)|(^\\+1[0-9]{10}$)|(^[023456789][0-9]{9}$)", str);
    }

    /* renamed from: p */
    public static boolean m5403p(@Nullable String str) {
        String i = m5410i(str);
        return StringParsingUtils.m5335e(i) && m5405n(i) && !StringParsingUtils.m5336d(i);
    }

    /* renamed from: q */
    public static boolean m5402q(@NonNull String str) {
        boolean z = false;
        try {
            PhoneNumberUtil t = PhoneNumberUtil.m7999t();
            boolean Q = t.m8041Q(t.m8026c0(str, "US"), "US");
            boolean Q2 = t.m8041Q(t.m8026c0(str, "CA"), "CA");
            LogUtil.m5643d("PhoneNumberHelper#", "Number (" + str + ") is: isValidUsNumber? " + Q + " isValidCanadaNumber? " + Q2);
            if (Q || Q2) {
                z = true;
            }
        } catch (Throwable th) {
        }
        return z;
    }

    /* renamed from: r */
    public static String m5401r(String str) {
        String str2 = str;
        if (str.startsWith(TmoUserStatus.CUSTOMER_TYPE_POSTPAID)) {
            str2 = str.replaceFirst(TmoUserStatus.CUSTOMER_TYPE_POSTPAID, "");
        }
        return str2;
    }

    /* renamed from: s */
    public static String m5400s(String str) {
        String str2 = str;
        if (str.startsWith("+")) {
            str2 = str.replaceFirst("\\+", "");
        }
        return str2;
    }

    /* renamed from: t */
    public static String m5399t(String str) {
        String str2 = str;
        if (str.startsWith("+1")) {
            str2 = str.replaceFirst("\\+1", "+");
        }
        return str2;
    }

    /* renamed from: u */
    public static boolean m5398u(PhoneNumberUtil phoneNumberUtil, String str) {
        try {
            return phoneNumberUtil.m8042P(phoneNumberUtil.m8026c0(str, null));
        } catch (Exception e) {
            return false;
        }
    }
}
