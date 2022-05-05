package com.google.android.gms.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/e.class */
public final class e implements f {

    /* renamed from: a  reason: collision with root package name */
    private HttpURLConnection f4185a;

    @Override // com.google.android.gms.internal.f
    public final InputStream a(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setReadTimeout(20000);
        httpURLConnection.setConnectTimeout(20000);
        this.f4185a = httpURLConnection;
        HttpURLConnection httpURLConnection2 = this.f4185a;
        int responseCode = httpURLConnection2.getResponseCode();
        if (responseCode == 200) {
            return httpURLConnection2.getInputStream();
        }
        String sb = new StringBuilder(25).append("Bad response: ").append(responseCode).toString();
        if (responseCode == 404) {
            throw new FileNotFoundException(sb);
        }
        throw new IOException(sb);
    }

    @Override // com.google.android.gms.internal.f
    public final void a() {
        HttpURLConnection httpURLConnection = this.f4185a;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
