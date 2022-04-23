package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zv.class */
final class zv implements dbi<T> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ zs f28592a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zv(zs zsVar) {
        this.f28592a = zsVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(T t) {
        this.f28592a.f28589b.set(1);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        this.f28592a.f28589b.set(-1);
    }
}
