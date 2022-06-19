package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.google.android.gms.common.util.C2714k;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cha.class */
public final class cha {

    /* renamed from: a */
    public final List<cgr> f13024a;

    /* renamed from: b */
    public final cgs f13025b;

    /* renamed from: c */
    public final List<cgz> f13026c;

    private cha(JsonReader jsonReader) {
        ArrayList emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        cgs cgsVar = null;
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
                            emptyList.add(new cgr(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        cgsVar = new cgs(jsonReader);
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
                    Map<String, String> map = null;
                    String str = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if ("name".equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            map = C3614wy.m6849b(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new cgz(str, map));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f13026c = arrayList;
        this.f13024a = emptyList;
        this.f13025b = cgsVar == null ? new cgs(new JsonReader(new StringReader("{}"))) : cgsVar;
    }

    /* renamed from: a */
    public static cha m11360a(Reader reader) {
        try {
            try {
                return new cha(new JsonReader(reader));
            } finally {
                C2714k.m13848a(reader);
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzdgp("unable to parse ServerResponse", e);
        }
    }
}
