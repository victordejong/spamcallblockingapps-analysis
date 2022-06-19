package p193e.p1512i.p1516b.p1522i2;

import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Objects;
import org.json.JSONObject;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1531s2.C23087j;
import p193e.p1512i.p1516b.p1533u2.AbstractC23127q;
import p193e.p1512i.p1516b.p1533u2.C23130t;
import s1.z.c.l;
/* renamed from: e.i.b.i2.g */
/* loaded from: classes-dex2jar.jar:e/i/b/i2/g.class */
public class C22967g {

    /* renamed from: a */
    public final C23021h f63688a = C23023i.m7583a(C22967g.class);

    /* renamed from: b */
    public final C23080f f63689b;

    /* renamed from: c */
    public final C23087j f63690c;

    public C22967g(C23080f c23080f, C23087j c23087j) {
        this.f63689b = c23080f;
        this.f63690c = c23087j;
    }

    /* renamed from: b */
    public static InputStream m7610b(HttpURLConnection httpURLConnection) throws IOException {
        int responseCode = httpURLConnection.getResponseCode();
        if (responseCode == 200 || responseCode == 204) {
            return httpURLConnection.getInputStream();
        }
        throw new C22964e(responseCode);
    }

    /* renamed from: a */
    public C23130t m7611a(AbstractC23127q abstractC23127q, String str) throws Exception {
        Objects.requireNonNull(this.f63689b);
        HttpURLConnection m7609c = m7609c(new URL("https://bidder.criteo.com/inapp/v2"), str, "POST");
        m7609c.setDoOutput(true);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f63690c.m7562b(abstractC23127q, byteArrayOutputStream);
            C23021h c23021h = this.f63688a;
            String byteArrayOutputStream2 = byteArrayOutputStream.toString(StringConstant.UTF8);
            l.f(byteArrayOutputStream2, "requestPayload");
            c23021h.m7586a(new C23019f(0, "CDB Request initiated: " + byteArrayOutputStream2, null, null, 13));
            m7609c.getOutputStream().write(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.close();
            InputStream m7610b = m7610b(m7609c);
            try {
                String m2354g = C26232y.m2354g(m7610b);
                C23021h c23021h2 = this.f63688a;
                l.f(m2354g, "responsePayload");
                c23021h2.m7586a(new C23019f(0, "CDB Response received: " + m2354g, null, null, 13));
                C23130t m7485a = C23130t.m7485a(C26232y.m2338k(m2354g) ? new JSONObject() : new JSONObject(m2354g));
                if (m7610b != null) {
                    m7610b.close();
                }
                return m7485a;
            } catch (Throwable th) {
                if (m7610b != null) {
                    try {
                        m7610b.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    /* renamed from: c */
    public final HttpURLConnection m7609c(URL url, String str, String str2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod(str2);
        Objects.requireNonNull(this.f63689b);
        httpURLConnection.setReadTimeout(60000);
        Objects.requireNonNull(this.f63689b);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setRequestProperty("Content-Type", "text/plain");
        if (!C26232y.m2338k(str)) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        return httpURLConnection;
    }

    /* renamed from: d */
    public final void m7608d(String str, Object obj) throws IOException {
        StringBuilder sb = new StringBuilder();
        Objects.requireNonNull(this.f63689b);
        sb.append("https://bidder.criteo.com");
        sb.append(str);
        HttpURLConnection m7609c = m7609c(new URL(sb.toString()), null, "POST");
        m7607e(m7609c, obj);
        m7610b(m7609c).close();
    }

    /* renamed from: e */
    public final void m7607e(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        httpURLConnection.setDoOutput(true);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        try {
            this.f63690c.m7562b(obj, outputStream);
            if (outputStream == null) {
                return;
            }
            outputStream.close();
        } catch (Throwable th) {
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
