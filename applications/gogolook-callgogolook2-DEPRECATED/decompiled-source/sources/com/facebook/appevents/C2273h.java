package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.facebook.AccessToken;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.p038s.C2327a;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2460n;
import com.facebook.internal.C2466p;
import com.facebook.internal.C2503y;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.h */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/h.class */
public class C2273h {

    /* renamed from: c */
    public static final String f2681c = "com.facebook.appevents.h";

    /* renamed from: d */
    public static ScheduledThreadPoolExecutor f2682d;

    /* renamed from: e */
    public static C2271g.EnumC2272a f2683e = C2271g.EnumC2272a.AUTO;

    /* renamed from: f */
    public static final Object f2684f = new Object();

    /* renamed from: g */
    public static String f2685g;

    /* renamed from: h */
    public static boolean f2686h;

    /* renamed from: i */
    public static String f2687i;

    /* renamed from: a */
    public final String f2688a;

    /* renamed from: b */
    public final C2252a f2689b;

    /* renamed from: com.facebook.appevents.h$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/h$a.class */
    public static final class RunnableC2274a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f2690a;

        /* renamed from: b */
        public final /* synthetic */ C2273h f2691b;

        public RunnableC2274a(Context context, C2273h hVar) {
            this.f2690a = context;
            this.f2691b = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Bundle bundle = new Bundle();
            String[] strArr = {"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"};
            String[] strArr2 = {"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"};
            if (strArr.length == strArr2.length) {
                int i = 0;
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    String str = strArr[i2];
                    String str2 = strArr2[i2];
                    try {
                        Class.forName(str);
                        bundle.putInt(str2, 1);
                        i |= 1 << i2;
                    } catch (ClassNotFoundException e) {
                    }
                }
                SharedPreferences sharedPreferences = this.f2690a.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                if (sharedPreferences.getInt("kitsBitmask", 0) != i) {
                    sharedPreferences.edit().putInt("kitsBitmask", i).apply();
                    this.f2691b.m35318a("fb_sdk_initialize", (Double) null, bundle);
                    return;
                }
                return;
            }
            throw new C6131k("Number of class names and key names should match");
        }
    }

    /* renamed from: com.facebook.appevents.h$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/h$b.class */
    public static final class RunnableC2275b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            HashSet<String> hashSet = new HashSet();
            for (C2252a aVar : C2262e.m35343e()) {
                hashSet.add(aVar.m35376b());
            }
            for (String str : hashSet) {
                C2466p.m34643a(str, true);
            }
        }
    }

    public C2273h(Context context, String str, AccessToken accessToken) {
        this(C2408g0.m34833b(context), str, accessToken);
    }

    public C2273h(String str, String str2, AccessToken accessToken) {
        C2416h0.m34784c();
        this.f2688a = str;
        AccessToken B = accessToken == null ? AccessToken.m35507B() : accessToken;
        if (B == null || B.m35489x() || (str2 != null && !str2.equals(B.m35505a()))) {
            this.f2689b = new C2252a(null, str2 == null ? C2408g0.m34818d(C6135n.m23746e()) : str2);
        } else {
            this.f2689b = new C2252a(B);
        }
        m35306g();
    }

    /* renamed from: a */
    public static String m35324a(Context context) {
        if (f2685g == null) {
            synchronized (f2684f) {
                if (f2685g == null) {
                    f2685g = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (f2685g == null) {
                        f2685g = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", f2685g).apply();
                    }
                }
            }
        }
        return f2685g;
    }

    /* renamed from: a */
    public static void m35325a(Application application, String str) {
        if (C6135n.m23730u()) {
            C2255b.m35372d();
            C2288p.m35270g();
            String str2 = str;
            if (str == null) {
                str2 = C6135n.m23745f();
            }
            C6135n.m23753b(application, str2);
            C2327a.m35151a(application, str2);
            return;
        }
        throw new C6131k("The Facebook sdk must be initialized before calling activateApp");
    }

    /* renamed from: a */
    public static void m35323a(Context context, String str) {
        if (C6135n.m23742i()) {
            f2682d.execute(new RunnableC2274a(context, new C2273h(context, str, (AccessToken) null)));
        }
    }

    /* renamed from: a */
    public static void m35322a(C2257c cVar, C2252a aVar) {
        C2262e.m35354a(aVar, cVar);
        if (!cVar.m35367b() && !f2686h) {
            if (cVar.m35364d().equals("fb_mobile_activate_app")) {
                f2686h = true;
            } else {
                C2503y.m34557a(EnumC6151v.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        }
    }

    /* renamed from: b */
    public static void m35313b() {
        if (m35309d() != C2271g.EnumC2272a.EXPLICIT_ONLY) {
            C2262e.m35351a(EnumC2280j.EAGER_FLUSHING_EVENT);
        }
    }

    /* renamed from: b */
    public static void m35312b(String str) {
        C2503y.m34557a(EnumC6151v.DEVELOPER_ERRORS, "AppEvents", str);
    }

    /* renamed from: c */
    public static Executor m35311c() {
        if (f2682d == null) {
            m35306g();
        }
        return f2682d;
    }

    /* renamed from: c */
    public static void m35310c(String str) {
        SharedPreferences sharedPreferences = C6135n.m23746e().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
        if (str != null) {
            sharedPreferences.edit().putString("install_referrer", str).apply();
        }
    }

    /* renamed from: d */
    public static C2271g.EnumC2272a m35309d() {
        C2271g.EnumC2272a aVar;
        synchronized (f2684f) {
            aVar = f2683e;
        }
        return aVar;
    }

    @Nullable
    /* renamed from: e */
    public static String m35308e() {
        return C6135n.m23746e().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
    }

    /* renamed from: f */
    public static String m35307f() {
        String str;
        synchronized (f2684f) {
            str = f2687i;
        }
        return str;
    }

    /* renamed from: g */
    public static void m35306g() {
        synchronized (f2684f) {
            if (f2682d == null) {
                f2682d = new ScheduledThreadPoolExecutor(1);
                f2682d.scheduleAtFixedRate(new RunnableC2275b(), 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    /* renamed from: h */
    public static void m35305h() {
        C2262e.m35342f();
    }

    /* renamed from: a */
    public void m35326a() {
        C2262e.m35351a(EnumC2280j.EXPLICIT);
    }

    /* renamed from: a */
    public void m35321a(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("_is_suggested_event", "1");
        m35319a(str, bundle);
    }

    /* renamed from: a */
    public void m35320a(String str, double d, Bundle bundle) {
        m35317a(str, Double.valueOf(d), bundle, false, C2327a.m35132m());
    }

    /* renamed from: a */
    public void m35319a(String str, Bundle bundle) {
        m35317a(str, null, bundle, false, C2327a.m35132m());
    }

    /* renamed from: a */
    public void m35318a(String str, Double d, Bundle bundle) {
        m35317a(str, d, bundle, true, C2327a.m35132m());
    }

    /* renamed from: a */
    public void m35317a(String str, Double d, Bundle bundle, boolean z, @Nullable UUID uuid) {
        if (str != null && !str.isEmpty()) {
            if (C2460n.m34676a("app_events_killswitch", C6135n.m23745f(), false)) {
                C2503y.m34556a(EnumC6151v.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                return;
            }
            try {
                m35322a(new C2257c(this.f2688a, str, d, bundle, z, C2327a.m35130o(), uuid), this.f2689b);
            } catch (C6131k e) {
                C2503y.m34556a(EnumC6151v.APP_EVENTS, "AppEvents", "Invalid app event: %s", e.toString());
            } catch (JSONException e2) {
                C2503y.m34556a(EnumC6151v.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
            }
        }
    }

    /* renamed from: a */
    public void m35316a(String str, BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        if (bigDecimal == null || currency == null) {
            C2408g0.m34821c(f2681c, "purchaseAmount and currency cannot be null");
            return;
        }
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putString("fb_currency", currency.getCurrencyCode());
        m35317a(str, Double.valueOf(bigDecimal.doubleValue()), bundle2, true, C2327a.m35132m());
    }

    /* renamed from: a */
    public void m35315a(BigDecimal bigDecimal, Currency currency, Bundle bundle) {
        m35314a(bigDecimal, currency, bundle, true);
    }

    /* renamed from: a */
    public void m35314a(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        if (bigDecimal == null) {
            m35312b("purchaseAmount cannot be null");
        } else if (currency == null) {
            m35312b("currency cannot be null");
        } else {
            Bundle bundle2 = bundle;
            if (bundle == null) {
                bundle2 = new Bundle();
            }
            bundle2.putString("fb_currency", currency.getCurrencyCode());
            m35317a("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z, C2327a.m35132m());
            m35313b();
        }
    }
}
