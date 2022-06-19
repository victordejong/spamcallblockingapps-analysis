package okhttp3.internal.http2;

import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.gms.common.api.Api;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.perf.FirebasePerformance;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p000a.AbstractC0008e;
import p000a.AbstractC0026s;
import p000a.C0005c;
import p000a.C0009f;
import p000a.C0015l;
/* renamed from: okhttp3.internal.http2.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c.class */
public final class C2038c {

    /* renamed from: a */
    static final C2037b[] f5130a = {new C2037b(C2037b.f5126f, ""), new C2037b(C2037b.f5123c, FirebasePerformance.HttpMethod.GET), new C2037b(C2037b.f5123c, FirebasePerformance.HttpMethod.POST), new C2037b(C2037b.f5124d, "/"), new C2037b(C2037b.f5124d, "/index.html"), new C2037b(C2037b.f5125e, "http"), new C2037b(C2037b.f5125e, "https"), new C2037b(C2037b.f5122b, "200"), new C2037b(C2037b.f5122b, "204"), new C2037b(C2037b.f5122b, "206"), new C2037b(C2037b.f5122b, "304"), new C2037b(C2037b.f5122b, "400"), new C2037b(C2037b.f5122b, "404"), new C2037b(C2037b.f5122b, "500"), new C2037b("accept-charset", ""), new C2037b("accept-encoding", "gzip, deflate"), new C2037b("accept-language", ""), new C2037b("accept-ranges", ""), new C2037b("accept", ""), new C2037b("access-control-allow-origin", ""), new C2037b("age", ""), new C2037b("allow", ""), new C2037b("authorization", ""), new C2037b("cache-control", ""), new C2037b("content-disposition", ""), new C2037b("content-encoding", ""), new C2037b("content-language", ""), new C2037b("content-length", ""), new C2037b("content-location", ""), new C2037b("content-range", ""), new C2037b("content-type", ""), new C2037b("cookie", ""), new C2037b("date", ""), new C2037b("etag", ""), new C2037b("expect", ""), new C2037b("expires", ""), new C2037b("from", ""), new C2037b("host", ""), new C2037b("if-match", ""), new C2037b("if-modified-since", ""), new C2037b("if-none-match", ""), new C2037b("if-range", ""), new C2037b("if-unmodified-since", ""), new C2037b("last-modified", ""), new C2037b("link", ""), new C2037b(FirebaseAnalytics.Param.LOCATION, ""), new C2037b("max-forwards", ""), new C2037b("proxy-authenticate", ""), new C2037b("proxy-authorization", ""), new C2037b("range", ""), new C2037b("referer", ""), new C2037b("refresh", ""), new C2037b("retry-after", ""), new C2037b("server", ""), new C2037b("set-cookie", ""), new C2037b("strict-transport-security", ""), new C2037b("transfer-encoding", ""), new C2037b("user-agent", ""), new C2037b("vary", ""), new C2037b("via", ""), new C2037b("www-authenticate", "")};

    /* renamed from: b */
    static final Map<C0009f, Integer> f5131b = m2210a();

    /* renamed from: okhttp3.internal.http2.c$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c$a.class */
    static final class C2039a {

        /* renamed from: a */
        C2037b[] f5132a;

        /* renamed from: b */
        int f5133b;

        /* renamed from: c */
        int f5134c;

        /* renamed from: d */
        int f5135d;

        /* renamed from: e */
        private final List<C2037b> f5136e;

        /* renamed from: f */
        private final AbstractC0008e f5137f;

        /* renamed from: g */
        private final int f5138g;

        /* renamed from: h */
        private int f5139h;

        C2039a(int i, int i2, AbstractC0026s abstractC0026s) {
            this.f5136e = new ArrayList();
            this.f5132a = new C2037b[8];
            this.f5133b = this.f5132a.length - 1;
            this.f5134c = 0;
            this.f5135d = 0;
            this.f5138g = i;
            this.f5139h = i2;
            this.f5137f = C0015l.m8098a(abstractC0026s);
        }

