package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.AbstractC3673d;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.p116g.C3633c;
import com.bumptech.glide.p116g.C3638f;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.data.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j.class */
public final class C3683j implements AbstractC3673d<InputStream> {

    /* renamed from: a */
    static final AbstractC3685b f13831a = new C3684a();

    /* renamed from: b */
    private final GlideUrl f13832b;

    /* renamed from: c */
    private final int f13833c;

    /* renamed from: d */
    private final AbstractC3685b f13834d;

    /* renamed from: e */
    private HttpURLConnection f13835e;

    /* renamed from: f */
    private InputStream f13836f;

    /* renamed from: g */
    private volatile boolean f13837g;

    /* renamed from: com.bumptech.glide.load.data.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$a.class */
    static final class C3684a implements AbstractC3685b {
        C3684a() {
        }

        @Override // com.bumptech.glide.load.data.C3683j.AbstractC3685b
        /* renamed from: a */
        public final HttpURLConnection mo37520a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* renamed from: com.bumptech.glide.load.data.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$b.class */
    public interface AbstractC3685b {
        /* renamed from: a */
        HttpURLConnection mo37520a(URL url) throws IOException;
    }

    public C3683j(GlideUrl glideUrl, int i) {
        this(glideUrl, i, f13831a);
    }

    C3683j(GlideUrl glideUrl, int i, AbstractC3685b abstractC3685b) {
        this.f13832b = glideUrl;
        this.f13833c = i;
        this.f13834d = abstractC3685b;
    }

    /* renamed from: a */
    private static int m37524a(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            Log.isLoggable("HttpUrlFetcher", 3);
            return -1;
        }
    }

    /* renamed from: a */
    private InputStream m37523a(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
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
            HttpURLConnection m37522a = m37522a(url, map);
            this.f13835e = m37522a;
            try {
                m37522a.connect();
                this.f13836f = this.f13835e.getInputStream();
                if (this.f13837g) {
                    return null;
                }
                int m37524a = m37524a(this.f13835e);
                int i2 = m37524a / 100;
                if (i2 == 2) {
                    return m37521b(this.f13835e);
                }
                boolean z = false;
                if (i2 == 3) {
                    z = true;
                }
                if (!z) {
                    if (m37524a == -1) {
                        throw new HttpException(m37524a);
                    }
                    try {
                        throw new HttpException(this.f13835e.getResponseMessage(), m37524a);
                    } catch (IOException e2) {
                        throw new HttpException("Failed to get a response message", m37524a, e2);
                    }
                }
                String headerField = this.f13835e.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new HttpException("Received empty or null redirect url", m37524a);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    cleanup();
                    i++;
                    url2 = url;
                    url = url3;
                } catch (MalformedURLException e3) {
                    throw new HttpException("Bad redirect url: ".concat(String.valueOf(headerField)), m37524a, e3);
                }
            } catch (IOException e4) {
                throw new HttpException("Failed to connect or obtain data", m37524a(this.f13835e), e4);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    /* renamed from: a */
    private HttpURLConnection m37522a(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection mo37520a = this.f13834d.mo37520a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                mo37520a.addRequestProperty(entry.getKey(), entry.getValue());
            }
            mo37520a.setConnectTimeout(this.f13833c);
            mo37520a.setReadTimeout(this.f13833c);
            mo37520a.setUseCaches(false);
            mo37520a.setDoInput(true);
            mo37520a.setInstanceFollowRedirects(false);
            return mo37520a;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    /* renamed from: b */
    private InputStream m37521b(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f13836f = C3633c.m37598a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    new StringBuilder("Got non empty content encoding: ").append(httpURLConnection.getContentEncoding());
                }
                this.f13836f = httpURLConnection.getInputStream();
            }
            return this.f13836f;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", m37524a(httpURLConnection), e);
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cancel() {
        this.f13837g = true;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void cleanup() {
        InputStream inputStream = this.f13836f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
        HttpURLConnection httpURLConnection = this.f13835e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f13835e = null;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final EnumC3658a getDataSource() {
        return EnumC3658a.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3673d
    public final void loadData(EnumC3646h enumC3646h, AbstractC3673d.AbstractC3674a<? super InputStream> abstractC3674a) {
        StringBuilder sb;
        long m37593a = C3638f.m37593a();
        try {
            try {
                abstractC3674a.onDataReady(m37523a(this.f13832b.toURL(), 0, null, this.f13832b.getHeaders()));
            } catch (IOException e) {
                Log.isLoggable("HttpUrlFetcher", 3);
                abstractC3674a.onLoadFailed(e);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
                sb = new StringBuilder("Finished http url fetcher fetch in ");
            }
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                return;
            }
            sb = new StringBuilder("Finished http url fetcher fetch in ");
            sb.append(C3638f.m37592a(m37593a));
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                new StringBuilder("Finished http url fetcher fetch in ").append(C3638f.m37592a(m37593a));
            }
            throw th;
        }
    }
}
