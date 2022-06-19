package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AbstractC5653o;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f51.class */
public final class f51 extends m81<AbstractC5653o> implements AbstractC5653o {
    public f51(Set<ja1<AbstractC5653o>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a */
    public final void mo9244a() {
        synchronized (this) {
            m13339Q0(b51.f20272a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a3 */
    public final void mo9243a3() {
        synchronized (this) {
            m13339Q0(d51.f21480a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: a6 */
    public final void mo9242a6(int i) {
        synchronized (this) {
            m13339Q0(new l81(i) { // from class: com.google.android.gms.internal.ads.z41

                /* renamed from: a */
                private final int f32809a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32809a = i;
                }

                @Override // com.google.android.gms.internal.ads.l81
                /* renamed from: a */
                public final void mo8530a(Object obj) {
                    ((AbstractC5653o) obj).mo9242a6(this.f32809a);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: e */
    public final void mo9240e() {
        synchronized (this) {
            m13339Q0(a51.f19835a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: m2 */
    public final void mo9237m2() {
        synchronized (this) {
            m13339Q0(c51.f21105a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.AbstractC5653o
    /* renamed from: y4 */
    public final void mo9229y4() {
        synchronized (this) {
            m13339Q0(e51.f22033a);
        }
    }
}
