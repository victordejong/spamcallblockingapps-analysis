package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.gd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gd.class */
public final class C1751gd {

    /* renamed from: a */
    private static final Charset f6641a = Charset.forName("UTF-8");

    /* renamed from: b */
    public static final cd<JSONObject> f6642b = new fd();

    /* renamed from: c */
    public static final AbstractC1647ad<InputStream> f6643c = dd.a;

    /* renamed from: a */
    static final /* synthetic */ InputStream m7400a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f6641a));
    }
}
