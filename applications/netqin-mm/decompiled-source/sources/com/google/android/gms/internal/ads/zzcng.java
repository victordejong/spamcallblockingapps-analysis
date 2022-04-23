package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.google.android.gms.common.util.Clock;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcng.class */
public final class zzcng {

    /* renamed from: a */
    public final Clock f26295a;

    public zzcng(Clock clock) {
        this.f26295a = clock;
    }

    /* renamed from: a */
    public final void m14025a(List<Object> list, String str, String str2, Object... objArr) {
        if (zzacv.f23993a.mo16862a().booleanValue()) {
            long b = this.f26295a.mo17091b();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name(AvidJSONUtil.KEY_TIMESTAMP).value(b);
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
                zzbbq.m15855b("unable to log", e);
            }
            String valueOf = String.valueOf(stringWriter.toString());
            zzbbq.m15854c(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
        }
    }
}
