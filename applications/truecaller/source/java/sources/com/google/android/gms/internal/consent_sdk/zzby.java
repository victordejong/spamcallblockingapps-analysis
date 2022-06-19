package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzby.class */
public final class zzby {
    public String zzb;
    public String zzc;
    public String zzd;
    public int zza = zzbu.zzg;
    public List<String> zze = Collections.emptyList();
    public List<zzbx> zzf = Collections.emptyList();

    public static zzby zza(JsonReader jsonReader) throws IOException {
        zzby zzbyVar = new zzby();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals("consent_signal")) {
                        z = false;
                        break;
                    }
                    break;
                case -1938755376:
                    if (nextName.equals("error_message")) {
                        z = true;
                        break;
                    }
                    break;
                case -1851537225:
                    if (nextName.equals("consent_form_base_url")) {
                        z = true;
                        break;
                    }
                    break;
                case -1161803523:
                    if (nextName.equals("actions")) {
                        z = true;
                        break;
                    }
                    break;
                case -986806987:
                    if (nextName.equals("request_info_keys")) {
                        z = true;
                        break;
                    }
                    break;
                case -790907624:
                    if (nextName.equals("consent_form_payload")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    zzbyVar.zza = zzbu.zzb(jsonReader);
                    break;
                case true:
                    zzbyVar.zzd = jsonReader.nextString();
                    break;
                case true:
                    zzbyVar.zzc = jsonReader.nextString();
                    break;
                case true:
                    zzbyVar.zzf = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzbx zzbxVar = new zzbx();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (nextName2.equals("args_json")) {
                                zzbxVar.zzb = jsonReader.nextString();
                            } else if (!nextName2.equals("action_type")) {
                                jsonReader.skipValue();
                            } else {
                                zzbxVar.zza = zzbu.zza(jsonReader);
                            }
                        }
                        jsonReader.endObject();
                        zzbyVar.zzf.add(zzbxVar);
                    }
                    jsonReader.endArray();
                    break;
                case true:
                    zzbyVar.zze = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        zzbyVar.zze.add(jsonReader.nextString());
                    }
                    jsonReader.endArray();
                    break;
                case true:
                    zzbyVar.zzb = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return zzbyVar;
    }
}
