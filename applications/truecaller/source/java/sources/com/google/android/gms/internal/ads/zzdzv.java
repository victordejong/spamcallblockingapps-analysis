package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzv.class */
public final class zzdzv {
    private final zzcoj zza;
    private final Context zzb;
    private final zzcgz zzc;
    private final zzfar zzd;
    private final Executor zze;
    private final String zzf;
    private final zzddv zzg;
    private final zzddz zzh;

    public zzdzv(zzcoj zzcojVar, Context context, zzcgz zzcgzVar, zzfar zzfarVar, Executor executor, String str, zzddv zzddvVar, zzddz zzddzVar) {
        this.zza = zzcojVar;
        this.zzb = context;
        this.zzc = zzcgzVar;
        this.zzd = zzfarVar;
        this.zze = executor;
        this.zzf = str;
        this.zzg = zzddvVar;
        this.zzh = zzddzVar;
    }

    private final zzfsm<zzfal> zze(String str, String str2) {
        zzbug zzb = zzt.zzp().zzb(this.zzb, this.zzc);
        zzbua<JSONObject> zzbuaVar = zzbud.zza;
        zzfsm<zzfal> zzi = zzfsd.zzi(zzfsd.zzi(zzfsd.zzi(zzfsd.zza(""), new zzfrk(this, str, str2) { // from class: com.google.android.gms.internal.ads.zzdzr
            private final zzdzv zza;
            private final String zzb;
            private final String zzc;

            {
                this.zza = this;
                this.zzb = str;
                this.zzc = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                String str3 = this.zzb;
                String str4 = this.zzc;
                String str5 = (String) obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("headers", new JSONObject());
                    jSONObject3.put("body", str3);
                    jSONObject2.put("base_url", "");
                    jSONObject2.put("signals", new JSONObject(str4));
                    jSONObject.put("request", jSONObject2);
                    jSONObject.put("response", jSONObject3);
                    jSONObject.put("flags", new JSONObject());
                    return zzfsd.zza(jSONObject);
                } catch (JSONException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    throw new JSONException(valueOf.length() != 0 ? "Preloaded loader: ".concat(valueOf) : new String("Preloaded loader: "));
                }
            }
        }, this.zze), new zzfrk(zzb.zza("google.afma.response.normalize", zzbuaVar, zzbuaVar)) { // from class: com.google.android.gms.internal.ads.zzdzs
            private final zzbtw zza;

            {
                this.zza = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzb((JSONObject) obj);
            }
        }, this.zze), new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzdzt
            private final zzdzv zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd((JSONObject) obj);
            }
        }, this.zze);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            zzfsd.zzp(zzi, new zzdzu(this), zzchg.zzf);
        }
        return zzi;
    }

    private final String zzf(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.zzf));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            zzcgt.zzi("Failed to update the ad types for rendering. ".concat(e.toString()));
            return str;
        }
    }

    private static final String zzg(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException e) {
            return "";
        }
    }

    public final zzfsm<zzfal> zzc() {
        String str = this.zzd.zzd.zzx;
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfi)).booleanValue()) {
                String zzg = zzg(str);
                if (TextUtils.isEmpty(zzg)) {
                    if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
                        this.zzh.zzbB(true);
                    }
                    return zzfsd.zzc(new zzehs(15, "Invalid ad string."));
                }
                String zzc = this.zza.zzw().zzc(zzg);
                if (!TextUtils.isEmpty(zzc)) {
                    return zze(str, zzf(zzc));
                }
            }
        }
        zzbcx zzbcxVar = this.zzd.zzd.zzs;
        if (zzbcxVar != null) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfg)).booleanValue()) {
                String zzg2 = zzg(zzbcxVar.zza);
                String zzg3 = zzg(zzbcxVar.zzb);
                if (!TextUtils.isEmpty(zzg3) && zzg2.equals(zzg3)) {
                    this.zza.zzw().zzd(zzg2);
                }
            }
            return zze(zzbcxVar.zza, zzf(zzbcxVar.zzb));
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfl)).booleanValue()) {
            this.zzh.zzbB(true);
        }
        return zzfsd.zzc(new zzehs(14, "Mismatch request IDs."));
    }

    public final /* synthetic */ zzfsm zzd(JSONObject jSONObject) throws Exception {
        return zzfsd.zza(new zzfal(new zzfai(this.zzd), zzfak.zza(new StringReader(jSONObject.toString()))));
    }
}
