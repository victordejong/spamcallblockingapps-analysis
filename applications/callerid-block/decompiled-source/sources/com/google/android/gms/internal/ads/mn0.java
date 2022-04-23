package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C1378a;
import com.google.android.gms.ads.internal.C1379b;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mn0.class */
public final class mn0 {

    /* renamed from: b */
    private final C1378a f7589b;

    /* renamed from: c */
    private final Context f7590c;

    /* renamed from: d */
    private final jr0 f7591d;

    /* renamed from: e */
    private final aq1 f7592e;

    /* renamed from: f */
    private final Executor f7593f;

    /* renamed from: g */
    private final zh2 f7594g;

    /* renamed from: h */
    private final zzbbq f7595h;

    /* renamed from: j */
    private final jz0 f7597j;

    /* renamed from: k */
    private final tq1 f7598k;

    /* renamed from: l */
    private rz1<jt> f7599l;

    /* renamed from: a */
    private final hn0 f7588a = new hn0((cn0) null);

    /* renamed from: i */
    private final v9 f7596i = new v9();

    /* JADX INFO: Access modifiers changed from: package-private */
    public mn0(kn0 kn0Var) {
        Context context;
        Executor executor;
        zh2 zh2Var;
        zzbbq zzbbqVar;
        C1378a aVar;
        jz0 jz0Var;
        tq1 tq1Var;
        jr0 jr0Var;
        aq1 aq1Var;
        C1982ut unused;
        context = kn0Var.f7000c;
        this.f7590c = context;
        executor = kn0Var.f7004g;
        this.f7593f = executor;
        zh2Var = kn0Var.f7005h;
        this.f7594g = zh2Var;
        zzbbqVar = kn0Var.f7006i;
        this.f7595h = zzbbqVar;
        aVar = kn0Var.f6998a;
        this.f7589b = aVar;
        unused = kn0Var.f6999b;
        jz0Var = kn0Var.f7003f;
        this.f7597j = jz0Var;
        tq1Var = kn0Var.f7007j;
        this.f7598k = tq1Var;
        jr0Var = kn0Var.f7001d;
        this.f7591d = jr0Var;
        aq1Var = kn0Var.f7002e;
        this.f7592e = aq1Var;
    }

    /* renamed from: a */
    public final void m6543a() {
        synchronized (this) {
            rz1<jt> i = kz1.i(C1982ut.m5346b(this.f7590c, this.f7595h, (String) C1674c.m7906c().m6878b(C1842m3.f7288M1), this.f7594g, this.f7589b), new an0(this), this.f7593f);
            this.f7599l = i;
            C1691cp.m7792a(i, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    /* renamed from: b */
    public final void m6542b() {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var != null) {
                kz1.o(rz1Var, new cn0(this), this.f7593f);
                this.f7599l = null;
            }
        }
    }

    /* renamed from: c */
    public final rz1<JSONObject> m6541c(String str, JSONObject jSONObject) {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var == null) {
                return kz1.a((Object) null);
            }
            return kz1.h(rz1Var, new bn0(this, str, jSONObject), this.f7593f);
        }
    }

    /* renamed from: d */
    public final void m6540d(String str, AbstractC1766h9<Object> h9Var) {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var != null) {
                kz1.o(rz1Var, new dn0(this, str, h9Var), this.f7593f);
            }
        }
    }

    /* renamed from: e */
    public final void m6539e(String str, AbstractC1766h9<Object> h9Var) {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var != null) {
                kz1.o(rz1Var, new en0(this, str, h9Var), this.f7593f);
            }
        }
    }

    /* renamed from: f */
    public final void m6538f(String str, Map<String, ?> map) {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var != null) {
                kz1.o(rz1Var, new fn0(this, "sendMessageToNativeJs", map), this.f7593f);
            }
        }
    }

    /* renamed from: g */
    public final void m6537g(al1 al1Var, dl1 dl1Var) {
        synchronized (this) {
            rz1<jt> rz1Var = this.f7599l;
            if (rz1Var != null) {
                kz1.o(rz1Var, new gn0(this, al1Var, dl1Var), this.f7593f);
            }
        }
    }

    /* renamed from: h */
    public final <T> void m6536h(WeakReference<T> weakReference, String str, AbstractC1766h9<T> h9Var) {
        m6540d(str, new ln0(this, weakReference, str, h9Var, (cn0) null));
    }

    /* renamed from: i */
    final /* synthetic */ rz1 m6535i(String str, JSONObject jSONObject, jt jtVar) {
        return this.f7596i.c(jtVar, str, jSONObject);
    }

    /* renamed from: j */
    final /* synthetic */ jt m6534j(jt jtVar) {
        jtVar.T0("/result", this.f7596i);
        wu b1 = jtVar.b1();
        hn0 hn0Var = this.f7588a;
        b1.V0((hz2) null, hn0Var, hn0Var, hn0Var, hn0Var, false, (C1815k9) null, new C1379b(this.f7590c, null, null), (AbstractC1768hh) null, (AbstractC1960tl) null, this.f7597j, this.f7598k, this.f7591d, this.f7592e, (i9) null);
        return jtVar;
    }
}
