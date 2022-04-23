package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.zzp;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbm.class */
public final class zzdbm {

    /* renamed from: a */
    public final String f26878a;

    /* renamed from: b */
    public String f26879b;

    /* renamed from: c */
    public Bundle f26880c = new Bundle();

    public zzdbm(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        Map<String, String> hashMap = new HashMap<>();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str2 = nextName == null ? "" : nextName;
            char c = 65535;
            int hashCode = str2.hashCode();
            if (hashCode != -995427962) {
                if (hashCode == -271442291 && str2.equals("signal_dictionary")) {
                    c = 1;
                }
            } else if (str2.equals("params")) {
                c = 0;
            }
            if (c == 0) {
                str = jsonReader.nextString();
            } else if (c != 1) {
                jsonReader.skipValue();
            } else {
                hashMap = zzbao.m15952b(jsonReader);
            }
        }
        this.f26878a = str;
        jsonReader.endObject();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                this.f26880c.putString(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: a */
    public final zzdbm m13664a(Bundle bundle) {
        try {
            this.f26879b = zzp.m17969c().m16134a(bundle).toString();
        } catch (JSONException e) {
            this.f26879b = "{}";
        }
        return this;
    }
}
