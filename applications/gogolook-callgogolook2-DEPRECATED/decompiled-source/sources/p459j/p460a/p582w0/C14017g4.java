package p459j.p460a.p582w0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import gogolook.callgogolook2.MyApplication;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.conn.util.InetAddressUtils;
import p081h.p160h.p179e.p180a.C6334a;
import p459j.p460a.p564s.C13565v;
/* renamed from: j.a.w0.g4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/g4.class */
public class C14017g4 {

    /* renamed from: a */
    public static int f31454a;

    /* renamed from: A */
    public static boolean m2835A() {
        return "BR".equalsIgnoreCase(m2810n());
    }

    /* renamed from: B */
    public static boolean m2834B() {
        return "HK".equalsIgnoreCase(m2810n());
    }

    /* renamed from: C */
    public static boolean m2833C() {
        return "IN".equalsIgnoreCase(m2810n());
    }

    /* renamed from: D */
    public static boolean m2832D() {
        return "JP".equalsIgnoreCase(m2810n());
    }

    /* renamed from: E */
    public static boolean m2831E() {
        return "KR".equalsIgnoreCase(m2810n());
    }

    /* renamed from: F */
    public static boolean m2830F() {
        return "TW".equalsIgnoreCase(m2810n());
    }

    /* renamed from: G */
    public static boolean m2829G() {
        return "TH".equalsIgnoreCase(m2810n());
    }

    /* renamed from: H */
    public static boolean m2828H() {
        return "US".equalsIgnoreCase(m2810n());
    }

    /* renamed from: I */
    public static boolean m2827I() {
        return !m2803u();
    }

    /* renamed from: a */
    public static String m2826a() {
        return !TextUtils.isEmpty(C14092n3.m2584a("gmailAccount", "")) ? C14092n3.m2584a("gmailAccount", "") : !TextUtils.isEmpty(C14092n3.m2584a("fbAccount", "")) ? C14092n3.m2584a("fbAccount", "") : "";
    }

    /* renamed from: a */
    public static String m2824a(String str) {
        String str2 = null;
        if (str != null && str.matches("[a-zA-Z]{2}")) {
            str2 = str;
        }
        return str2;
    }

