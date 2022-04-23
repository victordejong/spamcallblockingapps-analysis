package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.y0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lt0.class */
public final class lt0 {

    /* renamed from: f */
    private final Context f7171f;

    /* renamed from: g */
    private final WeakReference<Context> f7172g;

    /* renamed from: h */
    private final fp0 f7173h;

    /* renamed from: i */
    private final Executor f7174i;

    /* renamed from: j */
    private final Executor f7175j;

    /* renamed from: k */
    private final ScheduledExecutorService f7176k;

    /* renamed from: l */
    private final sr0 f7177l;

    /* renamed from: m */
    private final zzbbq f7178m;

    /* renamed from: o */
    private final zd0 f7180o;

    /* renamed from: a */
    private boolean f7166a = false;

    /* renamed from: b */
    private boolean f7167b = false;

    /* renamed from: c */
    private boolean f7168c = false;

    /* renamed from: e */
    private final fp<Boolean> f7170e = new fp<>();

    /* renamed from: n */
    private final Map<String, zzamj> f7179n = new ConcurrentHashMap();

    /* renamed from: p */
    private boolean f7181p = true;

    /* renamed from: d */
    private final long f7169d = C1407r.m8913k().m8245c();

    public lt0(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, fp0 fp0Var, ScheduledExecutorService scheduledExecutorService, sr0 sr0Var, zzbbq zzbbqVar, zd0 zd0Var) {
        this.f7173h = fp0Var;
        this.f7171f = context;
        this.f7172g = weakReference;
        this.f7174i = executor2;
        this.f7176k = scheduledExecutorService;
        this.f7175j = executor;
        this.f7177l = sr0Var;
        this.f7178m = zzbbqVar;
        this.f7180o = zd0Var;
        m6640u("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static /* synthetic */ void m6644q(final lt0 lt0Var, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                final String next = keys.next();
                final Object obj = new Object();
                final fp fpVar = new fp();
                rz1 g = kz1.g(fpVar, ((Long) C1674c.m7906c().m6878b(C1842m3.f7379b1)).longValue(), TimeUnit.SECONDS, lt0Var.f7176k);
                lt0Var.f7177l.m5629a(next);
                lt0Var.f7180o.g(next);
                final long c = C1407r.m8913k().m8245c();
                g.m5851e(new Runnable(lt0Var, obj, fpVar, next, c) { // from class: com.google.android.gms.internal.ads.et0

                    /* renamed from: b */
                    private final lt0 f6452b;

                    /* renamed from: c */
                    private final Object f6453c;

                    /* renamed from: d */
                    private final fp f6454d;

                    /* renamed from: e */
                    private final String f6455e;

                    /* renamed from: f */
                    private final long f6456f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6452b = lt0Var;
                        this.f6453c = obj;
                        this.f6454d = fpVar;
                        this.f6455e = next;
                        this.f6456f = c;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6452b.m6653h(this.f6453c, this.f6454d, this.f6455e, this.f6456f);
                    }
                }, lt0Var.f7174i);
                arrayList.add(g);
                final kt0 kt0Var = new kt0(lt0Var, obj, next, c, fpVar);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (optJSONObject != null) {
                    try {
                        JSONArray jSONArray = optJSONObject.getJSONArray("data");
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            String optString = jSONObject2.optString("format", "");
                            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (optJSONObject2 != null) {
                                Iterator<String> keys2 = optJSONObject2.keys();
                                while (keys2.hasNext()) {
                                    String next2 = keys2.next();
                                    bundle.putString(next2, optJSONObject2.optString(next2, ""));
                                }
                            }
                            arrayList2.add(new zzamt(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                lt0Var.m6640u(next, false, "", 0);
                try {
                    final im1 b = lt0Var.f7173h.m7469b(next, new JSONObject());
                    lt0Var.f7175j.execute(new Runnable(lt0Var, b, kt0Var, arrayList2, next) { // from class: com.google.android.gms.internal.ads.gt0

                        /* renamed from: b */
                        private final lt0 f6717b;

                        /* renamed from: c */
                        private final im1 f6718c;

                        /* renamed from: d */
                        private final AbstractC1956ta f6719d;

                        /* renamed from: e */
                        private final List f6720e;

                        /* renamed from: f */
                        private final String f6721f;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f6717b = lt0Var;
                            this.f6718c = b;
                            this.f6719d = kt0Var;
                            this.f6720e = arrayList2;
                            this.f6721f = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f6717b.m6655f(this.f6718c, this.f6719d, this.f6720e, this.f6721f);
                        }
                    });
                } catch (zzdrl e2) {
                    try {
                        kt0Var.m5534s("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        C1894po.m6182d("", e3);
                    }
                }
            }
            kz1.l(arrayList).m6894a(new Callable(lt0Var) { // from class: com.google.android.gms.internal.ads.ft0

                /* renamed from: a */
                private final lt0 f6595a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6595a = lt0Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.f6595a.m6654g();
                    return null;
                }
            }, lt0Var.f7174i);
        } catch (JSONException e4) {
            y0.l("Malformed CLD response", e4);
        }
    }

    /* renamed from: t */
    private final rz1<String> m6641t() {
        synchronized (this) {
            String d = C1407r.m8916h().m4585l().m8868p().m5206d();
            if (!TextUtils.isEmpty(d)) {
                return kz1.a(d);
            }
            final fp fpVar = new fp();
            C1407r.m8916h().m4585l().m8885P0(new Runnable(this, fpVar) { // from class: com.google.android.gms.internal.ads.ct0

                /* renamed from: b */
                private final lt0 f6296b;

                /* renamed from: c */
                private final fp f6297c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6296b = this;
                    this.f6297c = fpVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6296b.m6651j(this.f6297c);
                }
            });
            return fpVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public final void m6640u(String str, boolean z, String str2, int i) {
        this.f7179n.put(str, new zzamj(str, z, i, str2));
    }

    /* renamed from: a */
    public final void m6660a() {
        this.f7181p = false;
    }

    /* renamed from: b */
    public final void m6659b(final AbstractC2015wa waVar) {
        this.f7170e.e(new Runnable(this, waVar) { // from class: com.google.android.gms.internal.ads.zs0

            /* renamed from: b */
            private final lt0 f9439b;

            /* renamed from: c */
            private final AbstractC2015wa f9440c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9439b = this;
                this.f9440c = waVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                lt0 lt0Var = this.f9439b;
                try {
                    this.f9440c.m5102r3(lt0Var.m6657d());
                } catch (RemoteException e) {
                    C1894po.m6182d("", e);
                }
            }
        }, this.f7175j);
    }

    /* renamed from: c */
    public final void m6658c() {
        if (!C1715e5.f6383a.m6222e().booleanValue()) {
            if (this.f7178m.d >= ((Integer) C1674c.m7906c().m6878b(C1842m3.f7372a1)).intValue() && this.f7181p) {
                if (!this.f7166a) {
                    synchronized (this) {
                        if (!this.f7166a) {
                            this.f7177l.m5626d();
                            this.f7180o.f();
                            this.f7170e.e(new Runnable(this) { // from class: com.google.android.gms.internal.ads.at0

                                /* renamed from: b */
                                private final lt0 f6081b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f6081b = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f6081b.m6650k();
                                }
                            }, this.f7174i);
                            this.f7166a = true;
                            rz1<String> t = m6641t();
                            this.f7176k.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.dt0

                                /* renamed from: b */
                                private final lt0 f6371b;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f6371b = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f6371b.m6652i();
                                }
                            }, ((Long) C1674c.m7906c().m6878b(C1842m3.f7386c1)).longValue(), TimeUnit.SECONDS);
                            kz1.o(t, new jt0(this), this.f7174i);
                            return;
                        }
                        return;
                    }
                }
                return;
            }
        }
        if (!this.f7166a) {
            m6640u("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f7170e.c(Boolean.FALSE);
            this.f7166a = true;
            this.f7167b = true;
        }
    }

    /* renamed from: d */
    public final List<zzamj> m6657d() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f7179n.keySet()) {
            zzamj zzamjVar = this.f7179n.get(str);
            arrayList.add(new zzamj(str, zzamjVar.c, zzamjVar.d, zzamjVar.e));
        }
        return arrayList;
    }

    /* renamed from: e */
    public final boolean m6656e() {
        return this.f7167b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final /* synthetic */ void m6655f(im1 im1Var, AbstractC1956ta taVar, List list, String str) {
        try {
            Context context = this.f7172g.get();
            if (context == null) {
                context = this.f7171f;
            }
            im1Var.m7175B(context, taVar, list);
        } catch (zzdrl e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                taVar.m5534s(sb.toString());
            } catch (RemoteException e2) {
                C1894po.m6182d("", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final /* synthetic */ Object m6654g() {
        this.f7170e.c(Boolean.TRUE);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final /* synthetic */ void m6653h(Object obj, fp fpVar, String str, long j) {
        synchronized (obj) {
            if (!fpVar.isDone()) {
                m6640u(str, false, "Timeout.", (int) (C1407r.m8913k().m8245c() - j));
                this.f7177l.m5627c(str, "timeout");
                this.f7180o.N(str, "timeout");
                fpVar.c(Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final /* synthetic */ void m6652i() {
        synchronized (this) {
            if (!this.f7168c) {
                m6640u("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (C1407r.m8913k().m8245c() - this.f7169d));
                this.f7170e.d(new Exception());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final /* synthetic */ void m6651j(final fp fpVar) {
        this.f7174i.execute(new Runnable(this, fpVar) { // from class: com.google.android.gms.internal.ads.ht0

            /* renamed from: b */
            private final fp f6779b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6779b = fpVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                fp fpVar2 = this.f6779b;
                String d = C1407r.m8916h().m4585l().m8868p().m5206d();
                if (!TextUtils.isEmpty(d)) {
                    fpVar2.c(d);
                } else {
                    fpVar2.d(new Exception());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final /* synthetic */ void m6650k() {
        this.f7177l.m5625e();
        this.f7180o.a();
        this.f7167b = true;
    }
}
