package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.f;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blt.class */
public final class blt {

    /* renamed from: a  reason: collision with root package name */
    private final f f24665a;

    public blt(f fVar) {
        this.f24665a = fVar;
    }

    public final void a(List<Object> list, String str, String str2, Object... objArr) {
        if (co.f26137a.a().booleanValue()) {
            long a2 = this.f24665a.a();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name(Reporting.Key.TIMESTAMP).value(a2);
                jsonWriter.name(Payload.SOURCE).value(str);
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
                zzd.zzc("unable to log", e);
            }
            String valueOf = String.valueOf(stringWriter.toString());
            zzd.zzey(valueOf.length() != 0 ? "AD-DBG ".concat(valueOf) : new String("AD-DBG "));
        }
    }
}
