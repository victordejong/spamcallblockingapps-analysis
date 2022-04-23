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
            a(ato.f23869a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
        synchronized (this) {
            a(atn.f23868a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onUserLeaveHint() {
        synchronized (this) {
            a(atl.f23866a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zza(final zzl zzlVar) {
        synchronized (this) {
            a(new awn(zzlVar) { // from class: com.google.android.gms.internal.ads.atm

                /* renamed from: a  reason: collision with root package name */
                private final zzl f23867a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23867a = zzlVar;
                }

                @Override // com.google.android.gms.internal.ads.awn
                public final void a(Object obj) {
                    ((zzp) obj).zza(this.f23867a);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzvz() {
        synchronized (this) {
            a(atq.f23871a);
        }
    }
}
