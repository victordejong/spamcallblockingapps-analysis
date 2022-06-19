package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cpe.class */
public final class cpe<E> extends cox<E> {

    /* renamed from: a */
    private final cpc<E> f13487a;

    public cpe(cpc<E> cpcVar, int i) {
        super(cpcVar.size(), i);
        this.f13487a = cpcVar;
    }

    @Override // com.google.android.gms.internal.ads.cox
    /* renamed from: a */
    protected final E mo10893a(int i) {
        return this.f13487a.get(i);
    }
}
