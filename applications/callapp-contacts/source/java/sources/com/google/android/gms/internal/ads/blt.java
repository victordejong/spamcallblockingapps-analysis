package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import com.appsflyer.internal.referrer.Payload;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.AbstractC12102f;
import java.io.IOException;
import java.io.StringWriter;
import java.util.List;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blt.class */
public final class blt {

    /* renamed from: a */
    private final AbstractC12102f f44227a;

    public blt(AbstractC12102f abstractC12102f) {
        this.f44227a = abstractC12102f;
    }

    /* renamed from: a */
    public final void m17752a(List<Object> list, String str, String str2, Object... objArr) {
        if (!C12279co.f46163a.mo17481a().booleanValue()) {
            return;
        }
        long mo19039a = this.f44227a.mo19039a();
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(Reporting.Key.TIMESTAMP).value(mo19039a);
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
