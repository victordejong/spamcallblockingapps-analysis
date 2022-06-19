package com.bumptech.glide.load.p079a;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.C1532g;
import com.bumptech.glide.p077h.C1450c;
import com.bumptech.glide.p077h.C1452e;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.a.j */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/j.class */
public class C1485j implements AbstractC1475d<InputStream> {

    /* renamed from: a */
    static final AbstractC1487b f4826a = new C1486a();

    /* renamed from: b */
    private final C1532g f4827b;

    /* renamed from: c */
    private final int f4828c;

    /* renamed from: d */
    private final AbstractC1487b f4829d;

    /* renamed from: e */
    private HttpURLConnection f4830e;

    /* renamed from: f */
    private InputStream f4831f;

    /* renamed from: g */
    private volatile boolean f4832g;

    /* renamed from: com.bumptech.glide.load.a.j$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/j$a.class */
    private static class C1486a implements AbstractC1487b {
        C1486a() {
        }

        @Override // com.bumptech.glide.load.p079a.C1485j.AbstractC1487b
        /* renamed from: a */
        public HttpURLConnection mo16913a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* renamed from: com.bumptech.glide.load.a.j$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/j$b.class */
    public interface AbstractC1487b {
        /* renamed from: a */
        HttpURLConnection mo16913a(URL url);
    }

    public C1485j(C1532g c1532g, int i) {
        this(c1532g, i, f4826a);
    }

    C1485j(C1532g c1532g, int i, AbstractC1487b abstractC1487b) {
        this.f4827b = c1532g;
        this.f4828c = i;
        this.f4829d = abstractC1487b;
    }

    /* renamed from: a */
    private InputStream m16916a(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f4831f = C1450c.m17007a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f4831f = httpURLConnection.getInputStream();
        }
        return this.f4831f;
    }

    /* renamed from: a */
    private InputStream m16915a(URL url, int i, URL url2, Map<String, String> map) {
        InputStream m16915a;
        if (i >= 5) {
            throw new HttpException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException("In re-direct loop");
                }
            } catch (URISyntaxException e) {
            }
        }
        this.f4830e = this.f4829d.mo16913a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f4830e.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f4830e.setConnectTimeout(this.f4828c);
        this.f4830e.setReadTimeout(this.f4828c);
        this.f4830e.setUseCaches(false);
        this.f4830e.setDoInput(true);
        this.f4830e.setInstanceFollowRedirects(false);
        this.f4830e.connect();
        this.f4831f = this.f4830e.getInputStream();
        if (this.f4832g) {
            m16915a = null;
        } else {
            int responseCode = this.f4830e.getResponseCode();
            if (m16917a(responseCode)) {
                m16915a = m16916a(this.f4830e);
            } else if (!m16914b(responseCode)) {
                if (responseCode != -1) {
                    throw new HttpException(this.f4830e.getResponseMessage(), responseCode);
                }
                throw new HttpException(responseCode);
            } else {
                String headerField = this.f4830e.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new HttpException("Received empty or null redirect url");
                }
                URL url3 = new URL(url, headerField);
                mo16811b();
                m16915a = m16915a(url3, i + 1, url, map);
            }
        }
        return m16915a;
    }

    /* renamed from: a */
    private static boolean m16917a(int i) {
        return i / 100 == 2;
    }

    /* renamed from: b */
    private static boolean m16914b(int i) {
        return i / 100 == 3;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public Class<InputStream> mo16813a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: a */
    public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super InputStream> abstractC1476a) {
        long m17002a = C1452e.m17002a();
        try {
            try {
                abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super InputStream>) m16915a(this.f4827b.m16863a(), 0, null, this.f4827b.m16862b()));
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + C1452e.m17001a(m17002a));
            } catch (IOException e) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    Log.d("HttpUrlFetcher", "Failed to load data for url", e);
                }
                abstractC1476a.mo16338a((Exception) e);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + C1452e.m17001a(m17002a));
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + C1452e.m17001a(m17002a));
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: b */
    public void mo16811b() {
        if (this.f4831f != null) {
            try {
                this.f4831f.close();
            } catch (IOException e) {
            }
        }
        if (this.f4830e != null) {
            this.f4830e.disconnect();
        }
        this.f4830e = null;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: c */
    public void mo16810c() {
        this.f4832g = true;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1475d
    /* renamed from: d */
    public EnumC1464a mo16809d() {
        return EnumC1464a.REMOTE;
    }
}
