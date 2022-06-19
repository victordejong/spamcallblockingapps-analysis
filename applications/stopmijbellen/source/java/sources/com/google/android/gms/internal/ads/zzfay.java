package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdea;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfay.class */
public final class zzfay<R extends zzdea<? extends zzdav>> {
    private final zzffn zza;
    private final R zzb;
    private final Executor zzc;
    private zzfax zzd;

    public zzfay(zzffn zzffnVar, R r, Executor executor) {
        this.zza = zzffnVar;
        this.zzb = r;
        this.zzc = executor;
    }

    @Deprecated
    public final zzffx zze() {
        zzfef zzg = this.zzb.zzg();
        return this.zza.zzc(zzg.zzd, zzg.zzf, zzg.zzj);
    }

    public final zzfxa<zzfax> zzc() {
        zzfxa zzfxaVar;
        zzfax zzfaxVar = this.zzd;
        if (zzfaxVar == null) {
            if (!zzbnc.zza.zze().booleanValue()) {
                zzfax zzfaxVar2 = new zzfax(null, zze(), null);
                this.zzd = zzfaxVar2;
                zzfxaVar = zzfwq.zzi(zzfaxVar2);
            } else {
                zzfxaVar = zzfwq.zzf(zzfwq.zzm(zzfwh.zzw(this.zzb.zzb().zze(this.zza.zza())), new zzfav(this), this.zzc), zzeeg.class, new zzfau(this), this.zzc);
            }
            return zzfwq.zzm(zzfxaVar, zzfat.zza, this.zzc);
        }
        return zzfwq.zzi(zzfaxVar);
    }
}
