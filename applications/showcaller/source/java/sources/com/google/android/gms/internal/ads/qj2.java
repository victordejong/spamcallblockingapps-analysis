package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.ads.internal.util.C5748x0;
import com.google.android.gms.common.util.C6233k;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qj2.class */
public final class qj2 {

    /* renamed from: a */
    public final List<ej2> f28518a;

    /* renamed from: b */
    public final jj2 f28519b;

    /* renamed from: c */
    public final List<pj2> f28520c;

    qj2(JsonReader jsonReader) {
        ArrayList emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        jj2 jj2Var = null;
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
                            emptyList.add(new ej2(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        jj2Var = new jj2(jsonReader);
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
                    JSONObject jSONObject = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (ShortCut.NAME.equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            jSONObject = C5748x0.m17922c(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new pj2(str, jSONObject));
                    }
                    jsonReader.endObject();
                }
                jsonReader.endArray();
            }
        }
        this.f28520c = arrayList;
        this.f28518a = emptyList;
        this.f28519b = jj2Var == null ? new jj2(new JsonReader(new StringReader("{}"))) : jj2Var;
    }

    /* renamed from: a */
    public static qj2 m11869a(Reader reader) {
        try {
            try {
                qj2 qj2Var = new qj2(new JsonReader(reader));
                C6233k.m16790a(reader);
                return qj2Var;
            } catch (Throwable th) {
                C6233k.m16790a(reader);
                throw th;
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzfad("unable to parse ServerResponse", e);
        }
    }
}
