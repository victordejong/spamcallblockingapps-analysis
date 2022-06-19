package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import com.amazon.device.ads.DtbConstants;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqc.class */
public final class zzdqc {
    private final Executor zza;
    private final zzcua zzb;
    private final zzdij zzc;

    public zzdqc(Executor executor, zzcua zzcuaVar, zzdij zzdijVar) {
        this.zza = executor;
        this.zzc = zzdijVar;
        this.zzb = zzcuaVar;
    }

    public final void zza(zzcml zzcmlVar) {
        if (zzcmlVar == null) {
            return;
        }
        this.zzc.zza(zzcmlVar.zzH());
        this.zzc.zzi(new zzawd(zzcmlVar) { // from class: com.google.android.gms.internal.ads.zzdpy
            private final zzcml zza;

            {
                this.zza = zzcmlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzawd
            public final void zzc(zzawc zzawcVar) {
                zzcnz zzR = this.zza.zzR();
                Rect rect = zzawcVar.zzd;
                zzR.zza(rect.left, rect.top, false);
            }
        }, this.zza);
        this.zzc.zzi(new zzawd(zzcmlVar) { // from class: com.google.android.gms.internal.ads.zzdpz
            private final zzcml zza;

            {
                this.zza = zzcmlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzawd
            public final void zzc(zzawc zzawcVar) {
                zzcml zzcmlVar2 = this.zza;
                HashMap hashMap = new HashMap();
                hashMap.put("isVisible", true != zzawcVar.zzj ? DtbConstants.NETWORK_TYPE_UNKNOWN : "1");
                zzcmlVar2.zze("onAdVisibilityChanged", hashMap);
            }
        }, this.zza);
        this.zzc.zzi(this.zzb, this.zza);
        this.zzb.zza(zzcmlVar);
        zzcmlVar.zzab("/trackActiveViewUnit", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdqa
            private final zzdqc zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzc((zzcml) obj, map);
            }
        });
        zzcmlVar.zzab("/untrackActiveViewUnit", new zzbpr(this) { // from class: com.google.android.gms.internal.ads.zzdqb
            private final zzdqc zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbpr
            public final void zza(Object obj, Map map) {
                this.zza.zzb((zzcml) obj, map);
            }
        });
    }

    public final /* synthetic */ void zzb(zzcml zzcmlVar, Map map) {
        this.zzb.zzb();
    }

    public final /* synthetic */ void zzc(zzcml zzcmlVar, Map map) {
        this.zzb.zzd();
    }
}
