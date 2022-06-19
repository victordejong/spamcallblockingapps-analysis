package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fn3.class */
public abstract class fn3 {

    /* renamed from: a */
    private en3 f22994a;

    /* renamed from: b */
    private on3 f22995b;

    /* renamed from: a */
    public abstract void mo15136a(Object obj);

    /* renamed from: b */
    public abstract hn3 mo15135b(AbstractC7023u6[] abstractC7023u6Arr, dv3 dv3Var, mk3 mk3Var, AbstractC6839p7 abstractC6839p7);

    /* renamed from: c */
    public final void m15134c(en3 en3Var, on3 on3Var) {
        this.f22994a = en3Var;
        this.f22995b = on3Var;
    }

    /* renamed from: d */
    public final void m15133d() {
        en3 en3Var = this.f22994a;
        if (en3Var != null) {
            en3Var.zza();
        }
    }

    /* renamed from: e */
    public final on3 m15132e() {
        on3 on3Var = this.f22995b;
        Objects.requireNonNull(on3Var);
        return on3Var;
    }
}
