package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdwo.class */
public final class zzdwo extends zzbqo {
    private final zzdwr zza;
    private final zzdwm zzb;
    private final Map<Long, zzdwh> zzc = new HashMap();

    public zzdwo(zzdwr zzdwrVar, zzdwm zzdwmVar) {
        this.zza = zzdwrVar;
        this.zzb = zzdwmVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static zzbdg zzc(Map<String, String> map) {
        boolean z;
        zzbdh zzbdhVar = new zzbdh();
        String str = map.get("ad_request");
        if (str == null) {
            return zzbdhVar.zza();
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                switch (nextName.hashCode()) {
                    case -1289032093:
                        if (nextName.equals("extras")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -839117230:
                        if (nextName.equals("isTestDevice")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -733436947:
                        if (nextName.equals("tagForUnderAgeOfConsent")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -99890337:
                        if (nextName.equals("httpTimeoutMillis")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 523149226:
                        if (nextName.equals("keywords")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 597632527:
                        if (nextName.equals("maxAdContentRating")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1411582723:
                        if (nextName.equals("tagForChildDirectedTreatment")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        jsonReader.beginObject();
                        Bundle bundle = new Bundle();
                        while (jsonReader.hasNext()) {
                            bundle.putString(jsonReader.nextName(), jsonReader.nextString());
                        }
                        jsonReader.endObject();
                        zzbdhVar.zzb(bundle);
                        break;
                    case true:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        zzbdhVar.zzc(arrayList);
                        break;
                    case true:
                        zzbdhVar.zzd(jsonReader.nextBoolean());
                        break;
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            zzbdhVar.zze(0);
                            break;
                        } else {
                            zzbdhVar.zze(1);
                            break;
                        }
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            zzbdhVar.zzf(0);
                            break;
                        } else {
                            zzbdhVar.zzf(1);
                            break;
                        }
                    case true:
                        String nextString = jsonReader.nextString();
                        if (!RequestConfiguration.zza.contains(nextString)) {
                            break;
                        } else {
                            zzbdhVar.zzg(nextString);
                            break;
                        }
                    case true:
                        zzbdhVar.zzh(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            zzcgt.zzd("Ad Request json was malformed, parsing ended early.");
        }
        zzbdg zza = zzbdhVar.zza();
        Bundle bundle2 = zza.zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = zza.zzc;
            zza.zzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new zzbdg(zza.zza, zza.zzb, bundle3, zza.zzd, zza.zze, zza.zzf, zza.zzg, zza.zzh, zza.zzi, zza.zzj, zza.zzk, zza.zzl, zza.zzm, zza.zzn, zza.zzo, zza.zzp, zza.zzq, zza.zzr, zza.zzs, zza.zzt, zza.zzu, zza.zzv, zza.zzw, zza.zzx);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x011b, code lost:
        if (r0.equals("create_interstitial_ad") != false) goto L42;
     */
    @Override // com.google.android.gms.internal.ads.zzbqp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.lang.String r7) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 1249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwo.zze(java.lang.String):void");
    }

    @Override // com.google.android.gms.internal.ads.zzbqp
    public final void zzf() {
        this.zzc.clear();
    }
}
