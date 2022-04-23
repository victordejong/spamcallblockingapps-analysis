package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/lm.class */
public final class lm {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f28157c = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    public static final lj<JSONObject> f28155a = new lo();

    /* renamed from: b  reason: collision with root package name */
    public static final lh<InputStream> f28156b = ll.f28154a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ InputStream a(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f28157c));
    }
}
