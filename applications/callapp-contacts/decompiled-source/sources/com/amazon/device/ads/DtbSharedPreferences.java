package com.amazon.device.ads;

import android.content.SharedPreferences;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbSharedPreferences.class */
public class DtbSharedPreferences {

    /* renamed from: a  reason: collision with root package name */
    public static DtbSharedPreferences f6507a;

    /* renamed from: b  reason: collision with root package name */
    private static SharedPreferences f6508b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f6509c = false;

    /* renamed from: d  reason: collision with root package name */
    private static boolean f6510d = false;

    protected DtbSharedPreferences() {
        if (AdRegistration.d() != null) {
            f6508b = AdRegistration.d().getSharedPreferences("com.amazon.device.ads.dtb.preferences", 0);
        }
    }

    private static <T> T a(String str, Class<T> cls) {
        if (f6509c) {
            return null;
        }
        SharedPreferences v = v();
        if (cls.isAssignableFrom(String.class)) {
            return (T) v.getString(str, null);
        }
        if (cls.isAssignableFrom(Set.class)) {
            return (T) v.getStringSet(str, null);
        }
        if (cls.isAssignableFrom(Boolean.class)) {
            return (T) Boolean.valueOf(v.getBoolean(str, false));
        }
        if (cls.isAssignableFrom(Long.class)) {
            return (T) Long.valueOf(v.getLong(str, 0L));
        }
        if (cls.isAssignableFrom(Integer.class)) {
            return (T) Integer.valueOf(v.getInt(str, 0));
        }
        if (cls.isAssignableFrom(Float.class)) {
            return (T) Float.valueOf(v.getFloat(str, BitmapDescriptorFactory.HUE_RED));
        }
        throw new IllegalArgumentException(cls.getName() + " is not supported");
    }

