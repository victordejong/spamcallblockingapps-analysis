package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5624a;
import com.google.android.gms.ads.internal.C5625b;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qj1.class */
public final class qj1 {

    /* renamed from: b */
    private final C5624a f28506b;

    /* renamed from: c */
    private final ho0 f28507c;

    /* renamed from: d */
    private final Context f28508d;

    /* renamed from: e */
    private final rn1 f28509e;

    /* renamed from: f */
    private final jo2 f28510f;

    /* renamed from: g */
    private final Executor f28511g;

    /* renamed from: h */
    private final C7016u f28512h;

    /* renamed from: i */
    private final zzcgz f28513i;

    /* renamed from: k */
    private final dw1 f28515k;

    /* renamed from: l */
    private final bp2 f28516l;

    /* renamed from: m */
    private r03<wn0> f28517m;

    /* renamed from: a */
    private final kj1 f28505a = new kj1(null);

    /* renamed from: j */
    private final c30 f28514j = new c30();

    public qj1(oj1 oj1Var) {
        Context context;
        Executor executor;
        C7016u c7016u;
        zzcgz zzcgzVar;
        C5624a c5624a;
        ho0 ho0Var;
        dw1 dw1Var;
        bp2 bp2Var;
        rn1 rn1Var;
        jo2 jo2Var;
        context = oj1Var.f27569c;
        this.f28508d = context;
        executor = oj1Var.f27573g;
        this.f28511g = executor;
        c7016u = oj1Var.f27574h;
        this.f28512h = c7016u;
        zzcgzVar = oj1Var.f27575i;
        this.f28513i = zzcgzVar;
        c5624a = oj1Var.f27567a;
        this.f28506b = c5624a;
        ho0Var = oj1Var.f27568b;
        this.f28507c = ho0Var;
        dw1Var = oj1Var.f27572f;
        this.f28515k = dw1Var;
        bp2Var = oj1Var.f27576j;
        this.f28516l = bp2Var;
        rn1Var = oj1Var.f27570d;
        this.f28509e = rn1Var;
        jo2Var = oj1Var.f27571e;
        this.f28510f = jo2Var;
    }

    /* renamed from: b */
    public final void m11879b() {
        synchronized (this) {
            r03<wn0> m13994j = k03.m13994j(ho0.m14580b(this.f28508d, this.f28513i, (String) C7192yr.m8714c().m14263c(C6679kw.f25713i2), this.f28512h, this.f28506b), new nu2(this) { // from class: com.google.android.gms.internal.ads.dj1

                /* renamed from: a */
                private final qj1 f21647a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f21647a = this;
                }

                @Override // com.google.android.gms.internal.ads.nu2
                /* renamed from: a */
                public final Object mo8501a(Object obj) {
                    wn0 wn0Var = (wn0) obj;
                    this.f21647a.m11870k(wn0Var);
                    return wn0Var;
                }
            }, this.f28511g);
            this.f28517m = m13994j;
            ti0.m10655a(m13994j, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    /* renamed from: c */
    public final void m11878c() {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return;
            }
            k03.m13988p(r03Var, new fj1(this), this.f28511g);
            this.f28517m = null;
        }
    }

    /* renamed from: d */
    public final r03<JSONObject> m11877d(String str, JSONObject jSONObject) {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return k03.m14003a(null);
            }
            return k03.m13995i(r03Var, new uz2(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.ej1

                /* renamed from: a */
                private final qj1 f22190a;

                /* renamed from: b */
                private final String f22191b;

                /* renamed from: c */
                private final JSONObject f22192c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f22190a = this;
                    this.f22191b = str;
                    this.f22192c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.uz2
                /* renamed from: a */
                public final r03 mo8403a(Object obj) {
                    return this.f22190a.m11871j(this.f22191b, this.f22192c, (wn0) obj);
                }
            }, this.f28511g);
        }
    }

    /* renamed from: e */
    public final void m11876e(String str, n20<Object> n20Var) {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return;
            }
            k03.m13988p(r03Var, new gj1(this, str, n20Var), this.f28511g);
        }
    }

    /* renamed from: f */
    public final void m11875f(String str, n20<Object> n20Var) {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return;
            }
            k03.m13988p(r03Var, new hj1(this, str, n20Var), this.f28511g);
        }
    }

    /* renamed from: g */
    public final void m11874g(String str, Map<String, ?> map) {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return;
            }
            k03.m13988p(r03Var, new ij1(this, "sendMessageToNativeJs", map), this.f28511g);
        }
    }

    /* renamed from: h */
    public final void m11873h(ej2 ej2Var, jj2 jj2Var) {
        synchronized (this) {
            r03<wn0> r03Var = this.f28517m;
            if (r03Var == null) {
                return;
            }
            k03.m13988p(r03Var, new jj1(this, ej2Var, jj2Var), this.f28511g);
        }
    }

    /* renamed from: i */
    public final <T> void m11872i(WeakReference<T> weakReference, String str, n20<T> n20Var) {
        m11876e(str, new pj1(this, weakReference, str, n20Var, null));
    }

    /* renamed from: j */
    public final /* synthetic */ r03 m11871j(String str, JSONObject jSONObject, wn0 wn0Var) {
        return this.f28514j.m16123c(wn0Var, str, jSONObject);
    }

    /* renamed from: k */
    public final /* synthetic */ wn0 m11870k(wn0 wn0Var) {
        wn0Var.mo7899l0("/result", this.f28514j);
        jp0 mo7914c0 = wn0Var.mo7914c0();
        kj1 kj1Var = this.f28505a;
        mo7914c0.mo14079q0(null, kj1Var, kj1Var, kj1Var, kj1Var, false, null, new C5625b(this.f28508d, null, null), null, null, this.f28515k, this.f28516l, this.f28509e, this.f28510f, null, null);
        return wn0Var;
    }
}
