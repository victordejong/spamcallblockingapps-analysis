package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.lm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lm.class */
public final class C12719lm {

    /* renamed from: c */
    private static final Charset f49474c = Charset.forName("UTF-8");

    /* renamed from: a */
    public static final AbstractC12716lj<JSONObject> f49472a = new C12721lo();

    /* renamed from: b */
    public static final AbstractC12714lh<InputStream> f49473b = C12718ll.f49471a;

    /* renamed from: a */
    public static final /* synthetic */ InputStream m14526a(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f49474c));
    }
}
