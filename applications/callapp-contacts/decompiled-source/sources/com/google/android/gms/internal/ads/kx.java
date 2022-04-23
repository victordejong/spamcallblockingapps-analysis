package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kx.class */
final class kx implements zt<lc> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kv f28138a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kx(kv kvVar) {
        this.f28138a = kvVar;
    }

    @Override // com.google.android.gms.internal.ads.zt
    public final /* synthetic */ void a(lc lcVar) {
        zzd.zzed("Releasing engine reference.");
        this.f28138a.f28134a.b();
    }
}
