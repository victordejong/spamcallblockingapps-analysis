package com.facebook.p094a;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.EnumC2197q;
import com.facebook.FacebookException;
import com.facebook.internal.C2044k;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2057o;
import com.facebook.internal.C2063r;
import com.facebook.internal.C2079x;
import com.facebook.internal.C2084y;
import com.facebook.p094a.C1904g;
import com.facebook.p094a.p099d.C1855a;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* renamed from: com.facebook.a.h */
/* loaded from: classes-dex2jar.jar:com/facebook/a/h.class */
public class C1915h {

    /* renamed from: d */
    private static ScheduledThreadPoolExecutor f5786d;

    /* renamed from: g */
    private static String f5789g;

    /* renamed from: h */
    private static boolean f5790h;

    /* renamed from: i */
    private static String f5791i;

    /* renamed from: b */
    private final String f5792b;

    /* renamed from: c */
    private final C1806a f5793c;

    /* renamed from: a */
    private static final String f5785a = C1915h.class.getCanonicalName();

    /* renamed from: e */
    private static C1904g.EnumC1905a f5787e = C1904g.EnumC1905a.AUTO;

    /* renamed from: f */
    private static final Object f5788f = new Object();

    public C1915h(Context context, String str, C1803a c1803a) {
        this(C2079x.m15444c(context), str, c1803a);
    }

    public C1915h(String str, String str2, C1803a c1803a) {
        C2084y.m15420a();
        this.f5792b = str;
        C1803a m16259a = c1803a == null ? C1803a.m16259a() : c1803a;
        if (m16259a == null || m16259a.m16239o() || (str2 != null && !str2.equals(m16259a.m16242l()))) {
            this.f5793c = new C1806a(null, str2 == null ? C2079x.m15489a(C2095j.m15360h()) : str2);
        } else {
            this.f5793c = new C1806a(m16259a);
        }
        m15863h();
    }

    /* renamed from: a */
    public static C1904g.EnumC1905a m15884a() {
        C1904g.EnumC1905a enumC1905a;
        synchronized (f5788f) {
            enumC1905a = f5787e;
        }
        return enumC1905a;
    }

    /* renamed from: a */
    public static String m15882a(Context context) {
        if (f5789g == null) {
            synchronized (f5788f) {
                if (f5789g == null) {
                    f5789g = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (f5789g == null) {
                        f5789g = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", f5789g).apply();
                    }
                }
            }
        }
        return f5789g;
    }

    /* renamed from: a */
    public static void m15883a(Application application, String str) {
        if (!C2095j.m15374a()) {
            throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
        }
        C1815b.m16206a();
        C1932p.m15838a();
        String str2 = str;
        if (str == null) {
            str2 = C2095j.m15356l();
        }
        C2095j.m15371a(application, str2);
        C1855a.m16087a(application, str2);
    }

    /* renamed from: a */
    public static void m15881a(final Context context, String str) {
        if (!C2095j.m15352p()) {
            return;
        }
        final C1915h c1915h = new C1915h(context, str, (C1803a) null);
        f5786d.execute(new Runnable() { // from class: com.facebook.a.h.1
            @Override // java.lang.Runnable
            public void run() {
                Bundle bundle = new Bundle();
                String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
                String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
                if (strArr.length != strArr2.length) {
                    throw new FacebookException("Number of class names and key names should match");
                }
                int i = 0;
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    String str2 = strArr[i2];
                    String str3 = strArr2[i2];
                    try {
                        Class.forName(str2);
                        bundle.putInt(str3, 1);
                        i |= 1 << i2;
                    } catch (ClassNotFoundException e) {
                    }
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                if (sharedPreferences.getInt("kitsBitmask", 0) == i) {
                    return;
                }
                sharedPreferences.edit().putInt("kitsBitmask", i).apply();
                c1915h.m15876a("fb_sdk_initialize", (Double) null, bundle);
            }
        });
    }

