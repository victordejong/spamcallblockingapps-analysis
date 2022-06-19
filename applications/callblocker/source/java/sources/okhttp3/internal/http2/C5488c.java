package okhttp3.internal.http2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okhttp3.internal.C5449c;
import p000a.AbstractC0007e;
import p000a.AbstractC0024s;
import p000a.C0005c;
import p000a.C0008f;
import p000a.C0014l;
/* renamed from: okhttp3.internal.http2.c */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c.class */
public final class C5488c {

    /* renamed from: a */
    static final C5487b[] f22904a = {new C5487b(C5487b.f22900f, ""), new C5487b(C5487b.f22897c, "GET"), new C5487b(C5487b.f22897c, "POST"), new C5487b(C5487b.f22898d, "/"), new C5487b(C5487b.f22898d, "/index.html"), new C5487b(C5487b.f22899e, "http"), new C5487b(C5487b.f22899e, "https"), new C5487b(C5487b.f22896b, "200"), new C5487b(C5487b.f22896b, "204"), new C5487b(C5487b.f22896b, "206"), new C5487b(C5487b.f22896b, "304"), new C5487b(C5487b.f22896b, "400"), new C5487b(C5487b.f22896b, "404"), new C5487b(C5487b.f22896b, "500"), new C5487b("accept-charset", ""), new C5487b("accept-encoding", "gzip, deflate"), new C5487b("accept-language", ""), new C5487b("accept-ranges", ""), new C5487b("accept", ""), new C5487b("access-control-allow-origin", ""), new C5487b("age", ""), new C5487b("allow", ""), new C5487b("authorization", ""), new C5487b("cache-control", ""), new C5487b("content-disposition", ""), new C5487b("content-encoding", ""), new C5487b("content-language", ""), new C5487b("content-length", ""), new C5487b("content-location", ""), new C5487b("content-range", ""), new C5487b("content-type", ""), new C5487b("cookie", ""), new C5487b("date", ""), new C5487b("etag", ""), new C5487b("expect", ""), new C5487b("expires", ""), new C5487b("from", ""), new C5487b("host", ""), new C5487b("if-match", ""), new C5487b("if-modified-since", ""), new C5487b("if-none-match", ""), new C5487b("if-range", ""), new C5487b("if-unmodified-since", ""), new C5487b("last-modified", ""), new C5487b("link", ""), new C5487b("location", ""), new C5487b("max-forwards", ""), new C5487b("proxy-authenticate", ""), new C5487b("proxy-authorization", ""), new C5487b("range", ""), new C5487b("referer", ""), new C5487b("refresh", ""), new C5487b("retry-after", ""), new C5487b("server", ""), new C5487b("set-cookie", ""), new C5487b("strict-transport-security", ""), new C5487b("transfer-encoding", ""), new C5487b("user-agent", ""), new C5487b("vary", ""), new C5487b("via", ""), new C5487b("www-authenticate", "")};

    /* renamed from: b */
    static final Map<C0008f, Integer> f22905b = m528a();

    /* renamed from: okhttp3.internal.http2.c$a */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c$a.class */
    static final class C5489a {

        /* renamed from: a */
        C5487b[] f22906a;

        /* renamed from: b */
        int f22907b;

        /* renamed from: c */
        int f22908c;

        /* renamed from: d */
        int f22909d;

        /* renamed from: e */
        private final List<C5487b> f22910e;

        /* renamed from: f */
        private final AbstractC0007e f22911f;

        /* renamed from: g */
        private final int f22912g;

        /* renamed from: h */
        private int f22913h;

        C5489a(int i, int i2, AbstractC0024s abstractC0024s) {
            this.f22910e = new ArrayList();
            this.f22906a = new C5487b[8];
            this.f22907b = this.f22906a.length - 1;
            this.f22908c = 0;
            this.f22909d = 0;
            this.f22912g = i;
            this.f22913h = i2;
            this.f22911f = C0014l.m22522a(abstractC0024s);
        }

        public C5489a(int i, AbstractC0024s abstractC0024s) {
            this(i, i, abstractC0024s);
        }

        /* renamed from: a */
        private int m525a(int i) {
            int i2 = 0;
            if (i > 0) {
                int i3 = i;
                int i4 = 0;
                for (int length = this.f22906a.length - 1; length >= this.f22907b && i3 > 0; length--) {
                    i3 -= this.f22906a[length].f22903i;
                    this.f22909d -= this.f22906a[length].f22903i;
                    this.f22908c--;
                    i4++;
                }
                System.arraycopy(this.f22906a, this.f22907b + 1, this.f22906a, this.f22907b + 1 + i4, this.f22908c);
                this.f22907b += i4;
                i2 = i4;
            }
            return i2;
        }