        public C2039a(int i, AbstractC0026s abstractC0026s) {
            this(i, i, abstractC0026s);
        }

        /* renamed from: a */
        private int m2207a(int i) {
            int i2 = 0;
            if (i > 0) {
                int i3 = i;
                int i4 = 0;
                for (int length = this.f5132a.length - 1; length >= this.f5133b && i3 > 0; length--) {
                    i3 -= this.f5132a[length].f5129i;
                    this.f5135d -= this.f5132a[length].f5129i;
                    this.f5134c--;
                    i4++;
                }
                C2037b[] c2037bArr = this.f5132a;
                int i5 = this.f5133b;
                System.arraycopy(c2037bArr, i5 + 1, c2037bArr, i5 + 1 + i4, this.f5134c);
                this.f5133b += i4;
                i2 = i4;
            }
            return i2;
        }

        /* renamed from: a */
        private void m2205a(int i, C2037b c2037b) {
            this.f5136e.add(c2037b);
            int i2 = c2037b.f5129i;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f5132a[m2201c(i)].f5129i;
            }
            int i4 = this.f5139h;
            if (i3 > i4) {
                m2198e();
                return;
            }
            int m2207a = m2207a((this.f5135d + i3) - i4);
            if (i == -1) {
                int i5 = this.f5134c;
                C2037b[] c2037bArr = this.f5132a;
                if (i5 + 1 > c2037bArr.length) {
                    C2037b[] c2037bArr2 = new C2037b[c2037bArr.length * 2];
                    System.arraycopy(c2037bArr, 0, c2037bArr2, c2037bArr.length, c2037bArr.length);
                    this.f5133b = this.f5132a.length - 1;
                    this.f5132a = c2037bArr2;
                }
                int i6 = this.f5133b;
                this.f5133b = i6 - 1;
                this.f5132a[i6] = c2037b;
                this.f5134c++;
            } else {
                this.f5132a[i + m2201c(i) + m2207a] = c2037b;
            }
            this.f5135d += i3;
        }