    /* renamed from: a */
    private static void m15880a(C1848c c1848c, C1806a c1806a) {
        C1879e.m16004a(c1806a, c1848c);
        if (c1848c.m16104b() || f5790h) {
            return;
        }
        if (c1848c.m16108a().equals("fb_mobile_activate_app")) {
            f5790h = true;
        } else {
            C2063r.m15550a(EnumC2197q.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
        }
    }

    /* renamed from: a */
    static void m15879a(String str) {
        SharedPreferences sharedPreferences = C2095j.m15360h().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
        if (str != null) {
            sharedPreferences.edit().putString("install_referrer", str).apply();
        }
    }

    /* renamed from: b */
    private static void m15869b(String str) {
        C2063r.m15550a(EnumC2197q.DEVELOPER_ERRORS, "AppEvents", str);
    }

    /* renamed from: c */
    public static void m15868c() {
        C1879e.m16005a();
    }

    /* renamed from: d */
    public static String m15867d() {
        String str;
        synchronized (f5788f) {
            str = f5791i;
        }
        return str;
    }

    /* renamed from: e */
    public static String m15866e() {
        C2057o.m15565a(new C2057o.AbstractC2059a() { // from class: com.facebook.a.h.2
            @Override // com.facebook.internal.C2057o.AbstractC2059a
            /* renamed from: a */
            public void mo15559a(String str) {
                C1915h.m15879a(str);
            }
        });
        return C2095j.m15360h().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
    }

    /* renamed from: f */
    static void m15865f() {
        if (m15884a() != C1904g.EnumC1905a.EXPLICIT_ONLY) {
            C1879e.m16000a(EnumC1924j.EAGER_FLUSHING_EVENT);
        }
    }

    /* renamed from: g */
    public static Executor m15864g() {
        if (f5786d == null) {
            m15863h();
        }
        return f5786d;
    }

    /* renamed from: h */
    private static void m15863h() {
        synchronized (f5788f) {
            if (f5786d != null) {
                return;
            }
            f5786d = new ScheduledThreadPoolExecutor(1);
            f5786d.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.a.h.3
                @Override // java.lang.Runnable
                public void run() {
                    HashSet<String> hashSet = new HashSet();
                    for (C1806a c1806a : C1879e.m15997b()) {
                        hashSet.add(c1806a.m16231b());
                    }
                    for (String str : hashSet) {
                        C2050m.m15584a(str, true);
                    }
                }
            }, 0L, 86400L, TimeUnit.SECONDS);
        }
    }

    /* renamed from: a */
    public void m15878a(String str, double d, Bundle bundle) {
        m15875a(str, Double.valueOf(d), bundle, false, C1855a.m16084b());
    }

    /* renamed from: a */
    public void m15877a(String str, Bundle bundle) {
        m15875a(str, null, bundle, false, C1855a.m16084b());
    }

    /* renamed from: a */
    public void m15876a(String str, Double d, Bundle bundle) {
        m15875a(str, d, bundle, true, C1855a.m16084b());
    }

    /* renamed from: a */
    void m15875a(String str, Double d, Bundle bundle, boolean z, UUID uuid) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (C2044k.m15615a("app_events_killswitch", C2095j.m15356l(), false)) {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
            return;
        }
        try {
            m15880a(new C1848c(this.f5792b, str, d, bundle, z, C1855a.m16089a(), uuid), this.f5793c);
        } catch (FacebookException e) {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, "AppEvents", "Invalid app event: %s", e.toString());
        } catch (JSONException e2) {
            C2063r.m15549a(EnumC2197q.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
        }
    }

    /* renamed from: a */
    public void m15874a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("_is_suggested_event", "1");
        bundle.putString("_button_text", str2);
        m15877a(str, bundle);
    }

    /* renamed from: a */
    public void m15873a(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (bigDecimal == null || currency == null) {
            C2079x.m15449b(f5785a, "purchaseAmount and currency cannot be null");
            return;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("fb_currency", currency.getCurrencyCode());
        m15875a(str, Double.valueOf(bigDecimal.doubleValue()), bundle, true, C1855a.m16084b());
    }

    /* renamed from: a */
    public void m15872a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        m15871a(bigDecimal, currency, bundle, true);
    }

    /* renamed from: a */
    void m15871a(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        if (bigDecimal == null) {
            m15869b("purchaseAmount cannot be null");
        } else if (currency == null) {
            m15869b("currency cannot be null");
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("fb_currency", currency.getCurrencyCode());
            m15875a("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle, z, C1855a.m16084b());
            m15865f();
        }
    }

    /* renamed from: b */
    public void m15870b() {
        C1879e.m16000a(EnumC1924j.EXPLICIT);
    }
}
