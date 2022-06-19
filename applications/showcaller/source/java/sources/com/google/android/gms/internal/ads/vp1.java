package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5722o1;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vp1.class */
public final class vp1 {

    /* renamed from: f */
    private final Context f31276f;

    /* renamed from: g */
    private final WeakReference<Context> f31277g;

    /* renamed from: h */
    private final ol1 f31278h;

    /* renamed from: i */
    private final Executor f31279i;

    /* renamed from: j */
    private final Executor f31280j;

    /* renamed from: k */
    private final ScheduledExecutorService f31281k;

    /* renamed from: l */
    private final ao1 f31282l;

    /* renamed from: m */
    private final zzcgz f31283m;

    /* renamed from: o */
    private final u91 f31285o;

    /* renamed from: a */
    private boolean f31271a = false;

    /* renamed from: b */
    private boolean f31272b = false;

    /* renamed from: c */
    private boolean f31273c = false;

    /* renamed from: e */
    private final vi0<Boolean> f31275e = new vi0<>();

    /* renamed from: n */
    private final Map<String, zzbrl> f31284n = new ConcurrentHashMap();

    /* renamed from: p */
    private boolean f31286p = true;

    /* renamed from: d */
    private final long f31274d = C5667s.m18153k().mo16806b();

    public vp1(Executor executor, Context context, WeakReference<Context> weakReference, Executor executor2, ol1 ol1Var, ScheduledExecutorService scheduledExecutorService, ao1 ao1Var, zzcgz zzcgzVar, u91 u91Var) {
        this.f31278h = ol1Var;
        this.f31276f = context;
        this.f31277g = weakReference;
        this.f31279i = executor2;
        this.f31281k = scheduledExecutorService;
        this.f31280j = executor;
        this.f31282l = ao1Var;
        this.f31283m = zzcgzVar;
        this.f31285o = u91Var;
        m9895u("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    /* renamed from: k */
    public static /* synthetic */ void m9905k(vp1 vp1Var, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = new Object();
                vi0 vi0Var = new vi0();
                r03 m13996h = k03.m13996h(vi0Var, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25720j1)).longValue(), TimeUnit.SECONDS, vp1Var.f31281k);
                vp1Var.f31282l.m16517a(next);
                vp1Var.f31285o.mo9729n(next);
                long mo16806b = C5667s.m18153k().mo16806b();
                m13996h.mo10015d(new Runnable(vp1Var, obj, vi0Var, next, mo16806b) { // from class: com.google.android.gms.internal.ads.op1

                    /* renamed from: d */
                    private final vp1 f27665d;

                    /* renamed from: e */
                    private final Object f27666e;

                    /* renamed from: f */
                    private final vi0 f27667f;

                    /* renamed from: g */
                    private final String f27668g;

                    /* renamed from: h */
                    private final long f27669h;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f27665d = vp1Var;
                        this.f27666e = obj;
                        this.f27667f = vi0Var;
                        this.f27668g = next;
                        this.f27669h = mo16806b;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f27665d.m9900p(this.f27666e, this.f27667f, this.f27668g, this.f27669h);
                    }
                }, vp1Var.f31279i);
                arrayList.add(m13996h);
                up1 up1Var = new up1(vp1Var, obj, next, mo16806b, vi0Var);
                JSONObject optJSONObject = jSONObject.optJSONObject(next);
                ArrayList arrayList2 = new ArrayList();
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
                            arrayList2.add(new zzbrv(optString, bundle));
                        }
                    } catch (JSONException e) {
                    }
                }
                vp1Var.m9895u(next, false, "", 0);
                try {
                    vp1Var.f31280j.execute(new Runnable(vp1Var, vp1Var.f31278h.m12597b(next, new JSONObject()), up1Var, arrayList2, next) { // from class: com.google.android.gms.internal.ads.qp1

                        /* renamed from: d */
                        private final vp1 f28593d;

                        /* renamed from: e */
                        private final ok2 f28594e;

                        /* renamed from: f */
                        private final a40 f28595f;

                        /* renamed from: g */
                        private final List f28596g;

                        /* renamed from: h */
                        private final String f28597h;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28593d = vp1Var;
                            this.f28594e = m12597b;
                            this.f28595f = up1Var;
                            this.f28596g = arrayList2;
                            this.f28597h = next;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f28593d.m9902n(this.f28594e, this.f28595f, this.f28596g, this.f28597h);
                        }
                    });
                } catch (zzfaw e2) {
                    try {
                        up1Var.mo8968p("Failed to create Adapter.");
                    } catch (RemoteException e3) {
                        ei0.m15466d("", e3);
                    }
                }
            }
            k03.m13991m(arrayList).m14516a(new Callable(vp1Var) { // from class: com.google.android.gms.internal.ads.pp1

                /* renamed from: a */
                private final vp1 f28087a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28087a = vp1Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    this.f28087a.m9901o();
                    return null;
                }
            }, vp1Var.f31279i);
        } catch (JSONException e4) {
            C5722o1.m17989l("Malformed CLD response", e4);
        }
    }

    /* renamed from: t */
    private final r03<String> m9896t() {
        synchronized (this) {
            String m14123d = C5667s.m18156h().m12230p().mo17954m().m14123d();
            if (!TextUtils.isEmpty(m14123d)) {
                return k03.m14003a(m14123d);
            }
            vi0 vi0Var = new vi0();
            C5667s.m18156h().m12230p().mo17977L0(new Runnable(this, vi0Var) { // from class: com.google.android.gms.internal.ads.mp1

                /* renamed from: d */
                private final vp1 f26706d;

                /* renamed from: e */
                private final vi0 f26707e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26706d = this;
                    this.f26707e = vi0Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f26706d.m9898r(this.f26707e);
                }
            });
            return vi0Var;
        }
    }

    /* renamed from: u */
    public final void m9895u(String str, boolean z, String str2, int i) {
        this.f31284n.put(str, new zzbrl(str, z, i, str2));
    }

    /* renamed from: g */
    public final void m9909g() {
        this.f31286p = false;
    }

    /* renamed from: h */
    public final void m9908h(d40 d40Var) {
        this.f31275e.mo10015d(new Runnable(this, d40Var) { // from class: com.google.android.gms.internal.ads.jp1

            /* renamed from: d */
            private final vp1 f24942d;

            /* renamed from: e */
            private final d40 f24943e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24942d = this;
                this.f24943e = d40Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                vp1 vp1Var = this.f24942d;
                try {
                    this.f24943e.mo9865U4(vp1Var.m9906j());
                } catch (RemoteException e) {
                    ei0.m15466d("", e);
                }
            }
        }, this.f31280j);
    }

    /* renamed from: i */
    public final void m9907i() {
        if (!C6420dy.f21922a.m12799e().booleanValue()) {
            if (this.f31283m.f33856f >= ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25712i1)).intValue() && this.f31286p) {
                if (this.f31271a) {
                    return;
                }
                synchronized (this) {
                    if (this.f31271a) {
                        return;
                    }
                    this.f31282l.m16514d();
                    this.f31285o.mo9730e();
                    this.f31275e.mo10015d(new Runnable(this) { // from class: com.google.android.gms.internal.ads.lp1

                        /* renamed from: d */
                        private final vp1 f26201d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f26201d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f26201d.m9897s();
                        }
                    }, this.f31279i);
                    this.f31271a = true;
                    r03<String> m9896t = m9896t();
                    this.f31281k.schedule(new Runnable(this) { // from class: com.google.android.gms.internal.ads.np1

                        /* renamed from: d */
                        private final vp1 f27246d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f27246d = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f27246d.m9899q();
                        }
                    }, ((Long) C7192yr.m8714c().m14263c(C6679kw.f25728k1)).longValue(), TimeUnit.SECONDS);
                    k03.m13988p(m9896t, new tp1(this), this.f31279i);
                    return;
                }
            }
        }
        if (!this.f31271a) {
            m9895u("com.google.android.gms.ads.MobileAds", true, "", 0);
            this.f31275e.m10016c(Boolean.FALSE);
            this.f31271a = true;
            this.f31272b = true;
        }
    }

    /* renamed from: j */
    public final List<zzbrl> m9906j() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.f31284n.keySet()) {
            zzbrl zzbrlVar = this.f31284n.get(str);
            arrayList.add(new zzbrl(str, zzbrlVar.f33737e, zzbrlVar.f33738f, zzbrlVar.f33739g));
        }
        return arrayList;
    }

    /* renamed from: m */
    public final boolean m9903m() {
        return this.f31272b;
    }

    /* renamed from: n */
    public final /* synthetic */ void m9902n(ok2 ok2Var, a40 a40Var, List list, String str) {
        try {
            Context context = this.f31277g.get();
            if (context == null) {
                context = this.f31276f;
            }
            ok2Var.m12635B(context, a40Var, list);
        } catch (zzfaw e) {
            try {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 74);
                sb.append("Failed to initialize adapter. ");
                sb.append(str);
                sb.append(" does not implement the initialize() method.");
                a40Var.mo8968p(sb.toString());
            } catch (RemoteException e2) {
                ei0.m15466d("", e2);
            }
        }
    }

    /* renamed from: o */
    public final /* synthetic */ Object m9901o() {
        this.f31275e.m10016c(Boolean.TRUE);
        return null;
    }

    /* renamed from: p */
    public final /* synthetic */ void m9900p(Object obj, vi0 vi0Var, String str, long j) {
        synchronized (obj) {
            if (!vi0Var.isDone()) {
                m9895u(str, false, "Timeout.", (int) (C5667s.m18153k().mo16806b() - j));
                this.f31282l.m16515c(str, "timeout");
                this.f31285o.mo9732U(str, "timeout");
                vi0Var.m10016c(Boolean.FALSE);
            }
        }
    }

    /* renamed from: q */
    public final /* synthetic */ void m9899q() {
        synchronized (this) {
            if (this.f31273c) {
                return;
            }
            m9895u("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (C5667s.m18153k().mo16806b() - this.f31274d));
            this.f31275e.m10014f(new Exception());
        }
    }

    /* renamed from: r */
    public final /* synthetic */ void m9898r(vi0 vi0Var) {
        this.f31279i.execute(new Runnable(this, vi0Var) { // from class: com.google.android.gms.internal.ads.rp1

            /* renamed from: d */
            private final vp1 f29084d;

            /* renamed from: e */
            private final vi0 f29085e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29084d = this;
                this.f29085e = vi0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                vi0 vi0Var2 = this.f29085e;
                String m14123d = C5667s.m18156h().m12230p().mo17954m().m14123d();
                if (!TextUtils.isEmpty(m14123d)) {
                    vi0Var2.m10016c(m14123d);
                } else {
                    vi0Var2.m10014f(new Exception());
                }
            }
        });
    }

    /* renamed from: s */
    public final /* synthetic */ void m9897s() {
        this.f31282l.m16513e();
        this.f31285o.mo9731a();
        this.f31272b = true;
    }
}
