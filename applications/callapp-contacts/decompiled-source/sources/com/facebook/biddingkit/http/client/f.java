package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f19765a;

    /* renamed from: b  reason: collision with root package name */
    public Map<String, List<String>> f19766b;

    /* renamed from: c  reason: collision with root package name */
    private String f19767c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f19768d;

    public f(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.f19765a = httpURLConnection.getResponseCode();
            this.f19767c = httpURLConnection.getURL().toString();
            this.f19766b = httpURLConnection.getHeaderFields();
        } catch (Throwable th) {
            Log.e("HttpResponse", "Failed to createHttpResponse", th);
        }
        this.f19768d = bArr;
    }

    public final String a() {
        if (this.f19768d != null) {
            return new String(this.f19768d);
        }
        return null;
    }
}