        /* renamed from: a */
        private void m523a(int i, C5487b c5487b) {
            this.f22910e.add(c5487b);
            int i2 = c5487b.f22903i;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f22906a[m519c(i)].f22903i;
            }
            if (i3 > this.f22913h) {
                m516e();
                return;
            }
            int m525a = m525a((this.f22909d + i3) - this.f22913h);
            if (i == -1) {
                if (this.f22908c + 1 > this.f22906a.length) {
                    C5487b[] c5487bArr = new C5487b[this.f22906a.length * 2];
                    System.arraycopy(this.f22906a, 0, c5487bArr, this.f22906a.length, this.f22906a.length);
                    this.f22907b = this.f22906a.length - 1;
                    this.f22906a = c5487bArr;
                }
                int i4 = this.f22907b;
                this.f22907b = i4 - 1;
                this.f22906a[i4] = c5487b;
                this.f22908c++;
            } else {
                this.f22906a[m525a + m519c(i) + i] = c5487b;
            }
            this.f22909d = i3 + this.f22909d;
        }

        /* renamed from: b */
        private void m521b(int i) {
            if (m511g(i)) {
                this.f22910e.add(C5488c.f22904a[i]);
                return;
            }
            int m519c = m519c(i - C5488c.f22904a.length);
            if (m519c < 0 || m519c >= this.f22906a.length) {
                throw new IOException("Header index too large " + (i + 1));
            }
            this.f22910e.add(this.f22906a[m519c]);
        }

        /* renamed from: c */
        private int m519c(int i) {
            return this.f22907b + 1 + i;
        }

        /* renamed from: d */
        private void m518d() {
            if (this.f22913h < this.f22909d) {
                if (this.f22913h == 0) {
                    m516e();
                } else {
                    m525a(this.f22909d - this.f22913h);
                }
            }
        }

        /* renamed from: d */
        private void m517d(int i) {
            this.f22910e.add(new C5487b(m513f(i), m520c()));
        }

        /* renamed from: e */
        private void m516e() {
            Arrays.fill(this.f22906a, (Object) null);
            this.f22907b = this.f22906a.length - 1;
            this.f22908c = 0;
            this.f22909d = 0;
        }

        /* renamed from: e */
        private void m515e(int i) {
            m523a(-1, new C5487b(m513f(i), m520c()));
        }

        /* renamed from: f */
        private C0008f m513f(int i) {
            C0008f c0008f;
            if (m511g(i)) {
                c0008f = C5488c.f22904a[i].f22901g;
            } else {
                int m519c = m519c(i - C5488c.f22904a.length);
                if (m519c < 0 || m519c >= this.f22906a.length) {
                    throw new IOException("Header index too large " + (i + 1));
                }
                c0008f = this.f22906a[m519c].f22901g;
            }
            return c0008f;
        }

        /* renamed from: f */
        private void m514f() {
            this.f22910e.add(new C5487b(C5488c.m527a(m520c()), m520c()));
        }

        /* renamed from: g */
        private void m512g() {
            m523a(-1, new C5487b(C5488c.m527a(m520c()), m520c()));
        }

        /* renamed from: g */
        private boolean m511g(int i) {
            return i >= 0 && i <= C5488c.f22904a.length - 1;
        }

        /* renamed from: h */
        private int m510h() {
            return this.f22911f.mo22491g() & 255;
        }

        /* renamed from: a */
        int m524a(int i, int i2) {
            int m510h;
            int i3 = i & i2;
            if (i3 >= i2) {
                int i4 = 0;
                while (true) {
                    m510h = m510h();
                    if ((m510h & 128) == 0) {
                        break;
                    }
                    i2 += (m510h & 127) << i4;
                    i4 += 7;
                }
                i3 = (m510h << i4) + i2;
            }
            return i3;
        }

