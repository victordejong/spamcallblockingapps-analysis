package p193e.p1451f.p1452a.p1457n.p1458n;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22262e;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1480t.C22614c;
import p193e.p1451f.p1452a.p1480t.C22619f;
/* renamed from: e.f.a.n.n.j */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/j.class */
public class C22282j implements AbstractC22274d<InputStream> {

    /* renamed from: f */
    public static final AbstractC22284b f61920f = new C22283a();

    /* renamed from: a */
    public final C22423g f61921a;

    /* renamed from: b */
    public final int f61922b;

    /* renamed from: c */
    public HttpURLConnection f61923c;

    /* renamed from: d */
    public InputStream f61924d;

    /* renamed from: e */
    public volatile boolean f61925e;

    /* renamed from: e.f.a.n.n.j$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/n/j$a.class */
    public static class C22283a implements AbstractC22284b {
    }

    /* renamed from: e.f.a.n.n.j$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/n/j$b.class */
    public interface AbstractC22284b {
    }

    public C22282j(C22423g c22423g, int i) {
        this.f61921a = c22423g;
        this.f61922b = i;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: a */
    public Class<InputStream> mo8220a() {
        return InputStream.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: b */
    public void mo8219b() {
        InputStream inputStream = this.f61924d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
            }
        }
        HttpURLConnection httpURLConnection = this.f61923c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f61923c = null;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: c */
    public EnumC22258a mo8218c() {
        return EnumC22258a.REMOTE;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    public void cancel() {
        this.f61925e = true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: d */
    public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super InputStream> abstractC22275a) {
        int i = C22619f.f62640b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                C22423g c22423g = this.f61921a;
                if (c22423g.f62263f == null) {
                    c22423g.f62263f = new URL(c22423g.m8237d());
                }
                abstractC22275a.mo8231e(m8355e(c22423g.f62263f, 0, null, this.f61921a.f62259b.mo8236a()));
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            } catch (IOException e) {
                Log.isLoggable("HttpUrlFetcher", 3);
                abstractC22275a.mo8230f(e);
                if (!Log.isLoggable("HttpUrlFetcher", 2)) {
                    return;
                }
            }
            C22619f.m8031a(elapsedRealtimeNanos);
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                C22619f.m8031a(elapsedRealtimeNanos);
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final InputStream m8355e(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new C22262e("In re-direct loop");
                    }
                } catch (URISyntaxException e) {
                }
            }
            this.f61923c = (HttpURLConnection) url.openConnection();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f61923c.addRequestProperty(entry.getKey(), entry.getValue());
            }
            this.f61923c.setConnectTimeout(this.f61922b);
            this.f61923c.setReadTimeout(this.f61922b);
            this.f61923c.setUseCaches(false);
            this.f61923c.setDoInput(true);
            this.f61923c.setInstanceFollowRedirects(false);
            this.f61923c.connect();
            this.f61924d = this.f61923c.getInputStream();
            if (this.f61925e) {
                return null;
            }
            int responseCode = this.f61923c.getResponseCode();
            int i2 = responseCode / 100;
            if (i2 == 2) {
                HttpURLConnection httpURLConnection = this.f61923c;
                if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                    this.f61924d = new C22614c(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
                } else {
                    if (Log.isLoggable("HttpUrlFetcher", 3)) {
                        httpURLConnection.getContentEncoding();
                    }
                    this.f61924d = httpURLConnection.getInputStream();
                }
                return this.f61924d;
            }
            boolean z = false;
            if (i2 == 3) {
                z = true;
            }
            if (!z) {
                if (responseCode != -1) {
                    throw new C22262e(this.f61923c.getResponseMessage(), responseCode);
                }
                throw new C22262e(responseCode);
            }
            String headerField = this.f61923c.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new C22262e("Received empty or null redirect url");
            }
            URL url3 = new URL(url, headerField);
            mo8219b();
            return m8355e(url3, i + 1, url, map);
        }
        throw new C22262e("Too many (> 5) redirects!");
    }
}
