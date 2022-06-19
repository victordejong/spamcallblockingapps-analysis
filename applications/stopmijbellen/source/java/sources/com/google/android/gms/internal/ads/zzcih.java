package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzb;
import com.google.android.gms.ads.internal.zzt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcih.class */
public final class zzcih extends zzb {
    public final /* synthetic */ zzcik zza;

    public zzcih(zzcik zzcikVar) {
        this.zza = zzcikVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        Context context;
        zzcjf zzcjfVar;
        Object obj;
        zzblo zzbloVar;
        context = this.zza.zze;
        zzcjfVar = this.zza.zzf;
        zzblm zzblmVar = new zzblm(context, zzcjfVar.zza);
        obj = this.zza.zza;
        synchronized (obj) {
            try {
                zzt.zze();
                zzbloVar = this.zza.zzg;
                zzblp.zza(zzbloVar, zzblmVar);
            } catch (IllegalArgumentException e) {
                zzciz.zzk("Cannot config CSI reporter.", e);
            }
        }
    }
}
