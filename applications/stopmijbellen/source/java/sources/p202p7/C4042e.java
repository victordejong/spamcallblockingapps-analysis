package p202p7;

import android.net.Uri;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import p181n7.C3784x;
import p202p7.C4024a;
/* renamed from: p7.e */
/* loaded from: classes2-dex2jar.jar:p7/e.class */
public final class C4042e {

    /* renamed from: a */
    public final Uri f12691a;

    /* renamed from: b */
    public final C4026b f12692b;

    /* renamed from: c */
    public Date f12693c;

    /* renamed from: d */
    public Date f12694d;

    /* renamed from: e */
    public Date f12695e;

    /* renamed from: f */
    public long f12696f;

    /* renamed from: g */
    public long f12697g;

    /* renamed from: h */
    public boolean f12698h;

    /* renamed from: i */
    public boolean f12699i;

    /* renamed from: j */
    public int f12700j = -1;

    /* renamed from: k */
    public int f12701k = -1;

    /* renamed from: l */
    public boolean f12702l;

    /* renamed from: m */
    public boolean f12703m;

    /* renamed from: n */
    public String f12704n;

    /* renamed from: o */
    public int f12705o;

    /* renamed from: p */
    public Set<String> f12706p;

    /* renamed from: p7.e$a */
    /* loaded from: classes2-dex2jar.jar:p7/e$a.class */
    public class C4043a implements C4024a.AbstractC4025a {
        public C4043a() {
            C4042e.this = r4;
        }

        @Override // p202p7.C4024a.AbstractC4025a
        /* renamed from: a */
        public void mo1472a(String str, String str2) {
            if (str.equalsIgnoreCase("no-cache")) {
                C4042e.this.f12698h = true;
            } else if (str.equalsIgnoreCase("no-store")) {
                C4042e.this.f12699i = true;
            } else if (str.equalsIgnoreCase("max-age")) {
                C4042e.this.f12700j = C4024a.m1498b(str2);
            } else if (str.equalsIgnoreCase("s-maxage")) {
                C4042e.this.f12701k = C4024a.m1498b(str2);
            } else if (str.equalsIgnoreCase("public")) {
                C4042e.this.f12702l = true;
            } else if (!str.equalsIgnoreCase("must-revalidate")) {
            } else {
                C4042e.this.f12703m = true;
            }
        }
    }

    public C4042e(Uri uri, C4026b c4026b) {
        this.f12705o = -1;
        this.f12706p = Collections.emptySet();
        this.f12691a = uri;
        this.f12692b = c4026b;
        C4043a c4043a = new C4043a();
        for (int i = 0; i < c4026b.m1491f(); i++) {
            String m1493d = c4026b.m1493d(i);
            String m1492e = c4026b.m1492e(i);
            if ("Cache-Control".equalsIgnoreCase(m1493d)) {
                C4024a.m1499a(m1492e, c4043a);
            } else if ("Date".equalsIgnoreCase(m1493d)) {
                this.f12693c = C3784x.m1798a(m1492e);
            } else if ("Expires".equalsIgnoreCase(m1493d)) {
                this.f12695e = C3784x.m1798a(m1492e);
            } else if ("Last-Modified".equalsIgnoreCase(m1493d)) {
                this.f12694d = C3784x.m1798a(m1492e);
            } else if ("ETag".equalsIgnoreCase(m1493d)) {
                this.f12704n = m1492e;
            } else if ("Pragma".equalsIgnoreCase(m1493d)) {
                if (m1492e.equalsIgnoreCase("no-cache")) {
                    this.f12698h = true;
                }
            } else if ("Age".equalsIgnoreCase(m1493d)) {
                this.f12705o = C4024a.m1498b(m1492e);
            } else if ("Vary".equalsIgnoreCase(m1493d)) {
                if (this.f12706p.isEmpty()) {
                    this.f12706p = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : m1492e.split(",")) {
                    this.f12706p.add(str.trim().toLowerCase(Locale.US));
                }
            } else if (!"Content-Encoding".equalsIgnoreCase(m1493d) && !"Transfer-Encoding".equalsIgnoreCase(m1493d)) {
                if ("Content-Length".equalsIgnoreCase(m1493d)) {
                    try {
                        Long.parseLong(m1492e);
                    } catch (NumberFormatException e) {
                    }
                } else if (!"Connection".equalsIgnoreCase(m1493d) && !"Proxy-Authenticate".equalsIgnoreCase(m1493d) && !"WWW-Authenticate".equalsIgnoreCase(m1493d)) {
                    if ("X-Android-Sent-Millis".equalsIgnoreCase(m1493d)) {
                        this.f12696f = Long.parseLong(m1492e);
                    } else if ("X-Android-Received-Millis".equalsIgnoreCase(m1493d)) {
                        this.f12697g = Long.parseLong(m1492e);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public static boolean m1473b(String str) {
        return !str.equalsIgnoreCase("Connection") && !str.equalsIgnoreCase("Keep-Alive") && !str.equalsIgnoreCase("Proxy-Authenticate") && !str.equalsIgnoreCase("Proxy-Authorization") && !str.equalsIgnoreCase("TE") && !str.equalsIgnoreCase("Trailers") && !str.equalsIgnoreCase("Transfer-Encoding") && !str.equalsIgnoreCase("Upgrade");
    }

    /* renamed from: a */
    public boolean m1474a(C4028c c4028c) {
        int i = this.f12692b.f12643c;
        if (i == 200 || i == 203 || i == 300 || i == 301 || i == 410) {
            return (!c4028c.f12650f || this.f12702l || this.f12703m || this.f12701k != -1) && !this.f12699i;
        }
        return false;
    }
}
