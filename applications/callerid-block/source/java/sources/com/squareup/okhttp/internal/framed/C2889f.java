package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
/* renamed from: com.squareup.okhttp.internal.framed.f */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/f.class */
public final class C2889f {

    /* renamed from: a */
    private static final C2888e[] f12240a;

    /* renamed from: b */
    private static final Map<ByteString, Integer> f12241b = m1143e();

    /* renamed from: com.squareup.okhttp.internal.framed.f$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/f$a.class */
    static final class C2890a {

        /* renamed from: b */
        private final BufferedSource f12243b;

        /* renamed from: c */
        private int f12244c;

        /* renamed from: d */
        private int f12245d;

        /* renamed from: e */
        C2888e[] f12246e;

        /* renamed from: f */
        int f12247f;

        /* renamed from: a */
        private final List<C2888e> f12242a = new ArrayList();

        /* renamed from: g */
        int f12248g = 0;

        /* renamed from: h */
        int f12249h = 0;

        public C2890a(int i, Source source) {
            C2888e[] c2888eArr = new C2888e[8];
            this.f12246e = c2888eArr;
            this.f12247f = c2888eArr.length - 1;
            this.f12244c = i;
            this.f12245d = i;
            this.f12243b = Okio.buffer(source);
        }

        /* renamed from: a */
        private void m1142a() {
            int i = this.f12245d;
            int i2 = this.f12249h;
            if (i < i2) {
                if (i == 0) {
                    m1141b();
                } else {
                    m1139d(i2 - i);
                }
            }
        }

        /* renamed from: b */
        private void m1141b() {
            this.f12242a.clear();
            Arrays.fill(this.f12246e, (Object) null);
            this.f12247f = this.f12246e.length - 1;
            this.f12248g = 0;
            this.f12249h = 0;
        }

        /* renamed from: c */
        private int m1140c(int i) {
            return this.f12247f + 1 + i;
        }

        /* renamed from: d */
        private int m1139d(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.f12246e.length - 1;
                int i4 = i;
                int i5 = 0;
                while (true) {
                    i2 = this.f12247f;
                    if (length < i2 || i4 <= 0) {
                        break;
                    }
                    C2888e[] c2888eArr = this.f12246e;
                    i4 -= c2888eArr[length].f12239c;
                    this.f12249h -= c2888eArr[length].f12239c;
                    this.f12248g--;
                    i5++;
                    length--;
                }
                C2888e[] c2888eArr2 = this.f12246e;
                System.arraycopy(c2888eArr2, i2 + 1, c2888eArr2, i2 + 1 + i5, this.f12248g);
                this.f12247f += i5;
                i3 = i5;
            }
            return i3;
        }

        /* renamed from: f */
        private ByteString m1137f(int i) {
            return (m1134i(i) ? C2889f.f12240a[i] : this.f12246e[m1140c(i - C2889f.f12240a.length)]).f12237a;
        }

