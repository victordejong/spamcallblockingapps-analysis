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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeaf.class */
public final class zzeaf extends zzbsq {
    private final zzeai zza;
    private final zzead zzb;
    private final Map<Long, zzdzy> zzc = new HashMap();

    public zzeaf(zzeai zzeaiVar, zzead zzeadVar) {
        this.zza = zzeaiVar;
        this.zzb = zzeadVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static zzbfd zzc(Map<String, String> map) {
        boolean z;
        zzbfe zzbfeVar = new zzbfe();
        String str = map.get("ad_request");
        if (str == null) {
            return zzbfeVar.zza();
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
                        zzbfeVar.zzb(bundle);
                        break;
                    case true:
                        jsonReader.beginArray();
                        ArrayList arrayList = new ArrayList();
                        while (jsonReader.hasNext()) {
                            arrayList.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                        zzbfeVar.zze(arrayList);
                        break;
                    case true:
                        zzbfeVar.zzd(jsonReader.nextBoolean());
                        break;
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            zzbfeVar.zzg(0);
                            break;
                        } else {
                            zzbfeVar.zzg(1);
                            break;
                        }
                    case true:
                        if (!jsonReader.nextBoolean()) {
                            zzbfeVar.zzh(0);
                            break;
                        } else {
                            zzbfeVar.zzh(1);
                            break;
                        }
                    case true:
                        String nextString = jsonReader.nextString();
                        if (!RequestConfiguration.zza.contains(nextString)) {
                            break;
                        } else {
                            zzbfeVar.zzf(nextString);
                            break;
                        }
                    case true:
                        zzbfeVar.zzc(jsonReader.nextInt());
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
        } catch (IOException e) {
            zzciz.zze("Ad Request json was malformed, parsing ended early.");
        }
        zzbfd zza = zzbfeVar.zza();
        Bundle bundle2 = zza.zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle3 = bundle2;
        if (bundle2 == null) {
            bundle3 = zza.zzc;
            zza.zzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle3);
        }
        return new zzbfd(zza.zza, zza.zzb, bundle3, zza.zzd, zza.zze, zza.zzf, zza.zzg, zza.zzh, zza.zzi, zza.zzj, zza.zzk, zza.zzl, zza.zzm, zza.zzn, zza.zzo, zza.zzp, zza.zzq, zza.zzr, zza.zzs, zza.zzt, zza.zzu, zza.zzv, zza.zzw, zza.zzx);
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void zze() {
        this.zzc.clear();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a8  */
    @Override // com.google.android.gms.internal.ads.zzbsr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.String r7) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 1297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeaf.zzf(java.lang.String):void");
    }
}
