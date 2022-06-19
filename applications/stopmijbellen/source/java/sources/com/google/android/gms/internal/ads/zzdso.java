package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.ads.internal.zzt;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdso.class */
public final class zzdso {
    private final zzfxb zza;
    private final zzdtb zzb;
    private final zzdtg zzc;

    public zzdso(zzfxb zzfxbVar, zzdtb zzdtbVar, zzdtg zzdtgVar) {
        this.zza = zzfxbVar;
        this.zzb = zzdtbVar;
        this.zzc = zzdtgVar;
    }

    public final zzfxa<zzdqc> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar, final JSONObject jSONObject) {
        zzfxa zzfxaVar;
        final zzfxa zzb = this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdsm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfdz zzfdzVar2 = zzfdzVar;
                zzfdn zzfdnVar2 = zzfdnVar;
                JSONObject jSONObject2 = jSONObject;
                zzdqc zzdqcVar = new zzdqc();
                zzdqcVar.zzV(jSONObject2.optInt("template_id", -1));
                zzdqcVar.zzI(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                zzdqcVar.zzS(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                zzfef zzfefVar = zzfdzVar2.zza.zza;
                if (zzfefVar.zzg.contains(Integer.toString(zzdqcVar.zzc()))) {
                    if (zzdqcVar.zzc() == 3) {
                        if (zzdqcVar.zzy() == null) {
                            throw new zzelj(1, "No custom template id for custom template ad response.");
                        }
                        if (!zzfefVar.zzh.contains(zzdqcVar.zzy())) {
                            throw new zzelj(1, "Unexpected custom template id in the response.");
                        }
                    }
                    zzdqcVar.zzT(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (zzfdnVar2.zzJ) {
                        zzt.zzp();
                        String zzD = com.google.android.gms.ads.internal.util.zzt.zzD();
                        str = C0608b.m7625j(new StringBuilder(String.valueOf(zzD).length() + 3 + String.valueOf(optString).length()), zzD, " : ", optString);
                    }
                    zzdqcVar.zzU("headline", str);
                    zzdqcVar.zzU("body", jSONObject2.optString("body", null));
                    zzdqcVar.zzU("call_to_action", jSONObject2.optString("call_to_action", null));
                    zzdqcVar.zzU("store", jSONObject2.optString("store", null));
                    zzdqcVar.zzU("price", jSONObject2.optString("price", null));
                    zzdqcVar.zzU("advertiser", jSONObject2.optString("advertiser", null));
                    return zzdqcVar;
                }
                throw new zzelj(1, C0082b.m8758d(32, "Invalid template ID: ", zzdqcVar.zzc()));
            }
        });
        final zzfxa<List<zzbnu>> zzf = this.zzb.zzf(jSONObject, "images");
        final zzfxa<zzcop> zzg = this.zzb.zzg(jSONObject, "images", zzfdnVar, zzfdzVar.zzb.zzb);
        final zzfxa<zzbnu> zze = this.zzb.zze(jSONObject, "secondary_image");
        final zzfxa<zzbnu> zze2 = this.zzb.zze(jSONObject, "app_icon");
        final zzfxa<zzbnr> zzd = this.zzb.zzd(jSONObject, "attribution");
        final zzfxa<zzcop> zzh = this.zzb.zzh(jSONObject, zzfdnVar, zzfdzVar.zzb.zzb);
        final zzdtb zzdtbVar = this.zzb;
        if (!jSONObject.optBoolean("enable_omid")) {
            zzfxaVar = zzfwq.zzi(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzfxaVar = zzfwq.zzi(null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                zzfxaVar = TextUtils.isEmpty(optString) ? zzfwq.zzi(null) : zzfwq.zzn(zzfwq.zzi(null), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzdsx
                    @Override // com.google.android.gms.internal.ads.zzfvx
                    public final zzfxa zza(Object obj) {
                        return zzdtb.this.zzc(optString, obj);
                    }
                }, zzcjm.zze);
            }
        }
        final zzfxa<List<zzdtf>> zza = this.zzc.zza(jSONObject, "custom_assets");
        final zzfxa zzfxaVar2 = zzfxaVar;
        return zzfwq.zzb(zzb, zzf, zzg, zze, zze2, zzd, zzh, zzfxaVar, zza).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdsn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfxa zzfxaVar3 = zzb;
                zzfxa zzfxaVar4 = zzf;
                zzfxa zzfxaVar5 = zze2;
                zzfxa zzfxaVar6 = zze;
                zzfxa zzfxaVar7 = zzd;
                JSONObject jSONObject2 = jSONObject;
                zzfxa zzfxaVar8 = zzh;
                zzfxa zzfxaVar9 = zzg;
                zzfxa zzfxaVar10 = zzfxaVar2;
                zzfxa zzfxaVar11 = zza;
                zzdqc zzdqcVar = (zzdqc) zzfxaVar3.get();
                zzdqcVar.zzN((List) zzfxaVar4.get());
                zzdqcVar.zzK((zzboi) zzfxaVar5.get());
                zzdqcVar.zzO((zzboi) zzfxaVar6.get());
                zzdqcVar.zzH((zzboa) zzfxaVar7.get());
                zzdqcVar.zzQ(zzdtb.zzj(jSONObject2));
                zzdqcVar.zzJ(zzdtb.zzi(jSONObject2));
                zzcop zzcopVar = (zzcop) zzfxaVar8.get();
                if (zzcopVar != null) {
                    zzdqcVar.zzY(zzcopVar);
                    zzdqcVar.zzX(zzcopVar.zzH());
                    zzdqcVar.zzW(zzcopVar.zzs());
                }
                zzcop zzcopVar2 = (zzcop) zzfxaVar9.get();
                if (zzcopVar2 != null) {
                    zzdqcVar.zzM(zzcopVar2);
                    zzdqcVar.zzZ(zzcopVar2.zzH());
                }
                zzcop zzcopVar3 = (zzcop) zzfxaVar10.get();
                if (zzcopVar3 != null) {
                    zzdqcVar.zzR(zzcopVar3);
                }
                for (zzdtf zzdtfVar : (List) zzfxaVar11.get()) {
                    if (zzdtfVar.zza != 1) {
                        zzdqcVar.zzL(zzdtfVar.zzb, zzdtfVar.zzd);
                    } else {
                        zzdqcVar.zzU(zzdtfVar.zzb, zzdtfVar.zzc);
                    }
                }
                return zzdqcVar;
            }
        }, this.zza);
    }
}
