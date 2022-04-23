package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
import p131c.p161d.p170b.p224d.p252g.p253a.C3691je;
import p131c.p161d.p170b.p224d.p252g.p253a.C3728ke;
import p131c.p161d.p170b.p224d.p252g.p253a.C3765le;
import p131c.p161d.p170b.p224d.p252g.p253a.C3802me;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwa.class */
public final class zzbwa extends zzbyr<zzp> implements zzp {
    public zzbwa(Set<zzcab<zzp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        synchronized (this) {
            m14941a(C3728ke.f13876a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            m14941a(C3691je.f13778a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            m14941a(C3802me.f14158a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        synchronized (this) {
            m14941a(C3765le.f13961a);
        }
    }
}
