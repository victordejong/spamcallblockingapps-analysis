package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.google.android.gms.common.util.AbstractC6227e;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/co1.class */
public final class co1 {

    /* renamed from: a */
    private final AbstractC6227e f21340a;

    public co1(AbstractC6227e abstractC6227e) {
        this.f21340a = abstractC6227e;
    }

    /* renamed from: a */
    public final void m16001a(List<Object> list, String str, String str2, Object... objArr) {
        if (!C6346by.f21028a.m12799e().booleanValue()) {
            return;
        }
        long mo16807a = this.f21340a.mo16807a();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(mo16807a);
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
            ei0.m15466d("unable to log", e);
        }
        String valueOf = String.valueOf(stringWriter.toString());
        ei0.m15465e(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
    }
}
