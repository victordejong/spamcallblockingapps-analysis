package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbtj.class */
public final class zzbtj extends zzbwf<zzq> implements zzq {
    public zzbtj(Set<zzbya<zzq>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onPause() {
        synchronized (this) {
            zza(zzbtk.zzfzg);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onResume() {
        synchronized (this) {
            zza(zzbtn.zzfzg);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void onUserLeaveHint() {
        synchronized (this) {
            zza(zzbtl.zzfzg);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zza(zzn zznVar) {
        synchronized (this) {
            zza(new zzbwh(zznVar) { // from class: com.google.android.gms.internal.ads.zzbti
                private final zzn zzfzn;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzfzn = zznVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbwh
                public final void zzo(Object obj) {
                    ((zzq) obj).zza(this.zzfzn);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzq
    public final void zzvo() {
        synchronized (this) {
            zza(zzbtm.zzfzg);
        }
    }
}
