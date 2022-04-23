package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration.class */
public class AdRegistration {

    /* renamed from: a  reason: collision with root package name */
    static MRAIDPolicy f6367a = MRAIDPolicy.AUTO_DETECT;

    /* renamed from: b  reason: collision with root package name */
    static String[] f6368b = {"com.amazon.admob_adapter.APSAdMobCustomBannerEvent", "com.amazon.mopub_adapter.APSMopubCustomBannerEvent"};

    /* renamed from: c  reason: collision with root package name */
    private static final String f6369c = "AdRegistration";

    /* renamed from: d  reason: collision with root package name */
    private static AdRegistration f6370d;
    private static String e;
    private static Context f;
    private static boolean g = false;
    private static boolean h = false;
    private static ConsentStatus i;
    private static CMPFlavor j;
    private static boolean k;
    private static String l;
    private ActivityMonitor m;
    private Set<Object> n = new HashSet();
    private EventDistributor o = new EventDistributor();

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
            DtbLog.a(f6369c, "mDTB SDK initialize failed due to invalid registration parameters.", illegalArgumentException);
            throw illegalArgumentException;
        }
        e = str;
        f = context.getApplicationContext();
        DtbSharedPreferences.b();
        context.checkCallingOrSelfPermission("android.permission.INTERNET");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            DtbLog.d(f6369c, "Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
        }
        String d2 = DtbSharedPreferences.d();
        if (d2 == null || DtbCommonUtils.e(d2)) {
            DtbSharedPreferences.a("8.4.3");
            DtbSharedPreferences.d(false);
        }
        i = ConsentStatus.CONSENT_NOT_DEFINED;
        j = CMPFlavor.CMP_NOT_DEFINED;
        k = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Activity a() {
        ActivityMonitor activityMonitor = f6370d.m;
        if (activityMonitor.f6363a != null) {
            return activityMonitor.f6363a.get();
        }
        return null;
    }

    public static AdRegistration a(String str, Context context) throws IllegalArgumentException {
        if (!c()) {
            f6370d = new AdRegistration(str, context);
            DTBMetricsConfiguration.getInstance();
        } else if (str != null && !str.equals(e)) {
            e = str;
            DtbSharedPreferences.b();
        }
        f6370d.m = new ActivityMonitor(context);
        return f6370d;
    }

    @Deprecated
    public static void a(Context context) {
        if (context != null) {
            f = context.getApplicationContext();
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters:context for initialization.");
        DtbLog.a(f6369c, "mDTB SDK initialize failed due to invalid registration parameter:context.", illegalArgumentException);
        throw illegalArgumentException;
    }

    public static void a(MRAIDPolicy mRAIDPolicy) {
        f6367a = mRAIDPolicy;
        DTBAdRequest.a();
    }

    public static void a(String[] strArr) {
        DTBAdRequest.a(strArr);
    }

    public static String b() {
        return e;
    }

    public static boolean c() {
        return f6370d != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Context d() {
        return f;
    }

    public static MRAIDPolicy e() {
        return f6367a;
    }

    public static void f() {
        DtbLog.a(DTBLogLevel.All);
    }

    public static boolean g() {
        return g;
    }

    public static void h() {
        h = true;
    }

    public static boolean i() {
        return h;
    }

    public static String j() {
        return DtbCommonUtils.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] k() {
        return f6368b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l() {
        for (String str : f6368b) {
            try {
                Class.forName(str);
                return true;
            } catch (Exception e2) {
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ConsentStatus m() {
        if (c()) {
            DtbSharedPreferences.c();
            String t = DtbSharedPreferences.t();
            return t == null ? i : ConsentStatus.valueOf(t);
        }
        throw new IllegalStateException("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CMPFlavor n() {
        if (c()) {
            DtbSharedPreferences.c();
            String u = DtbSharedPreferences.u();
            return u == null ? j : CMPFlavor.valueOf(u);
        }
        throw new IllegalStateException("mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o() {
        String str;
        if (!k) {
            return l;
        }
        DtbSharedPreferences.c();
        String s = DtbSharedPreferences.s();
        DtbSharedPreferences.c();
        String t = DtbSharedPreferences.t();
        DtbSharedPreferences.c();
        String u = DtbSharedPreferences.u();
        if (s == null && t == null && u == null) {
            str = "";
        } else {
            ArrayList arrayList = new ArrayList();
            if (s != null && s.length() > 2) {
                for (String str2 : s.substring(1, s.length() - 1).split(",")) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
                }
            }
            String a2 = DTBGDPREncoder.a(arrayList);
            str = a2;
            if (!DtbCommonUtils.e(a2)) {
                DtbSharedPreferences.c();
                DtbSharedPreferences.f(a2);
                str = a2;
            }
        }
        k = false;
        l = str;
        return str;
    }
}
