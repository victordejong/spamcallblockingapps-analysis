package p095f8;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.appcompat.widget.C0302z;
import ba.C0748b;
import com.android.billingclient.api.AbstractC0869a;
import com.android.billingclient.api.C0870b;
import com.android.billingclient.api.Purchase;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.play_billing.zzb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import p095f8.C2768a;
import p106g8.C2914d;
import p117h8.C3043q;
import p122i2.AbstractC3066b;
import p122i2.C3065a;
import p122i2.C3067c;
import p122i2.C3072h;
import p122i2.C3078n;
import p122i2.C3081q;
import p122i2.ServiceConnectionC3077m;
import p149k8.C3403s;
import p170m7.C3661g;
import p229s2.C4280b;
import p229s2.C4281c;
import p233s6.C4313h;
import p233s6.C4316k;
import p241t4.C4398d;
import p277w7.C4749e;
import p277w7.C4766p;
import p293y2.C4989f;
import p293y2.C4996m;
import p303z2.C5054o;
import p308z7.AbstractC5111a;
import p308z7.AbstractC5112b;
import p308z7.AbstractC5113c;
/* renamed from: f8.a */
/* loaded from: classes2-dex2jar.jar:f8/a.class */
public class C2768a {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a */
    public static Context f9468a;

    /* renamed from: b */
    public static AbstractC0869a f9469b;

    /* renamed from: c */
    public static Map<String, Bundle> f9470c = new HashMap();

    /* renamed from: d */
    public static Map<String, Bundle> f9471d = new HashMap();

    /* renamed from: e */
    public static final List<String> f9472e = Collections.unmodifiableList(new C2769a());

    /* renamed from: f */
    public static final List<String> f9473f = Collections.unmodifiableList(new C2770b());

    /* renamed from: g */
    public static final List<String> f9474g = Collections.unmodifiableList(new C2771c());

    /* renamed from: h */
    public static final List<String> f9475h = Collections.unmodifiableList(new C2772d());

    /* renamed from: f8.a$a */
    /* loaded from: classes2-dex2jar.jar:f8/a$a.class */
    public class C2769a extends ArrayList<String> {
        public C2769a() {
            add("lifetime");
            add("pro");
            add("donate_bronze");
            add("donate_silver");
            add("donate_gold");
            add("donate1");
            add("donate2");
            add("donate3");
        }
    }

    /* renamed from: f8.a$b */
    /* loaded from: classes2-dex2jar.jar:f8/a$b.class */
    public class C2770b extends ArrayList<String> {
        public C2770b() {
            add("lifetime");
            add("pro");
        }
    }

    /* renamed from: f8.a$c */
    /* loaded from: classes2-dex2jar.jar:f8/a$c.class */
    public class C2771c extends ArrayList<String> {
        public C2771c() {
            add("donate_bronze");
            add("donate_silver");
            add("donate_gold");
            add("donate1");
            add("donate2");
            add("donate3");
        }
    }

    /* renamed from: f8.a$d */
    /* loaded from: classes2-dex2jar.jar:f8/a$d.class */
    public class C2772d extends ArrayList<String> {
        public C2772d() {
            add("disable_ads");
            add("1month");
            add("6months");
            add("12months");
        }
    }

    /* renamed from: f8.a$e */
    /* loaded from: classes2-dex2jar.jar:f8/a$e.class */
    public class C2773e implements AbstractC3066b {
        /* renamed from: a */
        public void m3137a(C3067c c3067c) {
            if (c3067c.f10403a == 0) {
                ((HashMap) C2768a.f9470c).clear();
                ArrayList arrayList = new ArrayList(C2768a.f9472e);
                AbstractC0869a abstractC0869a = C2768a.f9469b;
                C3072h c3072h = new C3072h();
                c3072h.f10406a = "inapp";
                c3072h.f10407b = arrayList;
                abstractC0869a.mo7223e(c3072h, C4398d.f13704f);
                ArrayList arrayList2 = new ArrayList(C2768a.f9475h);
                AbstractC0869a abstractC0869a2 = C2768a.f9469b;
                C3072h c3072h2 = new C3072h();
                c3072h2.f10406a = "subs";
                c3072h2.f10407b = arrayList2;
                abstractC0869a2.mo7223e(c3072h2, C5054o.f15346e);
                C2768a.m3140i();
            }
        }
    }

