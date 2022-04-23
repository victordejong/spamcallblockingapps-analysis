package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.google.android.gms.common.util.AbstractC1610f;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ur0.class */
public final class ur0 {

    /* renamed from: a */
    private final AbstractC1610f f8836a;

    public ur0(AbstractC1610f fVar) {
        this.f8836a = fVar;
    }

    /* renamed from: a */
    public final void m5349a(List<Object> list, String str, String str2, Object... objArr) {
        if (C1679c5.f6251a.m6222e().booleanValue()) {
            long a = this.f8836a.m8247a();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(a);
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
                C1894po.m6182d("unable to log", e);
            }
            String valueOf = String.valueOf(stringWriter.toString());
            C1894po.m6181e(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
        }
    }
}
