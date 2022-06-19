package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebh.class */
public final class zzebh implements zzdeu, zzdhm, zzdgj {
    private final zzebt zza;
    private final String zzb;
    private int zzc = 0;
    private zzebg zzd = zzebg.AD_REQUESTED;
    private zzdek zze;
    private zzbew zzf;

    public zzebh(zzebt zzebtVar, zzfef zzfefVar) {
        this.zza = zzebtVar;
        this.zzb = zzfefVar.zzf;
    }

    private static JSONObject zzf(zzbew zzbewVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzbewVar.zzc);
        jSONObject.put("errorCode", zzbewVar.zza);
        jSONObject.put("errorDescription", zzbewVar.zzb);
        zzbew zzbewVar2 = zzbewVar.zzd;
        jSONObject.put("underlyingError", zzbewVar2 == null ? null : zzf(zzbewVar2));
        return jSONObject;
    }

    private static JSONObject zzg(zzdek zzdekVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", zzdekVar.zze());
        jSONObject.put("responseSecsSinceEpoch", zzdekVar.zzc());
        jSONObject.put("responseId", zzdekVar.zzf());
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgR)).booleanValue()) {
            String zzd = zzdekVar.zzd();
            if (!TextUtils.isEmpty(zzd)) {
                String valueOf = String.valueOf(zzd);
                zzciz.zze(valueOf.length() != 0 ? "Bidding data: ".concat(valueOf) : new String("Bidding data: "));
                jSONObject.put("biddingData", new JSONObject(zzd));
            }
        }
        JSONArray jSONArray = new JSONArray();
        List<zzbfm> zzg = zzdekVar.zzg();
        if (zzg != null) {
            for (zzbfm zzbfmVar : zzg) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("adapterClassName", zzbfmVar.zza);
                jSONObject2.put("latencyMillis", zzbfmVar.zzb);
                zzbew zzbewVar = zzbfmVar.zzc;
                jSONObject2.put("error", zzbewVar == null ? null : zzf(zzbewVar));
                jSONArray.put(jSONObject2);
            }
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        this.zzd = zzebg.AD_LOAD_FAILED;
        this.zzf = zzbewVar;
    }

    public final JSONObject zzb() throws JSONException {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("state", this.zzd);
        jSONObject2.put("format", zzfdn.zza(this.zzc));
        zzdek zzdekVar = this.zze;
        if (zzdekVar != null) {
            jSONObject = zzg(zzdekVar);
        } else {
            zzbew zzbewVar = this.zzf;
            jSONObject = null;
            if (zzbewVar != null) {
                IBinder iBinder = zzbewVar.zze;
                jSONObject = null;
                if (iBinder != null) {
                    zzdek zzdekVar2 = (zzdek) iBinder;
                    JSONObject zzg = zzg(zzdekVar2);
                    List<zzbfm> zzg2 = zzdekVar2.zzg();
                    jSONObject = zzg;
                    if (zzg2 != null) {
                        jSONObject = zzg;
                        if (zzg2.isEmpty()) {
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(zzf(this.zzf));
                            zzg.put("errors", jSONArray);
                            jSONObject = zzg;
                        }
                    }
                }
            }
        }
        jSONObject2.put("responseInfo", jSONObject);
        return jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.zzdgj
    public final void zzbP(zzdav zzdavVar) {
        this.zze = zzdavVar.zzl();
        this.zzd = zzebg.AD_LOADED;
    }

    public final boolean zzc() {
        return this.zzd != zzebg.AD_REQUESTED;
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zzd(zzcdq zzcdqVar) {
        this.zza.zze(this.zzb, this);
    }

    @Override // com.google.android.gms.internal.ads.zzdhm
    public final void zze(zzfdz zzfdzVar) {
        if (!zzfdzVar.zzb.zza.isEmpty()) {
            this.zzc = zzfdzVar.zzb.zza.get(0).zzb;
        }
    }
}
