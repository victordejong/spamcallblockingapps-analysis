package com.amazon.device.ads;

import android.content.SharedPreferences;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbSharedPreferences.class */
public class DtbSharedPreferences {

    /* renamed from: a */
    public static DtbSharedPreferences f11908a;

    /* renamed from: b */
    private static SharedPreferences f11909b;

    /* renamed from: c */
    private static boolean f11910c = false;

    /* renamed from: d */
    private static boolean f11911d = false;

    protected DtbSharedPreferences() {
        if (AdRegistration.m39071d() != null) {
            f11909b = AdRegistration.m39071d().getSharedPreferences("com.amazon.device.ads.dtb.preferences", 0);
        }
    }

    /* renamed from: a */
    private static <T> T m38804a(String str, Class<T> cls) {
        if (f11910c) {
            return null;
        }
        SharedPreferences m38767v = m38767v();
        if (cls.isAssignableFrom(String.class)) {
            return (T) m38767v.getString(str, null);
        }
        if (cls.isAssignableFrom(Set.class)) {
            return (T) m38767v.getStringSet(str, null);
        }
        if (cls.isAssignableFrom(Boolean.class)) {
            return (T) Boolean.valueOf(m38767v.getBoolean(str, false));
        }
        if (cls.isAssignableFrom(Long.class)) {
            return (T) Long.valueOf(m38767v.getLong(str, 0L));
        }
        if (cls.isAssignableFrom(Integer.class)) {
            return (T) Integer.valueOf(m38767v.getInt(str, 0));
        }
        if (cls.isAssignableFrom(Float.class)) {
            return (T) Float.valueOf(m38767v.getFloat(str, BitmapDescriptorFactory.HUE_RED));
        }
        throw new IllegalArgumentException(cls.getName() + " is not supported");
    }

