package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgh.class */
public final class zzcgh implements zzaif<Object> {
    private final zzepv<zzcge> zzgdo;
    private final zzcgk zzgge;
    private final zzafx zzgiu;

    public zzcgh(zzcco zzccoVar, zzccd zzccdVar, zzcgk zzcgkVar, zzepv<zzcge> zzepvVar) {
        this.zzgiu = zzccoVar.zzgb(zzccdVar.getCustomTemplateId());
        this.zzgge = zzcgkVar;
        this.zzgdo = zzepvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.zzgiu.zza(this.zzgdo.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzd.zzd(sb.toString(), e);
        }
    }

    public final void zzapn() {
        if (this.zzgiu == null) {
            return;
        }
        this.zzgge.zza("/nativeAdCustomClick", this);
    }
}