    /* renamed from: a */
    public static void m3148a(AbstractC0869a abstractC0869a, String str) {
        if (str != null) {
            final C3065a c3065a = new C3065a();
            c3065a.f10402a = str;
            final C4280b c4280b = new C4280b(abstractC0869a);
            final C0870b c0870b = (C0870b) abstractC0869a;
            if (!c0870b.mo7225c()) {
                C3067c c3067c = C3078n.f10428l;
                abstractC0869a.mo7226b();
                m3142g();
                return;
            } else if (TextUtils.isEmpty(c3065a.f10402a)) {
                zzb.zzn("BillingClient", "Please provide a valid purchase token.");
                C3067c c3067c2 = C3078n.f10425i;
                abstractC0869a.mo7226b();
                m3142g();
                return;
            } else if (!c0870b.f3220k) {
                C3067c c3067c3 = C3078n.f10418b;
                abstractC0869a.mo7226b();
                m3142g();
                return;
            } else if (c0870b.m7218j(new Callable() { // from class: i2.t
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    C0870b c0870b2 = C0870b.this;
                    C3065a c3065a2 = c3065a;
                    C4280b c4280b2 = c4280b;
                    Objects.requireNonNull(c0870b2);
                    try {
                        Bundle zzd = c0870b2.f3215f.zzd(9, c0870b2.f3214e.getPackageName(), c3065a2.f10402a, zzb.zzc(c3065a2, c0870b2.f3211b));
                        zzb.zzb(zzd, "BillingClient");
                        zzb.zzj(zzd, "BillingClient");
                        AbstractC0869a abstractC0869a2 = (AbstractC0869a) c4280b2.f13425a;
                        Context context = C2768a.f9468a;
                        abstractC0869a2.mo7226b();
                        C2768a.m3142g();
                        return null;
                    } catch (Exception e) {
                        zzb.zzo("BillingClient", "Error acknowledge purchase!", e);
                        C3067c c3067c4 = C3078n.f10428l;
                        AbstractC0869a abstractC0869a3 = (AbstractC0869a) c4280b2.f13425a;
                        Context context2 = C2768a.f9468a;
                        abstractC0869a3.mo7226b();
                        C2768a.m3142g();
                        return null;
                    }
                }
            }, 30000L, new Runnable() { // from class: i2.r
                @Override // java.lang.Runnable
                public final void run() {
                    C4280b c4280b2 = C4280b.this;
                    C3067c c3067c4 = C3078n.f10429m;
                    AbstractC0869a abstractC0869a2 = (AbstractC0869a) c4280b2.f13425a;
                    Context context = C2768a.f9468a;
                    abstractC0869a2.mo7226b();
                    C2768a.m3142g();
                }
            }, c0870b.m7222f()) != null) {
                return;
            } else {
                c0870b.m7220h();
                abstractC0869a.mo7226b();
                m3142g();
                return;
            }
        }
        throw new IllegalArgumentException("Purchase token must be set");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x009d, code lost:
        if (r0.getBoolean("isAcknowledged") != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0109, code lost:
        if (r0.getBoolean("isAcknowledged") != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x010c, code lost:
        r11 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0160 A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3147b(java.util.Map<java.lang.String, android.os.Bundle> r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p095f8.C2768a.m3147b(java.util.Map, boolean):boolean");
    }

    /* renamed from: c */
    public static int m3146c(String str) {
        return f9475h.contains(str) ? 1 : f9472e.contains(str) ? 0 : -1;
    }

    /* renamed from: d */
    public static C4316k m3145d(Bundle bundle) {
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("token", c4316k.m1109e(bundle.getString("PurchaseToken")));
        c4316k.f13470a.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, c4316k.m1109e(bundle.getString("SKU")));
        c4316k.f13470a.put("packagename", c4316k.m1109e(bundle.getString("PackageName")));
        c4316k.f13470a.put("type", c4316k.m1109e(Integer.valueOf(m3146c(bundle.getString("SKU")))));
        return c4316k;
    }

    /* renamed from: e */
    public static C4316k m3144e(Purchase purchase) {
        C4316k c4316k = new C4316k();
        c4316k.f13470a.put("token", c4316k.m1109e(purchase.m7233b()));
        c4316k.f13470a.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, c4316k.m1109e(purchase.m7232c().get(0)));
        c4316k.f13470a.put("packagename", c4316k.m1109e(purchase.m7234a()));
        c4316k.f13470a.put("type", c4316k.m1109e(Integer.valueOf(m3146c(purchase.m7232c().get(0)))));
        return c4316k;
    }

