package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwe.class */
public final class zzbwe {
    private static final Charset zzc = Charset.forName("UTF-8");
    public static final zzbwb<JSONObject> zza = new zzbwd();
    public static final zzbvz<InputStream> zzb = zzbwc.zza;

    public static /* synthetic */ InputStream zza(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
