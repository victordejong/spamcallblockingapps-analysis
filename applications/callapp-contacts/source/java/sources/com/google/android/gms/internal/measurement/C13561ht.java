package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.ht */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ht.class */
final class C13561ht<T> implements AbstractC13569ia<T> {

    /* renamed from: a */
    private final AbstractC13556ho f50808a;

    /* renamed from: b */
    private final AbstractC13581im<?, ?> f50809b;

    /* renamed from: c */
    private final boolean f50810c;

    /* renamed from: d */
    private final AbstractC13513fz<?> f50811d;

    private C13561ht(AbstractC13581im<?, ?> abstractC13581im, AbstractC13513fz<?> abstractC13513fz, AbstractC13556ho abstractC13556ho) {
        this.f50809b = abstractC13581im;
        this.f50810c = abstractC13513fz.mo12795a(abstractC13556ho);
        this.f50811d = abstractC13513fz;
        this.f50808a = abstractC13556ho;
    }

    /* renamed from: a */
    public static <T> C13561ht<T> m12668a(AbstractC13581im<?, ?> abstractC13581im, AbstractC13513fz<?> abstractC13513fz, AbstractC13556ho abstractC13556ho) {
        return new C13561ht<>(abstractC13581im, abstractC13513fz, abstractC13556ho);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final int mo12655a(T t) {
        int hashCode = this.f50809b.mo12565a(t).hashCode();
        if (!this.f50810c) {
            return hashCode;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final T mo12656a() {
        return (T) this.f50808a.mo12705p().mo12713B();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final void mo12654a(T t, C13507ft c13507ft) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final void mo12652a(T t, byte[] bArr, int i, int i2, C13488fa c13488fa) throws IOException {
        AbstractC13526gl abstractC13526gl = (AbstractC13526gl) t;
        if (abstractC13526gl.zzc == C13582in.m12573a()) {
            abstractC13526gl.zzc = C13582in.m12568b();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: a */
    public final boolean mo12653a(T t, T t2) {
        if (!this.f50809b.mo12565a(t).equals(this.f50809b.mo12565a(t2))) {
            return false;
        }
        if (this.f50810c) {
            throw null;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: b */
    public final int mo12651b(T t) {
        AbstractC13581im<?, ?> abstractC13581im = this.f50809b;
        int mo12559c = abstractC13581im.mo12559c(abstractC13581im.mo12565a(t));
        if (!this.f50810c) {
            return mo12559c;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: b */
    public final void mo12650b(T t, T t2) {
        C13571ic.m12637a(this.f50809b, t, t2);
        if (this.f50810c) {
            C13571ic.m12620d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: c */
    public final void mo12649c(T t) {
        this.f50809b.mo12561b(t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13569ia
    /* renamed from: d */
    public final boolean mo12648d(T t) {
        throw null;
    }
}
