package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.d7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d7.class */
final class C7338d7<T> implements AbstractC7436k7<T> {

    /* renamed from: a */
    private final AbstractC7623y6 f34399a;

    /* renamed from: b */
    private final AbstractC7611x7<?, ?> f34400b;

    /* renamed from: c */
    private final boolean f34401c;

    /* renamed from: d */
    private final AbstractC7462m5<?> f34402d;

    private C7338d7(AbstractC7611x7<?, ?> abstractC7611x7, AbstractC7462m5<?> abstractC7462m5, AbstractC7623y6 abstractC7623y6) {
        this.f34400b = abstractC7611x7;
        this.f34401c = abstractC7462m5.mo7079a(abstractC7623y6);
        this.f34402d = abstractC7462m5;
        this.f34399a = abstractC7623y6;
    }

    /* renamed from: h */
    public static <T> C7338d7<T> m7607h(AbstractC7611x7<?, ?> abstractC7611x7, AbstractC7462m5<?> abstractC7462m5, AbstractC7623y6 abstractC7623y6) {
        return new C7338d7<>(abstractC7611x7, abstractC7462m5, abstractC7623y6);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: a */
    public final int mo7209a(T t) {
        AbstractC7611x7<?, ?> abstractC7611x7 = this.f34400b;
        int mo6636g = abstractC7611x7.mo6636g(abstractC7611x7.mo6639d(t));
        if (!this.f34401c) {
            return mo6636g;
        }
        this.f34402d.mo7078b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: b */
    public final void mo7208b(T t, T t2) {
        C7464m7.m7129f(this.f34400b, t, t2);
        if (this.f34401c) {
            C7464m7.m7130e(this.f34402d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: c */
    public final int mo7207c(T t) {
        int hashCode = this.f34400b.mo6639d(t).hashCode();
        if (!this.f34401c) {
            return hashCode;
        }
        this.f34402d.mo7078b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: d */
    public final boolean mo7206d(T t) {
        this.f34402d.mo7078b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: e */
    public final boolean mo7205e(T t, T t2) {
        if (!this.f34400b.mo6639d(t).equals(this.f34400b.mo6639d(t2))) {
            return false;
        }
        if (!this.f34401c) {
            return true;
        }
        this.f34402d.mo7078b(t);
        this.f34402d.mo7078b(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: e0 */
    public final void mo7204e0(T t) {
        this.f34400b.mo6638e(t);
        this.f34402d.mo7077c(t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: f */
    public final void mo7203f(T t, byte[] bArr, int i, int i2, C7530r4 c7530r4) {
        AbstractC7609x5 abstractC7609x5 = (AbstractC7609x5) t;
        if (abstractC7609x5.zzc == C7624y7.m6726a()) {
            abstractC7609x5.zzc = C7624y7.m6725b();
        }
        AbstractC7583v5 abstractC7583v5 = (AbstractC7583v5) t;
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    /* renamed from: g */
    public final void mo7202g(T t, C7378g5 c7378g5) {
        this.f34402d.mo7078b(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7436k7
    public final T zza() {
        return (T) this.f34399a.mo6731a().mo6756f();
    }
}
