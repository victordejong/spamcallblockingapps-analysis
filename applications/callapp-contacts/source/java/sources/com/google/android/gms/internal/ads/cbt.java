package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.zzr;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbt.class */
public final class cbt {

    /* renamed from: a */
    public final String f45469a;

    /* renamed from: b */
    public String f45470b;

    /* renamed from: c */
    public Bundle f45471c = new Bundle();

    /* JADX WARN: Multi-variable type inference failed */
    public cbt(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        Map hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str2 = nextName == null ? "" : nextName;
            str2.hashCode();
            if (str2.equals("params")) {
                str = jsonReader.nextString();
            } else if (!str2.equals("signal_dictionary")) {
                jsonReader.skipValue();
            } else {
                hashMap = zzbh.zzb(jsonReader);
            }
        }
        this.f45469a = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.f45471c.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    /* renamed from: a */
    public final cbt m17507a(Bundle bundle) {
        try {
            this.f45470b = zzr.zzkv().zzc(bundle).toString();
        } catch (JSONException e) {
            this.f45470b = "{}";
        }
        return this;
    }
}
