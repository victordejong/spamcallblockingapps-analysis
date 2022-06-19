package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbuk.class */
public final class zzbuk<I, O> implements zzbtw<I, O> {
    private final zzbty<O> zza;
    private final zzbtz<I> zzb;
    private final zzbts zzc;
    private final String zzd;

    public zzbuk(zzbts zzbtsVar, String str, zzbtz<I> zzbtzVar, zzbty<O> zzbtyVar) {
        this.zzc = zzbtsVar;
        this.zzd = str;
        this.zzb = zzbtzVar;
        this.zza = zzbtyVar;
    }

    public static /* synthetic */ void zzd(zzbuk zzbukVar, zzbtm zzbtmVar, zzbtt zzbttVar, Object obj, zzchl zzchlVar) {
        try {
            zzt.zzc();
            String uuid = UUID.randomUUID().toString();
            zzbpq.zzo.zzb(uuid, new zzbuj(zzbukVar, zzbtmVar, zzchlVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", zzbukVar.zzb.zzb(obj));
            zzbttVar.zzr(zzbukVar.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzchlVar.zzd(e);
                zzcgt.zzg("Unable to invokeJavascript", e);
            } finally {
                zzbtmVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm<O> zza(I i) throws Exception {
        return zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbtw
    public final zzfsm<O> zzb(I i) {
        zzchl zzchlVar = new zzchl();
        zzbtm zzg = this.zzc.zzg(null);
        zzg.zzf(new zzbuh(this, zzg, i, zzchlVar), new zzbui(this, zzchlVar, zzg));
        return zzchlVar;
    }
}
