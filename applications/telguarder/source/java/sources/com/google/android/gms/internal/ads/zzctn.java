package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctn.class */
final class zzctn implements zzcag {
    private zzbsd zzfxz = null;
    private final zzdmw zzfya;
    private final zzapk zzgul;
    private final boolean zzgum;

    public zzctn(zzdmw zzdmwVar, zzapk zzapkVar, boolean z) {
        this.zzfya = zzdmwVar;
        this.zzgul = zzapkVar;
        this.zzgum = z;
    }

    public final void zza(zzbsd zzbsdVar) {
        this.zzfxz = zzbsdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) throws zzcaf {
        try {
            if (!(this.zzgum ? this.zzgul.zzaa(ObjectWrapper.wrap(context)) : this.zzgul.zzz(ObjectWrapper.wrap(context)))) {
                throw new zzcaf("Adapter failed to show.");
            }
            if (this.zzfxz == null) {
                return;
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcre)).booleanValue() || this.zzfya.zzhjs != 2) {
                return;
            }
            this.zzfxz.onAdImpression();
        } catch (Throwable th) {
            throw new zzcaf(th);
        }
    }
}
