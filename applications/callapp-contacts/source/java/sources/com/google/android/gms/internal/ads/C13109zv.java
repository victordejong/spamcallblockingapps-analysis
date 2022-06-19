package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.zv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zv.class */
public final class C13109zv implements dbi<T> {

    /* renamed from: a */
    private final /* synthetic */ C13106zs f50140a;

    public C13109zv(C13106zs c13106zs) {
        this.f50140a = c13106zs;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13892a(T t) {
        this.f50140a.f50137b.set(1);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        this.f50140a.f50137b.set(-1);
    }
}
