package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.C4177g;
import com.bumptech.glide.p223p.C4372c;
import com.bumptech.glide.p223p.C4377f;
import com.yanzhenjie.nohttp.Headers;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.data.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j.class */
public class C4017j implements AbstractC4007d<InputStream> {

    /* renamed from: d */
    static final AbstractC4019b f12656d = new C4018a();

    /* renamed from: e */
    private final C4177g f12657e;

    /* renamed from: f */
    private final int f12658f;

    /* renamed from: g */
    private final AbstractC4019b f12659g;

    /* renamed from: h */
    private HttpURLConnection f12660h;

    /* renamed from: i */
    private InputStream f12661i;

    /* renamed from: j */
    private volatile boolean f12662j;

    /* renamed from: com.bumptech.glide.load.data.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$a.class */
    private static class C4018a implements AbstractC4019b {
        C4018a() {
        }

        @Override // com.bumptech.glide.load.data.C4017j.AbstractC4019b
        /* renamed from: a */
        public HttpURLConnection mo23488a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* renamed from: com.bumptech.glide.load.data.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/j$b.class */
    public interface AbstractC4019b {
        /* renamed from: a */
        HttpURLConnection mo23488a(URL url);
    }

    public C4017j(C4177g c4177g, int i) {
        this(c4177g, i, f12656d);
    }

    C4017j(C4177g c4177g, int i, AbstractC4019b abstractC4019b) {
        this.f12657e = c4177g;
        this.f12658f = i;
        this.f12659g = abstractC4019b;
    }

    /* renamed from: c */
    private HttpURLConnection m23494c(URL url, Map<String, String> map) {
        try {
            HttpURLConnection mo23488a = this.f12659g.mo23488a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                mo23488a.addRequestProperty(entry.getKey(), entry.getValue());
            }
            mo23488a.setConnectTimeout(this.f12658f);
            mo23488a.setReadTimeout(this.f12658f);
            mo23488a.setUseCaches(false);
            mo23488a.setDoInput(true);
            mo23488a.setInstanceFollowRedirects(false);
            return mo23488a;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    /* renamed from: f */
    private static int m23493f(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            if (!Log.isLoggable("HttpUrlFetcher", 3)) {
                return -1;
            }
            Log.d("HttpUrlFetcher", "Failed to get a response code", e);
            return -1;
        }
    }

    /* renamed from: g */
    private InputStream m23492g(HttpURLConnection httpURLConnection) {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f12661i = C4372c.m22743e(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                }
                this.f12661i = httpURLConnection.getInputStream();
            }
            return this.f12661i;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", m23493f(httpURLConnection), e);
        }
    }

    /* renamed from: h */
    private static boolean m23491h(int i) {
        return i / 100 == 2;
    }

    /* renamed from: i */
    private static boolean m23490i(int i) {
        return i / 100 == 3;
    }

    /* renamed from: j */
    private InputStream m23489j(URL url, int i, URL url2, Map<String, String> map) {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                    }
                } catch (URISyntaxException e) {
                }
            }
            HttpURLConnection m23494c = m23494c(url, map);
            this.f12660h = m23494c;
            try {
                m23494c.connect();
                this.f12661i = this.f12660h.getInputStream();
                if (this.f12662j) {
                    return null;
                }
                int m23493f = m23493f(this.f12660h);
                if (m23491h(m23493f)) {
                    return m23492g(this.f12660h);
                }
                if (!m23490i(m23493f)) {
                    if (m23493f == -1) {
                        throw new HttpException(m23493f);
                    }
                    try {
                        throw new HttpException(this.f12660h.getResponseMessage(), m23493f);
                    } catch (IOException e2) {
                        throw new HttpException("Failed to get a response message", m23493f, e2);
                    }
                }
                String headerField = this.f12660h.getHeaderField(Headers.HEAD_KEY_LOCATION);
                if (TextUtils.isEmpty(headerField)) {
                    throw new HttpException("Received empty or null redirect url", m23493f);
                }
                try {
                    URL url3 = new URL(url, headerField);
                    mo23089b();
                    return m23489j(url3, i + 1, url, map);
                } catch (MalformedURLException e3) {
                    throw new HttpException("Bad redirect url: " + headerField, m23493f, e3);
                }
            } catch (IOException e4) {
                throw new HttpException("Failed to connect or obtain data", m23493f(this.f12660h), e4);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: a */
    public Class<InputStream> mo23090a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: b */
    public void mo23089b() {
        InputStream inputStream = this.f12661i;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
        HttpURLConnection httpURLConnection = this.f12660h;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f12660h = null;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    public void cancel() {
        this.f12662j = true;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: d */
    public DataSource mo23087d() {
        return DataSource.REMOTE;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4007d
    /* renamed from: e */
    public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super InputStream> abstractC4008a) {
        StringBuilder sb;
        long m22735b = C4377f.m22735b();
        try {
            try {
                abstractC4008a.mo23126f(m23489j(this.f12657e.m23150h(), 0, null, this.f12657e.m23153e()));
            } catch (IOException e) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e);
                }
                abstractC4008a.mo23127c(e);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
                sb = new StringBuilder();
            }
            if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                return;
            }
            sb = new StringBuilder();
            sb.append("Finished http url fetcher fetch in ");
            sb.append(C4377f.m22736a(m22735b));
            Log.v("HttpUrlFetcher", sb.toString());
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + C4377f.m22736a(m22735b));
            }
            throw th;
        }
    }
}