    public static void a(long j) {
        a("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    public static void a(String str) {
        a("amzn-dtb-version_in_use", str);
    }

    private static <T> void a(String str, T t) {
        SharedPreferences v;
        if (!f6509c && (v = v()) != null) {
            SharedPreferences.Editor edit = v.edit();
            if (t instanceof Boolean) {
                edit.putBoolean(str, ((Boolean) t).booleanValue());
            } else if (t instanceof String) {
                edit.putString(str, (String) t);
            } else if (t instanceof Integer) {
                edit.putInt(str, ((Integer) t).intValue());
            } else if (t instanceof Float) {
                edit.putFloat(str, ((Float) t).floatValue());
            } else if (t instanceof Long) {
                edit.putLong(str, ((Long) t).longValue());
            } else if (t instanceof Set) {
                edit.putStringSet(str, (Set) t);
            } else {
                throw new IllegalArgumentException("Saving of " + t.getClass() + " is not supported.");
            }
            edit.commit();
        }
    }

    public static void a(boolean z) {
        f6510d = z;
    }

    public static boolean a() {
        return f6510d;
    }

    public static DtbSharedPreferences b() {
        DtbSharedPreferences dtbSharedPreferences = new DtbSharedPreferences();
        f6507a = dtbSharedPreferences;
        return dtbSharedPreferences;
    }

    public static void b(long j) {
        a("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    public static void b(String str) {
        if (str != null) {
            a("amzn-dtb-ad-id", str);
        }
    }

    public static void b(boolean z) {
        a("amzn-dtb-adid-new", Boolean.TRUE);
    }

    public static DtbSharedPreferences c() {
        DtbSharedPreferences dtbSharedPreferences = f6507a;
        if (dtbSharedPreferences != null) {
            return dtbSharedPreferences;
        }
        throw new IllegalArgumentException("unable to retrieve shared preferences without intialization");
    }

    public static void c(long j) {
        if (j < 1 || j > 172800000) {
            a("amzn-dtb-ad-config-ttl", 172800000L);
        } else {
            a("amzn-dtb-ad-config-ttl", Long.valueOf(j));
        }
    }

    public static void c(String str) {
        if (str != null) {
            a("amzn-dtb-idfa", str);
        } else {
            a("amzn-dtb-idfa", "");
        }
    }

    public static void c(boolean z) {
        a("amzn-dtb-adid-changed", Boolean.TRUE);
    }

    public static String d() {
        return (String) a("amzn-dtb-version_in_use", (Class<Object>) String.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(long j) {
        a("amzn-dtb-web-resource-ping", Long.valueOf(j));
    }

    public static void d(String str) {
        if (!DtbCommonUtils.e(str)) {
            a("amzn-dtb-ad-aax-hostname", str);
        } else {
            a("amzn-dtb-ad-aax-hostname", DtbConstants.f6464b);
        }
    }

    public static void d(boolean z) {
        a("amzn-dtb-is-gps-unavailable", Boolean.valueOf(z));
    }

    public static String e() {
        return (String) a("amzn-dtb-ad-id", (Class<Object>) String.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(long j) {
        a("sdk-wrapper-ping", Long.valueOf(j));
    }

    public static boolean e(String str) {
        if (!DtbCommonUtils.e(str)) {
            String str2 = (String) a("amzn-dtb-ad-sis-endpoint", (Class<Object>) String.class);
            String str3 = str + "/api3";
            if (str2 != null && str2.equals(str3)) {
                return false;
            }
            a("amzn-dtb-ad-sis-endpoint", str3);
            return true;
        }
        a("amzn-dtb-ad-sis-endpoint", DtbConstants.f6466d + "/api3");
        return false;
    }

    public static void f() {
        g("amzn-dtb-ad-id");
    }

    public static void f(long j) {
        a("amzn-dtb-ad-sis-last-ping", Long.valueOf(j));
    }

    public static void f(String str) {
        a("NON_IAB_Custom_Consent", str);
    }

    public static String g() {
        return (String) a("amzn-dtb-idfa", (Class<Object>) String.class);
    }

    private static void g(String str) {
        SharedPreferences v = v();
        if (v.contains(str)) {
            SharedPreferences.Editor edit = v.edit();
            edit.remove(str);
            edit.apply();
        }
    }

    public static boolean i() {
        return ((Boolean) a("amzn-dtb-is-gps-unavailable", (Class<Object>) Boolean.class)).booleanValue();
    }

    public static Long j() {
        return (Long) a("amzn-dtb-ad-sis-last-checkin", (Class<Object>) Long.class);
    }

    public static Long k() {
        return (Long) a("amzn-dtb-ad-sis-last-checkin", (Class<Object>) Long.class);
    }

    public static String l() {
        String str = (String) a("amzn-dtb-ad-aax-hostname", (Class<Object>) String.class);
        if (!AdRegistration.g() || !DtbDebugProperties.f6467a) {
            String str2 = str;
            if (DtbCommonUtils.e(str)) {
                str2 = DtbConstants.f6464b;
            }
            return str2;
        }
        String str3 = str;
        if (str == null) {
            str3 = DtbConstants.f6464b;
        }
        return DtbDebugProperties.a(str3);
    }

    public static String m() {
        return (!AdRegistration.g() || !DtbDebugProperties.f6467a) ? DtbConstants.f6465c : DtbDebugProperties.b(DtbConstants.f6465c);
    }

    public static long n() {
        long longValue = ((Long) a("amzn-dtb-ad-config-ttl", (Class<Object>) Long.class)).longValue();
        if (longValue < 1 || longValue > 172800000) {
            return 172800000L;
        }
        return longValue;
    }

    public static String o() {
        String str = (String) a("amzn-dtb-ad-sis-endpoint", (Class<Object>) String.class);
        String str2 = str;
        if (DtbCommonUtils.e(str)) {
            str2 = DtbConstants.f6466d + "/api3";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long p() {
        return (Long) a("amzn-dtb-web-resource-ping", (Class<Object>) Long.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Long q() {
        return (Long) a("sdk-wrapper-ping", (Class<Object>) Long.class);
    }

    public static long r() {
        return ((Long) a("amzn-dtb-ad-sis-last-ping", (Class<Object>) Long.class)).longValue();
    }

    public static String s() {
        return (String) a("NON_IAB_VENDORLIST", (Class<Object>) String.class);
    }

    public static String t() {
        return (String) a("NON_IAB_CONSENT_STATUS", (Class<Object>) String.class);
    }

    public static String u() {
        return (String) a("NON_IAB_CMP_FLAVOR", (Class<Object>) String.class);
    }

    private static SharedPreferences v() {
        if (f6508b == null) {
            f6508b = AdRegistration.d().getSharedPreferences("com.amazon.device.ads.dtb.preferences", 0);
        }
        return f6508b;
    }

    public final void a(Boolean bool) {
        synchronized (this) {
            g("amzn-dtb-oo");
            if (bool != null) {
                a("amzn-dtb-oo", bool);
            }
        }
    }

    public final Boolean h() {
        synchronized (this) {
            if (!v().contains("amzn-dtb-oo")) {
                return null;
            }
            return (Boolean) a("amzn-dtb-oo", (Class<Object>) Boolean.class);
        }
    }
}
