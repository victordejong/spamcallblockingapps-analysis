package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ars.class */
public final class ars extends awl<art> implements art {
    public ars(arw arwVar, Set<ayi<art>> set, Executor executor) {
        super(set);
        a(arwVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a() {
        a(arx.f23834a);
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(final zzcbq zzcbqVar) {
        a(new awn(zzcbqVar) { // from class: com.google.android.gms.internal.ads.aru

            /* renamed from: a  reason: collision with root package name */
            private final zzcbq f23832a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23832a = zzcbqVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((art) obj).a(this.f23832a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.art
    public final void a(final zzvh zzvhVar) {
        a(new awn(zzvhVar) { // from class: com.google.android.gms.internal.ads.arv

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f23833a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23833a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((art) obj).a(this.f23833a);
            }
        });
    }
}
