package com.google.android.gms.internal.ads;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.zzt;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwl.class */
public final class zzbwl<I, O> implements zzbvx<I, O> {
    private final zzbvz<O> zza;
    private final zzbwa<I> zzb;
    private final zzbvt zzc;
    private final String zzd;

    public zzbwl(zzbvt zzbvtVar, String str, zzbwa<I> zzbwaVar, zzbvz<O> zzbvzVar) {
        this.zzc = zzbvtVar;
        this.zzd = str;
        this.zzb = zzbwaVar;
        this.zza = zzbvzVar;
    }

    public static /* bridge */ /* synthetic */ void zzd(zzbwl zzbwlVar, zzbvn zzbvnVar, zzbvu zzbvuVar, Object obj, zzcjr zzcjrVar) {
        try {
            zzt.zzp();
            String uuid = UUID.randomUUID().toString();
            zzbrs.zzo.zzc(uuid, new zzbwk(zzbwlVar, zzbvnVar, zzcjrVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(FacebookAdapter.KEY_ID, uuid);
            jSONObject.put("args", zzbwlVar.zzb.zzb(obj));
            zzbvuVar.zzl(zzbwlVar.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzcjrVar.zze(e);
                zzciz.zzh("Unable to invokeJavascript", e);
            } finally {
                zzbvnVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa<O> zza(I i) throws Exception {
        return zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbvx
    public final zzfxa<O> zzb(I i) {
        zzcjr zzcjrVar = new zzcjr();
        zzbvn zzb = this.zzc.zzb(null);
        zzb.zzi(new zzbwi(this, zzb, i, zzcjrVar), new zzbwj(this, zzcjrVar, zzb));
        return zzcjrVar;
    }
}
