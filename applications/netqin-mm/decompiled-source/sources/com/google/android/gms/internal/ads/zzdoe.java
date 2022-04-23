package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdoe.class */
public final class zzdoe {

    /* renamed from: a */
    public final List<zzdnv> f27629a;

    /* renamed from: b */
    public final zzdnw f27630b;

    /* renamed from: c */
    public final List<zzdoh> f27631c;

    public zzdoe(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException, AssertionError {
        List<zzdnv> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        zzdnw zzdnwVar = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if ("responses".equals(nextName)) {
                jsonReader.beginArray();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if ("ad_configs".equals(nextName2)) {
                        emptyList = new ArrayList<>();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            emptyList.add(new zzdnv(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        zzdnwVar = new zzdnw(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                jsonReader.endArray();
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginObject();
                    String str = null;
                    Map<String, String> map = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if ("name".equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            map = zzbao.m15952b(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new zzdoh(str, map));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f27631c = arrayList;
        this.f27629a = emptyList;
        this.f27630b = zzdnwVar == null ? new zzdnw(new JsonReader(new StringReader("{}"))) : zzdnwVar;
    }

    /* renamed from: a */
    public static zzdoe m13444a(Reader reader) throws zzdnz {
        try {
            try {
                zzdoe zzdoeVar = new zzdoe(new JsonReader(reader));
                IOUtils.m17075a(reader);
                return zzdoeVar;
            } catch (Throwable th) {
                IOUtils.m17075a(reader);
                throw th;
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzdnz("unable to parse ServerResponse", e);
        }
    }
}
