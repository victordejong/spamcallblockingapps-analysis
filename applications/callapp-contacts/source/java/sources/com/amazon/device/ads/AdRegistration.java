package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration.class */
public class AdRegistration {

    /* renamed from: a */
    static MRAIDPolicy f11669a = MRAIDPolicy.AUTO_DETECT;

    /* renamed from: b */
    static String[] f11670b = {"com.amazon.admob_adapter.APSAdMobCustomBannerEvent", "com.amazon.mopub_adapter.APSMopubCustomBannerEvent"};

    /* renamed from: c */
    private static final String f11671c = "AdRegistration";

    /* renamed from: d */
    private static AdRegistration f11672d;

    /* renamed from: e */
    private static String f11673e;

    /* renamed from: f */
    private static Context f11674f;

    /* renamed from: g */
    private static boolean f11675g = false;

    /* renamed from: h */
    private static boolean f11676h = false;

    /* renamed from: i */
    private static ConsentStatus f11677i;

    /* renamed from: j */
    private static CMPFlavor f11678j;

    /* renamed from: k */
    private static boolean f11679k;

    /* renamed from: l */
    private static String f11680l;

    /* renamed from: m */
    private ActivityMonitor f11681m;

    /* renamed from: n */
    private Set<Object> f11682n = new HashSet();

    /* renamed from: o */
    private EventDistributor f11683o = new EventDistributor();

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$CMPFlavor.class */
    public enum CMPFlavor {
        CMP_NOT_DEFINED,
        GOOGLE_CMP,
        MOPUB_CMP
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$ConsentStatus.class */
    public enum ConsentStatus {
        CONSENT_NOT_DEFINED,
        EXPLICIT_YES,
        EXPLICIT_NO,
        UNKNOWN
    }

    private AdRegistration(String str, Context context) throws IllegalArgumentException {
        if (context == null || str == null || "".equals(str.trim())) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters for initialization.");
            DtbLog.m38826a(f11671c, "mDTB SDK initialize failed due to invalid registration parameters.", illegalArgumentException);
            throw illegalArgumentException;
        }
        f11673e = str;
        f11674f = context.getApplicationContext();
        DtbSharedPreferences.m38801b();
        context.checkCallingOrSelfPermission("android.permission.INTERNET");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            DtbLog.m38818d(f11671c, "Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
        }
        String m38793d = DtbSharedPreferences.m38793d();
        if (m38793d == null || DtbCommonUtils.m38882e(m38793d)) {
            DtbSharedPreferences.m38805a("8.4.3");
            DtbSharedPreferences.m38790d(false);
        }
        f11677i = ConsentStatus.CONSENT_NOT_DEFINED;
        f11678j = CMPFlavor.CMP_NOT_DEFINED;
        f11679k = false;
    }

    /* renamed from: a */
    public static Activity m39078a() {
        ActivityMonitor activityMonitor = f11672d.f11681m;
        if (activityMonitor.f11665a != null) {
            return activityMonitor.f11665a.get();
        }
        return null;
    }

    /* renamed from: a */
    public static AdRegistration m39075a(String str, Context context) throws IllegalArgumentException {
        if (!m39072c()) {
            f11672d = new AdRegistration(str, context);
            DTBMetricsConfiguration.getInstance();
        } else if (str != null && !str.equals(f11673e)) {
            f11673e = str;
            DtbSharedPreferences.m38801b();
        }
        f11672d.f11681m = new ActivityMonitor(context);
        return f11672d;
    }

    @Deprecated
    /* renamed from: a */
    public static void m39077a(Context context) {
        if (context != null) {
            f11674f = context.getApplicationContext();
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters:context for initialization.");
        DtbLog.m38826a(f11671c, "mDTB SDK initialize failed due to invalid registration parameter:context.", illegalArgumentException);
        throw illegalArgumentException;
    }

    /* renamed from: a */
    public static void m39076a(MRAIDPolicy mRAIDPolicy) {
        f11669a = mRAIDPolicy;
        DTBAdRequest.m38984a();
    }

    /* renamed from: a */
    public static void m39074a(String[] strArr) {
        DTBAdRequest.m38978a(strArr);
    }

    /* renamed from: b */
    public static String m39073b() {
        return f11673e;
    }

    /* renamed from: c */
    public static boolean m39072c() {
        return f11672d != null;
    }

    /* renamed from: d */
    public static Context m39071d() {
        return f11674f;
    }

    /* renamed from: e */
    public static MRAIDPolicy m39070e() {
        return f11669a;
    }

    /* renamed from: f */
    public static void m39069f() {
        DtbLog.m38829a(DTBLogLevel.All);
    }

    /* renamed from: g */
    public static boolean m39068g() {
        return f11675g;
    }

    /* renamed from: h */
    public static void m39067h() {
        f11676h = true;
    }

    /* renamed from: i */
    public static boolean m39066i() {
        return f11676h;
    }

    /* renamed from: j */
    public static String m39065j() {
        return DtbCommonUtils.m38890b();
    }

    /* renamed from: k */
    public static String[] m39064k() {
        return f11670b;
    }

    /* renamed from: l */
    public static boolean m39063l() {
        for (String str : f11670b) {
            try {
                Class.forName(str);
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    /* renamed from: m */
    public static ConsentStatus m39062m() {
        if (m39072c()) {
            DtbSharedPreferences.m38797c();
            String m38769t = DtbSharedPreferences.m38769t();
            return m38769t == null ? f11677i : ConsentStatus.valueOf(m38769t);
        }
        throw new IllegalStateException("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
    }

    /* renamed from: n */
    public static CMPFlavor m39061n() {
        if (m39072c()) {
            DtbSharedPreferences.m38797c();
            String m38768u = DtbSharedPreferences.m38768u();
            return m38768u == null ? f11678j : CMPFlavor.valueOf(m38768u);
        }
        throw new IllegalStateException("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
    }

    /* renamed from: o */
    public static String m39060o() {
        String str;
        if (f11679k) {
            DtbSharedPreferences.m38797c();
            String m38770s = DtbSharedPreferences.m38770s();
            DtbSharedPreferences.m38797c();
            String m38769t = DtbSharedPreferences.m38769t();
            DtbSharedPreferences.m38797c();
            String m38768u = DtbSharedPreferences.m38768u();
            if (m38770s == null && m38769t == null && m38768u == null) {
                str = "";
            } else {
                ArrayList arrayList = new ArrayList();
                if (m38770s != null && m38770s.length() > 2) {
                    for (String str2 : m38770s.substring(1, m38770s.length() - 1).split(",")) {
                        arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
                    }
                }
                String m38930a = DTBGDPREncoder.m38930a(arrayList);
                str = m38930a;
                if (!DtbCommonUtils.m38882e(m38930a)) {
                    DtbSharedPreferences.m38797c();
                    DtbSharedPreferences.m38784f(m38930a);
                    str = m38930a;
                }
            }
            f11679k = false;
            f11680l = str;
            return str;
        }
        return f11680l;
    }
}
