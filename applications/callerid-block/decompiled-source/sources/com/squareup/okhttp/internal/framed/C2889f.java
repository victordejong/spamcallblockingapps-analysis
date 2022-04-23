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
/* JADX INFO: Access modifiers changed from: package-private */
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

        /* JADX INFO: Access modifiers changed from: package-private */
        public C2890a(int i, Source source) {
            C2888e[] eVarArr = new C2888e[8];
            this.f12246e = eVarArr;
            this.f12247f = eVarArr.length - 1;
            this.f12244c = i;
            this.f12245d = i;
            this.f12243b = Okio.buffer(source);
        }

        /* renamed from: a */
        private void m1142a() {
            int i = this.f12245d;
            int i2 = this.f12249h;
            if (i >= i2) {
                return;
            }
            if (i == 0) {
                m1141b();
            } else {
                m1139d(i2 - i);
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
            int i4 = 0;
            if (i > 0) {
                int length = this.f12246e.length - 1;
                int i5 = i;
                while (true) {
                    i2 = this.f12247f;
                    if (length < i2 || i5 <= 0) {
                        break;
                    }
                    C2888e[] eVarArr = this.f12246e;
                    i5 -= eVarArr[length].f12239c;
                    this.f12249h -= eVarArr[length].f12239c;
                    this.f12248g--;
                    i4++;
                    length--;
                }
                C2888e[] eVarArr2 = this.f12246e;
                System.arraycopy(eVarArr2, i2 + 1, eVarArr2, i2 + 1 + i4, this.f12248g);
                this.f12247f += i4;
                i3 = i4;
            }
            return i3;
        }

        /* renamed from: f */
        private ByteString m1137f(int i) {
            return (m1134i(i) ? C2889f.f12240a[i] : this.f12246e[m1140c(i - C2889f.f12240a.length)]).f12237a;
        }

        /* renamed from: h */
        private void m1135h(int i, C2888e eVar) {
            this.f12242a.add(eVar);
            int i2 = eVar.f12239c;
            int i3 = i2;
            if (i != -1) {
                i3 = i2 - this.f12246e[m1140c(i)].f12239c;
            }
            int i4 = this.f12245d;
            if (i3 > i4) {
                m1141b();
                return;
            }
            int d = m1139d((this.f12249h + i3) - i4);
            if (i == -1) {
                int i5 = this.f12248g;
                C2888e[] eVarArr = this.f12246e;
                if (i5 + 1 > eVarArr.length) {
                    C2888e[] eVarArr2 = new C2888e[eVarArr.length * 2];
                    System.arraycopy(eVarArr, 0, eVarArr2, eVarArr.length, eVarArr.length);
                    this.f12247f = this.f12246e.length - 1;
                    this.f12246e = eVarArr2;
                }
                int i6 = this.f12247f;
                this.f12247f = i6 - 1;
                this.f12246e[i6] = eVar;
                this.f12248g++;
            } else {
                this.f12246e[i + m1140c(i) + d] = eVar;
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
            int c = m1140c(i - C2889f.f12240a.length);
            if (c >= 0) {
                C2888e[] eVarArr = this.f12246e;
                if (c <= eVarArr.length - 1) {
                    this.f12242a.add(eVarArr[c]);
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
            ByteString k = m1132k();
            C2889f.m1144d(k);
            m1135h(-1, new C2888e(k, m1132k()));
        }

        /* renamed from: q */
        private void m1126q(int i) {
            this.f12242a.add(new C2888e(m1137f(i), m1132k()));
        }

        /* renamed from: r */
        private void m1125r() {
            ByteString k = m1132k();
            C2889f.m1144d(k);
            this.f12242a.add(new C2888e(k, m1132k()));
        }

        /* renamed from: e */
        public List<C2888e> m1138e() {
            ArrayList arrayList = new ArrayList(this.f12242a);
            this.f12242a.clear();
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: g */
        public void m1136g(int i) {
            this.f12244c = i;
            this.f12245d = i;
            m1142a();
        }

        /* renamed from: k */
        ByteString m1132k() {
            int j = m1133j();
            boolean z = (j & 128) == 128;
            int n = m1129n(j, 127);
            return z ? ByteString.of(C2897h.m1088d().m1089c(this.f12243b.readByteArray(n))) : this.f12243b.readByteString(n);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: l */
        public void m1131l() {
            while (!this.f12243b.exhausted()) {
                int readByte = this.f12243b.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                } else if ((readByte & 128) == 128) {
                    m1130m(m1129n(readByte, 127) - 1);
                } else if (readByte == 64) {
                    m1127p();
                } else if ((readByte & 64) == 64) {
                    m1128o(m1129n(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int n = m1129n(readByte, 31);
                    this.f12245d = n;
                    if (n < 0 || n > this.f12244c) {
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
                int j = m1133j();
                if ((j & 128) == 0) {
                    return i2 + (j << i4);
                }
                i2 += (j & 127) << i4;
                i4 += 7;
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.f$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/f$b.class */
    static final class C2891b {

        /* renamed from: a */
        private final Buffer f12250a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C2891b(Buffer buffer) {
            this.f12250a = buffer;
        }

        /* renamed from: a */
        void m1124a(ByteString byteString) {
            m1122c(byteString.size(), 127, 0);
            this.f12250a.write(byteString);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
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
                i4 = i - i2;
                while (i4 >= 128) {
                    this.f12250a.writeByte(128 | (i4 & 127));
                    i4 >>>= 7;
                }
                buffer = this.f12250a;
            }
            buffer.writeByte(i4);
        }
    }

    static {
        C2888e eVar = new C2888e(C2888e.f12234h, "");
        ByteString byteString = C2888e.f12231e;
        C2888e eVar2 = new C2888e(byteString, "GET");
        C2888e eVar3 = new C2888e(byteString, "POST");
        ByteString byteString2 = C2888e.f12232f;
        C2888e eVar4 = new C2888e(byteString2, "/");
        C2888e eVar5 = new C2888e(byteString2, "/index.html");
        ByteString byteString3 = C2888e.f12233g;
        C2888e eVar6 = new C2888e(byteString3, "http");
        C2888e eVar7 = new C2888e(byteString3, "https");
        ByteString byteString4 = C2888e.f12230d;
        f12240a = new C2888e[]{eVar, eVar2, eVar3, eVar4, eVar5, eVar6, eVar7, new C2888e(byteString4, "200"), new C2888e(byteString4, "204"), new C2888e(byteString4, "206"), new C2888e(byteString4, "304"), new C2888e(byteString4, "400"), new C2888e(byteString4, "404"), new C2888e(byteString4, "500"), new C2888e("accept-charset", ""), new C2888e("accept-encoding", "gzip, deflate"), new C2888e("accept-language", ""), new C2888e("accept-ranges", ""), new C2888e("accept", ""), new C2888e("access-control-allow-origin", ""), new C2888e("age", ""), new C2888e("allow", ""), new C2888e("authorization", ""), new C2888e("cache-control", ""), new C2888e("content-disposition", ""), new C2888e("content-encoding", ""), new C2888e("content-language", ""), new C2888e("content-length", ""), new C2888e("content-location", ""), new C2888e("content-range", ""), new C2888e("content-type", ""), new C2888e("cookie", ""), new C2888e("date", ""), new C2888e("etag", ""), new C2888e("expect", ""), new C2888e("expires", ""), new C2888e("from", ""), new C2888e("host", ""), new C2888e("if-match", ""), new C2888e("if-modified-since", ""), new C2888e("if-none-match", ""), new C2888e("if-range", ""), new C2888e("if-unmodified-since", ""), new C2888e("last-modified", ""), new C2888e("link", ""), new C2888e("location", ""), new C2888e("max-forwards", ""), new C2888e("proxy-authenticate", ""), new C2888e("proxy-authorization", ""), new C2888e("range", ""), new C2888e("referer", ""), new C2888e("refresh", ""), new C2888e("retry-after", ""), new C2888e("server", ""), new C2888e("set-cookie", ""), new C2888e("strict-transport-security", ""), new C2888e("transfer-encoding", ""), new C2888e("user-agent", ""), new C2888e("vary", ""), new C2888e("via", ""), new C2888e("www-authenticate", "")};
    }

    /* JADX INFO: Access modifiers changed from: private */
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
            C2888e[] eVarArr = f12240a;
            if (i >= eVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(eVarArr[i].f12237a)) {
                linkedHashMap.put(eVarArr[i].f12237a, Integer.valueOf(i));
            }
            i++;
        }
    }
}