    /* renamed from: f */
    public static C4313h m3143f() {
        C4313h c4313h = new C4313h();
        try {
            for (Bundle bundle : ((HashMap) f9471d).values()) {
                c4313h.f13468a.add(m3145d(bundle));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c4313h;
    }

    /* renamed from: g */
    public static void m3142g() {
        ServiceInfo serviceInfo;
        AbstractC0869a abstractC0869a = f9469b;
        if (abstractC0869a != null && abstractC0869a.mo7225c()) {
            f9469b.mo7226b();
        }
        Context context = f9468a;
        C4281c c4281c = C4281c.f13430f;
        if (context != null) {
            C0870b c0870b = new C0870b(true, context, c4281c);
            f9469b = c0870b;
            if (c0870b.mo7225c()) {
                return;
            }
            AbstractC0869a abstractC0869a2 = f9469b;
            C2773e c2773e = new C2773e();
            C0870b c0870b2 = (C0870b) abstractC0869a2;
            if (c0870b2.mo7225c()) {
                zzb.zzm("BillingClient", "Service connection is valid. No need to re-initialize.");
                c2773e.m3137a(C3078n.f10427k);
                return;
            } else if (c0870b2.f3210a == 1) {
                zzb.zzn("BillingClient", "Client is already in the process of connecting to billing service.");
                c2773e.m3137a(C3078n.f10420d);
                return;
            } else if (c0870b2.f3210a == 3) {
                zzb.zzn("BillingClient", "Client was already closed and can't be reused. Please create another instance.");
                c2773e.m3137a(C3078n.f10428l);
                return;
            } else {
                c0870b2.f3210a = 1;
                C0302z c0302z = c0870b2.f3213d;
                C3081q c3081q = (C3081q) c0302z.f1162b;
                Context context2 = (Context) c0302z.f1161a;
                IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
                if (!c3081q.f10438b) {
                    context2.registerReceiver((C3081q) c3081q.f10439c.f1162b, intentFilter);
                    c3081q.f10438b = true;
                }
                zzb.zzm("BillingClient", "Starting in-app billing setup.");
                c0870b2.f3216g = new ServiceConnectionC3077m(c0870b2, c2773e);
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                List<ResolveInfo> queryIntentServices = c0870b2.f3214e.getPackageManager().queryIntentServices(intent, 0);
                if (queryIntentServices != null && !queryIntentServices.isEmpty() && (serviceInfo = queryIntentServices.get(0).serviceInfo) != null) {
                    String str = serviceInfo.packageName;
                    String str2 = serviceInfo.name;
                    if (!"com.android.vending".equals(str) || str2 == null) {
                        zzb.zzn("BillingClient", "The device doesn't have valid Play Store.");
                    } else {
                        ComponentName componentName = new ComponentName(str, str2);
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(componentName);
                        intent2.putExtra("playBillingLibraryVersion", c0870b2.f3211b);
                        if (c0870b2.f3214e.bindService(intent2, c0870b2.f3216g, 1)) {
                            zzb.zzm("BillingClient", "Service was bonded successfully.");
                            return;
                        }
                        zzb.zzn("BillingClient", "Connection to Billing service is blocked.");
                    }
                }
                c0870b2.f3210a = 0;
                zzb.zzm("BillingClient", "Billing service unavailable on device.");
                c2773e.m3137a(C3078n.f10419c);
                return;
            }
        }
        throw new IllegalArgumentException("Please provide a valid Context.");
    }

    /* renamed from: h */
    public static boolean m3141h() {
        AbstractC0869a abstractC0869a = f9469b;
        return abstractC0869a != null && abstractC0869a.mo7225c();
    }

    /* renamed from: i */
    public static void m3140i() {
        AbstractC0869a abstractC0869a = f9469b;
        if (abstractC0869a == null || !abstractC0869a.mo7225c()) {
            return;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        AtomicBoolean atomicBoolean2 = new AtomicBoolean(false);
        ((HashMap) f9471d).clear();
        f9469b.mo7224d("inapp", new C4996m(atomicBoolean, atomicBoolean2, 5));
        f9469b.mo7224d("subs", new C4989f(atomicBoolean2, atomicBoolean));
    }

    /* renamed from: j */
    public static void m3139j(Context context) {
        C4398d c4398d = C4398d.f13705g;
        String m3131B = C2779g.m3131B(16);
        String str = m3131B.substring(9) + m3131B.substring(0, 9);
        String m3067V = C2780h.m3067V(context);
        Settings.Secure.getString(context.getContentResolver(), "android_id");
        C2914d.m2853c(str, "hggjh", m3143f().toString()).toString();
        AbstractC5113c<AbstractC5111a> m498b = C4749e.m498b(context);
        String m4789h = C1676a.m4789h(m3067V, "purchase_upload.php");
        C4766p c4766p = (C4766p) m498b;
        c4766p.m492j(m4789h);
        ((C3661g) ((AbstractC5112b) c4766p.mo11f("deviceid", Settings.Secure.getString(context.getContentResolver(), "android_id")).mo11f("data", m3131B).mo11f("gzip", "1").mo15a(C2914d.m2854b(str, m3143f().toString()))).mo10d()).m1919k(c4398d);
    }

    /* renamed from: k */
    public static void m3138k(Context context, boolean z) {
        if (C3043q.m2709m("AKP") != z) {
            C3043q.m2724A("AKP", z);
            if (z) {
                C2780h.m3049g0(context, "psetaslfn", true);
            } else {
                C3043q.m2711k(context, false);
            }
            C0748b.m7409b().m7404g(new C3403s());
        }
    }
}
