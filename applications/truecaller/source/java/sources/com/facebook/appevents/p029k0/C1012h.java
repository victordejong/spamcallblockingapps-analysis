package com.facebook.appevents.p029k0;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import com.facebook.appevents.p031m0.C1038i;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J0\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0016\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u001aj\b\u0012\u0004\u0012\u00020\u0004`\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0002J\b\u0010\u001d\u001a\u00020\u0015H\u0007J\b\u0010\u001e\u001a\u00020\u0015H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n��R\u0012\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0012\u0010\f\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0010\u0010\r\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseActivityLifecycleTracker;", "", "()V", "BILLING_ACTIVITY_NAME", "", "SERVICE_INTERFACE_NAME", "TAG", "callbacks", "Landroid/app/Application$ActivityLifecycleCallbacks;", "hasBillingActivity", "", "Ljava/lang/Boolean;", "hasBillingService", "inAppBillingObj", "intent", "Landroid/content/Intent;", "isTracking", "Ljava/util/concurrent/atomic/AtomicBoolean;", "serviceConnection", "Landroid/content/ServiceConnection;", "initializeIfNotInitialized", "", "logPurchase", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "purchases", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "isSubscription", "startIapLogging", "startTracking", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/h.class */
public final class C1012h {

    /* renamed from: a */
    public static final C1012h f2774a = new C1012h();

    /* renamed from: b */
    public static final AtomicBoolean f2775b = new AtomicBoolean(false);

    /* renamed from: c */
    public static Boolean f2776c;

    /* renamed from: d */
    public static Boolean f2777d;

    /* renamed from: e */
    public static ServiceConnection f2778e;

    /* renamed from: f */
    public static Application.ActivityLifecycleCallbacks f2779f;

    /* renamed from: g */
    public static Intent f2780g;

    /* renamed from: h */
    public static Object f2781h;

    /* renamed from: a */
    public static final void m41913a(C1012h c1012h, Context context, ArrayList arrayList, boolean z) {
        if (arrayList.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        ArrayList<String> arrayList2 = new ArrayList<>();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                String string = new JSONObject(str).getString("productId");
                l.d(string, "sku");
                l.d(str, "purchase");
                hashMap.put(string, str);
                arrayList2.add(string);
            } catch (JSONException e) {
            }
        }
        C1020k c1020k = C1020k.f2811a;
        Object obj = f2781h;
        Map<String, String> map = null;
        if (!C1220a.m41623b(C1020k.class)) {
            try {
                l.e(context, AnalyticsConstants.CONTEXT);
                l.e(arrayList2, "skuList");
                Map<String, String> m41888j = c1020k.m41888j(arrayList2);
                ArrayList<String> arrayList3 = new ArrayList<>();
                Iterator<String> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    String next = it2.next();
                    if (!m41888j.containsKey(next)) {
                        arrayList3.add(next);
                    }
                }
                m41888j.putAll(c1020k.m41891g(context, arrayList3, obj, z));
                map = m41888j;
            } catch (Throwable th) {
                C1220a.m41624a(th, C1020k.class);
            }
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String str2 = (String) hashMap.get(key);
            if (str2 != null) {
                C1038i c1038i = C1038i.f2863a;
                C1038i.m41863b(str2, value, z);
            }
        }
    }

    /* renamed from: b */
    public static final void m41912b() {
        Boolean bool = Boolean.FALSE;
        if (f2776c == null) {
            Boolean valueOf = Boolean.valueOf(C1024o.m41875a("com.android.vending.billing.IInAppBillingService$Stub") != null);
            f2776c = valueOf;
            if (!l.a(valueOf, bool)) {
                f2777d = Boolean.valueOf(C1024o.m41875a("com.android.billingclient.api.ProxyBillingActivity") != null);
                C1020k c1020k = C1020k.f2811a;
                if (!C1220a.m41623b(C1020k.class)) {
                    try {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        SharedPreferences sharedPreferences = C1020k.f2815e;
                        long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
                        if (j == 0) {
                            sharedPreferences.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                        } else if (currentTimeMillis - j > 604800) {
                            sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                        }
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C1020k.class);
                    }
                }
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND").setPackage("com.android.vending");
                l.d(intent, "Intent(\"com.android.vending.billing.InAppBillingService.BIND\")\n            .setPackage(\"com.android.vending\")");
                f2780g = intent;
                f2778e = new ServiceConnectionC1010f();
                f2779f = new C1011g();
            }
        }
        if (l.a(f2776c, bool)) {
            return;
        }
        C1038i c1038i = C1038i.f2863a;
        if (!C1038i.m41864a() || !f2775b.compareAndSet(false, true)) {
            return;
        }
        C23228f0 c23228f0 = C23228f0.f64291a;
        Context m7354a = C23228f0.m7354a();
        if (!(m7354a instanceof Application)) {
            return;
        }
        Application application = (Application) m7354a;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = f2779f;
        if (activityLifecycleCallbacks == null) {
            l.l("callbacks");
            throw null;
        }
        application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
        Intent intent2 = f2780g;
        if (intent2 == null) {
            l.l("intent");
            throw null;
        }
        ServiceConnection serviceConnection = f2778e;
        if (serviceConnection != null) {
            m7354a.bindService(intent2, serviceConnection, 1);
        } else {
            l.l("serviceConnection");
            throw null;
        }
    }
}
