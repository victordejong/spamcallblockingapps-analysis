package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.y4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y4.class */
public abstract class AbstractC7169y4 implements AbstractC7098w7 {

    /* renamed from: b */
    private final boolean f32407b;

    /* renamed from: c */
    private final ArrayList<AbstractC6816ol> f32408c = new ArrayList<>(1);

    /* renamed from: d */
    private int f32409d;

    /* renamed from: e */
    private C6472fb f32410e;

    public AbstractC7169y4(boolean z) {
        this.f32407b = z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public Map mo8435d() {
        return Collections.emptyMap();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: f */
    public final void mo8765f(AbstractC6816ol abstractC6816ol) {
        Objects.requireNonNull(abstractC6816ol);
        if (!this.f32408c.contains(abstractC6816ol)) {
            this.f32408c.add(abstractC6816ol);
            this.f32409d++;
        }
    }

    /* renamed from: p */
    public final void m8963p(C6472fb c6472fb) {
        for (int i = 0; i < this.f32409d; i++) {
            this.f32408c.get(i).mo9538j(this, c6472fb, this.f32407b);
        }
    }

    /* renamed from: q */
    public final void m8962q(C6472fb c6472fb) {
        this.f32410e = c6472fb;
        for (int i = 0; i < this.f32409d; i++) {
            this.f32408c.get(i).mo9537l(this, c6472fb, this.f32407b);
        }
    }

    /* renamed from: r */
    public final void m8961r(int i) {
        C6472fb c6472fb = this.f32410e;
        int i2 = C7101wa.f31475a;
        for (int i3 = 0; i3 < this.f32409d; i3++) {
            this.f32408c.get(i3).mo9545c(this, c6472fb, this.f32407b, i);
        }
    }

    /* renamed from: s */
    public final void m8960s() {
        C6472fb c6472fb = this.f32410e;
        int i = C7101wa.f31475a;
        for (int i2 = 0; i2 < this.f32409d; i2++) {
            this.f32408c.get(i2).mo9536r(this, c6472fb, this.f32407b);
        }
        this.f32410e = null;
    }
}
