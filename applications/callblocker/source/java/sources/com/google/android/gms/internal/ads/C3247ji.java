package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.ji */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ji.class */
public final class C3247ji {

    /* renamed from: c */
    private static final Charset f16806c = Charset.forName("UTF-8");

    /* renamed from: a */
    public static final AbstractC3248jj<JSONObject> f16804a = new C3249jk();

    /* renamed from: b */
    public static final AbstractC3246jh<InputStream> f16805b = C3250jl.f16807a;

    /* renamed from: a */
    public static final /* synthetic */ InputStream m7729a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f16806c));
    }
}
