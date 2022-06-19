package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdog.class */
public final class zzdog implements zzder, zzdlo {
    private final zzcgq zza;
    private final Context zzb;
    private final zzchh zzc;
    private final View zzd;
    private String zze;
    private final zzbbg zzf;

    public zzdog(zzcgq zzcgqVar, Context context, zzchh zzchhVar, View view, zzbbg zzbbgVar) {
        this.zza = zzcgqVar;
        this.zzb = context;
        this.zzc = zzchhVar;
        this.zzd = view;
        this.zzf = zzbbgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzbD() {
    }

    @Override // com.google.android.gms.internal.ads.zzdlo
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdlo
    public final void zzf() {
        String zzd = this.zzc.zzd(this.zzb);
        this.zze = zzd;
        String valueOf = String.valueOf(zzd);
        String str = this.zzf == zzbbg.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.zze = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzj() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzo() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzs(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzder
    @ParametersAreNonnullByDefault
    public final void zzp(zzceg zzcegVar, String str, String str2) {
        if (this.zzc.zzu(this.zzb)) {
            try {
                zzchh zzchhVar = this.zzc;
                Context context = this.zzb;
                zzchhVar.zzo(context, zzchhVar.zza(context), this.zza.zza(), zzcegVar.zzc(), zzcegVar.zzb());
            } catch (RemoteException e) {
                zzciz.zzk("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzder
    public final void zzr() {
    }
}
