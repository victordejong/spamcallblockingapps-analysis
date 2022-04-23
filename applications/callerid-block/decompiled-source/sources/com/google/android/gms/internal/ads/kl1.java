package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.ads.internal.util.C1422h0;
import com.google.android.gms.common.util.C1615l;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kl1.class */
public final class kl1 {

    /* renamed from: a */
    public final List<al1> f6991a;

    /* renamed from: b */
    public final dl1 f6992b;

    /* renamed from: c */
    public final List<jl1> f6993c;

    kl1(JsonReader jsonReader) {
        List<al1> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        jsonReader.beginObject();
        dl1 dl1Var = null;
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
                            emptyList.add(new al1(jsonReader));
                        }
                        jsonReader.endArray();
                    } else if (nextName2.equals("common")) {
                        dl1Var = new dl1(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                emptyList = emptyList;
                dl1Var = dl1Var;
            } else if (nextName.equals("actions")) {
                jsonReader.beginArray();
                while (true) {
                    emptyList = emptyList;
                    dl1Var = dl1Var;
                    if (!jsonReader.hasNext()) {
                        break;
                    }
                    jsonReader.beginObject();
                    String str = null;
                    JSONObject jSONObject = null;
                    while (jsonReader.hasNext()) {
                        String nextName3 = jsonReader.nextName();
                        if (EZBlackList.NAME.equals(nextName3)) {
                            str = jsonReader.nextString();
                        } else if ("info".equals(nextName3)) {
                            jSONObject = C1422h0.m8835c(jsonReader);
                        } else {
                            jsonReader.skipValue();
                        }
                    }
                    if (str != null) {
                        arrayList.add(new jl1(str, jSONObject));
                    }
                    jsonReader.endObject();
                }
            }
            jsonReader.endArray();
        }
        this.f6993c = arrayList;
        this.f6991a = emptyList;
        this.f6992b = dl1Var == null ? new dl1(new JsonReader(new StringReader("{}"))) : dl1Var;
    }

    /* renamed from: a */
    public static kl1 m6793a(Reader reader) {
        try {
            try {
                kl1 kl1Var = new kl1(new JsonReader(reader));
                C1615l.m8222a(reader);
                return kl1Var;
            } catch (Throwable th) {
                C1615l.m8222a(reader);
                throw th;
            }
        } catch (IOException | AssertionError | IllegalStateException | NumberFormatException | JSONException e) {
            throw new zzdqs("unable to parse ServerResponse", e);
        }
    }
}
