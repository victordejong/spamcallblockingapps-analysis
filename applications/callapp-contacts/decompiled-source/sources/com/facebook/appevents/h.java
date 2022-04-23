package com.facebook.appevents;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.appevents.g;
import com.facebook.internal.ae;
import com.facebook.internal.af;
import com.facebook.internal.b.b.a;
import com.facebook.internal.l;
import com.facebook.internal.o;
import com.facebook.internal.q;
import com.facebook.internal.u;
import com.facebook.internal.x;
import com.facebook.m;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final String f19597a = "com.facebook.appevents.h";

    /* renamed from: d  reason: collision with root package name */
    private static ScheduledThreadPoolExecutor f19598d;
    private static int e = g.a.f19573a;
    private static final Object f = new Object();
    private static String g;
    private static boolean h;
    private static String i;

    /* renamed from: b  reason: collision with root package name */
    private final String f19599b;

    /* renamed from: c  reason: collision with root package name */
    private final a f19600c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context, String str, AccessToken accessToken) {
        this(ae.c(context), str, accessToken);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, AccessToken accessToken) {
        af.a();
        this.f19599b = str;
        AccessToken currentAccessToken = accessToken == null ? AccessToken.getCurrentAccessToken() : accessToken;
        if (currentAccessToken == null || currentAccessToken.isExpired() || (str2 != null && !str2.equals(currentAccessToken.getApplicationId()))) {
            this.f19600c = new a(null, str2 == null ? ae.a(com.facebook.g.i()) : str2);
        } else {
            this.f19600c = new a(currentAccessToken);
        }
        g();
    }

    public static int a() {
        int i2;
        if (a.a(h.class)) {
            return 0;
        }
        try {
            synchronized (f) {
                i2 = e;
            }
            return i2;
        } catch (Throwable th) {
            a.a(th, h.class);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        if (a.a(h.class)) {
            return null;
        }
        try {
            if (g == null) {
                synchronized (f) {
                    if (g == null) {
                        String string = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                        g = string;
                        if (string == null) {
                            g = "XZ" + UUID.randomUUID().toString();
                            context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", g).apply();
                        }
                    }
                }
            }
            return g;
        } catch (Throwable th) {
            a.a(th, h.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Application application, String str) {
        if (!a.a(h.class)) {
            try {
                if (com.facebook.g.a()) {
                    b.a();
                    p.a();
                    String str2 = str;
                    if (str == null) {
                        str2 = com.facebook.g.m();
                    }
                    com.facebook.g.a(application, str2);
                    com.facebook.appevents.f.a.a(application, str2);
                    return;
                }
                throw new FacebookException("The Facebook sdk must be initialized before calling activateApp");
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(final Context context, String str) {
        if (!a.a(h.class)) {
            try {
                if (com.facebook.g.p()) {
                    final h hVar = new h(context, str, (AccessToken) null);
                    f19598d.execute(new Runnable() { // from class: com.facebook.appevents.h.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!a.a(this)) {
                                try {
                                    Bundle bundle = new Bundle();
                                    int i2 = 0;
                                    for (int i3 = 0; i3 < 11; i3++) {
                                        String str2 = new String[]{"com.facebook.core.Core", "com.facebook.login.Login", "com.facebook.share.Share", "com.facebook.places.Places", "com.facebook.messenger.Messenger", "com.facebook.applinks.AppLinks", "com.facebook.marketing.Marketing", "com.facebook.gamingservices.GamingServices", "com.facebook.all.All", "com.android.billingclient.api.BillingClient", "com.android.vending.billing.IInAppBillingService"}[i3];
                                        String str3 = new String[]{"core_lib_included", "login_lib_included", "share_lib_included", "places_lib_included", "messenger_lib_included", "applinks_lib_included", "marketing_lib_included", "gamingservices_lib_included", "all_lib_included", "billing_client_lib_included", "billing_service_lib_included"}[i3];
                                        try {
                                            Class.forName(str2);
                                            bundle.putInt(str3, 1);
                                            i2 |= 1 << i3;
                                        } catch (ClassNotFoundException e2) {
                                        }
                                    }
                                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                                    if (sharedPreferences.getInt("kitsBitmask", 0) != i2) {
                                        sharedPreferences.edit().putInt("kitsBitmask", i2).apply();
                                        hVar.a("fb_sdk_initialize", (Double) null, bundle);
                                    }
                                } catch (Throwable th) {
                                    a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    private static void a(c cVar, a aVar) {
        if (!a.a(h.class)) {
            try {
                e.a(aVar, cVar);
                if (l.a(l.b.OnDevicePostInstallEventProcessing) && com.facebook.appevents.h.a.a()) {
                    com.facebook.appevents.h.a.a(aVar.f19415b, cVar);
                }
                if (!cVar.f19502b && !h) {
                    if (cVar.f19503c.equals("fb_mobile_activate_app")) {
                        h = true;
                    } else {
                        x.a(m.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
                    }
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    static void a(String str) {
        if (!a.a(h.class)) {
            try {
                SharedPreferences sharedPreferences = com.facebook.g.i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0);
                if (str != null) {
                    sharedPreferences.edit().putString("install_referrer", str).apply();
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    private static void b(String str) {
        if (!a.a(h.class)) {
            try {
                x.a(m.DEVELOPER_ERRORS, "AppEvents", str);
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        if (!a.a(h.class)) {
            try {
                e.a();
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d() {
        String str;
        if (a.a(h.class)) {
            return null;
        }
        try {
            synchronized (f) {
                str = i;
            }
            return str;
        } catch (Throwable th) {
            a.a(th, h.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e() {
        if (a.a(h.class)) {
            return null;
        }
        try {
            u.a(new u.a() { // from class: com.facebook.appevents.h.2
                @Override // com.facebook.internal.u.a
                public final void a(String str) {
                    h.a(str);
                }
            });
            return com.facebook.g.i().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("install_referrer", null);
        } catch (Throwable th) {
            a.a(th, h.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor f() {
        if (a.a(h.class)) {
            return null;
        }
        try {
            if (f19598d == null) {
                g();
            }
            return f19598d;
        } catch (Throwable th) {
            a.a(th, h.class);
            return null;
        }
    }

    private static void g() {
        if (!a.a(h.class)) {
            try {
                synchronized (f) {
                    if (f19598d == null) {
                        f19598d = new ScheduledThreadPoolExecutor(1);
                        f19598d.scheduleAtFixedRate(new Runnable() { // from class: com.facebook.appevents.h.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (!a.a(this)) {
                                    try {
                                        HashSet<String> hashSet = new HashSet();
                                        for (a aVar : e.b()) {
                                            hashSet.add(aVar.f19415b);
                                        }
                                        for (String str : hashSet) {
                                            q.a(str, true);
                                        }
                                    } catch (Throwable th) {
                                        a.a(th, this);
                                    }
                                }
                            }
                        }, 0L, 86400L, TimeUnit.SECONDS);
                    }
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    private static void h() {
        if (!a.a(h.class)) {
            try {
                if (a() != g.a.f19574b) {
                    e.a(j.EAGER_FLUSHING_EVENT);
                }
            } catch (Throwable th) {
                a.a(th, h.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, double d2, Bundle bundle) {
        if (!a.a(this)) {
            try {
                a(str, Double.valueOf(d2), bundle, false, com.facebook.appevents.f.a.b());
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(String str, Bundle bundle) {
        if (!a.a(this)) {
            try {
                a(str, null, bundle, false, com.facebook.appevents.f.a.b());
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, Double d2, Bundle bundle) {
        if (!a.a(this)) {
            try {
                a(str, null, bundle, true, com.facebook.appevents.f.a.b());
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(String str, Double d2, Bundle bundle, boolean z, UUID uuid) {
        if (!a.a(this) && str != null) {
            try {
                if (!str.isEmpty()) {
                    if (o.a("app_events_killswitch", com.facebook.g.m(), false)) {
                        x.a(m.APP_EVENTS, "AppEvents", "KillSwitch is enabled and fail to log app event: %s", str);
                        return;
                    }
                    try {
                        a(new c(this.f19599b, str, d2, bundle, z, com.facebook.appevents.f.a.a(), uuid), this.f19600c);
                    } catch (FacebookException e2) {
                        x.a(m.APP_EVENTS, "AppEvents", "Invalid app event: %s", e2.toString());
                    } catch (JSONException e3) {
                        x.a(m.APP_EVENTS, "AppEvents", "JSON encoding for app event failed: '%s'", e3.toString());
                    }
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void a(BigDecimal bigDecimal, Currency currency, Bundle bundle, boolean z) {
        if (!a.a(this)) {
            try {
                if (bigDecimal == null) {
                    b("purchaseAmount cannot be null");
                } else if (currency == null) {
                    b("currency cannot be null");
                } else {
                    Bundle bundle2 = bundle;
                    if (bundle == null) {
                        bundle2 = new Bundle();
                    }
                    bundle2.putString("fb_currency", currency.getCurrencyCode());
                    a("fb_mobile_purchase", Double.valueOf(bigDecimal.doubleValue()), bundle2, z, com.facebook.appevents.f.a.b());
                    h();
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public final void b() {
        if (!a.a(this)) {
            try {
                e.a(j.EXPLICIT);
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }
}
