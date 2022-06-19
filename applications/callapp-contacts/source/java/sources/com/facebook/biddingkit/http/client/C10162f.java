package com.facebook.biddingkit.http.client;

import android.util.Log;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
/* renamed from: com.facebook.biddingkit.http.client.f */
/* loaded from: classes3-dex2jar.jar:com/facebook/biddingkit/http/client/f.class */
public final class C10162f {

    /* renamed from: a */
    public int f33581a;

    /* renamed from: b */
    public Map<String, List<String>> f33582b;

    /* renamed from: c */
    private String f33583c;

    /* renamed from: d */
    private byte[] f33584d;

    public C10162f(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.f33581a = httpURLConnection.getResponseCode();
            this.f33583c = httpURLConnection.getURL().toString();
            this.f33582b = httpURLConnection.getHeaderFields();
        } catch (Throwable th) {
            Log.e("HttpResponse", "Failed to createHttpResponse", th);
        }
        this.f33584d = bArr;
    }

    /* renamed from: a */
    public final String m23318a() {
        if (this.f33584d != null) {
            return new String(this.f33584d);
        }
        return null;
    }
}
