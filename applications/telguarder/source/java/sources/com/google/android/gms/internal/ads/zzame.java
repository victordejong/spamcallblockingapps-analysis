package com.google.android.gms.internal.ads;

import com.pubmatic.sdk.common.POBCommonConstants;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzame.class */
public final class zzame {
    private static final Charset UTF_8 = Charset.forName(POBCommonConstants.URL_ENCODING);
    public static final zzamf<JSONObject> zzdks = new zzamg();
    public static final zzamd<InputStream> zzdkt = zzamh.zzdku;

    public static final /* synthetic */ InputStream zze(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(UTF_8));
    }
}
