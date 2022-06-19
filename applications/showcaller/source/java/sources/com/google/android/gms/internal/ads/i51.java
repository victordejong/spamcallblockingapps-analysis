package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i51.class */
public final class i51 extends m81<k51> implements s31, y41 {

    /* renamed from: e */
    private final ej2 f24149e;

    /* renamed from: f */
    private final AtomicBoolean f24150f = new AtomicBoolean();

    public i51(Set<ja1<k51>> set, ej2 ej2Var) {
        super(set);
        this.f24149e = ej2Var;
    }

    /* renamed from: b */
    private final void m14487b() {
        zzbdn zzbdnVar;
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25441A5)).booleanValue() || !this.f24150f.compareAndSet(false, true) || (zzbdnVar = this.f24149e.f22222b0) == null || zzbdnVar.f33697d != 3) {
            return;
        }
        m13339Q0(new l81(this) { // from class: com.google.android.gms.internal.ads.h51

            /* renamed from: a */
            private final i51 f23805a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23805a = this;
            }

            @Override // com.google.android.gms.internal.ads.l81
            /* renamed from: a */
            public final void mo8530a(Object obj) {
                this.f23805a.m14488S0((k51) obj);
            }
        });
    }

    /* renamed from: S0 */
    public final /* synthetic */ void m14488S0(k51 k51Var) {
        k51Var.mo9235p(this.f24149e.f22222b0);
    }

    @Override // com.google.android.gms.internal.ads.y41
    /* renamed from: c0 */
    public final void mo8959c0() {
        if (this.f24149e.f22221b == 1) {
            m14487b();
        }
    }

    @Override // com.google.android.gms.internal.ads.s31
    public final void zzg() {
        int i = this.f24149e.f22221b;
        if (i == 2 || i == 5 || i == 4 || i == 6 || i == 7) {
            m14487b();
        }
    }
}
