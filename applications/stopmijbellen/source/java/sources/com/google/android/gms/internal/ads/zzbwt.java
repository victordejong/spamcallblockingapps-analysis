package com.google.android.gms.internal.ads;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwt.class */
public final class zzbwt<I, O> implements zzfvx<I, O> {
    private final zzbvz<O> zza;
    private final zzbwa<I> zzb;
    private final String zzc = "google.afma.activeView.handleUpdate";
    private final zzfxa<zzbvu> zzd;

    public zzbwt(zzfxa<zzbvu> zzfxaVar, String str, zzbwa<I> zzbwaVar, zzbvz<O> zzbvzVar) {
        this.zzd = zzfxaVar;
        this.zzb = zzbwaVar;
        this.zza = zzbvzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa<O> zza(I i) throws Exception {
        return zzb(i);
    }

    public final zzfxa<O> zzb(final I i) {
        return zzfwq.zzn(this.zzd, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzbwr
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzbwt.this.zzc(i, (zzbvu) obj);
            }
        }, zzcjm.zzf);
    }

    public final /* synthetic */ zzfxa zzc(Object obj, zzbvu zzbvuVar) throws Exception {
        zzcjr zzcjrVar = new zzcjr();
        zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzbrs.zzo.zzc(uuid, new zzbws(this, zzcjrVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(FacebookAdapter.KEY_ID, uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzbvuVar.zzl(this.zzc, jSONObject);
        return zzcjrVar;
    }
}
