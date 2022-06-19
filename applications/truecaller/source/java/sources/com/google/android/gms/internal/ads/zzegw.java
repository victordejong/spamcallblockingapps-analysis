package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.PlatformVersion;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegw.class */
public final class zzegw implements zzegq<zzdmh> {
    private final zzdlb zza;
    private final zzfsn zzb;
    private final zzdoy zzc;
    private final zzfbj<zzdrh> zzd;
    private final zzdrn zze;

    public zzegw(zzdlb zzdlbVar, zzfsn zzfsnVar, zzdoy zzdoyVar, zzfbj<zzdrh> zzfbjVar, zzdrn zzdrnVar) {
        this.zza = zzdlbVar;
        this.zzb = zzfsnVar;
        this.zzc = zzdoyVar;
        this.zzd = zzfbjVar;
        this.zze = zzdrnVar;
    }

    private final zzfsm<zzdmh> zzg(zzfal zzfalVar, zzezz zzezzVar, JSONObject jSONObject) {
        zzfsm<zzdrh> zzb = this.zzd.zzb();
        zzfsm<zzdmm> zza = this.zzc.zza(zzfalVar, zzezzVar, jSONObject);
        return zzfsd.zzn(zzb, zza).zza(new Callable(this, zza, zzb, zzfalVar, zzezzVar, jSONObject) { // from class: com.google.android.gms.internal.ads.zzegv
            private final zzegw zza;
            private final zzfsm zzb;
            private final zzfsm zzc;
            private final zzfal zzd;
            private final zzezz zze;
            private final JSONObject zzf;

            {
                this.zza = this;
                this.zzb = zza;
                this.zzc = zzb;
                this.zzd = zzfalVar;
                this.zze = zzezzVar;
                this.zzf = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc(this.zzb, this.zzc, this.zzd, this.zze, this.zzf);
            }
        }, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final boolean zza(zzfal zzfalVar, zzezz zzezzVar) {
        zzfae zzfaeVar = zzezzVar.zzs;
        return (zzfaeVar == null || zzfaeVar.zzc == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final zzfsm<List<zzfsm<zzdmh>>> zzb(zzfal zzfalVar, zzezz zzezzVar) {
        return zzfsd.zzi(zzfsd.zzi(this.zzd.zzb(), new zzfrk(this, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzegr
            private final zzegw zza;
            private final zzezz zzb;

            {
                this.zza = this;
                this.zzb = zzezzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzf(this.zzb, (zzdrh) obj);
            }
        }, this.zzb), new zzfrk(this, zzfalVar, zzezzVar) { // from class: com.google.android.gms.internal.ads.zzegs
            private final zzegw zza;
            private final zzfal zzb;
            private final zzezz zzc;

            {
                this.zza = this;
                this.zzb = zzfalVar;
                this.zzc = zzezzVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zze(this.zzb, this.zzc, (JSONArray) obj);
            }
        }, this.zzb);
    }

    public final /* synthetic */ zzdmh zzc(zzfsm zzfsmVar, zzfsm zzfsmVar2, zzfal zzfalVar, zzezz zzezzVar, JSONObject jSONObject) throws Exception {
        zzdmm zzdmmVar = (zzdmm) zzfsmVar.get();
        zzdrh zzdrhVar = (zzdrh) zzfsmVar2.get();
        zzdmn zzT = this.zza.zzT(new zzcxv(zzfalVar, zzezzVar, null), new zzdmy(zzdmmVar), new zzdlo(jSONObject, zzdrhVar));
        zzT.zzi().zzb();
        zzT.zzj().zza(zzdrhVar);
        zzT.zzk().zza(zzdmmVar.zzR());
        zzT.zzl().zza(this.zze);
        return zzT.zzh();
    }

    public final /* synthetic */ zzfsm zzd(zzdrh zzdrhVar, JSONObject jSONObject) throws Exception {
        this.zzd.zzc(zzfsd.zza(zzdrhVar));
        if (jSONObject.optBoolean(AnalyticsConstants.SUCCESS)) {
            return zzfsd.zza(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbtv("process json failed");
    }

    public final /* synthetic */ zzfsm zze(zzfal zzfalVar, zzezz zzezzVar, JSONArray jSONArray) throws Exception {
        zzfsm zzfsmVar;
        if (jSONArray.length() == 0) {
            zzfsmVar = zzfsd.zzc(new zzdym(3));
        } else {
            if (zzfalVar.zza.zza.zzk > 1) {
                int length = jSONArray.length();
                this.zzd.zza(Math.min(length, zzfalVar.zza.zza.zzk));
                ArrayList arrayList = new ArrayList(zzfalVar.zza.zza.zzk);
                for (int i = 0; i < zzfalVar.zza.zza.zzk; i++) {
                    if (i < length) {
                        arrayList.add(zzg(zzfalVar, zzezzVar, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(zzfsd.zzc(new zzdym(3)));
                    }
                }
                zzfsmVar = zzfsd.zza(arrayList);
            } else {
                zzfsmVar = zzfsd.zzj(zzg(zzfalVar, zzezzVar, jSONArray.getJSONObject(0)), zzegu.zza, this.zzb);
            }
        }
        return zzfsmVar;
    }

    public final /* synthetic */ zzfsm zzf(zzezz zzezzVar, zzdrh zzdrhVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgf)).booleanValue() && PlatformVersion.m38774c()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", zzezzVar.zzs.zzc);
        jSONObject2.put("sdk_params", jSONObject);
        return zzfsd.zzi(zzdrhVar.zzd("google.afma.nativeAds.preProcessJson", jSONObject2), new zzfrk(this, zzdrhVar) { // from class: com.google.android.gms.internal.ads.zzegt
            private final zzegw zza;
            private final zzdrh zzb;

            {
                this.zza = this;
                this.zzb = zzdrhVar;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd(this.zzb, (JSONObject) obj);
            }
        }, this.zzb);
    }
}
