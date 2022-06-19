package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o60.class */
public final class o60 {

    /* renamed from: a */
    private static final Charset f27441a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final l60<JSONObject> f27442b = new n60();

    /* renamed from: c */
    public static final i60<InputStream> f27443c = m60.f26446a;

    /* renamed from: a */
    public static final /* synthetic */ InputStream m12718a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f27441a));
    }
}
