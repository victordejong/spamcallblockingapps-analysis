package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kq.class */
public final class kq implements zr {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kz f28128a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ke f28129b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kq(ke keVar, kz kzVar) {
        this.f28129b = keVar;
        this.f28128a = kzVar;
    }

    @Override // com.google.android.gms.internal.ads.zr
    public final void a() {
        synchronized (this.f28129b.f28101a) {
            this.f28129b.g = 1;
            zzd.zzed("Failed loading new engine. Marking new engine destroyable.");
            this.f28128a.c();
        }
    }
}
