package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.HashMap;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wj3.class */
public abstract class wj3<T> extends dg3 {

    /* renamed from: g */
    private final HashMap<T, vj3<T>> f31596g = new HashMap<>();

    /* renamed from: h */
    private Handler f31597h;

    /* renamed from: i */
    private AbstractC6816ol f31598i;

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: l */
    protected final void mo9579l() {
        for (vj3<T> vj3Var : this.f31596g.values()) {
            vj3Var.f31228a.mo12600k(vj3Var.f31229b);
        }
    }

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: m */
    public void mo9578m(AbstractC6816ol abstractC6816ol) {
        this.f31598i = abstractC6816ol;
        this.f31597h = C7101wa.m9715M(null);
    }

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: n */
    protected final void mo9577n() {
        for (vj3<T> vj3Var : this.f31596g.values()) {
            vj3Var.f31228a.mo12602h(vj3Var.f31229b);
        }
    }

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: p */
    public void mo9576p() {
        for (vj3<T> vj3Var : this.f31596g.values()) {
            vj3Var.f31228a.mo12605d(vj3Var.f31229b);
            vj3Var.f31228a.mo12604f(vj3Var.f31230c);
            vj3Var.f31228a.mo12603g(vj3Var.f31230c);
        }
        this.f31596g.clear();
    }

    /* renamed from: x */
    public abstract void mo9575x(T t, ok3 ok3Var, AbstractC6839p7 abstractC6839p7);

    /* renamed from: y */
    public final void m9574y(T t, ok3 ok3Var) {
        C7173y8.m8898a(!this.f31596g.containsKey(t));
        nk3 nk3Var = new nk3(this, t) { // from class: com.google.android.gms.internal.ads.tj3

            /* renamed from: a */
            private final wj3 f30026a;

            /* renamed from: b */
            private final Object f30027b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f30026a = this;
                this.f30027b = t;
            }

            @Override // com.google.android.gms.internal.ads.nk3
            /* renamed from: a */
            public final void mo10644a(ok3 ok3Var2, AbstractC6839p7 abstractC6839p7) {
                this.f30026a.mo9575x(this.f30027b, ok3Var2, abstractC6839p7);
            }
        };
        uj3 uj3Var = new uj3(this, t);
        this.f31596g.put(t, new vj3<>(ok3Var, nk3Var, uj3Var));
        Handler handler = this.f31597h;
        Objects.requireNonNull(handler);
        ok3Var.mo12606b(handler, uj3Var);
        Handler handler2 = this.f31597h;
        Objects.requireNonNull(handler2);
        ok3Var.mo12601i(handler2, uj3Var);
        ok3Var.mo12607a(nk3Var, this.f31598i);
        if (!m15822w()) {
            ok3Var.mo12602h(nk3Var);
        }
    }

    /* renamed from: z */
    public abstract mk3 mo9573z(T t, mk3 mk3Var);

    @Override // com.google.android.gms.internal.ads.ok3
    public void zzu() {
        for (vj3<T> vj3Var : this.f31596g.values()) {
            vj3Var.f31228a.zzu();
        }
    }
}
