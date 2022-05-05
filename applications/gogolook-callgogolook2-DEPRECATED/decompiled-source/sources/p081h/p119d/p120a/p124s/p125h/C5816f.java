package p081h.p119d.p120a.p124s.p125h;

import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import p081h.p119d.p120a.EnumC5779n;
import p081h.p119d.p120a.p124s.p131j.C5904d;
import p081h.p119d.p120a.p149y.C6090b;
/* renamed from: h.d.a.s.h.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/f.class */
public class C5816f implements AbstractC5813c<InputStream> {

    /* renamed from: f */
    public static final AbstractC5819c f14661f = new C5818b();

    /* renamed from: a */
    public final C5904d f14662a;

    /* renamed from: b */
    public final AbstractC5819c f14663b;

    /* renamed from: c */
    public HttpURLConnection f14664c;

    /* renamed from: d */
    public InputStream f14665d;

    /* renamed from: e */
    public volatile boolean f14666e;

    /* renamed from: h.d.a.s.h.f$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/h/f$b.class */
    public static class C5818b implements AbstractC5819c {
        public C5818b() {
        }

        @Override // p081h.p119d.p120a.p124s.p125h.C5816f.AbstractC5819c
        /* renamed from: a */
        public HttpURLConnection mo24305a(URL url) throws IOException {
            return (HttpURLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        }
    }

    /* renamed from: h.d.a.s.h.f$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/h/f$c.class */
    public interface AbstractC5819c {
        /* renamed from: a */
        HttpURLConnection mo24305a(URL url) throws IOException;
    }

    public C5816f(C5904d dVar) {
        this(dVar, f14661f);
    }

    public C5816f(C5904d dVar, AbstractC5819c cVar) {
        this.f14662a = dVar;
        this.f14663b = cVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public InputStream mo24058a(EnumC5779n nVar) throws Exception {
        return m24306a(this.f14662a.m24151e(), 0, null, this.f14662a.m24154b());
    }

    /* renamed from: a */
    public final InputStream m24307a(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f14665d = C6090b.m23884a(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                String str = "Got non empty content encoding: " + httpURLConnection.getContentEncoding();
            }
            this.f14665d = httpURLConnection.getInputStream();
        }
        return this.f14665d;
    }

    /* renamed from: a */
    public final InputStream m24306a(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new IOException("In re-direct loop");
                    }
                } catch (URISyntaxException e) {
                }
            }
            this.f14664c = this.f14663b.mo24305a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f14664c.addRequestProperty(entry.getKey(), entry.getValue());
            }
            this.f14664c.setConnectTimeout(2500);
            this.f14664c.setReadTimeout(2500);
            this.f14664c.setUseCaches(false);
            this.f14664c.setDoInput(true);
            this.f14664c.connect();
            if (this.f14666e) {
                return null;
            }
            int responseCode = this.f14664c.getResponseCode();
            int i2 = responseCode / 100;
            if (i2 == 2) {
                return m24307a(this.f14664c);
            }
            if (i2 == 3) {
                String headerField = this.f14664c.getHeaderField("Location");
                if (!TextUtils.isEmpty(headerField)) {
                    return m24306a(new URL(url, headerField), i + 1, url, map);
                }
                throw new IOException("Received empty or null redirect url");
            } else if (responseCode == -1) {
                throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
            } else {
                throw new IOException("Request failed " + responseCode + ": " + this.f14664c.getResponseMessage());
            }
        } else {
            throw new IOException("Too many (> 5) redirects!");
        }
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public void mo24059a() {
        InputStream inputStream = this.f14665d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
        HttpURLConnection httpURLConnection = this.f14664c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public void cancel() {
        this.f14666e = true;
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public String getId() {
        return this.f14662a.m24155a();
    }
}
