package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.internal.C2473q;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.internal.v */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/v.class */
public class C2498v {

    /* renamed from: a */
    public static final String f3214a = "v";

    /* renamed from: b */
    public static C2473q f3215b;

    /* renamed from: com.facebook.internal.v$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/v$a.class */
    public static class C2499a extends BufferedInputStream {

        /* renamed from: a */
        public HttpURLConnection f3216a;

        public C2499a(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.f3216a = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            C2408g0.m34847a(this.f3216a);
        }
    }

    /* renamed from: a */
    public static C2473q m34570a(Context context) throws IOException {
        C2473q qVar;
        synchronized (C2498v.class) {
            try {
                if (f3215b == null) {
                    f3215b = new C2473q(f3214a, new C2473q.C2482g());
                }
                qVar = f3215b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    /* renamed from: a */
    public static InputStream m34569a(Context context, HttpURLConnection httpURLConnection) throws IOException {
        InputStream inputStream;
        if (httpURLConnection.getResponseCode() == 200) {
            Uri parse = Uri.parse(httpURLConnection.getURL().toString());
            InputStream inputStream2 = httpURLConnection.getInputStream();
            inputStream = inputStream2;
            try {
                if (m34568a(parse)) {
                    inputStream = m34570a(context).m34624a(parse.toString(), new C2499a(inputStream2, httpURLConnection));
                }
            } catch (IOException e) {
                inputStream = inputStream2;
            }
        } else {
            inputStream = null;
        }
        return inputStream;
    }

    /* renamed from: a */
    public static InputStream m34567a(Uri uri, Context context) {
        InputStream inputStream;
        if (uri != null && m34568a(uri)) {
            try {
                inputStream = m34570a(context).m34626a(uri.toString());
            } catch (IOException e) {
                C2503y.m34559a(EnumC6151v.CACHE, 5, f3214a, e.toString());
            }
            return inputStream;
        }
        inputStream = null;
        return inputStream;
    }

    /* renamed from: a */
    public static boolean m34568a(Uri uri) {
        if (uri == null) {
            return false;
        }
        String host = uri.getHost();
        if (host.endsWith("fbcdn.net")) {
            return true;
        }
        return host.startsWith("fbcdn") && host.endsWith("akamaihd.net");
    }
}
