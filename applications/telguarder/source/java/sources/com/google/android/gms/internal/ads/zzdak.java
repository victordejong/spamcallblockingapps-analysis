package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.util.JsonReader;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.ads.internal.zzr;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdak.class */
public final class zzdak {
    public final String zzhae;
    public String zzhaf;
    public Bundle zzhag = new Bundle();

    /* JADX WARN: Multi-variable type inference failed */
    public zzdak(JsonReader jsonReader) throws IllegalStateException, IOException, JSONException, NumberFormatException {
        Map hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            String str2 = nextName == null ? "" : nextName;
            str2.hashCode();
            if (str2.equals(NativeProtocol.WEB_DIALOG_PARAMS)) {
                str = jsonReader.nextString();
            } else if (!str2.equals("signal_dictionary")) {
                jsonReader.skipValue();
            } else {
                hashMap = zzbh.zzb(jsonReader);
            }
        }
        this.zzhae = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.zzhag.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    public final zzdak zzn(Bundle bundle) {
        try {
            this.zzhaf = zzr.zzkr().zzc(bundle).toString();
        } catch (JSONException e) {
            this.zzhaf = "{}";
        }
        return this;
    }
}
