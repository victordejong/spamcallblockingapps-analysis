package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.la */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/la.class */
public final class C12707la implements AbstractC13107zt<AbstractC12673ju> {

    /* renamed from: a */
    final /* synthetic */ C12705kz f49461a;

    public C12707la(C12705kz c12705kz) {
        this.f49461a = c12705kz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13107zt
    /* renamed from: a */
    public final /* synthetic */ void mo13893a(AbstractC12673ju abstractC12673ju) {
        C13091zd.f50122e.execute(new Runnable(this, abstractC12673ju) { // from class: com.google.android.gms.internal.ads.ld

            /* renamed from: a */
            private final C12707la f49463a;

            /* renamed from: b */
            private final AbstractC12673ju f49464b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f49463a = this;
                this.f49464b = abstractC12673ju;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12707la c12707la = this.f49463a;
                AbstractC12673ju abstractC12673ju3 = this.f49464b;
                c12707la.f49461a.f49456a.zzg(abstractC12673ju3);
                abstractC12673ju3.mo14569a();
            }
        });
    }
}
