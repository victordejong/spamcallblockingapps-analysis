package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zu.class */
public final class zu implements dbi<T> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zt f28590a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ zr f28591b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zu(zs zsVar, zt ztVar, zr zrVar) {
        this.f28590a = ztVar;
        this.f28591b = zrVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(T t) {
        this.f28590a.a(t);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        this.f28591b.a();
    }
}
