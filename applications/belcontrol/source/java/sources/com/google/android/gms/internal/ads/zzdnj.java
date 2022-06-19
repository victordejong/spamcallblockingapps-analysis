package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnj.class */
public final class zzdnj {
    public final zzdnb zzess;
    public final List<zzdmw> zzhkp;
    public final List<zzdni> zzhkq;

    private zzdnj(JsonReader jsonReader) {
        zzdnb zzdnbVar;
        List<zzdmw> list;
        ArrayList emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzdnb zzdnbVar2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("responses".equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(nextName2)) {
                        emptyList = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new zzdmw(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        zzdnbVar2 = new zzdnb(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                zzdnbVar = zzdnbVar2;
                list = emptyList;
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (true) {
                    list = emptyList;
                    zzdnbVar = zzdnbVar2;
                    if (!jsonReader.hasNext()) {
                        break;
                    }
                    jsonReader.beginObject();
                    String str = null;
                    Map<String, String> map = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if ("name".equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            map = zzbh.zzb(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new zzdni(str, map));
                    }
                    jsonReader.endObject();
                }
            }
            jsonReader.endArray();
            emptyList = list;
            zzdnbVar2 = zzdnbVar;
        }
        this.zzhkq = arrayList;
        this.zzhkp = emptyList;
        this.zzess = zzdnbVar2 == null ? new zzdnb(new JsonReader(new StringReader("{}"))) : zzdnbVar2;
    }

    public static zzdnj zza(Reader reader) {
        try {
            try {
                zzdnj zzdnjVar = new zzdnj(new JsonReader(reader));
                IOUtils.closeQuietly(reader);
                return zzdnjVar;
            } catch (Throwable th) {
                IOUtils.closeQuietly(reader);
                throw th;
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzdna("unable to parse ServerResponse", e);
        }
    }
}
