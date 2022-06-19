package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.C10181g;
import com.facebook.EnumC10396m;
import com.facebook.FacebookException;
import com.facebook.appevents.C10046g;
import com.facebook.appevents.p285f.C10026a;
import com.facebook.appevents.p287h.C10067a;
import com.facebook.internal.C10213ae;
import com.facebook.internal.C10218af;
import com.facebook.internal.C10291l;
import com.facebook.internal.C10298o;
import com.facebook.internal.C10306q;
import com.facebook.internal.C10330u;
import com.facebook.internal.C10336x;
import com.facebook.internal.p299b.p301b.C10249a;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* renamed from: com.facebook.appevents.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h.class */
public class C10063h {

    /* renamed from: a */
    public static final String f33375a = "com.facebook.appevents.h";

    /* renamed from: d */
    private static ScheduledThreadPoolExecutor f33376d;

    /* renamed from: e */
    private static int f33377e = C10046g.EnumC10047a.f33339a;

    /* renamed from: f */
    private static final Object f33378f = new Object();

    /* renamed from: g */
    private static String f33379g;

    /* renamed from: h */
    private static boolean f33380h;

    /* renamed from: i */
    private static String f33381i;

    /* renamed from: b */
    private final String f33382b;

    /* renamed from: c */
    private final C9958a f33383c;

    public C10063h(Context context, String str, AccessToken accessToken) {
        this(C10213ae.m23202c(context), str, accessToken);
    }

    public C10063h(String str, String str2, AccessToken accessToken) {
        C10218af.m23182a();
        this.f33382b = str;
        AccessToken currentAccessToken = accessToken == null ? AccessToken.getCurrentAccessToken() : accessToken;
        if (currentAccessToken == null || currentAccessToken.isExpired() || (str2 != null && !str2.equals(currentAccessToken.getApplicationId()))) {
            this.f33383c = new C9958a(null, str2 == null ? C10213ae.m23248a(C10181g.m23290i()) : str2);
        } else {
            this.f33383c = new C9958a(currentAccessToken);
        }
        m23473g();
    }

    /* renamed from: a */
    public static int m23490a() {
        int i;
        if (C10249a.m23108a(C10063h.class)) {
            return 0;
        }
        try {
            synchronized (f33378f) {
                i = f33377e;
            }
            return i;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
            return 0;
        }
    }

