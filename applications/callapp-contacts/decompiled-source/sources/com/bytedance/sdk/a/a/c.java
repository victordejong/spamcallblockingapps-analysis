package com.bytedance.sdk.a.a;

import android.support.v4.media.session.PlaybackStateCompat;
import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/c.class */
public final class c implements d, e, Cloneable, ByteChannel {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f7783c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a  reason: collision with root package name */
    o f7784a;

    /* renamed from: b  reason: collision with root package name */
    long f7785b;

    public final int a(byte[] bArr, int i, int i2) {
        u.a(bArr.length, i, i2);
        o oVar = this.f7784a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(i2, oVar.f7817c - oVar.f7816b);
        System.arraycopy(oVar.f7815a, oVar.f7816b, bArr, i, min);
        oVar.f7816b += min;
        this.f7785b -= min;
        if (oVar.f7816b == oVar.f7817c) {
            this.f7784a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r17v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Unknown variable types count: 5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(byte r10, long r11, long r13) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.a(byte, long, long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.a.a.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.bytedance.sdk.a.a.c r7, long r8) {
        /*
            r6 = this;
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            r0 = r6
            long r0 = r0.f7785b
            r10 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x001b
            r0 = -1
            return r0
        L_0x001b:
            r0 = r8
            r12 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0029
            r0 = r10
            r12 = r0
        L_0x0029:
            r0 = r7
            r1 = r6
            r2 = r12
            r0.a_(r1, r2)
            r0 = r12
            return r0
        L_0x0033:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "byteCount < 0: "
            r3 = r8
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r2 = r2.concat(r3)
            r1.<init>(r2)
            throw r0
        L_0x0044:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "sink == null"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.a(com.bytedance.sdk.a.a.c, long):long");
    }

    public final long a(s sVar) throws IOException {
        if (sVar != null) {
            long j = 0;
            while (true) {
                long a2 = sVar.a(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (a2 == -1) {
                    return j;
                }
                j += a2;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    public final c a(int i) {
        if (i < 128) {
            i(i);
        } else if (i < 2048) {
            i((i >> 6) | 192);
            i((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                i((i >> 12) | 224);
                i(((i >> 6) & 63) | 128);
                i((i & 63) | 128);
            } else {
                i(63);
            }
        } else if (i <= 1114111) {
            i((i >> 18) | 240);
            i(((i >> 12) & 63) | 128);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bytedance.sdk.a.a.c a(com.bytedance.sdk.a.a.c r8, long r9, long r11) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.a(com.bytedance.sdk.a.a.c, long, long):com.bytedance.sdk.a.a.c");
    }

    public final c a(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: a */
    public final c b(String str) {
        return a(str, 0, str.length());
    }

    public final c a(String str, int i, int i2) {
        char charAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            while (i < i2) {
                char charAt2 = str.charAt(i);
                if (charAt2 < 128) {
                    o e = e(1);
                    byte[] bArr = e.f7815a;
                    int i3 = e.f7817c - i;
                    int min = Math.min(i2, PropertyFlags.UNSIGNED - i3);
                    i++;
                    bArr[i + i3] = (byte) charAt2;
                    while (i < min && (charAt = str.charAt(i)) < 128) {
                        i++;
                        bArr[i + i3] = (byte) charAt;
                    }
                    int i4 = (i3 + i) - e.f7817c;
                    e.f7817c += i4;
                    this.f7785b += i4;
                } else {
                    if (charAt2 < 2048) {
                        i((charAt2 >> 6) | 192);
                        i((charAt2 & '?') | 128);
                    } else if (charAt2 < 55296 || charAt2 > 57343) {
                        i((charAt2 >> '\f') | 224);
                        i(((charAt2 >> 6) & 63) | 128);
                        i((charAt2 & '?') | 128);
                    } else {
                        int i5 = i + 1;
                        char charAt3 = i5 < i2 ? str.charAt(i5) : (char) 0;
                        if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                            i(63);
                            i = i5;
                        } else {
                            int i6 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                            i((i6 >> 18) | 240);
                            i(((i6 >> 12) & 63) | 128);
                            i(((i6 >> 6) & 63) | 128);
                            i((i6 & 63) | 128);
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

    public final c a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i)));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(u.f7825a)) {
            return a(str, i, i2);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return c(bytes, 0, bytes.length);
        }
    }

    @Override // com.bytedance.sdk.a.a.r
    public final t a() {
        return t.f7821c;
    }

    public final String a(long j, Charset charset) throws EOFException {
        u.a(this.f7785b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        } else if (j == 0) {
            return "";
        } else {
            o oVar = this.f7784a;
            if (oVar.f7816b + j > oVar.f7817c) {
                return new String(g(j), charset);
            }
            String str = new String(oVar.f7815a, oVar.f7816b, (int) j, charset);
            oVar.f7816b = (int) (oVar.f7816b + j);
            this.f7785b -= j;
            if (oVar.f7816b == oVar.f7817c) {
                this.f7784a = oVar.b();
                p.a(oVar);
            }
            return str;
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String a(Charset charset) {
        try {
            return a(this.f7785b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final void a(long j) throws EOFException {
        if (this.f7785b < j) {
            throw new EOFException();
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int a2 = a(bArr, i, bArr.length - i);
            if (a2 != -1) {
                i += a2;
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final boolean a(long j, f fVar) {
        return a(j, fVar, 0, fVar.g());
    }

    public final boolean a(long j, f fVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f7785b - j < i2 || fVar.g() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (b(i3 + j) != fVar.a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.a.a.r
    public final void a_(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (cVar != this) {
            u.a(cVar.f7785b, 0L, j);
            while (j > 0) {
                if (j < cVar.f7784a.f7817c - cVar.f7784a.f7816b) {
                    o oVar = this.f7784a;
                    o oVar2 = oVar != null ? oVar.g : null;
                    if (oVar2 != null && oVar2.e) {
                        if ((oVar2.f7817c + j) - (oVar2.f7818d ? 0 : oVar2.f7816b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            cVar.f7784a.a(oVar2, (int) j);
                            cVar.f7785b -= j;
                            this.f7785b += j;
                            return;
                        }
                    }
                    cVar.f7784a = cVar.f7784a.a((int) j);
                }
                o oVar3 = cVar.f7784a;
                long j2 = oVar3.f7817c - oVar3.f7816b;
                cVar.f7784a = oVar3.b();
                o oVar4 = this.f7784a;
                if (oVar4 == null) {
                    this.f7784a = oVar3;
                    oVar3.g = oVar3;
                    oVar3.f = oVar3;
                } else {
                    oVar4.g.a(oVar3).c();
                }
                cVar.f7785b -= j2;
                this.f7785b += j2;
                j -= j2;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte b(long r8) {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.f7785b
            r1 = r8
            r2 = 1
            com.bytedance.sdk.a.a.u.a(r0, r1, r2)
            r0 = r7
            long r0 = r0.f7785b
            r10 = r0
            r0 = r10
            r1 = r8
            long r0 = r0 - r1
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x004c
            r0 = r7
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r12 = r0
        L_0x001c:
            r0 = r12
            int r0 = r0.f7817c
            r1 = r12
            int r1 = r1.f7816b
            int r0 = r0 - r1
            long r0 = (long) r0
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x003e
            r0 = r12
            byte[] r0 = r0.f7815a
            r1 = r12
            int r1 = r1.f7816b
            r2 = r8
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        L_0x003e:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r12
            com.bytedance.sdk.a.a.o r0 = r0.f
            r12 = r0
            goto L_0x001c
        L_0x004c:
            r0 = r8
            r1 = r10
            long r0 = r0 - r1
            r8 = r0
            r0 = r7
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r12 = r0
        L_0x0056:
            r0 = r12
            com.bytedance.sdk.a.a.o r0 = r0.g
            r13 = r0
            r0 = r8
            r1 = r13
            int r1 = r1.f7817c
            r2 = r13
            int r2 = r2.f7816b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r10 = r0
            r0 = r13
            r12 = r0
            r0 = r10
            r8 = r0
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0056
            r0 = r13
            byte[] r0 = r0.f7815a
            r1 = r13
            int r1 = r1.f7816b
            r2 = r10
            int r2 = (int) r2
            int r1 = r1 + r2
            r0 = r0[r1]
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.b(long):byte");
    }

    public final long b() {
        return this.f7785b;
    }

    /* renamed from: b */
    public final c i(int i) {
        o e = e(1);
        byte[] bArr = e.f7815a;
        int i2 = e.f7817c;
        e.f7817c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f7785b++;
        return this;
    }

    /* renamed from: b */
    public final c c(byte[] bArr) {
        if (bArr != null) {
            return c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: b */
    public final c c(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            u.a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                o e = e(1);
                int min = Math.min(i3 - i, PropertyFlags.UNSIGNED - e.f7817c);
                System.arraycopy(bArr, i, e.f7815a, e.f7817c, min);
                i += min;
                e.f7817c += min;
            }
            this.f7785b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.bytedance.sdk.a.a.d, com.bytedance.sdk.a.a.e
    public final c c() {
        return this;
    }

    /* renamed from: c */
    public final c h(int i) {
        o e = e(2);
        byte[] bArr = e.f7815a;
        int i2 = e.f7817c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        e.f7817c = i3 + 1;
        this.f7785b += 2;
        return this;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final f c(long j) throws EOFException {
        return new f(g(j));
    }

    @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: d */
    public final c u() {
        return this;
    }

    /* renamed from: d */
    public final c g(int i) {
        o e = e(4);
        byte[] bArr = e.f7815a;
        int i2 = e.f7817c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        e.f7817c = i5 + 1;
        this.f7785b += 4;
        return this;
    }

    public final String d(long j) throws EOFException {
        return a(j, u.f7825a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r0.e == false) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bytedance.sdk.a.a.o e(int r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 <= 0) goto L_0x004d
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L_0x004d
            r0 = r3
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x0029
            com.bytedance.sdk.a.a.o r0 = com.bytedance.sdk.a.a.p.a()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.f7784a = r1
            r0 = r5
            r1 = r5
            r0.g = r1
            r0 = r5
            r1 = r5
            r0.f = r1
            r0 = r5
            return r0
        L_0x0029:
            r0 = r5
            com.bytedance.sdk.a.a.o r0 = r0.g
            r6 = r0
            r0 = r6
            int r0 = r0.f7817c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L_0x0043
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.e
            if (r0 != 0) goto L_0x004b
        L_0x0043:
            r0 = r6
            com.bytedance.sdk.a.a.o r1 = com.bytedance.sdk.a.a.p.a()
            com.bytedance.sdk.a.a.o r0 = r0.a(r1)
            r5 = r0
        L_0x004b:
            r0 = r5
            return r0
        L_0x004d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.e(int):com.bytedance.sdk.a.a.o");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String e(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long a2 = a((byte) 10, 0L, j2);
            if (a2 != -1) {
                return f(a2);
            }
            if (j2 < b() && b(j2 - 1) == 13 && b(j2) == 10) {
                return f(j2);
            }
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, b()));
            throw new EOFException("\\n not found: limit=" + Math.min(b(), j) + " content=" + cVar.n().e() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.a.a.e
    public final boolean e() {
        return this.f7785b == 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j = this.f7785b;
        if (j != cVar.f7785b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        o oVar = this.f7784a;
        o oVar2 = cVar.f7784a;
        int i = oVar.f7816b;
        int i2 = oVar2.f7816b;
        while (j2 < this.f7785b) {
            long min = Math.min(oVar.f7817c - i, oVar2.f7817c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (oVar.f7815a[i] != oVar2.f7815a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            oVar = oVar;
            i = i;
            if (i == oVar.f7817c) {
                oVar = oVar.f;
                i = oVar.f7816b;
            }
            i2 = i2;
            oVar2 = oVar2;
            if (i2 == oVar2.f7817c) {
                oVar2 = oVar2.f;
                i2 = oVar2.f7816b;
            }
            j2 += min;
        }
        return true;
    }

    public final f f(int i) {
        return i == 0 ? f.f7788b : new q(this, i);
    }

    @Override // com.bytedance.sdk.a.a.e
    public final InputStream f() {
        return new InputStream() { // from class: com.bytedance.sdk.a.a.c.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(c.this.f7785b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (c.this.f7785b > 0) {
                    return c.this.h() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return c.this.a(bArr, i, i2);
            }

            public String toString() {
                return c.this + ".inputStream()";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String f(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (b(j2) == 13) {
                String d2 = d(j2);
                h(2L);
                return d2;
            }
        }
        String d3 = d(j);
        h(1L);
        return d3;
    }

    @Override // com.bytedance.sdk.a.a.d, com.bytedance.sdk.a.a.r, java.io.Flushable
    public final void flush() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long g() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f7785b
            r6 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            com.bytedance.sdk.a.a.o r0 = r0.g
            r8 = r0
            r0 = r6
            r9 = r0
            r0 = r8
            int r0 = r0.f7817c
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 >= r1) goto L_0x003a
            r0 = r6
            r9 = r0
            r0 = r8
            boolean r0 = r0.e
            if (r0 == 0) goto L_0x003a
            r0 = r6
            r1 = r8
            int r1 = r1.f7817c
            r2 = r8
            int r2 = r2.f7816b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r9 = r0
        L_0x003a:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.g():long");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final byte[] g(long j) throws EOFException {
        u.a(this.f7785b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.a.a.e
    public final byte h() {
        if (this.f7785b != 0) {
            o oVar = this.f7784a;
            int i = oVar.f7816b;
            int i2 = oVar.f7817c;
            byte[] bArr = oVar.f7815a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            this.f7785b--;
            if (i3 == i2) {
                this.f7784a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f7816b = i3;
            }
            return b2;
        }
        throw new IllegalStateException("size == 0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.a.a.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(long r7) throws java.io.EOFException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0080
            r0 = r6
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0078
            r0 = r7
            r1 = r9
            int r1 = r1.f7817c
            r2 = r6
            com.bytedance.sdk.a.a.o r2 = r2.f7784a
            int r2 = r2.f7816b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r10 = r0
            r0 = r6
            long r0 = r0.f7785b
            r11 = r0
            r0 = r10
            long r0 = (long) r0
            r13 = r0
            r0 = r6
            r1 = r11
            r2 = r13
            long r1 = r1 - r2
            r0.f7785b = r1
            r0 = r7
            r1 = r13
            long r0 = r0 - r1
            r13 = r0
            r0 = r6
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r9 = r0
            r0 = r9
            r1 = r9
            int r1 = r1.f7816b
            r2 = r10
            int r1 = r1 + r2
            r0.f7816b = r1
            r0 = r13
            r7 = r0
            r0 = r6
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            int r0 = r0.f7816b
            r1 = r6
            com.bytedance.sdk.a.a.o r1 = r1.f7784a
            int r1 = r1.f7817c
            if (r0 != r1) goto L_0x0000
            r0 = r6
            com.bytedance.sdk.a.a.o r0 = r0.f7784a
            r9 = r0
            r0 = r6
            r1 = r9
            com.bytedance.sdk.a.a.o r1 = r1.b()
            r0.f7784a = r1
            r0 = r9
            com.bytedance.sdk.a.a.p.a(r0)
            r0 = r13
            r7 = r0
            goto L_0x0000
        L_0x0078:
            java.io.EOFException r0 = new java.io.EOFException
            r1 = r0
            r1.<init>()
            throw r0
        L_0x0080:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.h(long):void");
    }

    public final int hashCode() {
        o oVar;
        o oVar2 = this.f7784a;
        if (oVar2 == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = oVar2.f7817c;
            for (int i3 = oVar2.f7816b; i3 < i2; i3++) {
                i = (i * 31) + oVar2.f7815a[i3];
            }
            oVar = oVar2.f;
            oVar2 = oVar;
            i = i;
        } while (oVar != this.f7784a);
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bytedance.sdk.a.a.c l(long r7) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.l(long):com.bytedance.sdk.a.a.c");
    }

    @Override // com.bytedance.sdk.a.a.e
    public final short i() {
        if (this.f7785b >= 2) {
            o oVar = this.f7784a;
            int i = oVar.f7816b;
            int i2 = oVar.f7817c;
            if (i2 - i < 2) {
                return (short) (((h() & 255) << 8) | (h() & 255));
            }
            byte[] bArr = oVar.f7815a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            this.f7785b -= 2;
            if (i4 == i2) {
                this.f7784a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f7816b = i4;
            }
            return (short) (((b2 & 255) << 8) | (b3 & 255));
        }
        throw new IllegalStateException("size < 2: " + this.f7785b);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final int j() {
        if (this.f7785b >= 4) {
            o oVar = this.f7784a;
            int i = oVar.f7816b;
            int i2 = oVar.f7817c;
            if (i2 - i < 4) {
                return ((h() & 255) << 24) | ((h() & 255) << 16) | ((h() & 255) << 8) | (h() & 255);
            }
            byte[] bArr = oVar.f7815a;
            int i3 = i + 1;
            byte b2 = bArr[i];
            int i4 = i3 + 1;
            byte b3 = bArr[i3];
            int i5 = i4 + 1;
            byte b4 = bArr[i4];
            int i6 = i5 + 1;
            byte b5 = bArr[i5];
            this.f7785b -= 4;
            if (i6 == i2) {
                this.f7784a = oVar.b();
                p.a(oVar);
            } else {
                oVar.f7816b = i6;
            }
            return ((b2 & 255) << 24) | ((b3 & 255) << 16) | ((b4 & 255) << 8) | (b5 & 255);
        }
        throw new IllegalStateException("size < 4: " + this.f7785b);
    }

    /* renamed from: j */
    public final c k(long j) {
        if (j == 0) {
            return i(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        o e = e(numberOfTrailingZeros);
        byte[] bArr = e.f7815a;
        int i = e.f7817c;
        for (int i2 = (e.f7817c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f7783c[(int) (15 & j)];
            j >>>= 4;
        }
        e.f7817c += numberOfTrailingZeros;
        this.f7785b += numberOfTrailingZeros;
        return this;
    }

    @Override // com.bytedance.sdk.a.a.e
    public final short k() {
        return u.a(i());
    }

    @Override // com.bytedance.sdk.a.a.e
    public final int l() {
        return u.a(j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0143 A[EDGE_INSN: B:49:0x0143->B:42:0x0143 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v37, types: [com.bytedance.sdk.a.a.c] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.bytedance.sdk.a.a.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m() {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.a.c.m():long");
    }

    public final f n() {
        return new f(q());
    }

    public final String o() {
        try {
            return a(this.f7785b, u.f7825a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.a.a.e
    public final String p() throws EOFException {
        return e(Long.MAX_VALUE);
    }

    public final byte[] q() {
        try {
            return g(this.f7785b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final void r() {
        try {
            h(this.f7785b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) throws IOException {
        o oVar = this.f7784a;
        if (oVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), oVar.f7817c - oVar.f7816b);
        byteBuffer.put(oVar.f7815a, oVar.f7816b, min);
        oVar.f7816b += min;
        this.f7785b -= min;
        if (oVar.f7816b == oVar.f7817c) {
            this.f7784a = oVar.b();
            p.a(oVar);
        }
        return min;
    }

    /* renamed from: s */
    public final c clone() {
        c cVar = new c();
        if (this.f7785b == 0) {
            return cVar;
        }
        o a2 = this.f7784a.a();
        cVar.f7784a = a2;
        a2.g = a2;
        a2.f = a2;
        o oVar = this.f7784a;
        while (true) {
            oVar = oVar.f;
            if (oVar != this.f7784a) {
                cVar.f7784a.g.a(oVar.a());
            } else {
                cVar.f7785b = this.f7785b;
                return cVar;
            }
        }
    }

    public final f t() {
        long j = this.f7785b;
        if (j <= 2147483647L) {
            return f((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f7785b);
    }

    public final String toString() {
        return t().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                o e = e(1);
                int min = Math.min(i, PropertyFlags.UNSIGNED - e.f7817c);
                byteBuffer.get(e.f7815a, e.f7817c, min);
                i -= min;
                e.f7817c += min;
            }
            this.f7785b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }
}
