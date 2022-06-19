package com.google.android.gms.internal.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbud.class */
public final class zzbud {
    private static final Charset zzc = Charset.forName(StringConstant.UTF8);
    public static final zzbua<JSONObject> zza = new zzbuc();
    public static final zzbty<InputStream> zzb = zzbub.zza;

    public static final /* synthetic */ InputStream zza(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(zzc));
    }
}
