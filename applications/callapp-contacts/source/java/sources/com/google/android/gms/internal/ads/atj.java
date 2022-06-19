package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzl;
import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atj.class */
public final class atj extends awl<zzp> implements zzp {
    public atj(Set<ayi<zzp>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
        synchronized (this) {
            m18374a(ato.f43155a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            m18374a(atn.f43154a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        synchronized (this) {
            m18374a(atl.f43152a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(zzl zzlVar) {
        synchronized (this) {
            m18374a(new awn(zzlVar) { // from class: com.google.android.gms.internal.ads.atm

                /* renamed from: a */
                private final zzl f43153a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43153a = zzlVar;
                }

                @Override // com.google.android.gms.internal.ads.awn
                /* renamed from: a */
                public final void mo17234a(Object obj) {
                    ((zzp) obj).zza(this.f43153a);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        synchronized (this) {
            m18374a(atq.f43157a);
        }
    }
}
