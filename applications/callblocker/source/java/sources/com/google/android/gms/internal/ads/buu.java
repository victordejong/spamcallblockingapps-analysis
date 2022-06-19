package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buu.class */
public final class buu {

    /* renamed from: a */
    public final String f12305a;

    /* renamed from: b */
    public String f12306b;

    /* renamed from: c */
    public Bundle f12307c = new Bundle();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    public buu(JsonReader jsonReader) {
        boolean z;
        String str = "";
        Map hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str2 = nextName == null ? "" : nextName;
            switch (str2.hashCode()) {
                case -995427962:
                    if (str2.equals("params")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                case -271442291:
                    if (str2.equals("signal_dictionary")) {
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
                    str = jsonReader.nextString();
                    break;
                case true:
                    hashMap = C3614wy.m6849b(jsonReader);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        this.f12305a = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.f12307c.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    /* renamed from: a */
    public final buu m11605a(Bundle bundle) {
        try {
            this.f12306b = C2341q.m14744c().m6998a(bundle).toString();
        } catch (JSONException e) {
            this.f12306b = "{}";
        }
        return this;
    }
}
