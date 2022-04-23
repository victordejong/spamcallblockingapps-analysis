package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arn.class */
public final class arn extends awl<arp> implements arp {
    public arn(Set<ayi<arp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.arp
    public final void a(final zzvh zzvhVar) {
        a(new awn(zzvhVar) { // from class: com.google.android.gms.internal.ads.arr

            /* renamed from: a  reason: collision with root package name */
            private final zzvh f23831a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23831a = zzvhVar;
            }

            @Override // com.google.android.gms.internal.ads.awn
            public final void a(Object obj) {
                ((arp) obj).a(this.f23831a);
            }
        });
    }
}
