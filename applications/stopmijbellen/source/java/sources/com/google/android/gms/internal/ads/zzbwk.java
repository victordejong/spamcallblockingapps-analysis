package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwk.class */
public final class zzbwk implements zzbsg {
    public final /* synthetic */ zzbwl zza;
    private final zzbvn zzb;
    private final zzcjr zzc;

    public zzbwk(zzbwl zzbwlVar, zzbvn zzbvnVar, zzcjr zzcjrVar) {
        this.zza = zzbwlVar;
        this.zzb = zzbvnVar;
        this.zzc = zzcjrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zza(String str) {
        zzbvn zzbvnVar;
        try {
            if (str == null) {
                this.zzc.zze(new zzbvw());
            } else {
                this.zzc.zze(new zzbvw(str));
            }
            zzbvnVar = this.zzb;
        } catch (IllegalStateException e) {
            zzbvnVar = this.zzb;
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
        zzbvnVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbsg
    public final void zzb(JSONObject jSONObject) {
        zzbvn zzbvnVar;
        zzbvz zzbvzVar;
        try {
            try {
                zzcjr zzcjrVar = this.zzc;
                zzbvzVar = this.zza.zza;
                zzcjrVar.zzd(zzbvzVar.zza(jSONObject));
                zzbvnVar = this.zzb;
            } catch (IllegalStateException e) {
                zzbvnVar = this.zzb;
            } catch (JSONException e2) {
                this.zzc.zze(e2);
                zzbvnVar = this.zzb;
            }
            zzbvnVar.zzb();
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
    }
}
