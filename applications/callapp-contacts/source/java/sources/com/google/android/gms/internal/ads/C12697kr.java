package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
/* renamed from: com.google.android.gms.internal.ads.kr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/kr.class */
public final class C12697kr implements AbstractC13107zt<AbstractC12673ju> {

    /* renamed from: a */
    private final /* synthetic */ C12705kz f49446a;

    /* renamed from: b */
    private final /* synthetic */ C12684ke f49447b;

    public C12697kr(C12684ke c12684ke, C12705kz c12705kz) {
        this.f49447b = c12684ke;
        this.f49446a = c12705kz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13107zt
    /* renamed from: a */
    public final /* synthetic */ void mo13893a(AbstractC12673ju abstractC12673ju) {
        synchronized (this.f49447b.f49413a) {
            this.f49447b.f49419g = 0;
            if (this.f49447b.f49418f != null && this.f49446a != this.f49447b.f49418f) {
                zzd.zzed("New JS engine is loaded, marking previous one as destroyable.");
                this.f49447b.f49418f.m14550c();
            }
            this.f49447b.f49418f = this.f49446a;
        }
    }
}
