package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.google.android.gms.common.util.Clock;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzclc.class */
public final class zzclc {
    private final Clock zzbqg;

    public zzclc(Clock clock) {
        this.zzbqg = clock;
    }

    public final void zza(List<Object> list, String str, String str2, Object... objArr) {
        if (!zzadl.zzdee.get().booleanValue()) {
            return;
        }
        long currentTimeMillis = this.zzbqg.currentTimeMillis();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(currentTimeMillis);
            jsonWriter.name("source").value(str);
            jsonWriter.name("event").value(str2);
            jsonWriter.name("components").beginArray();
            for (Object obj : list) {
                jsonWriter.value(obj.toString());
            }
            jsonWriter.endArray();
            jsonWriter.name("params").beginArray();
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj2 = objArr[i];
                jsonWriter.value(obj2 != null ? obj2.toString() : null);
            }
            jsonWriter.endArray();
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzazk.zzc("unable to log", e);
        }
        String valueOf = String.valueOf(stringWriter.toString());
        zzazk.zzew(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
    }
}