        /* renamed from: h */
        private void m1135h(int i, C2888e c2888e) {
            this.f12242a.add(c2888e);
            int i2 = c2888e.f12239c;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f12246e[m1140c(i)].f12239c;
            }
            int i4 = this.f12245d;
            if (i3 > i4) {
                m1141b();
                return;
            }
            int m1139d = m1139d((this.f12249h + i3) - i4);
            if (i == -1) {
                int i5 = this.f12248g;
                C2888e[] c2888eArr = this.f12246e;
                if (i5 + 1 > c2888eArr.length) {
                    C2888e[] c2888eArr2 = new C2888e[c2888eArr.length * 2];
                    System.arraycopy(c2888eArr, 0, c2888eArr2, c2888eArr.length, c2888eArr.length);
                    this.f12247f = this.f12246e.length - 1;
                    this.f12246e = c2888eArr2;
                }
                int i6 = this.f12247f;
                this.f12247f = i6 - 1;
                this.f12246e[i6] = c2888e;
                this.f12248g++;
            } else {
                this.f12246e[i + m1140c(i) + m1139d] = c2888e;
            }
            this.f12249h += i3;
        }

        /* renamed from: i */
        private boolean m1134i(int i) {
            boolean z = true;
            if (i < 0 || i > C2889f.f12240a.length - 1) {
                z = false;
            }
            return z;
        }

        /* renamed from: j */
        private int m1133j() {
            return this.f12243b.readByte() & 255;
        }

        /* renamed from: m */
        private void m1130m(int i) {
            if (m1134i(i)) {
                this.f12242a.add(C2889f.f12240a[i]);
                return;
            }
            int m1140c = m1140c(i - C2889f.f12240a.length);
            if (m1140c >= 0) {
                C2888e[] c2888eArr = this.f12246e;
                if (m1140c <= c2888eArr.length - 1) {
                    this.f12242a.add(c2888eArr[m1140c]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        /* renamed from: o */
        private void m1128o(int i) {
            m1135h(-1, new C2888e(m1137f(i), m1132k()));
        }

        /* renamed from: p */
        private void m1127p() {
            ByteString m1132k = m1132k();
            C2889f.m1144d(m1132k);
            m1135h(-1, new C2888e(m1132k, m1132k()));
        }

        /* renamed from: q */
        private void m1126q(int i) {
            this.f12242a.add(new C2888e(m1137f(i), m1132k()));
        }

        /* renamed from: r */
        private void m1125r() {
            ByteString m1132k = m1132k();
            C2889f.m1144d(m1132k);
            this.f12242a.add(new C2888e(m1132k, m1132k()));
        }

        /* renamed from: e */
        public List<C2888e> m1138e() {
            ArrayList arrayList = new ArrayList(this.f12242a);
            this.f12242a.clear();
            return arrayList;
        }

        /* renamed from: g */
        public void m1136g(int i) {
            this.f12244c = i;
            this.f12245d = i;
            m1142a();
        }

        /* renamed from: k */
        ByteString m1132k() {
            int m1133j = m1133j();
            boolean z = (m1133j & 128) == 128;
            int m1129n = m1129n(m1133j, 127);
            return z ? ByteString.of(C2897h.m1088d().m1089c(this.f12243b.readByteArray(m1129n))) : this.f12243b.readByteString(m1129n);
        }

        /* renamed from: l */
        public void m1131l() {
            while (!this.f12243b.exhausted()) {
                int readByte = this.f12243b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    m1130m(m1129n(readByte, 127) - 1);
                } else if (readByte == 64) {
                    m1127p();
                } else if ((readByte & 64) == 64) {
                    m1128o(m1129n(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int m1129n = m1129n(readByte, 31);
                    this.f12245d = m1129n;
                    if (m1129n < 0 || m1129n > this.f12244c) {
                        throw new IOException("Invalid dynamic table size update " + this.f12245d);
                    }
                    m1142a();
                } else if (readByte == 16 || readByte == 0) {
                    m1125r();
                } else {
                    m1126q(m1129n(readByte, 15) - 1);
                }
            }
        }

        /* renamed from: n */
        int m1129n(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int m1133j = m1133j();
                if ((m1133j & 128) == 0) {
                    return i2 + (m1133j << i4);
                }
                i2 += (m1133j & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.f$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/f$b.class */
    static final class C2891b {

        /* renamed from: a */
        private final Buffer f12250a;

        public C2891b(Buffer buffer) {
            this.f12250a = buffer;
        }

        /* renamed from: a */
        void m1124a(ByteString byteString) {
            m1122c(byteString.size(), 127, 0);
            this.f12250a.write(byteString);
        }

        /* renamed from: b */
        public void m1123b(List<C2888e> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString asciiLowercase = list.get(i).f12237a.toAsciiLowercase();
                Integer num = (Integer) C2889f.f12241b.get(asciiLowercase);
                if (num != null) {
                    m1122c(num.intValue() + 1, 15, 0);
                } else {
                    this.f12250a.writeByte(0);
                    m1124a(asciiLowercase);
                }
                m1124a(list.get(i).f12238b);
            }
        }

        /* renamed from: c */
        void m1122c(int i, int i2, int i3) {
            int i4;
            Buffer buffer;
            if (i < i2) {
                buffer = this.f12250a;
                i4 = i | i3;
            } else {
                this.f12250a.writeByte(i3 | i2);
                int i5 = i - i2;
                while (true) {
                    i4 = i5;
                    if (i4 < 128) {
                        break;
                    }
                    this.f12250a.writeByte(128 | (i4 & 127));
                    i5 = i4 >>> 7;
                }
                buffer = this.f12250a;
            }
            buffer.writeByte(i4);
        }
    }

    static {
        C2888e c2888e = new C2888e(C2888e.f12234h, "");
        ByteString byteString = C2888e.f12231e;
        C2888e c2888e2 = new C2888e(byteString, "GET");
        C2888e c2888e3 = new C2888e(byteString, "POST");
        ByteString byteString2 = C2888e.f12232f;
        C2888e c2888e4 = new C2888e(byteString2, "/");
        C2888e c2888e5 = new C2888e(byteString2, "/index.html");
        ByteString byteString3 = C2888e.f12233g;
        C2888e c2888e6 = new C2888e(byteString3, "http");
        C2888e c2888e7 = new C2888e(byteString3, "https");
        ByteString byteString4 = C2888e.f12230d;
        f12240a = new C2888e[]{c2888e, c2888e2, c2888e3, c2888e4, c2888e5, c2888e6, c2888e7, new C2888e(byteString4, "200"), new C2888e(byteString4, "204"), new C2888e(byteString4, "206"), new C2888e(byteString4, "304"), new C2888e(byteString4, "400"), new C2888e(byteString4, "404"), new C2888e(byteString4, "500"), new C2888e("accept-charset", ""), new C2888e("accept-encoding", "gzip, deflate"), new C2888e("accept-language", ""), new C2888e("accept-ranges", ""), new C2888e("accept", ""), new C2888e("access-control-allow-origin", ""), new C2888e("age", ""), new C2888e("allow", ""), new C2888e("authorization", ""), new C2888e("cache-control", ""), new C2888e("content-disposition", ""), new C2888e("content-encoding", ""), new C2888e("content-language", ""), new C2888e("content-length", ""), new C2888e("content-location", ""), new C2888e("content-range", ""), new C2888e("content-type", ""), new C2888e("cookie", ""), new C2888e("date", ""), new C2888e("etag", ""), new C2888e("expect", ""), new C2888e("expires", ""), new C2888e("from", ""), new C2888e("host", ""), new C2888e("if-match", ""), new C2888e("if-modified-since", ""), new C2888e("if-none-match", ""), new C2888e("if-range", ""), new C2888e("if-unmodified-since", ""), new C2888e("last-modified", ""), new C2888e("link", ""), new C2888e("location", ""), new C2888e("max-forwards", ""), new C2888e("proxy-authenticate", ""), new C2888e("proxy-authorization", ""), new C2888e("range", ""), new C2888e("referer", ""), new C2888e("refresh", ""), new C2888e("retry-after", ""), new C2888e("server", ""), new C2888e("set-cookie", ""), new C2888e("strict-transport-security", ""), new C2888e("transfer-encoding", ""), new C2888e("user-agent", ""), new C2888e("vary", ""), new C2888e("via", ""), new C2888e("www-authenticate", "")};
    }

    /* renamed from: d */
    public static ByteString m1144d(ByteString byteString) {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    /* renamed from: e */
    private static Map<ByteString, Integer> m1143e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f12240a.length);
        int i = 0;
        while (true) {
            C2888e[] c2888eArr = f12240a;
            if (i < c2888eArr.length) {
                if (!linkedHashMap.containsKey(c2888eArr[i].f12237a)) {
                    linkedHashMap.put(c2888eArr[i].f12237a, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }
}
