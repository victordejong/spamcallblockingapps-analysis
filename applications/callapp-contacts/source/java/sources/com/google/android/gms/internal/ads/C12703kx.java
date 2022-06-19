package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.kx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kx.class */
public final class C12703kx implements AbstractC13107zt<AbstractC12709lc> {

    /* renamed from: a */
    private final /* synthetic */ C12701kv f49454a;

    public C12703kx(C12701kv c12701kv) {
        this.f49454a = c12701kv;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13107zt
    /* renamed from: a */
    public final /* synthetic */ void mo13893a(AbstractC12709lc abstractC12709lc) {
        zzd.zzed("Releasing engine reference.");
        this.f49454a.f49450a.m14551b();
    }
}
