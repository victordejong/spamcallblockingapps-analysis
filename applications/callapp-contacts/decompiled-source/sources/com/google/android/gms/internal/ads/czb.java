package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/czb.class */
public final class czb<E> extends cyp<E> {

    /* renamed from: a  reason: collision with root package name */
    private final cyz<E> f26589a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public czb(cyz<E> cyzVar, int i) {
        super(cyzVar.size(), i);
        this.f26589a = cyzVar;
    }

    @Override // com.google.android.gms.internal.ads.cyp
    protected final E a(int i) {
        return this.f26589a.get(i);
    }
}
