package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduj.class */
public final class zzduj implements zzbrt<Object> {
    private final zzbpm zza;
    private final zzduy zzb;
    private final zzgpl<zzduf> zzc;

    public zzduj(zzdqn zzdqnVar, zzdqc zzdqcVar, zzduy zzduyVar, zzgpl<zzduf> zzgplVar) {
        this.zza = zzdqnVar.zzc(zzdqcVar.zzy());
        this.zzb = zzduyVar;
        this.zzc = zzgplVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.zza.zze(this.zzc.zzb(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzciz.zzk(sb.toString(), e);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzi("/nativeAdCustomClick", this);
    }
}
