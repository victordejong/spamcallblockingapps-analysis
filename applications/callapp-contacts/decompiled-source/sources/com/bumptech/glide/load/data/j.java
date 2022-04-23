package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.g.c;
import com.bumptech.glide.g.f;
import com.bumptech.glide.h;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.GlideUrl;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j.class */
public final class j implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    static final b f7408a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final GlideUrl f7409b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7410c;

    /* renamed from: d  reason: collision with root package name */
    private final b f7411d;
    private HttpURLConnection e;
    private InputStream f;
    private volatile boolean g;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$a.class */
    static final class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.data.j.b
        public final HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$b.class */
    public interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(GlideUrl glideUrl, int i) {
        this(glideUrl, i, f7408a);
    }

    j(GlideUrl glideUrl, int i, b bVar) {
        this.f7409b = glideUrl;
        this.f7410c = i;
        this.f7411d = bVar;
    }

    private static int a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            Log.isLoggable("HttpUrlFetcher", 3);
            return -1;
        }
    }

    private InputStream a(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
        while (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                        break;
                    }
                } catch (URISyntaxException e) {
                }
            }
            HttpURLConnection a2 = a(url, map);
            this.e = a2;
            try {
                a2.connect();
                this.f = this.e.getInputStream();
                if (this.g) {
                    return null;
                }
                int a3 = a(this.e);
                int i2 = a3 / 100;
                boolean z = false;
                if (i2 == 2) {
                    return b(this.e);
                }
                if (i2 == 3) {
                    z = true;
                }
                if (z) {
                    String headerField = this.e.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField)) {
                        try {
                            url = new URL(url, headerField);
                            cleanup();
                            i++;
                            url2 = url;
                        } catch (MalformedURLException e2) {
                            throw new HttpException("Bad redirect url: ".concat(String.valueOf(headerField)), a3, e2);
                        }
                    } else {
                        throw new HttpException("Received empty or null redirect url", a3);
                    }
                } else if (a3 == -1) {
                    throw new HttpException(a3);
                } else {
                    try {
                        throw new HttpException(this.e.getResponseMessage(), a3);
                    } catch (IOException e3) {
                        throw new HttpException("Failed to get a response message", a3, e3);
                    }
                }
            } catch (IOException e4) {
                throw new HttpException("Failed to connect or obtain data", a(this.e), e4);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    private HttpURLConnection a(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection a2 = this.f7411d.a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a2.addRequestProperty(entry.getKey(), entry.getValue());
            }
            a2.setConnectTimeout(this.f7410c);
            a2.setReadTimeout(this.f7410c);
            a2.setUseCaches(false);
            a2.setDoInput(true);
            a2.setInstanceFollowRedirects(false);
            return a2;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    private InputStream b(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f = c.a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    new StringBuilder("Got non empty content encoding: ").append(httpURLConnection.getContentEncoding());
                }
                this.f = httpURLConnection.getInputStream();
            }
            return this.f;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", a(httpURLConnection), e);
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
        this.g = true;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void cleanup() {
        InputStream inputStream = this.f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
        HttpURLConnection httpURLConnection = this.e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.e = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final com.bumptech.glide.load.a getDataSource() {
        return com.bumptech.glide.load.a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void loadData(h hVar, d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long a2 = f.a();
        try {
            try {
                aVar.onDataReady(a(this.f7409b.toURL(), 0, null, this.f7409b.getHeaders()));
            } catch (IOException e) {
                Log.isLoggable("HttpUrlFetcher", 3);
                aVar.onLoadFailed(e);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    sb = new StringBuilder("Finished http url fetcher fetch in ");
                } else {
                    return;
                }
            }
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
                sb.append(f.a(a2));
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                new StringBuilder("Finished http url fetcher fetch in ").append(f.a(a2));
            }
            throw th;
        }
    }
}
