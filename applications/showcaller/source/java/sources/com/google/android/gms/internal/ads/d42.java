package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d42.class */
public final class d42 implements k51 {

    /* renamed from: d */
    private final AtomicReference<AbstractC6379cu> f21475d = new AtomicReference<>();

    /* renamed from: a */
    public final void m15949a(AbstractC6379cu abstractC6379cu) {
        this.f21475d.set(abstractC6379cu);
    }

    @Override // com.google.android.gms.internal.ads.k51
    /* renamed from: p */
    public final void mo9235p(zzbdn zzbdnVar) {
        gg2.m14948a(this.f21475d, new fg2(zzbdnVar) { // from class: com.google.android.gms.internal.ads.c42

            /* renamed from: a */
            private final zzbdn f21097a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21097a = zzbdnVar;
            }

            @Override // com.google.android.gms.internal.ads.fg2
            /* renamed from: a */
            public final void mo8384a(Object obj) {
                ((AbstractC6379cu) obj).mo12813j5(this.f21097a);
            }
        });
    }
}
