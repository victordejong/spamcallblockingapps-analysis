package com.bumptech.glide.load.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.c.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/f.class */
public final class f implements c<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private static final b f3480a = new a((byte) 0);

    /* renamed from: b  reason: collision with root package name */
    private final d f3481b;
    private final b c;
    private HttpURLConnection d;
    private InputStream e;
    private volatile boolean f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/f$a.class */
    private static final class a implements b {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        @Override // com.bumptech.glide.load.a.f.b
        public final HttpURLConnection a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/f$b.class */
    public interface b {
        HttpURLConnection a(URL url);
    }

    public f(d dVar) {
        this(dVar, f3480a);
    }

    private f(d dVar, b bVar) {
        this.f3481b = dVar;
        this.c = bVar;
    }

    private InputStream a(URL url, int i, URL url2, Map<String, String> map) {
        InputStream inputStream;
        while (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new IOException("In re-direct loop");
                        break;
                    }
                } catch (URISyntaxException e) {
                }
            }
            this.d = this.c.a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.d.addRequestProperty(entry.getKey(), entry.getValue());
            }
            if (TextUtils.isEmpty(this.d.getRequestProperty("Accept-Encoding"))) {
                this.d.setRequestProperty("Accept-Encoding", "identity");
            }
            this.d.setConnectTimeout(2500);
            this.d.setReadTimeout(2500);
            this.d.setUseCaches(false);
            this.d.setDoInput(true);
            this.d.connect();
            if (this.f) {
                inputStream = null;
            } else {
                int responseCode = this.d.getResponseCode();
                if (responseCode / 100 == 2) {
                    HttpURLConnection httpURLConnection = this.d;
                    if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                        this.e = com.bumptech.glide.i.b.a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
                    } else {
                        if (Log.isLoggable("HttpUrlFetcher", 3)) {
                            Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                        }
                        this.e = httpURLConnection.getInputStream();
                    }
                    inputStream = this.e;
                } else if (responseCode / 100 == 3) {
                    String headerField = this.d.getHeaderField("Location");
                    if (TextUtils.isEmpty(headerField)) {
                        throw new IOException("Received empty or null redirect url");
                    }
                    url = new URL(url, headerField);
                    i++;
                    url2 = url;
                } else if (responseCode == -1) {
                    throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
                } else {
                    throw new IOException("Request failed " + responseCode + ": " + this.d.getResponseMessage());
                }
            }
            return inputStream;
        }
        throw new IOException("Too many (> 5) redirects!");
    }

    @Override // com.bumptech.glide.load.a.c
    public final /* synthetic */ InputStream a(int i) {
        d dVar = this.f3481b;
        if (dVar.e == null) {
            if (TextUtils.isEmpty(dVar.d)) {
                String str = dVar.c;
                String str2 = str;
                if (TextUtils.isEmpty(str)) {
                    str2 = dVar.f3564a.toString();
                }
                dVar.d = Uri.encode(str2, "@#&=*+-_.,:!?()/~'%");
            }
            dVar.e = new URL(dVar.d);
        }
        return a(dVar.e, 0, null, this.f3481b.f3565b.a());
    }

    @Override // com.bumptech.glide.load.a.c
    public final void a() {
        if (this.e != null) {
            try {
                this.e.close();
            } catch (IOException e) {
            }
        }
        if (this.d != null) {
            this.d.disconnect();
        }
    }

    @Override // com.bumptech.glide.load.a.c
    public final String b() {
        return this.f3481b.a();
    }

    @Override // com.bumptech.glide.load.a.c
    public final void c() {
        this.f = true;
    }
}
