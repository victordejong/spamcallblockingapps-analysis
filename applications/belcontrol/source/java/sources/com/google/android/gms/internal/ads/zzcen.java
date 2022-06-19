package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.millennialmedia.NativeAd;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcen.class */
public final class zzcen {
    private final zzdzv zzghl;
    private final zzcer zzghm;
    private final zzcfb zzghn;

    public zzcen(zzdzv zzdzvVar, zzcer zzcerVar, zzcfb zzcfbVar) {
        this.zzghl = zzdzvVar;
        this.zzghm = zzcerVar;
        this.zzghn = zzcfbVar;
    }

    public final zzdzw<zzccd> zza(zzdnl zzdnlVar, zzdmw zzdmwVar, JSONObject jSONObject) {
        zzdzw zzdzwVar;
        JSONObject optJSONObject;
        zzdzw zze = this.zzghl.zze(new Callable(this, zzdnlVar, zzdmwVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzceq
            private final zzdmw zzfva;
            private final zzcen zzgho;
            private final zzdnl zzghw;
            private final JSONObject zzghx;

            {
                this.zzgho = this;
                this.zzghw = zzdnlVar;
                this.zzfva = zzdmwVar;
                this.zzghx = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdnl zzdnlVar2 = this.zzghw;
                zzdmw zzdmwVar2 = this.zzfva;
                JSONObject jSONObject2 = this.zzghx;
                zzccd zzccdVar = new zzccd();
                zzccdVar.zzdz(jSONObject2.optInt("template_id", -1));
                zzccdVar.zzfx(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                zzccdVar.zzfy(optJSONObject2 != null ? optJSONObject2.optString("omid_partner_name") : null);
                zzdnp zzdnpVar = zzdnlVar2.zzhkr.zzfwy;
                if (!zzdnpVar.zzhky.contains(Integer.toString(zzccdVar.zzanu()))) {
                    zzdom zzdomVar = zzdom.INTERNAL_ERROR;
                    int zzanu = zzccdVar.zzanu();
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("Invalid template ID: ");
                    sb.append(zzanu);
                    throw new zzcva(zzdomVar, sb.toString());
                }
                if (zzccdVar.zzanu() == 3) {
                    if (zzccdVar.getCustomTemplateId() == null) {
                        throw new zzcva(zzdom.INTERNAL_ERROR, "No custom template id for custom template ad response.");
                    }
                    if (!zzdnpVar.zzhkz.contains(zzccdVar.getCustomTemplateId())) {
                        throw new zzcva(zzdom.INTERNAL_ERROR, "Unexpected custom template id in the response.");
                    }
                }
                zzccdVar.setStarRating(jSONObject2.optDouble(NativeAd.COMPONENT_ID_RATING, -1.0d));
                String optString = jSONObject2.optString("headline", null);
                String str = optString;
                if (zzdmwVar2.zzdxt) {
                    zzr.zzkr();
                    String zzzb = zzj.zzzb();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(zzzb).length() + 3 + String.valueOf(optString).length());
                    sb2.append(zzzb);
                    sb2.append(" : ");
                    sb2.append(optString);
                    str = sb2.toString();
                }
                zzccdVar.zzn("headline", str);
                zzccdVar.zzn("body", jSONObject2.optString("body", null));
                zzccdVar.zzn("call_to_action", jSONObject2.optString("call_to_action", null));
                zzccdVar.zzn("store", jSONObject2.optString("store", null));
                zzccdVar.zzn("price", jSONObject2.optString("price", null));
                zzccdVar.zzn("advertiser", jSONObject2.optString("advertiser", null));
                return zzccdVar;
            }
        });
        zzdzw<List<zzaed>> zzd = this.zzghm.zzd(jSONObject, "images");
        zzdzw<zzaed> zzc = this.zzghm.zzc(jSONObject, "secondary_image");
        zzdzw<zzaed> zzc2 = this.zzghm.zzc(jSONObject, "app_icon");
        zzdzw<zzady> zze2 = this.zzghm.zze(jSONObject, "attribution");
        zzdzw<zzbeb> zzm = this.zzghm.zzm(jSONObject);
        zzcer zzcerVar = this.zzghm;
        if (jSONObject.optBoolean("enable_omid") && (optJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            String optString = optJSONObject.optString("omid_html");
            if (!TextUtils.isEmpty(optString)) {
                zzdzwVar = zzdzk.zzb(zzdzk.zzag((Object) null), new zzcev(zzcerVar, optString), zzazp.zzeig);
                zzdzw<List<zzcfg>> zzg = this.zzghn.zzg(jSONObject, "custom_assets");
                return zzdzk.zza(new zzdzw[]{zze, zzd, zzc, zzc2, zze2, zzm, zzdzwVar, zzg}).zzb(new Callable(this, zze, zzd, zzc2, zzc, zze2, jSONObject, zzm, zzdzwVar, zzg) { // from class: com.google.android.gms.internal.ads.zzcep
                    private final zzdzw zzfwq;
                    private final zzdzw zzfym;
                    private final zzcen zzgho;
                    private final zzdzw zzghp;
                    private final zzdzw zzghq;
                    private final zzdzw zzghr;
                    private final JSONObject zzghs;
                    private final zzdzw zzght;
                    private final zzdzw zzghu;
                    private final zzdzw zzghv;

                    {
                        this.zzgho = this;
                        this.zzfym = zze;
                        this.zzfwq = zzd;
                        this.zzghp = zzc2;
                        this.zzghq = zzc;
                        this.zzghr = zze2;
                        this.zzghs = jSONObject;
                        this.zzght = zzm;
                        this.zzghu = zzdzwVar;
                        this.zzghv = zzg;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzdzw zzdzwVar3 = this.zzfym;
                        zzdzw zzdzwVar4 = this.zzfwq;
                        zzdzw zzdzwVar5 = this.zzghp;
                        zzdzw zzdzwVar6 = this.zzghq;
                        zzdzw zzdzwVar7 = this.zzghr;
                        JSONObject jSONObject2 = this.zzghs;
                        zzdzw zzdzwVar8 = this.zzght;
                        zzdzw zzdzwVar9 = this.zzghu;
                        zzdzw zzdzwVar10 = this.zzghv;
                        zzccd zzccdVar = (zzccd) zzdzwVar3.get();
                        zzccdVar.setImages((List) zzdzwVar4.get());
                        zzccdVar.zza((zzaer) zzdzwVar5.get());
                        zzccdVar.zzb((zzaer) zzdzwVar6.get());
                        zzccdVar.zza((zzaej) zzdzwVar7.get());
                        zzccdVar.zzh(zzcer.zzj(jSONObject2));
                        zzccdVar.zza(zzcer.zzk(jSONObject2));
                        zzbeb zzbebVar = (zzbeb) zzdzwVar8.get();
                        if (zzbebVar != null) {
                            zzccdVar.zzf(zzbebVar);
                            zzccdVar.zzac(zzbebVar.getView());
                            zzccdVar.zzb((zzzc) zzbebVar.zzabc());
                        }
                        zzbeb zzbebVar2 = (zzbeb) zzdzwVar9.get();
                        if (zzbebVar2 != null) {
                            zzccdVar.zzg(zzbebVar2);
                        }
                        for (zzcfg zzcfgVar : (List) zzdzwVar10.get()) {
                            int i = zzcfgVar.type;
                            if (i == 1) {
                                zzccdVar.zzn(zzcfgVar.zzcm, zzcfgVar.zzdre);
                            } else if (i == 2) {
                                zzccdVar.zza(zzcfgVar.zzcm, zzcfgVar.zzgij);
                            }
                        }
                        return zzccdVar;
                    }
                }, this.zzghl);
            }
        }
        zzdzwVar = zzdzk.zzag((Object) null);
        zzdzw zzg2 = this.zzghn.zzg(jSONObject, "custom_assets");
        return zzdzk.zza(new zzdzw[]{zze, zzd, zzc, zzc2, zze2, zzm, zzdzwVar, zzg2}).zzb(new Callable(this, zze, zzd, zzc2, zzc, zze2, jSONObject, zzm, zzdzwVar, zzg2) { // from class: com.google.android.gms.internal.ads.zzcep
            private final zzdzw zzfwq;
            private final zzdzw zzfym;
            private final zzcen zzgho;
            private final zzdzw zzghp;
            private final zzdzw zzghq;
            private final zzdzw zzghr;
            private final JSONObject zzghs;
            private final zzdzw zzght;
            private final zzdzw zzghu;
            private final zzdzw zzghv;

            {
                this.zzgho = this;
                this.zzfym = zze;
                this.zzfwq = zzd;
                this.zzghp = zzc2;
                this.zzghq = zzc;
                this.zzghr = zze2;
                this.zzghs = jSONObject;
                this.zzght = zzm;
                this.zzghu = zzdzwVar;
                this.zzghv = zzg2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdzw zzdzwVar3 = this.zzfym;
                zzdzw zzdzwVar4 = this.zzfwq;
                zzdzw zzdzwVar5 = this.zzghp;
                zzdzw zzdzwVar6 = this.zzghq;
                zzdzw zzdzwVar7 = this.zzghr;
                JSONObject jSONObject2 = this.zzghs;
                zzdzw zzdzwVar8 = this.zzght;
                zzdzw zzdzwVar9 = this.zzghu;
                zzdzw zzdzwVar10 = this.zzghv;
                zzccd zzccdVar = (zzccd) zzdzwVar3.get();
                zzccdVar.setImages((List) zzdzwVar4.get());
                zzccdVar.zza((zzaer) zzdzwVar5.get());
                zzccdVar.zzb((zzaer) zzdzwVar6.get());
                zzccdVar.zza((zzaej) zzdzwVar7.get());
                zzccdVar.zzh(zzcer.zzj(jSONObject2));
                zzccdVar.zza(zzcer.zzk(jSONObject2));
                zzbeb zzbebVar = (zzbeb) zzdzwVar8.get();
                if (zzbebVar != null) {
                    zzccdVar.zzf(zzbebVar);
                    zzccdVar.zzac(zzbebVar.getView());
                    zzccdVar.zzb((zzzc) zzbebVar.zzabc());
                }
                zzbeb zzbebVar2 = (zzbeb) zzdzwVar9.get();
                if (zzbebVar2 != null) {
                    zzccdVar.zzg(zzbebVar2);
                }
                for (zzcfg zzcfgVar : (List) zzdzwVar10.get()) {
                    int i = zzcfgVar.type;
                    if (i == 1) {
                        zzccdVar.zzn(zzcfgVar.zzcm, zzcfgVar.zzdre);
                    } else if (i == 2) {
                        zzccdVar.zza(zzcfgVar.zzcm, zzcfgVar.zzgij);
                    }
                }
                return zzccdVar;
            }
        }, this.zzghl);
    }
}
