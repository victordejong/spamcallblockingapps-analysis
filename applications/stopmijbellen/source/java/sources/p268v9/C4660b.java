package p268v9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.logging.Logger;
import p011aa.AbstractC0055h;
import p011aa.AbstractC0074y;
import p011aa.C0053f;
import p011aa.C0056i;
import p011aa.C0062o;
import p011aa.C0069t;
import p214q9.C4171c;
import p268v9.C4689q;
/* renamed from: v9.b */
/* loaded from: classes2-dex2jar.jar:v9/b.class */
public final class C4660b {

    /* renamed from: a */
    public static final C4659a[] f14366a;

    /* renamed from: b */
    public static final Map<C0056i, Integer> f14367b;

    /* renamed from: v9.b$a */
    /* loaded from: classes2-dex2jar.jar:v9/b$a.class */
    public static final class C4661a {

        /* renamed from: b */
        public final AbstractC0055h f14369b;

        /* renamed from: c */
        public final int f14370c;

        /* renamed from: d */
        public int f14371d;

        /* renamed from: a */
        public final List<C4659a> f14368a = new ArrayList();

        /* renamed from: e */
        public C4659a[] f14372e = new C4659a[8];

        /* renamed from: f */
        public int f14373f = 7;

        /* renamed from: g */
        public int f14374g = 0;

        /* renamed from: h */
        public int f14375h = 0;

        public C4661a(int i, AbstractC0074y abstractC0074y) {
            this.f14370c = i;
            this.f14371d = i;
            Logger logger = C0062o.f138a;
            this.f14369b = new C0069t(abstractC0074y);
        }

        /* renamed from: a */
        public final void m672a() {
            Arrays.fill(this.f14372e, (Object) null);
            this.f14373f = this.f14372e.length - 1;
            this.f14374g = 0;
            this.f14375h = 0;
        }

        /* renamed from: b */
        public final int m671b(int i) {
            return this.f14373f + 1 + i;
        }

        /* renamed from: c */
        public final int m670c(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f14372e.length - 1;
                int i4 = i;
                int i5 = 0;
                while (true) {
                    i2 = this.f14373f;
                    if (length < i2 || i4 <= 0) {
                        break;
                    }
                    C4659a[] c4659aArr = this.f14372e;
                    i4 -= c4659aArr[length].f14365c;
                    this.f14375h -= c4659aArr[length].f14365c;
                    this.f14374g--;
                    i5++;
                    length--;
                }
                C4659a[] c4659aArr2 = this.f14372e;
                System.arraycopy(c4659aArr2, i2 + 1, c4659aArr2, i2 + 1 + i5, this.f14374g);
                this.f14373f += i5;
                i3 = i5;
            }
            return i3;
        }

        /* renamed from: d */
        public final C0056i m669d(int i) throws IOException {
            if (i >= 0 && i <= C4660b.f14366a.length - 1) {
                return C4660b.f14366a[i].f14363a;
            }
            int m671b = m671b(i - C4660b.f14366a.length);
            if (m671b >= 0) {
                C4659a[] c4659aArr = this.f14372e;
                if (m671b < c4659aArr.length) {
                    return c4659aArr[m671b].f14363a;
                }
            }
            StringBuilder m8752j = C0082b.m8752j("Header index too large ");
            m8752j.append(i + 1);
            throw new IOException(m8752j.toString());
        }

