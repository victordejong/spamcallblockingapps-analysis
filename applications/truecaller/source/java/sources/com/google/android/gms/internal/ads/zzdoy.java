package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoy.class */
public final class zzdoy {
    private final zzfsn zza;
    private final zzdpl zzb;
    private final zzdpq zzc;

    public zzdoy(zzfsn zzfsnVar, zzdpl zzdplVar, zzdpq zzdpqVar) {
        this.zza = zzfsnVar;
        this.zzb = zzdplVar;
        this.zzc = zzdpqVar;
    }

    public final zzfsm<zzdmm> zza(zzfal zzfalVar, zzezz zzezzVar, JSONObject jSONObject) {
        zzfsm zzfsmVar;
        zzfsm zzb = this.zza.zzb(new Callable(this, zzfalVar, zzezzVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzdow
            private final zzdoy zza;
            private final zzfal zzb;
            private final zzezz zzc;
            private final JSONObject zzd;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
                this.zzd = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfal zzfalVar2 = this.zzb;
                zzezz zzezzVar2 = this.zzc;
                JSONObject jSONObject2 = this.zzd;
                zzdmm zzdmmVar = new zzdmm();
                zzdmmVar.zza(jSONObject2.optInt("template_id", -1));
                zzdmmVar.zzl(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                zzdmmVar.zzt(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                zzfar zzfarVar = zzfalVar2.zza.zza;
                if (zzfarVar.zzg.contains(Integer.toString(zzdmmVar.zzv()))) {
                    if (zzdmmVar.zzv() == 3) {
                        if (zzdmmVar.zzQ() == null) {
                            throw new zzehs(1, "No custom template id for custom template ad response.");
                        }
                        if (!zzfarVar.zzh.contains(zzdmmVar.zzQ())) {
                            throw new zzehs(1, "Unexpected custom template id in the response.");
                        }
                    }
                    zzdmmVar.zzi(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (zzezzVar2.zzI) {
                        zzt.zzc();
                        String zzC = zzs.zzC();
                        str = C22128a.m8610j(new StringBuilder(String.valueOf(zzC).length() + 3 + String.valueOf(optString).length()), zzC, " : ", optString);
                    }
                    zzdmmVar.zzq("headline", str);
                    zzdmmVar.zzq("body", jSONObject2.optString("body", null));
                    zzdmmVar.zzq("call_to_action", jSONObject2.optString("call_to_action", null));
                    zzdmmVar.zzq("store", jSONObject2.optString("store", null));
                    zzdmmVar.zzq("price", jSONObject2.optString("price", null));
                    zzdmmVar.zzq("advertiser", jSONObject2.optString("advertiser", null));
                    return zzdmmVar;
                }
                throw new zzehs(1, C22128a.m8690L1(32, "Invalid template ID: ", zzdmmVar.zzv()));
            }
        });
        zzfsm<List<zzblr>> zzb2 = this.zzb.zzb(jSONObject, "images");
        zzfsm<zzcml> zzc = this.zzb.zzc(jSONObject, "images", zzezzVar, zzfalVar.zzb.zzb);
        zzfsm<zzblr> zza = this.zzb.zza(jSONObject, "secondary_image");
        zzfsm<zzblr> zza2 = this.zzb.zza(jSONObject, "app_icon");
        zzfsm<zzblo> zzd = this.zzb.zzd(jSONObject, "attribution");
        zzfsm<zzcml> zze = this.zzb.zze(jSONObject, zzezzVar, zzfalVar.zzb.zzb);
        zzdpl zzdplVar = this.zzb;
        if (!jSONObject.optBoolean("enable_omid")) {
            zzfsmVar = zzfsd.zza(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzfsmVar = zzfsd.zza(null);
            } else {
                String optString = optJSONObject.optString("omid_html");
                zzfsmVar = TextUtils.isEmpty(optString) ? zzfsd.zza(null) : zzfsd.zzi(zzfsd.zza(null), new zzfrk(zzdplVar, optString) { // from class: com.google.android.gms.internal.ads.zzdpg
                    private final zzdpl zza;
                    private final String zzb;

                    {
                        this.zza = zzdplVar;
                        this.zzb = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.zzfrk
                    public final zzfsm zza(Object obj) {
                        return this.zza.zzf(this.zzb, obj);
                    }
                }, zzchg.zze);
            }
        }
        zzfsm<List<zzdpp>> zza3 = this.zzc.zza(jSONObject, "custom_assets");
        return zzfsd.zzl(zzb, zzb2, zzc, zza, zza2, zzd, zze, zzfsmVar, zza3).zza(new Callable(this, zzb, zzb2, zza2, zza, zzd, jSONObject, zze, zzc, zzfsmVar, zza3) { // from class: com.google.android.gms.internal.ads.zzdox
            private final zzdoy zza;
            private final zzfsm zzb;
            private final zzfsm zzc;
            private final zzfsm zzd;
            private final zzfsm zze;
            private final zzfsm zzf;
            private final JSONObject zzg;
            private final zzfsm zzh;
            private final zzfsm zzi;
            private final zzfsm zzj;
            private final zzfsm zzk;

            {
                this.zza = this;
                this.zzb = zzb;
                this.zzc = zzb2;
                this.zzd = zza2;
                this.zze = zza;
                this.zzf = zzd;
                this.zzg = jSONObject;
                this.zzh = zze;
                this.zzi = zzc;
                this.zzj = zzfsmVar;
                this.zzk = zza3;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfsm zzfsmVar3 = this.zzb;
                zzfsm zzfsmVar4 = this.zzc;
                zzfsm zzfsmVar5 = this.zzd;
                zzfsm zzfsmVar6 = this.zze;
                zzfsm zzfsmVar7 = this.zzf;
                JSONObject jSONObject2 = this.zzg;
                zzfsm zzfsmVar8 = this.zzh;
                zzfsm zzfsmVar9 = this.zzi;
                zzfsm zzfsmVar10 = this.zzj;
                zzfsm zzfsmVar11 = this.zzk;
                zzdmm zzdmmVar = (zzdmm) zzfsmVar3.get();
                zzdmmVar.zzd((List) zzfsmVar4.get());
                zzdmmVar.zzj((zzbmh) zzfsmVar5.get());
                zzdmmVar.zzk((zzbmh) zzfsmVar6.get());
                zzdmmVar.zzc((zzblz) zzfsmVar7.get());
                zzdmmVar.zze(zzdpl.zzj(jSONObject2));
                zzdmmVar.zzf(zzdpl.zzi(jSONObject2));
                zzcml zzcmlVar = (zzcml) zzfsmVar8.get();
                if (zzcmlVar != null) {
                    zzdmmVar.zzm(zzcmlVar);
                    zzdmmVar.zzg(zzcmlVar.zzH());
                    zzdmmVar.zzb(zzcmlVar.zzh());
                }
                zzcml zzcmlVar2 = (zzcml) zzfsmVar9.get();
                if (zzcmlVar2 != null) {
                    zzdmmVar.zzn(zzcmlVar2);
                    zzdmmVar.zzh(zzcmlVar2.zzH());
                }
                zzcml zzcmlVar3 = (zzcml) zzfsmVar10.get();
                if (zzcmlVar3 != null) {
                    zzdmmVar.zzo(zzcmlVar3);
                }
                for (zzdpp zzdppVar : (List) zzfsmVar11.get()) {
                    if (zzdppVar.zza != 1) {
                        zzdmmVar.zzr(zzdppVar.zzb, zzdppVar.zzd);
                    } else {
                        zzdmmVar.zzq(zzdppVar.zzb, zzdppVar.zzc);
                    }
                }
                return zzdmmVar;
            }
        }, this.zza);
    }
}
