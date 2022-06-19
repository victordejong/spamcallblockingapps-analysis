package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbus.class */
public final class zzbus<I, O> implements zzfrk<I, O> {
    private final zzbty<O> zza;
    private final zzbtz<I> zzb;
    private final String zzc = "google.afma.activeView.handleUpdate";
    private final zzfsm<zzbtt> zzd;

    public zzbus(zzfsm<zzbtt> zzfsmVar, String str, zzbtz<I> zzbtzVar, zzbty<O> zzbtyVar) {
        this.zzd = zzfsmVar;
        this.zzb = zzbtzVar;
        this.zza = zzbtyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm<O> zza(I i) throws Exception {
        return zzb(i);
    }

    public final zzfsm<O> zzb(I i) {
        return zzfsd.zzi(this.zzd, new zzfrk(this, i) { // from class: com.google.android.gms.internal.ads.zzbuq
            private final zzbus zza;
            private final Object zzb;

            {
                this.zza = this;
                this.zzb = i;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzc(this.zzb, (zzbtt) obj);
            }
        }, zzchg.zzf);
    }

    public final /* synthetic */ zzfsm zzc(Object obj, zzbtt zzbttVar) throws Exception {
        zzchl zzchlVar = new zzchl();
        zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        zzbpq.zzo.zzb(uuid, new zzbur(this, zzchlVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzbttVar.zzr(this.zzc, jSONObject);
        return zzchlVar;
    }
}
