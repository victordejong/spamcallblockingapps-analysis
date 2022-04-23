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

    /* renamed from: a  reason: collision with root package name */
    public final String f25548a;

    /* renamed from: b  reason: collision with root package name */
    public String f25549b;

    /* renamed from: c  reason: collision with root package name */
    public Bundle f25550c = new Bundle();

    public cbt(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        Map<String, String> hashMap = new HashMap<>();
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
        this.f25548a = str;
        jsonReader.endObject();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            if (!(entry.getKey() == null || entry.getValue() == null)) {
                this.f25550c.putString(entry.getKey(), entry.getValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final cbt a(Bundle bundle) {
        try {
            this.f25549b = zzr.zzkv().zzc(bundle).toString();
        } catch (JSONException e) {
            this.f25549b = "{}";
        }
        return this;
    }
}