    /* renamed from: a */
    public static String m2823a(boolean z) {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                for (InetAddress inetAddress : Collections.list(networkInterface.getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        boolean isIPv4Address = InetAddressUtils.isIPv4Address(upperCase);
                        if (z) {
                            if (isIPv4Address) {
                                return upperCase;
                            }
                        } else if (!isIPv4Address) {
                            int indexOf = upperCase.indexOf(37);
                            if (indexOf >= 0) {
                                upperCase = upperCase.substring(0, indexOf);
                            }
                            return upperCase;
                        }
                    }
                }
            }
            return "";
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return "";
        }
    }

    /* renamed from: a */
    public static boolean m2825a(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    /* renamed from: b */
    public static String m2822b() {
        return Build.DISPLAY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0045, code lost:
        if (r3.equals("") != false) goto L_0x0048;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2821c() {
        /*
            j.a.s.v r0 = p459j.p460a.p564s.C13565v.m3921g()
            boolean r0 = r0.m23335b()
            if (r0 == 0) goto L_0x001a
            java.lang.String r0 = "random_deviceid_value"
            java.lang.String r1 = ""
            java.lang.String r0 = p459j.p460a.p582w0.C13915b3.m3056b(r0, r1)
            r3 = r0
            r0 = r3
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x001a
            r0 = r3
            return r0
        L_0x001a:
            r0 = 0
            r4 = r0
            r0 = r4
            r3 = r0
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3200r()
            if (r0 == 0) goto L_0x0039
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: SecurityException -> 0x0036
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: SecurityException -> 0x0036
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: SecurityException -> 0x0036
            java.lang.String r0 = r0.getDeviceId()     // Catch: SecurityException -> 0x0036
            r3 = r0
            goto L_0x0039
        L_0x0036:
            r3 = move-exception
            r0 = r4
            r3 = r0
        L_0x0039:
            r0 = r3
            if (r0 == 0) goto L_0x0048
            r0 = r3
            r4 = r0
            r0 = r3
            java.lang.String r1 = ""
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x004b
        L_0x0048:
            java.lang.String r0 = "QWERTYUIOP"
            r4 = r0
        L_0x004b:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14017g4.m2821c():java.lang.String");
    }

    /* renamed from: d */
    public static String m2820d() {
        return C6334a.m23211s().m23220j();
    }

    /* renamed from: e */
    public static String m2819e() {
        return Build.MANUFACTURER;
    }

    /* renamed from: f */
    public static String m2818f() {
        return Build.MODEL;
    }

    /* renamed from: g */
    public static int m2817g() {
        List asList = Arrays.asList(C13915b3.m3056b("VersionCodeRecord", "").split(","));
        int size = asList.size();
        for (int i = 0; i < size; i++) {
            if (!C14217x3.m2160b((String) asList.get(i))) {
                try {
                    return Integer.parseInt((String) asList.get(i));
                } catch (NumberFormatException e) {
                    C14080m2.m2612a((Throwable) e);
                }
            }
        }
        return 0;
    }

    /* renamed from: h */
    public static String m2816h() {
        return Locale.getDefault().getLanguage();
    }

    /* renamed from: i */
    public static Location m2815i() {
        try {
            LocationManager locationManager = (LocationManager) MyApplication.m29013o().getSystemService("location");
            Location lastKnownLocation = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
            Location location = lastKnownLocation;
            if (lastKnownLocation == null) {
                location = lastKnownLocation;
                if (locationManager.isProviderEnabled("gps")) {
                    location = locationManager.getLastKnownLocation("gps");
                }
            }
            Location location2 = location;
            if (location == null) {
                String bestProvider = locationManager.getBestProvider(new Criteria(), true);
                location2 = location;
                if (bestProvider != null) {
                    location2 = locationManager.getLastKnownLocation(bestProvider);
                }
            }
            return location2;
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: j */
    public static String m2814j() {
        String l = m2812l();
        if (TextUtils.isEmpty(l) || l.length() < 4) {
            l = "";
        }
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2813k() {
        /*
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3200r()
            if (r0 == 0) goto L_0x0018
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: SecurityException -> 0x0025
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: SecurityException -> 0x0025
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: SecurityException -> 0x0025
            java.lang.String r0 = r0.getNetworkCountryIso()     // Catch: SecurityException -> 0x0025
            r3 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r3 = r0
        L_0x001a:
            r0 = r3
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0023
            java.lang.String r0 = ""
            r4 = r0
        L_0x0023:
            r0 = r4
            return r0
        L_0x0025:
            r3 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14017g4.m2813k():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2812l() {
        /*
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3200r()
            if (r0 == 0) goto L_0x0018
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: SecurityException -> 0x0025
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: SecurityException -> 0x0025
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: SecurityException -> 0x0025
            java.lang.String r0 = r0.getNetworkOperator()     // Catch: SecurityException -> 0x0025
            r3 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r3 = r0
        L_0x001a:
            r0 = r3
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0023
            java.lang.String r0 = ""
            r4 = r0
        L_0x0023:
            r0 = r4
            return r0
        L_0x0025:
            r3 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14017g4.m2812l():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2811m() {
        /*
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3200r()
            if (r0 == 0) goto L_0x0018
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: SecurityException -> 0x0025
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: SecurityException -> 0x0025
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: SecurityException -> 0x0025
            java.lang.String r0 = r0.getNetworkOperatorName()     // Catch: SecurityException -> 0x0025
            r3 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r3 = r0
        L_0x001a:
            r0 = r3
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0023
            java.lang.String r0 = ""
            r4 = r0
        L_0x0023:
            r0 = r4
            return r0
        L_0x0025:
            r3 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14017g4.m2811m():java.lang.String");
    }

    /* renamed from: n */
    public static String m2810n() {
        Context o = MyApplication.m29013o();
        if (C13565v.m3921g().m23335b()) {
            String string = PreferenceManager.getDefaultSharedPreferences(o).getString("develop_country_preference", "default");
            if (!string.equals("default")) {
                return string.toUpperCase(Locale.US);
            }
        }
        String a = m2824a(C14094o.m2557d());
        String str = a;
        if (TextUtils.isEmpty(a)) {
            TelephonyManager telephonyManager = (TelephonyManager) o.getSystemService("phone");
            String a2 = m2824a(telephonyManager.getSimCountryIso());
            String str2 = a2;
            if (TextUtils.isEmpty(a2)) {
                String a3 = m2824a(telephonyManager.getNetworkCountryIso());
                str2 = a3;
                if (TextUtils.isEmpty(a3)) {
                    str2 = m2824a(m2809o());
                }
            }
            str = str2;
            if (!TextUtils.isEmpty(str2)) {
                C14094o.m2552h(str2);
                str = str2;
            }
        }
        return str != null ? str.toUpperCase(Locale.US) : "";
    }

    /* renamed from: o */
    public static String m2809o() {
        return Locale.getDefault().getCountry();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m2808p() {
        /*
            boolean r0 = p459j.p460a.p582w0.C13878a3.m3200r()
            if (r0 == 0) goto L_0x0018
            android.content.Context r0 = gogolook.callgogolook2.MyApplication.m29013o()     // Catch: SecurityException -> 0x0025
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)     // Catch: SecurityException -> 0x0025
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0     // Catch: SecurityException -> 0x0025
            java.lang.String r0 = r0.getSimCountryIso()     // Catch: SecurityException -> 0x0025
            r3 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r3 = r0
        L_0x001a:
            r0 = r3
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0023
            java.lang.String r0 = ""
            r4 = r0
        L_0x0023:
            r0 = r4
            return r0
        L_0x0025:
            r3 = move-exception
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14017g4.m2808p():java.lang.String");
    }

    /* renamed from: q */
    public static int m2807q() {
        if (f31454a == 0) {
            try {
                Context o = MyApplication.m29013o();
                f31454a = o.getPackageManager().getPackageInfo(o.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        return f31454a;
    }

    /* renamed from: r */
    public static String m2806r() {
        try {
            Context o = MyApplication.m29013o();
            return o.getPackageManager().getPackageInfo(o.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* renamed from: s */
    public static boolean m2805s() {
        return m2825a(21);
    }

    /* renamed from: t */
    public static boolean m2804t() {
        return m2825a(22);
    }

    /* renamed from: u */
    public static boolean m2803u() {
        return m2825a(23);
    }

    /* renamed from: v */
    public static boolean m2802v() {
        return m2825a(24);
    }

    /* renamed from: w */
    public static boolean m2801w() {
        return m2825a(26);
    }

    /* renamed from: x */
    public static boolean m2800x() {
        return m2825a(28);
    }

    /* renamed from: y */
    public static boolean m2799y() {
        return m2825a(29);
    }

    /* renamed from: z */
    public static boolean m2798z() {
        return m2825a(30);
    }
}
