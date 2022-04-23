package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3493e2;
import p131c.p161d.p170b.p224d.p252g.p253a.C3530f2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzama.class */
public final class zzama {

    /* renamed from: a */
    public static final Charset f24179a = Charset.forName(Request.DEFAULT_PARAMS_ENCODING);

    /* renamed from: b */
    public static final zzalx<JSONObject> f24180b = new C3530f2();

    /* renamed from: c */
    public static final zzalv<InputStream> f24181c = C3493e2.f12796a;

    /* renamed from: a */
    public static final /* synthetic */ InputStream m16665a(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f24179a));
    }
}
