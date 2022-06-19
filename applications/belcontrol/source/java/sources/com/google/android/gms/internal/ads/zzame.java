package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C0515C;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzame.class */
public final class zzame {
    private static final Charset UTF_8 = Charset.forName(C0515C.UTF8_NAME);
    public static final zzamf<JSONObject> zzdks = new zzamg();
    public static final zzamd<InputStream> zzdkt = zzamh.zzdku;

    public static final /* synthetic */ InputStream zze(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