        /* renamed from: e */
        public final void m668e(int i, C4659a c4659a) {
            this.f14368a.add(c4659a);
            int i2 = c4659a.f14365c;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f14372e[(this.f14373f + 1) + i].f14365c;
            }
            int i4 = this.f14371d;
            if (i3 > i4) {
                m672a();
                return;
            }
            int m670c = m670c((this.f14375h + i3) - i4);
            if (i == -1) {
                int i5 = this.f14374g;
                C4659a[] c4659aArr = this.f14372e;
                if (i5 + 1 > c4659aArr.length) {
                    C4659a[] c4659aArr2 = new C4659a[c4659aArr.length * 2];
                    System.arraycopy(c4659aArr, 0, c4659aArr2, c4659aArr.length, c4659aArr.length);
                    this.f14373f = this.f14372e.length - 1;
                    this.f14372e = c4659aArr2;
                }
                int i6 = this.f14373f;
                this.f14373f = i6 - 1;
                this.f14372e[i6] = c4659a;
                this.f14374g++;
            } else {
                this.f14372e[this.f14373f + 1 + i + m670c + i] = c4659a;
            }
            this.f14375h += i3;
        }

        /* renamed from: f */
        public C0056i m667f() throws IOException {
            int i;
            C4689q.C4690a c4690a;
            int readByte = this.f14369b.readByte() & 255;
            int i2 = 0;
            boolean z = (readByte & 128) == 128;
            int m666g = m666g(readByte, 127);
            if (z) {
                C4689q c4689q = C4689q.f14497d;
                byte[] mo8797x = this.f14369b.mo8797x(m666g);
                Objects.requireNonNull(c4689q);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                C4689q.C4690a c4690a2 = c4689q.f14498a;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    c4690a = c4690a2;
                    if (i2 < mo8797x.length) {
                        i3 = (i3 << 8) | (mo8797x[i2] & 255);
                        i4 += 8;
                        while (i4 >= 8) {
                            int i5 = i4 - 8;
                            c4690a2 = c4690a2.f14499a[(i3 >>> i5) & 255];
                            if (c4690a2.f14499a == null) {
                                byteArrayOutputStream.write(c4690a2.f14500b);
                                i4 -= c4690a2.f14501c;
                                c4690a2 = c4689q.f14498a;
                            } else {
                                i4 = i5;
                            }
                        }
                        i2++;
                    }
                }
                while (i > 0) {
                    C4689q.C4690a c4690a3 = c4690a.f14499a[(i3 << (8 - i)) & 255];
                    if (c4690a3.f14499a != null || c4690a3.f14501c > i) {
                        break;
                    }
                    byteArrayOutputStream.write(c4690a3.f14500b);
                    i -= c4690a3.f14501c;
                    c4690a = c4689q.f14498a;
                }
                return C0056i.m8834i(byteArrayOutputStream.toByteArray());
            }
            return this.f14369b.mo8805i(m666g);
        }

        /* renamed from: g */
        public int m666g(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = this.f14369b.readByte() & 255;
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* renamed from: v9.b$b */
    /* loaded from: classes2-dex2jar.jar:v9/b$b.class */
    public static final class C4662b {

        /* renamed from: a */
        public final C0053f f14376a;

        /* renamed from: c */
        public boolean f14378c;

        /* renamed from: b */
        public int f14377b = Api.BaseClientBuilder.API_PRIORITY_OTHER;

        /* renamed from: e */
        public C4659a[] f14380e = new C4659a[8];

        /* renamed from: f */
        public int f14381f = 7;

        /* renamed from: g */
        public int f14382g = 0;

        /* renamed from: h */
        public int f14383h = 0;

        /* renamed from: d */
        public int f14379d = 4096;

        public C4662b(C0053f c0053f) {
            this.f14376a = c0053f;
        }

        /* renamed from: a */
        public final void m665a() {
            Arrays.fill(this.f14380e, (Object) null);
            this.f14381f = this.f14380e.length - 1;
            this.f14382g = 0;
            this.f14383h = 0;
        }

        /* renamed from: b */
        public final int m664b(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f14380e.length - 1;
                int i4 = i;
                int i5 = 0;
                while (true) {
                    i2 = this.f14381f;
                    if (length < i2 || i4 <= 0) {
                        break;
                    }
                    C4659a[] c4659aArr = this.f14380e;
                    i4 -= c4659aArr[length].f14365c;
                    this.f14383h -= c4659aArr[length].f14365c;
                    this.f14382g--;
                    i5++;
                    length--;
                }
                C4659a[] c4659aArr2 = this.f14380e;
                System.arraycopy(c4659aArr2, i2 + 1, c4659aArr2, i2 + 1 + i5, this.f14382g);
                C4659a[] c4659aArr3 = this.f14380e;
                int i6 = this.f14381f;
                Arrays.fill(c4659aArr3, i6 + 1, i6 + 1 + i5, (Object) null);
                this.f14381f += i5;
                i3 = i5;
            }
            return i3;
        }

        /* renamed from: c */
        public final void m663c(C4659a c4659a) {
            int i = c4659a.f14365c;
            int i2 = this.f14379d;
            if (i > i2) {
                m665a();
                return;
            }
            m664b((this.f14383h + i) - i2);
            int i3 = this.f14382g;
            C4659a[] c4659aArr = this.f14380e;
            if (i3 + 1 > c4659aArr.length) {
                C4659a[] c4659aArr2 = new C4659a[c4659aArr.length * 2];
                System.arraycopy(c4659aArr, 0, c4659aArr2, c4659aArr.length, c4659aArr.length);
                this.f14381f = this.f14380e.length - 1;
                this.f14380e = c4659aArr2;
            }
            int i4 = this.f14381f;
            this.f14381f = i4 - 1;
            this.f14380e[i4] = c4659a;
            this.f14382g++;
            this.f14383h += i;
        }

        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        /* JADX WARN: Type inference failed for: r0v48, types: [long] */
        /* renamed from: d */
        public void m662d(C0056i c0056i) throws IOException {
            Objects.requireNonNull(C4689q.f14497d);
            int i = 0;
            byte b = 0;
            for (int i2 = 0; i2 < c0056i.mo8785l(); i2++) {
                b += C4689q.f14496c[c0056i.mo8789g(i2) & 255];
            }
            if (((int) ((b + 7) >> 3)) >= c0056i.mo8785l()) {
                m660f(c0056i.mo8785l(), 127, 0);
                this.f14376a.m8858L(c0056i);
                return;
            }
            C0053f c0053f = new C0053f();
            Objects.requireNonNull(C4689q.f14497d);
            byte b2 = 0;
            byte b3 = 0;
            while (i < c0056i.mo8785l()) {
                int mo8789g = c0056i.mo8789g(i) & 255;
                int i3 = C4689q.f14495b[mo8789g];
                byte b4 = C4689q.f14496c[mo8789g];
                b3 = (b3 << b4) | i3;
                int i4 = b2 + b4;
                while (i4 >= 8) {
                    i4 -= 8;
                    c0053f.mo8815w((int) (b3 >> i4));
                }
                i++;
                b2 = i4;
            }
            if (b2 > 0) {
                c0053f.mo8815w((int) ((b3 << (8 - b2)) | (255 >>> b2)));
            }
            C0056i m8840s = c0053f.m8840s();
            m660f(m8840s.f123a.length, 127, 128);
            this.f14376a.m8858L(m8840s);
        }

        /* renamed from: e */
        public void m661e(List<C4659a> list) throws IOException {
            int i;
            int i2;
            if (this.f14378c) {
                int i3 = this.f14377b;
                if (i3 < this.f14379d) {
                    m660f(i3, 31, 32);
                }
                this.f14378c = false;
                this.f14377b = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                m660f(this.f14379d, 31, 32);
            }
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                C4659a c4659a = list.get(i4);
                C0056i mo8783n = c4659a.f14363a.mo8783n();
                C0056i c0056i = c4659a.f14364b;
                Integer num = C4660b.f14367b.get(mo8783n);
                if (num != null) {
                    i = num.intValue() + 1;
                    if (i > 1 && i < 8) {
                        C4659a[] c4659aArr = C4660b.f14366a;
                        if (C4171c.m1325k(c4659aArr[i - 1].f14364b, c0056i)) {
                            i2 = i;
                        } else if (C4171c.m1325k(c4659aArr[i].f14364b, c0056i)) {
                            i2 = i;
                            i++;
                        }
                    }
                    i2 = i;
                    i = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                int i5 = i;
                int i6 = i2;
                if (i == -1) {
                    int i7 = this.f14381f + 1;
                    int length = this.f14380e.length;
                    while (true) {
                        i5 = i;
                        i6 = i2;
                        if (i7 >= length) {
                            break;
                        }
                        int i8 = i2;
                        if (C4171c.m1325k(this.f14380e[i7].f14363a, mo8783n)) {
                            if (C4171c.m1325k(this.f14380e[i7].f14364b, c0056i)) {
                                i5 = C4660b.f14366a.length + (i7 - this.f14381f);
                                i6 = i2;
                                break;
                            }
                            i8 = i2;
                            if (i2 == -1) {
                                i8 = (i7 - this.f14381f) + C4660b.f14366a.length;
                            }
                        }
                        i7++;
                        i2 = i8;
                    }
                }
                if (i5 != -1) {
                    m660f(i5, 127, 128);
                } else if (i6 == -1) {
                    this.f14376a.m8854Y(64);
                    m662d(mo8783n);
                    m662d(c0056i);
                    m663c(c4659a);
                } else {
                    C0056i c0056i2 = C4659a.f14357d;
                    Objects.requireNonNull(mo8783n);
                    if (!mo8783n.mo8787j(0, c0056i2, 0, c0056i2.mo8785l()) || C4659a.f14362i.equals(mo8783n)) {
                        m660f(i6, 63, 64);
                        m662d(c0056i);
                        m663c(c4659a);
                    } else {
                        m660f(i6, 15, 0);
                        m662d(c0056i);
                    }
                }
            }
        }

        /* renamed from: f */
        public void m660f(int i, int i2, int i3) {
            if (i < i2) {
                this.f14376a.m8854Y(i | i3);
                return;
            }
            this.f14376a.m8854Y(i3 | i2);
            int i4 = i - i2;
            while (true) {
                int i5 = i4;
                if (i5 < 128) {
                    this.f14376a.m8854Y(i5);
                    return;
                } else {
                    this.f14376a.m8854Y(128 | (i5 & 127));
                    i4 = i5 >>> 7;
                }
            }
        }
    }

    static {
        int i = 0;
        C0056i c0056i = C4659a.f14359f;
        C0056i c0056i2 = C4659a.f14360g;
        C0056i c0056i3 = C4659a.f14361h;
        C0056i c0056i4 = C4659a.f14358e;
        C4659a[] c4659aArr = {new C4659a(C4659a.f14362i, ""), new C4659a(c0056i, "GET"), new C4659a(c0056i, "POST"), new C4659a(c0056i2, "/"), new C4659a(c0056i2, "/index.html"), new C4659a(c0056i3, "http"), new C4659a(c0056i3, "https"), new C4659a(c0056i4, "200"), new C4659a(c0056i4, "204"), new C4659a(c0056i4, "206"), new C4659a(c0056i4, "304"), new C4659a(c0056i4, "400"), new C4659a(c0056i4, "404"), new C4659a(c0056i4, "500"), new C4659a("accept-charset", ""), new C4659a("accept-encoding", "gzip, deflate"), new C4659a("accept-language", ""), new C4659a("accept-ranges", ""), new C4659a("accept", ""), new C4659a("access-control-allow-origin", ""), new C4659a("age", ""), new C4659a("allow", ""), new C4659a("authorization", ""), new C4659a("cache-control", ""), new C4659a("content-disposition", ""), new C4659a("content-encoding", ""), new C4659a("content-language", ""), new C4659a("content-length", ""), new C4659a("content-location", ""), new C4659a("content-range", ""), new C4659a("content-type", ""), new C4659a("cookie", ""), new C4659a("date", ""), new C4659a("etag", ""), new C4659a("expect", ""), new C4659a("expires", ""), new C4659a("from", ""), new C4659a("host", ""), new C4659a("if-match", ""), new C4659a("if-modified-since", ""), new C4659a("if-none-match", ""), new C4659a("if-range", ""), new C4659a("if-unmodified-since", ""), new C4659a("last-modified", ""), new C4659a("link", ""), new C4659a("location", ""), new C4659a("max-forwards", ""), new C4659a("proxy-authenticate", ""), new C4659a("proxy-authorization", ""), new C4659a("range", ""), new C4659a("referer", ""), new C4659a("refresh", ""), new C4659a("retry-after", ""), new C4659a("server", ""), new C4659a("set-cookie", ""), new C4659a("strict-transport-security", ""), new C4659a("transfer-encoding", ""), new C4659a("user-agent", ""), new C4659a("vary", ""), new C4659a("via", ""), new C4659a("www-authenticate", "")};
        f14366a = c4659aArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(c4659aArr.length);
        while (true) {
            C4659a[] c4659aArr2 = f14366a;
            if (i >= c4659aArr2.length) {
                f14367b = Collections.unmodifiableMap(linkedHashMap);
                return;
            }
            if (!linkedHashMap.containsKey(c4659aArr2[i].f14363a)) {
                linkedHashMap.put(c4659aArr2[i].f14363a, Integer.valueOf(i));
            }
            i++;
        }
    }

    /* renamed from: a */
    public static C0056i m673a(C0056i c0056i) throws IOException {
        int mo8785l = c0056i.mo8785l();
        for (int i = 0; i < mo8785l; i++) {
            byte mo8789g = c0056i.mo8789g(i);
            if (mo8789g >= 65 && mo8789g <= 90) {
                StringBuilder m8752j = C0082b.m8752j("PROTOCOL_ERROR response malformed: mixed case name: ");
                m8752j.append(c0056i.mo8782o());
                throw new IOException(m8752j.toString());
            }
        }
        return c0056i;
    }
}
