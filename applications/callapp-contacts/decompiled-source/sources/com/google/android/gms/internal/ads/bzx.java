package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzx.class */
public final class bzx implements atu {

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<emd> f25467a = new AtomicReference<>();

    @Override // com.google.android.gms.internal.ads.atu
    public final void a(final zzvv zzvvVar) {
        clw.a(this.f25467a, new cma(zzvvVar) { // from class: com.google.android.gms.internal.ads.bzw

            /* renamed from: a  reason: collision with root package name */
            private final zzvv f25466a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25466a = zzvvVar;
            }

            @Override // com.google.android.gms.internal.ads.cma
            public final void a(Object obj) {
                ((emd) obj).a(this.f25466a);
            }
        });
    }
}
