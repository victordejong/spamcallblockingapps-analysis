package p181n7;

import android.net.Uri;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import androidx.recyclerview.widget.C0608b;
import java.util.Locale;
import p192o7.AbstractC3938a;
/* renamed from: n7.h */
/* loaded from: classes2-dex2jar.jar:n7/h.class */
public class C3759h {

    /* renamed from: b */
    public String f12185b;

    /* renamed from: c */
    public Uri f12186c;

    /* renamed from: d */
    public C3782w f12187d;

    /* renamed from: f */
    public AbstractC3938a f12189f;

    /* renamed from: h */
    public String f12191h;

    /* renamed from: j */
    public String f12193j;

    /* renamed from: k */
    public int f12194k;

    /* renamed from: l */
    public long f12195l;

    /* renamed from: a */
    public String f12184a = "HTTP/1.1";

    /* renamed from: e */
    public boolean f12188e = true;

    /* renamed from: g */
    public int f12190g = 30000;

    /* renamed from: i */
    public int f12192i = -1;

    public C3759h(Uri uri, String str, C3782w c3782w) {
        this.f12187d = new C3782w();
        this.f12185b = str;
        this.f12186c = uri;
        if (c3782w == null) {
            this.f12187d = new C3782w();
        } else {
            this.f12187d = c3782w;
        }
        if (c3782w == null) {
            m1818f(this.f12187d, uri);
        }
    }

    /* renamed from: f */
    public static void m1818f(C3782w c3782w, Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            String str = host;
            if (uri.getPort() != -1) {
                StringBuilder m7624k = C0608b.m7624k(host, ":");
                m7624k.append(uri.getPort());
                str = m7624k.toString();
            }
            if (str != null) {
                c3782w.m1802d("Host", str);
            }
        }
        String property = System.getProperty("http.agent");
        if (property == null) {
            StringBuilder m8752j = C0082b.m8752j("Java");
            m8752j.append(System.getProperty("java.version"));
            property = m8752j.toString();
        }
        c3782w.m1802d("User-Agent", property);
        c3782w.m1802d("Accept-Encoding", "gzip, deflate");
        c3782w.m1802d("Connection", "keep-alive");
        c3782w.m1802d("Accept", "*/*");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* renamed from: a */
    public final String m1823a(String str) {
        ?? r12 = false;
        if (this.f12195l != 0) {
            r12 = System.currentTimeMillis() - this.f12195l;
        }
        return String.format(Locale.ENGLISH, "(%d ms) %s: %s", Long.valueOf(r12 == true ? 1L : 0L), this.f12186c, str);
    }

    /* renamed from: b */
    public void m1822b(String str) {
        if (this.f12193j != null && this.f12194k <= 3) {
            m1823a(str);
        }
    }

    /* renamed from: c */
    public void m1821c(String str, Exception exc) {
        if (this.f12193j != null && this.f12194k <= 6) {
            m1823a(str);
            exc.getMessage();
        }
    }

    /* renamed from: d */
    public void m1820d(String str) {
        String str2 = this.f12193j;
        if (str2 != null && this.f12194k <= 4) {
            Log.i(str2, m1823a(str));
        }
    }

    /* renamed from: e */
    public void m1819e(String str) {
        if (this.f12193j != null && this.f12194k <= 2) {
            m1823a(str);
        }
    }

    public String toString() {
        C3782w c3782w = this.f12187d;
        return c3782w == null ? super.toString() : c3782w.m1801e(this.f12186c.toString());
    }
}
