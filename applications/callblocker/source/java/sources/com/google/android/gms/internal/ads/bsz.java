package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsz.class */
public final class bsz implements arw {

    /* renamed from: a */
    private final AtomicReference<eau> f12207a = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.arw
    /* renamed from: a */
    public final void mo11423a(dyf dyfVar) {
        cel.m11438a(this.f12207a, new cek(dyfVar) { // from class: com.google.android.gms.internal.ads.btc

            /* renamed from: a */
            private final dyf f12211a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12211a = dyfVar;
            }

            @Override // com.google.android.gms.internal.ads.cek
            /* renamed from: a */
            public final void mo11397a(Object obj) {
                ((eau) obj).mo7912a(this.f12211a);
            }
        });
    }

    /* renamed from: a */
    public final void m11658a(eau eauVar) {
        this.f12207a.set(eauVar);
    }
}
