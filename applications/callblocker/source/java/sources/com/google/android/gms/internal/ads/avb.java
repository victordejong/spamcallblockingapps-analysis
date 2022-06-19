package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/avb.class */
public final class avb extends ate<AbstractC3141fk> implements AbstractC3141fk {
    public avb(Set<auq<AbstractC3141fk>> set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    /* renamed from: a */
    public final void mo7830a() {
        synchronized (this) {
            m12775a(ava.f10410a);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    /* renamed from: a */
    public final void mo7829a(C3472rr c3472rr) {
        m12775a(new atg(c3472rr) { // from class: com.google.android.gms.internal.ads.avd

            /* renamed from: a */
            private final C3472rr f10412a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10412a = c3472rr;
            }

            @Override // com.google.android.gms.internal.ads.atg
            /* renamed from: a */
            public final void mo11119a(Object obj) {
                ((AbstractC3141fk) obj).mo7829a(this.f10412a);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3141fk
    /* renamed from: b */
    public final void mo7828b() {
        m12775a(avc.f10411a);
    }
}
