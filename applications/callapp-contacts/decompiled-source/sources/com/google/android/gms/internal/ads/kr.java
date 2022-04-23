package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kr.class */
public final class kr implements zt<ju> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ kz f28130a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ke f28131b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kr(ke keVar, kz kzVar) {
        this.f28131b = keVar;
        this.f28130a = kzVar;
    }

    @Override // com.google.android.gms.internal.ads.zt
    public final /* synthetic */ void a(ju juVar) {
        synchronized (this.f28131b.f28101a) {
            this.f28131b.g = 0;
            if (!(this.f28131b.f == null || this.f28130a == this.f28131b.f)) {
                zzd.zzed("New JS engine is loaded, marking previous one as destroyable.");
                this.f28131b.f.c();
            }
            this.f28131b.f = this.f28130a;
        }
    }
}
