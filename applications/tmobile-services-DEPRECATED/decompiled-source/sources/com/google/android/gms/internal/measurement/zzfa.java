package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfa.class */
final class zzfa<E> extends zzej<E> {

    /* renamed from: h */
    private final zzfb<E> f8406h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfa(zzfb<E> zzfbVar, int i) {
        super(zzfbVar.size(), i);
        this.f8406h = zzfbVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzej
    /* renamed from: a */
    protected final E mo12696a(int i) {
        return this.f8406h.get(i);
    }
}
