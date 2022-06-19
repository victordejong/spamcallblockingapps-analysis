package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import android.util.JsonToken;
import com.google.android.gms.ads.internal.util.zzbx;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfac.class */
public final class zzfac {
    public final List<String> zza;
    public final String zzb;
    public final int zzc;
    public final String zzd;
    public final int zze;
    public final long zzf;
    public final boolean zzg;
    public final String zzh;
    public final zzfab zzi;

    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    public zzfac(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        List<String> emptyList = Collections.emptyList();
        jsonReader.beginObject();
        int i = 0;
        String str = "";
        char c = 0;
        zzfab zzfabVar = null;
        int i2 = 0;
        boolean z = false;
        String str2 = str;
        String str3 = str2;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("nofill_urls".equals(nextName)) {
                emptyList = zzbx.zzb(jsonReader);
            } else if ("refresh_interval".equals(nextName)) {
                i = jsonReader.nextInt();
            } else if ("gws_query_id".equals(nextName)) {
                str2 = jsonReader.nextString();
            } else if ("analytics_query_ad_event_id".equals(nextName)) {
                str3 = jsonReader.nextString();
            } else if ("is_idless".equals(nextName)) {
                z = jsonReader.nextBoolean();
            } else if ("response_code".equals(nextName)) {
                i2 = jsonReader.nextInt();
            } else if ("latency".equals(nextName)) {
                c = jsonReader.nextLong();
            } else {
                if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfV)).booleanValue() && "public_error".equals(nextName) && jsonReader.peek() == JsonToken.BEGIN_OBJECT) {
                    zzfabVar = new zzfab(jsonReader);
                } else if ("bidding_data".equals(nextName)) {
                    str = jsonReader.nextString();
                } else {
                    jsonReader.skipValue();
                }
            }
        }
        jsonReader.endObject();
        this.zza = emptyList;
        this.zzc = i;
        this.zzb = str2;
        this.zzd = str3;
        this.zze = i2;
        this.zzf = c;
        this.zzi = zzfabVar;
        this.zzg = z;
        this.zzh = str;
    }
}