    /* renamed from: a */
    public static void m38807a(long j) {
        m38803a("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    /* renamed from: a */
    public static void m38805a(String str) {
        m38803a("amzn-dtb-version_in_use", str);
    }

    /* renamed from: a */
    private static <T> void m38803a(String str, T t) {
        SharedPreferences m38767v;
        if (!f11910c && (m38767v = m38767v()) != null) {
            SharedPreferences.Editor edit = m38767v.edit();
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
            } else if (!(t instanceof Set)) {
                throw new IllegalArgumentException("Saving of " + t.getClass() + " is not supported.");
            } else {
                edit.putStringSet(str, (Set) t);
            }
            edit.commit();
        }
    }

    /* renamed from: a */
    public static void m38802a(boolean z) {
        f11911d = z;
    }

    /* renamed from: a */
    public static boolean m38808a() {
        return f11911d;
    }

    /* renamed from: b */
    public static DtbSharedPreferences m38801b() {
        DtbSharedPreferences dtbSharedPreferences = new DtbSharedPreferences();
        f11908a = dtbSharedPreferences;
        return dtbSharedPreferences;
    }

    /* renamed from: b */
    public static void m38800b(long j) {
        m38803a("amzn-dtb-ad-sis-last-checkin", Long.valueOf(j));
    }

    /* renamed from: b */
    public static void m38799b(String str) {
        if (str != null) {
            m38803a("amzn-dtb-ad-id", str);
        }
    }

    /* renamed from: b */
    public static void m38798b(boolean z) {
        m38803a("amzn-dtb-adid-new", Boolean.TRUE);
    }

    /* renamed from: c */
    public static DtbSharedPreferences m38797c() {
        DtbSharedPreferences dtbSharedPreferences = f11908a;
        if (dtbSharedPreferences != null) {
            return dtbSharedPreferences;
        }
        throw new IllegalArgumentException("unable to retrieve shared preferences without intialization");
    }

    /* renamed from: c */
    public static void m38796c(long j) {
        if (j < 1 || j > 172800000) {
            m38803a("amzn-dtb-ad-config-ttl", 172800000L);
        } else {
            m38803a("amzn-dtb-ad-config-ttl", Long.valueOf(j));
        }
    }

    /* renamed from: c */
    public static void m38795c(String str) {
        if (str != null) {
            m38803a("amzn-dtb-idfa", str);
        } else {
            m38803a("amzn-dtb-idfa", "");
        }
    }

    /* renamed from: c */
    public static void m38794c(boolean z) {
        m38803a("amzn-dtb-adid-changed", Boolean.TRUE);
    }

    /* renamed from: d */
    public static String m38793d() {
        return (String) m38804a("amzn-dtb-version_in_use", (Class<Object>) String.class);
    }

    /* renamed from: d */
    public static void m38792d(long j) {
        m38803a("amzn-dtb-web-resource-ping", Long.valueOf(j));
    }

    /* renamed from: d */
    public static void m38791d(String str) {
        if (!DtbCommonUtils.m38882e(str)) {
            m38803a("amzn-dtb-ad-aax-hostname", str);
        } else {
            m38803a("amzn-dtb-ad-aax-hostname", DtbConstants.f11849b);
        }
    }

    /* renamed from: d */
    public static void m38790d(boolean z) {
        m38803a("amzn-dtb-is-gps-unavailable", Boolean.valueOf(z));
    }

    /* renamed from: e */
    public static String m38789e() {
        return (String) m38804a("amzn-dtb-ad-id", (Class<Object>) String.class);
    }

    /* renamed from: e */
    public static void m38788e(long j) {
        m38803a("sdk-wrapper-ping", Long.valueOf(j));
    }

    /* renamed from: e */
    public static boolean m38787e(String str) {
        if (DtbCommonUtils.m38882e(str)) {
            m38803a("amzn-dtb-ad-sis-endpoint", DtbConstants.f11851d + "/api3");
            return false;
        }
        String str2 = (String) m38804a("amzn-dtb-ad-sis-endpoint", (Class<Object>) String.class);
        String str3 = str + "/api3";
        if (str2 != null && str2.equals(str3)) {
            return false;
        }
        m38803a("amzn-dtb-ad-sis-endpoint", str3);
        return true;
    }

    /* renamed from: f */
    public static void m38786f() {
        m38782g("amzn-dtb-ad-id");
    }

    /* renamed from: f */
    public static void m38785f(long j) {
        m38803a("amzn-dtb-ad-sis-last-ping", Long.valueOf(j));
    }

    /* renamed from: f */
    public static void m38784f(String str) {
        m38803a("NON_IAB_Custom_Consent", str);
    }

    /* renamed from: g */
    public static String m38783g() {
        return (String) m38804a("amzn-dtb-idfa", (Class<Object>) String.class);
    }

    /* renamed from: g */
    private static void m38782g(String str) {
        SharedPreferences m38767v = m38767v();
        if (m38767v.contains(str)) {
            SharedPreferences.Editor edit = m38767v.edit();
            edit.remove(str);
            edit.apply();
        }
    }

    /* renamed from: i */
    public static boolean m38780i() {
        return ((Boolean) m38804a("amzn-dtb-is-gps-unavailable", (Class<Object>) Boolean.class)).booleanValue();
    }

    /* renamed from: j */
    public static Long m38779j() {
        return (Long) m38804a("amzn-dtb-ad-sis-last-checkin", (Class<Object>) Long.class);
    }

    /* renamed from: k */
    public static Long m38778k() {
        return (Long) m38804a("amzn-dtb-ad-sis-last-checkin", (Class<Object>) Long.class);
    }

    /* renamed from: l */
    public static String m38777l() {
        String str = (String) m38804a("amzn-dtb-ad-aax-hostname", (Class<Object>) String.class);
        if (!AdRegistration.m39068g() || !DtbDebugProperties.f11852a) {
            String str2 = str;
            if (DtbCommonUtils.m38882e(str)) {
                str2 = DtbConstants.f11849b;
            }
            return str2;
        }
        String str3 = str;
        if (str == null) {
            str3 = DtbConstants.f11849b;
        }
        return DtbDebugProperties.m38875a(str3);
    }

    /* renamed from: m */
    public static String m38776m() {
        return (!AdRegistration.m39068g() || !DtbDebugProperties.f11852a) ? DtbConstants.f11850c : DtbDebugProperties.m38872b(DtbConstants.f11850c);
    }

    /* renamed from: n */
    public static long m38775n() {
        long longValue = ((Long) m38804a("amzn-dtb-ad-config-ttl", (Class<Object>) Long.class)).longValue();
        if (longValue < 1 || longValue > 172800000) {
            return 172800000L;
        }
        return longValue;
    }

    /* renamed from: o */
    public static String m38774o() {
        String str = (String) m38804a("amzn-dtb-ad-sis-endpoint", (Class<Object>) String.class);
        String str2 = str;
        if (DtbCommonUtils.m38882e(str)) {
            str2 = DtbConstants.f11851d + "/api3";
        }
        return str2;
    }

    /* renamed from: p */
    public static Long m38773p() {
        return (Long) m38804a("amzn-dtb-web-resource-ping", (Class<Object>) Long.class);
    }

    /* renamed from: q */
    public static Long m38772q() {
        return (Long) m38804a("sdk-wrapper-ping", (Class<Object>) Long.class);
    }

    /* renamed from: r */
    public static long m38771r() {
        return ((Long) m38804a("amzn-dtb-ad-sis-last-ping", (Class<Object>) Long.class)).longValue();
    }

    /* renamed from: s */
    public static String m38770s() {
        return (String) m38804a("NON_IAB_VENDORLIST", (Class<Object>) String.class);
    }

    /* renamed from: t */
    public static String m38769t() {
        return (String) m38804a("NON_IAB_CONSENT_STATUS", (Class<Object>) String.class);
    }

    /* renamed from: u */
    public static String m38768u() {
        return (String) m38804a("NON_IAB_CMP_FLAVOR", (Class<Object>) String.class);
    }

    /* renamed from: v */
    private static SharedPreferences m38767v() {
        if (f11909b == null) {
            f11909b = AdRegistration.m39071d().getSharedPreferences("com.amazon.device.ads.dtb.preferences", 0);
        }
        return f11909b;
    }

    /* renamed from: a */
    public final void m38806a(Boolean bool) {
        synchronized (this) {
            m38782g("amzn-dtb-oo");
            if (bool != null) {
                m38803a("amzn-dtb-oo", bool);
            }
        }
    }

    /* renamed from: h */
    public final Boolean m38781h() {
        synchronized (this) {
            if (!m38767v().contains("amzn-dtb-oo")) {
                return null;
            }
            return (Boolean) m38804a("amzn-dtb-oo", (Class<Object>) Boolean.class);
        }
    }
}
