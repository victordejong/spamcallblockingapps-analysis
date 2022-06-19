package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbuj.class */
public final class zzbuj implements zzbqe {
    public final /* synthetic */ zzbuk zza;
    private final zzbtm zzb;
    private final zzchl zzc;

    public zzbuj(zzbuk zzbukVar, zzbtm zzbtmVar, zzchl zzchlVar) {
        this.zza = zzbukVar;
        this.zzb = zzbtmVar;
        this.zzc = zzchlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zza(JSONObject jSONObject) {
        zzbtm zzbtmVar;
        zzbty zzbtyVar;
        try {
            try {
                zzchl zzchlVar = this.zzc;
                zzbtyVar = this.zza.zza;
                zzchlVar.zzc(zzbtyVar.zza(jSONObject));
                zzbtmVar = this.zzb;
            } catch (IllegalStateException e) {
                zzbtmVar = this.zzb;
            } catch (JSONException e2) {
                this.zzc.zzd(e2);
                zzbtmVar = this.zzb;
            }
            zzbtmVar.zzb();
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqe
    public final void zzb(String str) {
        zzbtm zzbtmVar;
        try {
            if (str == null) {
                this.zzc.zzd(new zzbtv());
            } else {
                this.zzc.zzd(new zzbtv(str));
            }
            zzbtmVar = this.zzb;
        } catch (IllegalStateException e) {
            zzbtmVar = this.zzb;
        } catch (Throwable th) {
            this.zzb.zzb();
            throw th;
        }
        zzbtmVar.zzb();
    }
}