        /* renamed from: b */
        private void m2203b(int i) {
            if (m2193g(i)) {
                this.f5136e.add(C2038c.f5130a[i]);
                return;
            }
            int m2201c = m2201c(i - C2038c.f5130a.length);
            if (m2201c >= 0) {
                C2037b[] c2037bArr = this.f5132a;
                if (m2201c < c2037bArr.length) {
                    this.f5136e.add(c2037bArr[m2201c]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: c */
        private int m2201c(int i) {
            return this.f5133b + 1 + i;
        }

        /* renamed from: d */
        private void m2200d() {
            int i = this.f5139h;
            int i2 = this.f5135d;
            if (i < i2) {
                if (i == 0) {
                    m2198e();
                } else {
                    m2207a(i2 - i);
                }
            }
        }

        /* renamed from: d */
        private void m2199d(int i) {
            this.f5136e.add(new C2037b(m2195f(i), m2202c()));
        }

        /* renamed from: e */
        private void m2198e() {
            Arrays.fill(this.f5132a, (Object) null);
            this.f5133b = this.f5132a.length - 1;
            this.f5134c = 0;
            this.f5135d = 0;
        }

        /* renamed from: e */
        private void m2197e(int i) {
            m2205a(-1, new C2037b(m2195f(i), m2202c()));
        }

        /* renamed from: f */
        private C0009f m2195f(int i) {
            if (m2193g(i)) {
                return C2038c.f5130a[i].f5127g;
            }
            int m2201c = m2201c(i - C2038c.f5130a.length);
            if (m2201c >= 0) {
                C2037b[] c2037bArr = this.f5132a;
                if (m2201c < c2037bArr.length) {
                    return c2037bArr[m2201c].f5127g;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: f */
        private void m2196f() {
            this.f5136e.add(new C2037b(C2038c.m2209a(m2202c()), m2202c()));
        }

        /* renamed from: g */
        private void m2194g() {
            m2205a(-1, new C2037b(C2038c.m2209a(m2202c()), m2202c()));
        }

        /* renamed from: g */
        private boolean m2193g(int i) {
            boolean z = true;
            if (i < 0 || i > C2038c.f5130a.length - 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: h */
        private int m2192h() {
            return this.f5137f.mo8066h() & 255;
        }

        /* renamed from: a */
        int m2206a(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m2192h = m2192h();
                if ((m2192h & 128) == 0) {
                    return i2 + (m2192h << i4);
                }
                i2 += (m2192h & 127) << i4;
                i4 += 7;
            }
        }

        /* renamed from: a */
        public void m2208a() {
            while (!this.f5137f.mo8070e()) {
                int mo8066h = this.f5137f.mo8066h() & 255;
                if (mo8066h == 128) {
                    throw new IOException("index == 0");
                }
                if ((mo8066h & 128) == 128) {
                    m2203b(m2206a(mo8066h, 127) - 1);
                } else if (mo8066h == 64) {
                    m2194g();
                } else if ((mo8066h & 64) == 64) {
                    m2197e(m2206a(mo8066h, 63) - 1);
                } else if ((mo8066h & 32) == 32) {
                    this.f5139h = m2206a(mo8066h, 31);
                    int i = this.f5139h;
                    if (i < 0 || i > this.f5138g) {
                        throw new IOException("Invalid dynamic table size update " + this.f5139h);
                    }
                    m2200d();
                } else if (mo8066h == 16 || mo8066h == 0) {
                    m2196f();
                } else {
                    m2199d(m2206a(mo8066h, 15) - 1);
                }
            }
        }

        /* renamed from: b */
        public List<C2037b> m2204b() {
            ArrayList arrayList = new ArrayList(this.f5136e);
            this.f5136e.clear();
            return arrayList;
        }

        /* renamed from: c */
        C0009f m2202c() {
            int m2192h = m2192h();
            boolean z = (m2192h & 128) == 128;
            int m2206a = m2206a(m2192h, 127);
            return z ? C0009f.m8112a(C2067j.m2063a().m2059a(this.f5137f.mo8067g(m2206a))) : this.f5137f.mo8071c(m2206a);
        }
    }

    /* renamed from: okhttp3.internal.http2.c$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c$b.class */
    static final class C2040b {

        /* renamed from: a */
        int f5140a;

        /* renamed from: b */
        int f5141b;

        /* renamed from: c */
        C2037b[] f5142c;

        /* renamed from: d */
        int f5143d;

        /* renamed from: e */
        int f5144e;

        /* renamed from: f */
        int f5145f;

        /* renamed from: g */
        private final C0005c f5146g;

        /* renamed from: h */
        private final boolean f5147h;

        /* renamed from: i */
        private int f5148i;

        /* renamed from: j */
        private boolean f5149j;

        C2040b(int i, boolean z, C0005c c0005c) {
            this.f5148i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            this.f5142c = new C2037b[8];
            this.f5143d = this.f5142c.length - 1;
            this.f5144e = 0;
            this.f5145f = 0;
            this.f5140a = i;
            this.f5141b = i;
            this.f5147h = z;
            this.f5146g = c0005c;
        }

        public C2040b(C0005c c0005c) {
            this(CodedOutputStream.DEFAULT_BUFFER_SIZE, true, c0005c);
        }

        /* renamed from: a */
        private void m2191a() {
            Arrays.fill(this.f5142c, (Object) null);
            this.f5143d = this.f5142c.length - 1;
            this.f5144e = 0;
            this.f5145f = 0;
        }

        /* renamed from: a */
        private void m2186a(C2037b c2037b) {
            int i = c2037b.f5129i;
            int i2 = this.f5141b;
            if (i > i2) {
                m2191a();
                return;
            }
            m2184b((this.f5145f + i) - i2);
            int i3 = this.f5144e;
            C2037b[] c2037bArr = this.f5142c;
            if (i3 + 1 > c2037bArr.length) {
                C2037b[] c2037bArr2 = new C2037b[c2037bArr.length * 2];
                System.arraycopy(c2037bArr, 0, c2037bArr2, c2037bArr.length, c2037bArr.length);
                this.f5143d = this.f5142c.length - 1;
                this.f5142c = c2037bArr2;
            }
            int i4 = this.f5143d;
            this.f5143d = i4 - 1;
            this.f5142c[i4] = c2037b;
            this.f5144e++;
            this.f5145f += i;
        }

        /* renamed from: b */
        private int m2184b(int i) {
            int i2 = 0;
            if (i > 0) {
                int i3 = i;
                int i4 = 0;
                for (int length = this.f5142c.length - 1; length >= this.f5143d && i3 > 0; length--) {
                    i3 -= this.f5142c[length].f5129i;
                    this.f5145f -= this.f5142c[length].f5129i;
                    this.f5144e--;
                    i4++;
                }
                C2037b[] c2037bArr = this.f5142c;
                int i5 = this.f5143d;
                System.arraycopy(c2037bArr, i5 + 1, c2037bArr, i5 + 1 + i4, this.f5144e);
                C2037b[] c2037bArr2 = this.f5142c;
                int i6 = this.f5143d;
                Arrays.fill(c2037bArr2, i6 + 1, i6 + 1 + i4, (Object) null);
                this.f5143d += i4;
                i2 = i4;
            }
            return i2;
        }

        /* renamed from: b */
        private void m2185b() {
            int i = this.f5141b;
            int i2 = this.f5145f;
            if (i < i2) {
                if (i == 0) {
                    m2191a();
                } else {
                    m2184b(i2 - i);
                }
            }
        }

        /* renamed from: a */
        public void m2190a(int i) {
            this.f5140a = i;
            int min = Math.min(i, 16384);
            int i2 = this.f5141b;
            if (i2 == min) {
                return;
            }
            if (min < i2) {
                this.f5148i = Math.min(this.f5148i, min);
            }
            this.f5149j = true;
            this.f5141b = min;
            m2185b();
        }

        /* renamed from: a */
        void m2189a(int i, int i2, int i3) {
            if (i < i2) {
                this.f5146g.mo8084i(i | i3);
                return;
            }
            this.f5146g.mo8084i(i3 | i2);
            int i4 = i - i2;
            while (true) {
                int i5 = i4;
                if (i5 < 128) {
                    this.f5146g.mo8084i(i5);
                    return;
                } else {
                    this.f5146g.mo8084i(128 | (i5 & 127));
                    i4 = i5 >>> 7;
                }
            }
        }

        /* renamed from: a */
        void m2188a(C0009f c0009f) {
            if (!this.f5147h || C2067j.m2063a().m2061a(c0009f) >= c0009f.mo8038g()) {
                m2189a(c0009f.mo8038g(), 127, 0);
                this.f5146g.mo8090b(c0009f);
                return;
            }
            C0005c c0005c = new C0005c();
            C2067j.m2063a().m2060a(c0009f, c0005c);
            C0009f m8122n = c0005c.m8122n();
            m2189a(m8122n.mo8038g(), 127, 128);
            this.f5146g.mo8090b(m8122n);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0159  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0167  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m2187a(java.util.List<okhttp3.internal.http2.C2037b> r6) {
            /*
                Method dump skipped, instructions count: 465
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.C2038c.C2040b.m2187a(java.util.List):void");
        }
    }

    /* renamed from: a */
    static C0009f m2209a(C0009f c0009f) {
        int mo8038g = c0009f.mo8038g();
        for (int i = 0; i < mo8038g; i++) {
            byte mo8049a = c0009f.mo8049a(i);
            if (mo8049a >= 65 && mo8049a <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c0009f.mo8050a());
            }
        }
        return c0009f;
    }

    /* renamed from: a */
    private static Map<C0009f, Integer> m2210a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f5130a.length);
        int i = 0;
        while (true) {
            C2037b[] c2037bArr = f5130a;
            if (i < c2037bArr.length) {
                if (!linkedHashMap.containsKey(c2037bArr[i].f5127g)) {
                    linkedHashMap.put(f5130a[i].f5127g, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }
}
