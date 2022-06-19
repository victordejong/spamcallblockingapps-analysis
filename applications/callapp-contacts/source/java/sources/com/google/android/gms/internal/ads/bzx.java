package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzx.class */
public final class bzx implements atu {

    /* renamed from: a */
    final AtomicReference<emd> f45176a = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.atu
    /* renamed from: a */
    public final void mo17403a(zzvv zzvvVar) {
        clw.m17416a(this.f45176a, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.bzw

            /* renamed from: a */
            private final zzvv f45175a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45175a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            /* renamed from: a */
            public final void mo17391a(Object obj) {
                ((emd) obj).mo14203a(this.f45175a);
            }
        });
    }
}