        /* renamed from: a */
        public void m526a() {
            while (!this.f22911f.mo22493e()) {
                int mo22491g = this.f22911f.mo22491g() & 255;
                if (mo22491g == 128) {
                    throw new IOException("index == 0");
                }
                if ((mo22491g & 128) == 128) {
                    m521b(m524a(mo22491g, 127) - 1);
                } else if (mo22491g == 64) {
                    m512g();
                } else if ((mo22491g & 64) == 64) {
                    m515e(m524a(mo22491g, 63) - 1);
                } else if ((mo22491g & 32) == 32) {
                    this.f22913h = m524a(mo22491g, 31);
                    if (this.f22913h < 0 || this.f22913h > this.f22912g) {
                        throw new IOException("Invalid dynamic table size update " + this.f22913h);
                    }
                    m518d();
                } else if (mo22491g == 16 || mo22491g == 0) {
                    m514f();
                } else {
                    m517d(m524a(mo22491g, 15) - 1);
                }
            }
        }

        /* renamed from: b */
        public List<C5487b> m522b() {
            ArrayList arrayList = new ArrayList(this.f22910e);
            this.f22910e.clear();
            return arrayList;
        }

        /* renamed from: c */
        C0008f m520c() {
            int m510h = m510h();
            boolean z = (m510h & 128) == 128;
            int m524a = m524a(m510h, 127);
            return z ? C0008f.m22536a(C5517j.m381a().m377a(this.f22911f.mo22490g(m524a))) : this.f22911f.mo22494c(m524a);
        }
    }

    /* renamed from: okhttp3.internal.http2.c$b */
    /* loaded from: classes-dex2jar.jar:okhttp3/internal/http2/c$b.class */
    static final class C5490b {

        /* renamed from: a */
        int f22914a;

        /* renamed from: b */
        int f22915b;

        /* renamed from: c */
        C5487b[] f22916c;

        /* renamed from: d */
        int f22917d;

        /* renamed from: e */
        int f22918e;

        /* renamed from: f */
        int f22919f;

        /* renamed from: g */
        private final C0005c f22920g;

        /* renamed from: h */
        private final boolean f22921h;

        /* renamed from: i */
        private int f22922i;

        /* renamed from: j */
        private boolean f22923j;

        C5490b(int i, boolean z, C0005c c0005c) {
            this.f22922i = Integer.MAX_VALUE;
            this.f22916c = new C5487b[8];
            this.f22917d = this.f22916c.length - 1;
            this.f22918e = 0;
            this.f22919f = 0;
            this.f22914a = i;
            this.f22915b = i;
            this.f22921h = z;
            this.f22920g = c0005c;
        }

        public C5490b(C0005c c0005c) {
            this(4096, true, c0005c);
        }

        /* renamed from: a */
        private void m509a() {
            Arrays.fill(this.f22916c, (Object) null);
            this.f22917d = this.f22916c.length - 1;
            this.f22918e = 0;
            this.f22919f = 0;
        }

        /* renamed from: a */
        private void m504a(C5487b c5487b) {
            int i = c5487b.f22903i;
            if (i > this.f22915b) {
                m509a();
                return;
            }
            m502b((this.f22919f + i) - this.f22915b);
            if (this.f22918e + 1 > this.f22916c.length) {
                C5487b[] c5487bArr = new C5487b[this.f22916c.length * 2];
                System.arraycopy(this.f22916c, 0, c5487bArr, this.f22916c.length, this.f22916c.length);
                this.f22917d = this.f22916c.length - 1;
                this.f22916c = c5487bArr;
            }
            int i2 = this.f22917d;
            this.f22917d = i2 - 1;
            this.f22916c[i2] = c5487b;
            this.f22918e++;
            this.f22919f = i + this.f22919f;
        }

        /* renamed from: b */
        private int m502b(int i) {
            int i2 = 0;
            if (i > 0) {
                int i3 = i;
                int i4 = 0;
                for (int length = this.f22916c.length - 1; length >= this.f22917d && i3 > 0; length--) {
                    i3 -= this.f22916c[length].f22903i;
                    this.f22919f -= this.f22916c[length].f22903i;
                    this.f22918e--;
                    i4++;
                }
                System.arraycopy(this.f22916c, this.f22917d + 1, this.f22916c, this.f22917d + 1 + i4, this.f22918e);
                Arrays.fill(this.f22916c, this.f22917d + 1, this.f22917d + 1 + i4, (Object) null);
                this.f22917d += i4;
                i2 = i4;
            }
            return i2;
        }

        /* renamed from: b */
        private void m503b() {
            if (this.f22915b < this.f22919f) {
                if (this.f22915b == 0) {
                    m509a();
                } else {
                    m502b(this.f22919f - this.f22915b);
                }
            }
        }

        /* renamed from: a */
        public void m508a(int i) {
            this.f22914a = i;
            int min = Math.min(i, 16384);
            if (this.f22915b == min) {
                return;
            }
            if (min < this.f22915b) {
                this.f22922i = Math.min(this.f22922i, min);
            }
            this.f22923j = true;
            this.f22915b = min;
            m503b();
        }

        /* renamed from: a */
        void m507a(int i, int i2, int i3) {
            if (i < i2) {
                this.f22920g.mo22508i(i3 | i);
                return;
            }
            this.f22920g.mo22508i(i3 | i2);
            int i4 = i - i2;
            while (true) {
                int i5 = i4;
                if (i5 < 128) {
                    this.f22920g.mo22508i(i5);
                    return;
                } else {
                    this.f22920g.mo22508i((i5 & 127) | 128);
                    i4 = i5 >>> 7;
                }
            }
        }

        /* renamed from: a */
        void m506a(C0008f c0008f) {
            if (!this.f22921h || C5517j.m381a().m379a(c0008f) >= c0008f.mo22462g()) {
                m507a(c0008f.mo22462g(), 127, 0);
                this.f22920g.mo22514b(c0008f);
                return;
            }
            C0005c c0005c = new C0005c();
            C5517j.m381a().m378a(c0008f, c0005c);
            C0008f m22547m = c0005c.m22547m();
            m507a(m22547m.mo22462g(), 127, 128);
            this.f22920g.mo22514b(m22547m);
        }

        /* renamed from: a */
        public void m505a(List<C5487b> list) {
            int i;
            int i2;
            if (this.f22923j) {
                if (this.f22922i < this.f22915b) {
                    m507a(this.f22922i, 31, 32);
                }
                this.f22923j = false;
                this.f22922i = Integer.MAX_VALUE;
                m507a(this.f22915b, 31, 32);
            }
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                C5487b c5487b = list.get(i3);
                C0008f mo22463f = c5487b.f22901g.mo22463f();
                C0008f c0008f = c5487b.f22902h;
                Integer num = C5488c.f22905b.get(mo22463f);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        if (C5449c.m671a(C5488c.f22904a[i - 1].f22902h, c0008f)) {
                            i2 = i;
                            i = i;
                        } else if (C5449c.m671a(C5488c.f22904a[i].f22902h, c0008f)) {
                            i2 = i + 1;
                        }
                    }
                    i2 = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                int i4 = i;
                int i5 = i2;
                if (i2 == -1) {
                    int i6 = this.f22917d + 1;
                    int length = this.f22916c.length;
                    while (true) {
                        i4 = i;
                        i5 = i2;
                        if (i6 >= length) {
                            break;
                        }
                        int i7 = i;
                        if (C5449c.m671a(this.f22916c[i6].f22901g, mo22463f)) {
                            if (C5449c.m671a(this.f22916c[i6].f22902h, c0008f)) {
                                i5 = (i6 - this.f22917d) + C5488c.f22904a.length;
                                i4 = i;
                                break;
                            }
                            i7 = i;
                            if (i == -1) {
                                i7 = (i6 - this.f22917d) + C5488c.f22904a.length;
                            }
                        }
                        i6++;
                        i = i7;
                    }
                }
                if (i5 != -1) {
                    m507a(i5, 127, 128);
                } else if (i4 == -1) {
                    this.f22920g.mo22508i(64);
                    m506a(mo22463f);
                    m506a(c0008f);
                    m504a(c5487b);
                } else if (!mo22463f.m22540a(C5487b.f22895a) || C5487b.f22900f.equals(mo22463f)) {
                    m507a(i4, 63, 64);
                    m506a(c0008f);
                    m504a(c5487b);
                } else {
                    m507a(i4, 15, 0);
                    m506a(c0008f);
                }
            }
        }
    }

    /* renamed from: a */
    static C0008f m527a(C0008f c0008f) {
        int mo22462g = c0008f.mo22462g();
        for (int i = 0; i < mo22462g; i++) {
            byte mo22473a = c0008f.mo22473a(i);
            if (mo22473a >= 65 && mo22473a <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + c0008f.mo22474a());
            }
        }
        return c0008f;
    }

    /* renamed from: a */
    private static Map<C0008f, Integer> m528a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f22904a.length);
        for (int i = 0; i < f22904a.length; i++) {
            if (!linkedHashMap.containsKey(f22904a[i].f22901g)) {
                linkedHashMap.put(f22904a[i].f22901g, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