    /* renamed from: a */
    public static String m23488a(Context context) {
        if (C10249a.m23108a(C10063h.class)) {
            return null;
        }
        try {
            if (f33379g == null) {
                synchronized (f33378f) {
                    if (f33379g == null) {
                        String string = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                        f33379g = string;
                        if (string == null) {
                            f33379g = "XZ" + UUID.randomUUID().toString();
                            context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", f33379g).apply();
                        }
                    }
                }
            }
            return f33379g;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23489a(Application application, String str) {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            if (!C10181g.m23306a()) {
                throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
            }
            C9967b.m23724a();
            C10102p.m23403a();
            String str2 = str;
            if (str == null) {
                str2 = C10181g.m23286m();
            }
            C10181g.m23304a(application, str2);
            C10026a.m23580a(application, str2);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: a */
    public static void m23487a(final Context context, String str) {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            if (!C10181g.m23283p()) {
                return;
            }
            final C10063h c10063h = new C10063h(context, str, (AccessToken) null);
            f33376d.execute(new Runnable() { // from class: com.facebook.appevents.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        Bundle bundle = new Bundle();
                        int i = 0;
                        for (int i2 = 0; i2 < 11; i2++) {
                            String str2 = new String[]{"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"}[i2];
                            String str3 = new String[]{"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"}[i2];
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
                        c10063h.m23482a("fb_sdk_initialize", (Double) null, bundle);
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: a */
    private static void m23486a(C10002c c10002c, C9958a c9958a) {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            C10016e.m23604a(c9958a, c10002c);
            if (C10291l.m23051a(C10291l.EnumC10293b.OnDevicePostInstallEventProcessing) && C10067a.m23471a()) {
                C10067a.m23469a(c9958a.f33137b, c10002c);
            }
            if (c10002c.f33250b || f33380h) {
                return;
            }
            if (c10002c.f33251c.equals("fb_mobile_activate_app")) {
                f33380h = true;
            } else {
                C10336x.m22993a(EnumC10396m.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: a */
    static void m23485a(String str) {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            SharedPreferences sharedPreferences = C10181g.m23290i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
            if (str == null) {
                return;
            }
            sharedPreferences.edit().putString("install_referrer", str).apply();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: b */
    private static void m23478b(String str) {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            C10336x.m22993a(EnumC10396m.DEVELOPER_ERRORS, "AppEvents", str);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: c */
    public static void m23477c() {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            C10016e.m23606a();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: d */
    public static String m23476d() {
        String str;
        if (C10249a.m23108a(C10063h.class)) {
            return null;
        }
        try {
            synchronized (f33378f) {
                str = f33381i;
            }
            return str;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
            return null;
        }
    }

    /* renamed from: e */
    public static String m23475e() {
        if (C10249a.m23108a(C10063h.class)) {
            return null;
        }
        try {
            C10330u.m22999a(new C10330u.AbstractC10331a() { // from class: com.facebook.appevents.h.2
                @Override // com.facebook.internal.C10330u.AbstractC10331a
                /* renamed from: a */
                public final void mo22998a(String str) {
                    C10063h.m23485a(str);
                }
            });
            return C10181g.m23290i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
            return null;
        }
    }

    /* renamed from: f */
    public static Executor m23474f() {
        if (C10249a.m23108a(C10063h.class)) {
            return null;
        }
        try {
            if (f33376d == null) {
                m23473g();
            }
            return f33376d;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
            return null;
        }
    }

    /* renamed from: g */
    private static void m23473g() {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            synchronized (f33378f) {
                if (f33376d != null) {
                    return;
                }
                f33376d = new ScheduledThreadPoolExecutor(1);
                f33376d.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.appevents.h.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (C10249a.m23108a(this)) {
                            return;
                        }
                        try {
                            HashSet<String> hashSet = new HashSet();
                            for (C9958a c9958a : C10016e.m23597b()) {
                                hashSet.add(c9958a.f33137b);
                            }
                            for (String str : hashSet) {
                                C10306q.m23026a(str, true);
                            }
                        } catch (Throwable th) {
                            C10249a.m23106a(th, this);
                        }
                    }
                }, 0L, 86400L, TimeUnit.SECONDS);
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: h */
    private static void m23472h() {
        if (C10249a.m23108a(C10063h.class)) {
            return;
        }
        try {
            if (m23490a() == C10046g.EnumC10047a.f33340b) {
                return;
            }
            C10016e.m23600a(EnumC10084j.EAGER_FLUSHING_EVENT);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10063h.class);
        }
    }

    /* renamed from: a */
    public final void m23484a(String str, double d, Bundle bundle) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m23481a(str, Double.valueOf(d), bundle, false, C10026a.m23577b());
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m23483a(String str, Bundle bundle) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m23481a(str, null, bundle, false, C10026a.m23577b());
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m23482a(String str, Double d, Bundle bundle) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            m23481a(str, null, bundle, true, C10026a.m23577b());
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: a */
    public final void m23481a(String str, Double d, Bundle bundle, boolean z, UUID uuid) {
        if (!C10249a.m23108a(this) && str != null) {
            try {
                if (str.isEmpty()) {
                    return;
                }
                if (C10298o.m23039a("app_events_killswitch", C10181g.m23286m(), false)) {
                    C10336x.m22992a(EnumC10396m.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                    return;
                }
                try {
                    m23486a(new C10002c(this.f33382b, str, d, bundle, z, C10026a.m23582a(), uuid), this.f33383c);
                } catch (FacebookException e) {
                    C10336x.m22992a(EnumC10396m.APP_EVENTS, "AppEvents", "Invalid app event: %s", e.toString());
                } catch (JSONException e2) {
                    C10336x.m22992a(EnumC10396m.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e2.toString());
                }
            } catch (Throwable th) {
                C10249a.m23106a(th, this);
            }
        }
    }

    /* renamed from: a */
    public final void m23480a(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (bigDecimal == null) {
                m23478b("purchaseAmount cannot be null");
            } else if (currency == null) {
                m23478b("currency cannot be null");
            } else {
                Bundle bundle2 = bundle;
                if (bundle == null) {
                    bundle2 = new Bundle();
                }
                bundle2.putString("fb_currency", currency.getCurrencyCode());
                m23481a("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z, C10026a.m23577b());
                m23472h();
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    /* renamed from: b */
    public final void m23479b() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            C10016e.m23600a(EnumC10084j.EXPLICIT);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
