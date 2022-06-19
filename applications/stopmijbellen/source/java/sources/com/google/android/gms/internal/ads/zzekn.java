package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekn.class */
public final class zzekn implements zzekh<zzdpx> {
    private final zzdop zza;
    private final zzfxb zzb;
    private final zzdso zzc;
    private final zzfew<zzduy> zzd;
    private final zzdve zze;

    public zzekn(zzdop zzdopVar, zzfxb zzfxbVar, zzdso zzdsoVar, zzfew<zzduy> zzfewVar, zzdve zzdveVar) {
        this.zza = zzdopVar;
        this.zzb = zzfxbVar;
        this.zzc = zzdsoVar;
        this.zzd = zzfewVar;
        this.zze = zzdveVar;
    }

    private final zzfxa<zzdpx> zzg(final zzfdz zzfdzVar, final zzfdn zzfdnVar, final JSONObject jSONObject) {
        final zzfxa<zzduy> zza = this.zzd.zza();
        final zzfxa<zzdqc> zza2 = this.zzc.zza(zzfdzVar, zzfdnVar, jSONObject);
        return zzfwq.zzd(zza, zza2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzekm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzekn.this.zzc(zza2, zza, zzfdzVar, zzfdnVar, jSONObject);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<List<zzfxa<zzdpx>>> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        return zzfwq.zzn(zzfwq.zzn(this.zzd.zza(), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzekk
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzekn.this.zze(zzfdnVar, (zzduy) obj);
            }
        }, this.zzb), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzekl
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzekn.this.zzf(zzfdzVar, zzfdnVar, (JSONArray) obj);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfds zzfdsVar = zzfdnVar.zzt;
        return (zzfdsVar == null || zzfdsVar.zzc == null) ? false : true;
    }

    public final /* synthetic */ zzdpx zzc(zzfxa zzfxaVar, zzfxa zzfxaVar2, zzfdz zzfdzVar, zzfdn zzfdnVar, JSONObject jSONObject) throws Exception {
        zzdqc zzdqcVar = (zzdqc) zzfxaVar.get();
        zzduy zzduyVar = (zzduy) zzfxaVar2.get();
        zzdqd zzd = this.zza.zzd(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdqo(zzdqcVar), new zzdpe(jSONObject, zzduyVar));
        zzd.zzj().zzb();
        zzd.zzk().zza(zzduyVar);
        zzd.zzg().zza(zzdqcVar.zzr());
        zzd.zzl().zza(this.zze);
        return zzd.zza();
    }

    public final /* synthetic */ zzfxa zzd(zzduy zzduyVar, JSONObject jSONObject) throws Exception {
        this.zzd.zzb(zzfwq.zzi(zzduyVar));
        if (jSONObject.optBoolean("success")) {
            return zzfwq.zzi(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbvw("process json failed");
    }

    public final /* synthetic */ zzfxa zze(zzfdn zzfdnVar, final zzduy zzduyVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgn)).booleanValue() && PlatformVersion.isAtLeastR()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzfdnVar.zzt.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzfwq.zzn(zzduyVar.zzd("google.afma.nativeAds.preProcessJson", jSONObject2), new zzfvx() { // from class: com.google.android.gms.internal.ads.zzekj
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzekn.this.zzd(zzduyVar, (JSONObject) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzfxa zzf(zzfdz zzfdzVar, zzfdn zzfdnVar, JSONArray jSONArray) throws Exception {
        zzfxa zzfxaVar;
        if (jSONArray.length() == 0) {
            zzfxaVar = zzfwq.zzh(new zzecd(3));
        } else {
            if (zzfdzVar.zza.zza.zzk > 1) {
                int length = jSONArray.length();
                this.zzd.zzc(Math.min(length, zzfdzVar.zza.zza.zzk));
                ArrayList arrayList = new ArrayList(zzfdzVar.zza.zza.zzk);
                for (int i = 0; i < zzfdzVar.zza.zza.zzk; i++) {
                    if (i < length) {
                        arrayList.add(zzg(zzfdzVar, zzfdnVar, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(zzfwq.zzh(new zzecd(3)));
                    }
                }
                zzfxaVar = zzfwq.zzi(arrayList);
            } else {
                zzfxaVar = zzfwq.zzm(zzg(zzfdzVar, zzfdnVar, jSONArray.getJSONObject(0)), zzeki.zza, this.zzb);
            }
        }
        return zzfxaVar;
    }
}
