package p610i;

import com.google.common.collect.MapMakerInternalMap;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;
import okio.SegmentedByteString;
/* renamed from: i.c */
/* loaded from: classes2-dex2jar.jar:i/c.class */
public final class C10260c implements AbstractC10264e, AbstractC10263d, Cloneable, ByteChannel {

    /* renamed from: c */
    public static final byte[] f37887c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a */
    public C10278n f37888a;

    /* renamed from: b */
    public long f37889b;

    /* renamed from: i.c$a */
    /* loaded from: classes2-dex2jar.jar:i/c$a.class */
    public class C10261a extends OutputStream {
        public C10261a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
        }

        public String toString() {
            return C10260c.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            C10260c.this.writeByte((int) ((byte) i));
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            C10260c.this.write(bArr, i, i2);
        }
    }

    /* renamed from: i.c$b */
    /* loaded from: classes2-dex2jar.jar:i/c$b.class */
    public class C10262b extends InputStream {
        public C10262b() {
        }

        @Override // java.io.InputStream
        public int available() {
            return (int) Math.min(C10260c.this.f37889b, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.InputStream
        public int read() {
            C10260c cVar = C10260c.this;
            if (cVar.f37889b > 0) {
                return cVar.readByte() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            return C10260c.this.read(bArr, i, i2);
        }

        public String toString() {
            return C10260c.this + ".inputStream()";
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: G0 */
    public byte[] mo733G0() {
        try {
            return mo716f(this.f37889b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: I1 */
    public String mo732I1() throws EOFException {
        return mo721c(Long.MAX_VALUE);
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: L1 */
    public int mo731L1() {
        return C10284s.m694a(readInt());
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: M0 */
    public boolean mo730M0() {
        return this.f37889b == 0;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: Q1 */
    public short mo729Q1() {
        return C10284s.m691a(readShort());
    }

    @Override // p610i.AbstractC10264e, p610i.AbstractC10263d
    /* renamed from: W */
    public C10260c mo728W() {
        return this;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public long mo727a(byte b) {
        return m782a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5, types: [long] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m782a(byte r10, long r11, long r13) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.m782a(byte, long, long):long");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: a */
    public long mo739a(AbstractC10281q qVar) throws IOException {
        if (qVar != null) {
            long j = 0;
            while (true) {
                long b = qVar.mo704b(this, 8192L);
                if (b == -1) {
                    return j;
                }
                j += b;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p610i.C10260c m778a(p610i.C10260c r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.m778a(i.c, long, long):i.c");
    }

    /* renamed from: a */
    public C10260c m777a(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            while (i < i2) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    C10278n b = m775b(1);
                    byte[] bArr = b.f37917a;
                    int i3 = b.f37919c - i;
                    int min = Math.min(i2, 8192 - i3);
                    i++;
                    bArr[i + i3] = (byte) charAt2;
                    while (i < min && (charAt = str.charAt(i)) < 128) {
                        bArr[i + i3] = (byte) charAt;
                        i++;
                    }
                    int i4 = b.f37919c;
                    int i5 = (i3 + i) - i4;
                    b.f37919c = i4 + i5;
                    this.f37889b += i5;
                } else {
                    if (charAt2 < 2048) {
                        writeByte((charAt2 >> 6) | 192);
                        writeByte((charAt2 & '?') | 128);
                    } else if (charAt2 < 55296 || charAt2 > 57343) {
                        writeByte((charAt2 >> '\f') | 224);
                        writeByte(((charAt2 >> 6) & 63) | 128);
                        writeByte((charAt2 & '?') | 128);
                    } else {
                        int i6 = i + 1;
                        char charAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                        if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                            writeByte(63);
                            i = i6;
                        } else {
                            int i7 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + MapMakerInternalMap.MAX_SEGMENTS;
                            writeByte((i7 >> 18) | 240);
                            writeByte(((i7 >> 12) & 63) | 128);
                            writeByte(((i7 >> 6) & 63) | 128);
                            writeByte((i7 & 63) | 128);
                            i += 2;
                        }
                    }
                    i++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
    }

    /* renamed from: a */
    public C10260c m776a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(C10284s.f37930a)) {
            m777a(str, i, i2);
            return this;
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            write(bytes, 0, bytes.length);
            return this;
        }
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: a */
    public C10260c mo738a(ByteString byteString) {
        if (byteString != null) {
            byteString.write(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: a */
    public String m780a(long j, Charset charset) throws EOFException {
        C10284s.m693a(this.f37889b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        } else if (j == 0) {
            return "";
        } else {
            C10278n nVar = this.f37888a;
            if (nVar.f37918b + j > nVar.f37919c) {
                return new String(mo716f(j), charset);
            }
            String str = new String(nVar.f37917a, nVar.f37918b, (int) j, charset);
            int i = (int) (nVar.f37918b + j);
            nVar.f37918b = i;
            this.f37889b -= j;
            if (i == nVar.f37919c) {
                this.f37888a = nVar.m710b();
                C10279o.m707a(nVar);
            }
            return str;
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public String mo722a(Charset charset) {
        try {
            return m780a(this.f37889b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public final ByteString m781a(int i) {
        return i == 0 ? ByteString.EMPTY : new SegmentedByteString(this, i);
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public ByteString mo725a(long j) throws EOFException {
        return new ByteString(mo716f(j));
    }

    @Override // p610i.AbstractC10280p
    /* renamed from: a */
    public void mo706a(C10260c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (cVar != this) {
            C10284s.m693a(cVar.f37889b, 0L, j);
            while (j > 0) {
                C10278n nVar = cVar.f37888a;
                if (j < nVar.f37919c - nVar.f37918b) {
                    C10278n nVar2 = this.f37888a;
                    C10278n nVar3 = nVar2 != null ? nVar2.f37923g : null;
                    if (nVar3 != null && nVar3.f37921e) {
                        if ((nVar3.f37919c + j) - (nVar3.f37920d ? 0 : nVar3.f37918b) <= 8192) {
                            cVar.f37888a.m711a(nVar3, (int) j);
                            cVar.f37889b -= j;
                            this.f37889b += j;
                            return;
                        }
                    }
                    cVar.f37888a = cVar.f37888a.m713a((int) j);
                }
                C10278n nVar4 = cVar.f37888a;
                long j2 = nVar4.f37919c - nVar4.f37918b;
                cVar.f37888a = nVar4.m710b();
                C10278n nVar5 = this.f37888a;
                if (nVar5 == null) {
                    this.f37888a = nVar4;
                    nVar4.f37923g = nVar4;
                    nVar4.f37922f = nVar4;
                } else {
                    nVar5.f37923g.m712a(nVar4);
                    nVar4.m714a();
                }
                cVar.f37889b -= j2;
                this.f37889b += j2;
                j -= j2;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public boolean mo724a(long j, ByteString byteString) {
        return m779a(j, byteString, 0, byteString.size());
    }

    /* renamed from: a */
    public boolean m779a(long j, ByteString byteString, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f37889b - j < i2 || byteString.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (m772d(i3 + j) != byteString.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p610i.AbstractC10281q
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo704b(p610i.C10260c r6, long r7) {
        /*
            r5 = this;
            r0 = r6
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            r0 = r5
            long r0 = r0.f37889b
            r9 = r0
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = -1
            return r0
        L_0x001b:
            r0 = r7
            r11 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0029
            r0 = r9
            r11 = r0
        L_0x0029:
            r0 = r6
            r1 = r5
            r2 = r11
            r0.mo706a(r1, r2)
            r0 = r11
            return r0
        L_0x0033:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            java.lang.String r1 = "byteCount < 0: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r2 = r6
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0055:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.mo704b(i.c, long):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
        if (r0.f37921e == false) goto L_0x0044;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p610i.C10278n m775b(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = 1
            if (r0 < r1) goto L_0x0050
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L_0x0050
            r0 = r3
            i.n r0 = r0.f37888a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x002a
            i.n r0 = p610i.C10279o.m708a()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.f37888a = r1
            r0 = r5
            r1 = r5
            r0.f37923g = r1
            r0 = r5
            r1 = r5
            r0.f37922f = r1
            r0 = r5
            return r0
        L_0x002a:
            r0 = r5
            i.n r0 = r0.f37923g
            r6 = r0
            r0 = r6
            int r0 = r0.f37919c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L_0x0044
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.f37921e
            if (r0 != 0) goto L_0x004e
        L_0x0044:
            i.n r0 = p610i.C10279o.m708a()
            r5 = r0
            r0 = r6
            r1 = r5
            i.n r0 = r0.m712a(r1)
        L_0x004e:
            r0 = r5
            return r0
        L_0x0050:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.m775b(int):i.n");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: b1 */
    public C10260c mo737b1() {
        return this;
    }

    /* renamed from: c */
    public C10260c m773c(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: c */
    public String mo721c(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long a = m782a((byte) 10, 0L, j2);
            if (a != -1) {
                return m766j(a);
            }
            if (j2 < size() && m772d(j2 - 1) == 13 && m772d(j2) == 10) {
                return m766j(j2);
            }
            C10260c cVar = new C10260c();
            m778a(cVar, 0L, Math.min(32L, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + cVar.m769h().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    /* renamed from: c */
    public final void m774c() {
        try {
            skip(this.f37889b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0169 A[EDGE_INSN: B:51:0x0169->B:43:0x0169 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6, types: [long] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p610i.AbstractC10264e
    /* renamed from: c1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo720c1() {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.mo720c1():long");
    }

    public C10260c clone() {
        C10260c cVar = new C10260c();
        if (this.f37889b == 0) {
            return cVar;
        }
        C10278n c = this.f37888a.m709c();
        cVar.f37888a = c;
        c.f37923g = c;
        c.f37922f = c;
        C10278n nVar = this.f37888a;
        while (true) {
            nVar = nVar.f37922f;
            if (nVar != this.f37888a) {
                cVar.f37888a.f37923g.m712a(nVar.m709c());
            } else {
                cVar.f37889b = this.f37889b;
                return cVar;
            }
        }
    }

    @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte m772d(long r8) {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f37889b
            r1 = r8
            r2 = 1
            p610i.C10284s.m693a(r0, r1, r2)
            r0 = r7
            long r0 = r0.f37889b
            r10 = r0
            r0 = r10
            r1 = r8
            long r0 = r0 - r1
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0051
            r0 = r7
            i.n r0 = r0.f37888a
            r12 = r0
        L_0x001c:
            r0 = r12
            int r0 = r0.f37919c
            r13 = r0
            r0 = r12
            int r0 = r0.f37918b
            r14 = r0
            r0 = r13
            r1 = r14
            int r0 = r0 - r1
            long r0 = (long) r0
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
            r0 = r12
            byte[] r0 = r0.f37917a
            r1 = r14
            r2 = r8
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        L_0x0043:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r12
            i.n r0 = r0.f37922f
            r12 = r0
            goto L_0x001c
        L_0x0051:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            i.n r0 = r0.f37888a
            r12 = r0
        L_0x005b:
            r0 = r12
            i.n r0 = r0.f37923g
            r15 = r0
            r0 = r15
            int r0 = r0.f37919c
            r13 = r0
            r0 = r15
            int r0 = r0.f37918b
            r14 = r0
            r0 = r8
            r1 = r13
            r2 = r14
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r10 = r0
            r0 = r15
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x005b
            r0 = r15
            byte[] r0 = r0.f37917a
            r1 = r14
            r2 = r10
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.m772d(long):byte");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0155 A[EDGE_INSN: B:47:0x0155->B:42:0x0155 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v38, types: [i.c] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // p610i.AbstractC10264e
    /* renamed from: d2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo718d2() {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.mo718d2():long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m771e() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f37889b
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            i.n r0 = r0.f37888a
            i.n r0 = r0.f37923g
            r8 = r0
            r0 = r8
            int r0 = r0.f37919c
            r9 = r0
            r0 = r6
            r10 = r0
            r0 = r9
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x003c
            r0 = r6
            r10 = r0
            r0 = r8
            boolean r0 = r0.f37921e
            if (r0 == 0) goto L_0x003c
            r0 = r6
            r1 = r9
            r2 = r8
            int r2 = r2.f37918b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r10 = r0
        L_0x003c:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.m771e():long");
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: e */
    public C10260c mo736e(long j) {
        if (j == 0) {
            writeByte(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C10278n b = m775b(numberOfTrailingZeros);
        byte[] bArr = b.f37917a;
        int i = b.f37919c;
        for (int i2 = (i + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f37887c[(int) (15 & j)];
            j >>>= 4;
        }
        b.f37919c += numberOfTrailingZeros;
        this.f37889b += numberOfTrailingZeros;
        return this;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: e2 */
    public InputStream mo717e2() {
        return new C10262b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10260c)) {
            return false;
        }
        C10260c cVar = (C10260c) obj;
        long j = this.f37889b;
        if (j != cVar.f37889b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        C10278n nVar = this.f37888a;
        C10278n nVar2 = cVar.f37888a;
        int i = nVar.f37918b;
        int i2 = nVar2.f37918b;
        while (j2 < this.f37889b) {
            long min = Math.min(nVar.f37919c - i, nVar2.f37919c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (nVar.f37917a[i] != nVar2.f37917a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            nVar = nVar;
            i = i;
            if (i == nVar.f37919c) {
                nVar = nVar.f37922f;
                i = nVar.f37918b;
            }
            i2 = i2;
            nVar2 = nVar2;
            if (i2 == nVar2.f37919c) {
                nVar2 = nVar2.f37922f;
                i2 = nVar2.f37918b;
            }
            j2 += min;
        }
        return true;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: f */
    public byte[] mo716f(long j) throws EOFException {
        C10284s.m693a(this.f37889b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: f0 */
    public C10282r mo703f0() {
        return C10282r.f37926d;
    }

    @Override // p610i.AbstractC10263d, p610i.AbstractC10280p, java.io.Flushable
    public void flush() {
    }

    /* renamed from: g */
    public OutputStream m770g() {
        return new C10261a();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: g */
    public void mo715g(long j) throws EOFException {
        if (this.f37889b < j) {
            throw new EOFException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p610i.AbstractC10263d
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p610i.C10260c mo735h(long r7) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.mo735h(long):i.c");
    }

    /* renamed from: h */
    public ByteString m769h() {
        return new ByteString(mo733G0());
    }

    public int hashCode() {
        C10278n nVar;
        C10278n nVar2 = this.f37888a;
        if (nVar2 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = nVar2.f37919c;
            for (int i3 = nVar2.f37918b; i3 < i2; i3++) {
                i = (i * 31) + nVar2.f37917a[i3];
            }
            nVar = nVar2.f37922f;
            nVar2 = nVar;
            i = i;
        } while (nVar != this.f37888a);
        return i;
    }

    /* renamed from: i */
    public String m768i(long j) throws EOFException {
        return m780a(j, C10284s.f37930a);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    /* renamed from: j */
    public String m767j() {
        try {
            return m780a(this.f37889b, C10284s.f37930a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: j */
    public String m766j(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (m772d(j2) == 13) {
                String i = m768i(j2);
                skip(2L);
                return i;
            }
        }
        String i2 = m768i(j);
        skip(1L);
        return i2;
    }

    @Override // p610i.AbstractC10263d
    /* renamed from: k */
    public C10260c mo734k(String str) {
        m777a(str, 0, str.length());
        return this;
    }

    /* renamed from: k */
    public final ByteString m765k() {
        long j = this.f37889b;
        if (j <= 2147483647L) {
            return m781a((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f37889b);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C10278n nVar = this.f37888a;
        if (nVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), nVar.f37919c - nVar.f37918b);
        byteBuffer.put(nVar.f37917a, nVar.f37918b, min);
        int i = nVar.f37918b + min;
        nVar.f37918b = i;
        this.f37889b -= min;
        if (i == nVar.f37919c) {
            this.f37888a = nVar.m710b();
            C10279o.m707a(nVar);
        }
        return min;
    }

    public int read(byte[] bArr, int i, int i2) {
        C10284s.m693a(bArr.length, i, i2);
        C10278n nVar = this.f37888a;
        if (nVar == null) {
            return -1;
        }
        int min = Math.min(i2, nVar.f37919c - nVar.f37918b);
        System.arraycopy(nVar.f37917a, nVar.f37918b, bArr, i, min);
        int i3 = nVar.f37918b + min;
        nVar.f37918b = i3;
        this.f37889b -= min;
        if (i3 == nVar.f37919c) {
            this.f37888a = nVar.m710b();
            C10279o.m707a(nVar);
        }
        return min;
    }

    @Override // p610i.AbstractC10264e
    public byte readByte() {
        long j = this.f37889b;
        if (j != 0) {
            C10278n nVar = this.f37888a;
            int i = nVar.f37918b;
            int i2 = nVar.f37919c;
            byte[] bArr = nVar.f37917a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f37889b = j - 1;
            if (i3 == i2) {
                this.f37888a = nVar.m710b();
                C10279o.m707a(nVar);
            } else {
                nVar.f37918b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // p610i.AbstractC10264e
    public void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // p610i.AbstractC10264e
    public int readInt() {
        long j = this.f37889b;
        if (j >= 4) {
            C10278n nVar = this.f37888a;
            int i = nVar.f37918b;
            int i2 = nVar.f37919c;
            if (i2 - i < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = nVar.f37917a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i5 + 1;
            byte b4 = bArr[i5];
            this.f37889b = j - 4;
            if (i6 == i2) {
                this.f37888a = nVar.m710b();
                C10279o.m707a(nVar);
            } else {
                nVar.f37918b = i6;
            }
            return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
        }
        throw new IllegalStateException("size < 4: " + this.f37889b);
    }

    @Override // p610i.AbstractC10264e
    public short readShort() {
        long j = this.f37889b;
        if (j >= 2) {
            C10278n nVar = this.f37888a;
            int i = nVar.f37918b;
            int i2 = nVar.f37919c;
            if (i2 - i < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = nVar.f37917a;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            this.f37889b = j - 2;
            if (i4 == i2) {
                this.f37888a = nVar.m710b();
                C10279o.m707a(nVar);
            } else {
                nVar.f37918b = i4;
            }
            return (short) (((b & 255) << 8) | (b2 & 255));
        }
        throw new IllegalStateException("size < 2: " + this.f37889b);
    }

    public final long size() {
        return this.f37889b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // p610i.AbstractC10264e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skip(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0074
            r0 = r6
            i.n r0 = r0.f37888a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006c
            r0 = r7
            r1 = r9
            int r1 = r1.f37919c
            r2 = r9
            int r2 = r2.f37918b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r6
            long r0 = r0.f37889b
            r11 = r0
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = r6
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            r0.f37889b = r1
            r0 = r7
            r1 = r13
            long r0 = r0 - r1
            r13 = r0
            r0 = r6
            i.n r0 = r0.f37888a
            r9 = r0
            r0 = r9
            int r0 = r0.f37918b
            r1 = r10
            int r0 = r0 + r1
            r10 = r0
            r0 = r9
            r1 = r10
            r0.f37918b = r1
            r0 = r13
            r7 = r0
            r0 = r10
            r1 = r9
            int r1 = r1.f37919c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            r1 = r9
            i.n r1 = r1.m710b()
            r0.f37888a = r1
            r0 = r9
            p610i.C10279o.m707a(r0)
            r0 = r13
            r7 = r0
            goto L_0x0000
        L_0x006c:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0074:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p610i.C10260c.skip(long):void");
    }

    public String toString() {
        return m765k().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                C10278n b = m775b(1);
                int min = Math.min(i, 8192 - b.f37919c);
                byteBuffer.get(b.f37917a, b.f37919c, min);
                i -= min;
                b.f37919c += min;
            }
            this.f37889b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p610i.AbstractC10263d
    public C10260c write(byte[] bArr) {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p610i.AbstractC10263d
    public C10260c write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            C10284s.m693a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                C10278n b = m775b(1);
                int min = Math.min(i3 - i, 8192 - b.f37919c);
                System.arraycopy(bArr, i, b.f37917a, b.f37919c, min);
                i += min;
                b.f37919c += min;
            }
            this.f37889b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // p610i.AbstractC10263d
    public C10260c writeByte(int i) {
        C10278n b = m775b(1);
        byte[] bArr = b.f37917a;
        int i2 = b.f37919c;
        b.f37919c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f37889b++;
        return this;
    }

    @Override // p610i.AbstractC10263d
    public C10260c writeInt(int i) {
        C10278n b = m775b(4);
        byte[] bArr = b.f37917a;
        int i2 = b.f37919c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        b.f37919c = i5 + 1;
        this.f37889b += 4;
        return this;
    }

    @Override // p610i.AbstractC10263d
    public C10260c writeShort(int i) {
        C10278n b = m775b(2);
        byte[] bArr = b.f37917a;
        int i2 = b.f37919c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        b.f37919c = i3 + 1;
        this.f37889b += 2;
        return this;
    }
}
