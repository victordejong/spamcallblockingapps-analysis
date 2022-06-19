package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/att.class */
public final class att extends awl<atu> implements ash, atk {

    /* renamed from: a */
    final cov f43160a;

    /* renamed from: b */
    private AtomicBoolean f43161b = new AtomicBoolean();

    public att(Set<ayi<atu>> set, cov covVar) {
        super(set);
        this.f43160a = covVar;
    }

    /* renamed from: c */
    private final void m18415c() {
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42899ex)).booleanValue() || !this.f43161b.compareAndSet(false, true) || this.f43160a.f46246Z == null || this.f43160a.f46246Z.type != 3) {
            return;
        }
        m18374a(new awn(this) { // from class: com.google.android.gms.internal.ads.atr

            /* renamed from: a */
            private final att f43158a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43158a = this;
            }

            @Override // com.google.android.gms.internal.ads.awn
            /* renamed from: a */
            public final void mo17234a(Object obj) {
                ((atu) obj).mo17403a(this.f43158a.f43160a.f46246Z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.atk
    /* renamed from: a */
    public final void mo17433a() {
        if (this.f43160a.f46255b == 1) {
            m18415c();
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: b */
    public final void mo17547b() {
        if (this.f43160a.f46255b == 2 || this.f43160a.f46255b == 5 || this.f43160a.f46255b == 4 || this.f43160a.f46255b == 6) {
            m18415c();
        }
    }
}
