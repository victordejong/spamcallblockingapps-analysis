package com.bytedance.sdk.p127a.p128a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import io.objectbox.model.PropertyFlags;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import okhttp3.internal.connection.RealConnection;
/* renamed from: com.bytedance.sdk.a.a.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/c.class */
public final class C3969c implements AbstractC3971d, AbstractC3972e, Cloneable, ByteChannel {

    /* renamed from: c */
    private static final byte[] f14417c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: a */
    C3986o f14418a;

    /* renamed from: b */
    long f14419b;

    /* renamed from: a */
    public final int m37125a(byte[] bArr, int i, int i2) {
        C3993u.m37014a(bArr.length, i, i2);
        C3986o c3986o = this.f14418a;
        if (c3986o == null) {
            return -1;
        }
        int min = Math.min(i2, c3986o.f14453c - c3986o.f14452b);
        System.arraycopy(c3986o.f14451a, c3986o.f14452b, bArr, i, min);
        c3986o.f14452b += min;
        this.f14419b -= min;
        if (c3986o.f14452b == c3986o.f14453c) {
            this.f14418a = c3986o.m37042b();
            C3987p.m37039a(c3986o);
        }
        return min;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final long mo37068a(byte b) {
        return m37135a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* renamed from: a */
    public final long m37135a(byte b, long j, long j2) {
        C3986o c3986o;
        C3986o c3986o2;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f14419b), Long.valueOf(j), Long.valueOf(j2)));
        }
        char c = this.f14419b;
        char c2 = j2 > c ? c : j2;
        if (j == c2 || (c3986o = this.f14418a) == null) {
            return -1L;
        }
        char c3 = 0;
        C3986o c3986o3 = c3986o;
        if (c - j < j) {
            C3986o c3986o4 = c3986o;
            while (true) {
                c3 = c;
                c3986o2 = c3986o4;
                if (c <= j) {
                    break;
                }
                c3986o4 = c3986o4.f14457g;
                c -= c3986o4.f14453c - c3986o4.f14452b;
            }
        } else {
            while (true) {
                ?? r0 = (c3986o3.f14453c - c3986o3.f14452b) + c3;
                if (r0 >= j) {
                    break;
                }
                c3986o3 = c3986o3.f14456f;
                c3 = r0;
            }
            c3986o2 = c3986o3;
        }
        char c4 = c3;
        char c5 = j;
        while (true) {
            char c6 = c5;
            if (c4 >= c2) {
                return -1L;
            }
            byte[] bArr = c3986o2.f14451a;
            int min = (int) Math.min(c3986o2.f14453c, (c3986o2.f14452b + c2) - c4);
            for (int i = (int) ((c3986o2.f14452b + c6) - c4); i < min; i++) {
                if (bArr[i] == b) {
                    return (i - c3986o2.f14452b) + c4;
                }
            }
            c4 += c3986o2.f14453c - c3986o2.f14452b;
            c3986o2 = c3986o2.f14456f;
            c5 = c4;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public final long mo36719a(C3969c c3969c, long j) {
        if (c3969c != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
            }
            ?? r0 = this.f14419b;
            if (r0 == 0) {
                return -1L;
            }
            char c = j;
            if (j > r0) {
                c = r0;
            }
            c3969c.mo36721a_(this, c);
            return c;
        }
        throw new IllegalArgumentException("sink == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* renamed from: a */
    public final long m37129a(AbstractC3990s abstractC3990s) throws IOException {
        if (abstractC3990s != null) {
            ?? r0 = 0;
            while (true) {
                char c = r0;
                long mo36719a = abstractC3990s.mo36719a(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (mo36719a == -1) {
                    return c;
                }
                r0 = c + mo36719a;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    /* renamed from: a */
    public final C3969c m37134a(int i) {
        if (i < 128) {
            mo37072i(i);
        } else if (i < 2048) {
            mo37072i((i >> 6) | 192);
            mo37072i((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                mo37072i((i >> 12) | 224);
                mo37072i(((i >> 6) & 63) | 128);
                mo37072i((i & 63) | 128);
            } else {
                mo37072i(63);
            }
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        } else {
            mo37072i((i >> 18) | 240);
            mo37072i(((i >> 12) & 63) | 128);
            mo37072i(((i >> 6) & 63) | 128);
            mo37072i((i & 63) | 128);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public final C3969c m37131a(C3969c c3969c, long j, long j2) {
        C3986o c3986o;
        boolean z;
        char c;
        if (c3969c != null) {
            C3993u.m37014a(this.f14419b, j, j2);
            if (j2 == 0) {
                return this;
            }
            c3969c.f14419b += j2;
            C3986o c3986o2 = this.f14418a;
            ?? r9 = j;
            while (true) {
                C3986o c3986o3 = c3986o2;
                c3986o = c3986o3;
                z = r9;
                c = j2;
                if (r9 >= c3986o3.f14453c - c3986o3.f14452b) {
                    r9 -= c3986o3.f14453c - c3986o3.f14452b;
                    c3986o2 = c3986o3.f14456f;
                }
            }
            while (c > 0) {
                C3986o m37046a = c3986o.m37046a();
                m37046a.f14452b = (int) (m37046a.f14452b + (z ? 1L : 0L));
                m37046a.f14453c = Math.min(m37046a.f14452b + c, m37046a.f14453c);
                C3986o c3986o4 = c3969c.f14418a;
                if (c3986o4 == null) {
                    m37046a.f14457g = m37046a;
                    m37046a.f14456f = m37046a;
                    c3969c.f14418a = m37046a;
                } else {
                    c3986o4.f14457g.m37044a(m37046a);
                }
                c -= m37046a.f14453c - m37046a.f14452b;
                c3986o = c3986o.f14456f;
                z = false;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    /* renamed from: a */
    public final C3969c m37130a(C3973f c3973f) {
        if (c3973f != null) {
            c3973f.mo37033a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    /* renamed from: a */
    public final C3969c mo37077b(String str) {
        return m37127a(str, 0, str.length());
    }

    /* renamed from: a */
    public final C3969c m37127a(String str, int i, int i2) {
        char charAt;
        if (str != null) {
            if (i < 0) {
                throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
            }
            if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else {
                while (i < i2) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 < 128) {
                        C3986o m37115e = m37115e(1);
                        byte[] bArr = m37115e.f14451a;
                        int i3 = m37115e.f14453c - i;
                        int min = Math.min(i2, PropertyFlags.UNSIGNED - i3);
                        int i4 = i + 1;
                        bArr[i + i3] = (byte) charAt2;
                        while (true) {
                            i = i4;
                            if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                break;
                            }
                            i4 = i + 1;
                            bArr[i + i3] = (byte) charAt;
                        }
                        int i5 = (i3 + i) - m37115e.f14453c;
                        m37115e.f14453c += i5;
                        this.f14419b += i5;
                    } else {
                        if (charAt2 < 2048) {
                            mo37072i((charAt2 >> 6) | 192);
                            mo37072i((charAt2 & '?') | 128);
                        } else if (charAt2 < 55296 || charAt2 > 57343) {
                            mo37072i((charAt2 >> '\f') | 224);
                            mo37072i(((charAt2 >> 6) & 63) | 128);
                            mo37072i((charAt2 & '?') | 128);
                        } else {
                            int i6 = i + 1;
                            char charAt3 = i6 < i2 ? str.charAt(i6) : (char) 0;
                            if (charAt2 > 56319 || charAt3 < 56320 || charAt3 > 57343) {
                                mo37072i(63);
                                i = i6;
                            } else {
                                int i7 = (((charAt2 & 10239) << 10) | (9215 & charAt3)) + 65536;
                                mo37072i((i7 >> 18) | 240);
                                mo37072i(((i7 >> 12) & 63) | 128);
                                mo37072i(((i7 >> 6) & 63) | 128);
                                mo37072i((i7 & 63) | 128);
                                i += 2;
                            }
                        }
                        i++;
                    }
                }
                return this;
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    /* renamed from: a */
    public final C3969c m37126a(String str, int i, int i2, Charset charset) {
        if (str != null) {
            if (i < 0) {
                throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i)));
            }
            if (i2 < i) {
                throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
            } else if (i2 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
            } else if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            } else {
                if (charset.equals(C3993u.f14466a)) {
                    return m37127a(str, i, i2);
                }
                byte[] bytes = str.substring(i, i2).getBytes(charset);
                return mo37075c(bytes, 0, bytes.length);
            }
        }
        throw new IllegalArgumentException("string == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a */
    public final C3991t mo36723a() {
        return C3991t.f14462c;
    }

    /* renamed from: a */
    public final String m37132a(long j, Charset charset) throws EOFException {
        C3993u.m37014a(this.f14419b, 0L, j);
        if (charset != null) {
            if (j > 2147483647L) {
                throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
            }
            if (j == 0) {
                return "";
            }
            C3986o c3986o = this.f14418a;
            if (c3986o.f14452b + j > c3986o.f14453c) {
                return new String(mo37055g(j), charset);
            }
            String str = new String(c3986o.f14451a, c3986o.f14452b, (int) j, charset);
            c3986o.f14452b = (int) (c3986o.f14452b + j);
            this.f14419b -= j;
            if (c3986o.f14452b == c3986o.f14453c) {
                this.f14418a = c3986o.m37042b();
                C3987p.m37039a(c3986o);
            }
            return str;
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final String mo37063a(Charset charset) {
        try {
            return m37132a(this.f14419b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final void mo37066a(long j) throws EOFException {
        if (this.f14419b >= j) {
            return;
        }
        throw new EOFException();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final void mo37062a(byte[] bArr) throws EOFException {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < bArr.length) {
                int m37125a = m37125a(bArr, i2, bArr.length - i2);
                if (m37125a == -1) {
                    throw new EOFException();
                }
                i = i2 + m37125a;
            } else {
                return;
            }
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: a */
    public final boolean mo37065a(long j, C3973f c3973f) {
        return m37133a(j, c3973f, 0, c3973f.mo37026g());
    }

    /* renamed from: a */
    public final boolean m37133a(long j, C3973f c3973f, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f14419b - j < i2 || c3973f.mo37026g() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (m37122b(i3 + j) != c3973f.mo37037a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a_ */
    public final void mo36721a_(C3969c c3969c, long j) {
        if (c3969c != null) {
            if (c3969c == this) {
                throw new IllegalArgumentException("source == this");
            }
            C3993u.m37014a(c3969c.f14419b, 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                if (r9 < c3969c.f14418a.f14453c - c3969c.f14418a.f14452b) {
                    C3986o c3986o = this.f14418a;
                    C3986o c3986o2 = c3986o != null ? c3986o.f14457g : null;
                    if (c3986o2 != null && c3986o2.f14455e) {
                        if ((c3986o2.f14453c + r9) - (c3986o2.f14454d ? 0 : c3986o2.f14452b) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            c3969c.f14418a.m37043a(c3986o2, (int) r9);
                            c3969c.f14419b -= r9;
                            this.f14419b += r9;
                            return;
                        }
                    }
                    c3969c.f14418a = c3969c.f14418a.m37045a((int) r9);
                }
                C3986o c3986o3 = c3969c.f14418a;
                long j2 = c3986o3.f14453c - c3986o3.f14452b;
                c3969c.f14418a = c3986o3.m37042b();
                C3986o c3986o4 = this.f14418a;
                if (c3986o4 == null) {
                    this.f14418a = c3986o3;
                    c3986o3.f14457g = c3986o3;
                    c3986o3.f14456f = c3986o3;
                } else {
                    c3986o4.f14457g.m37044a(c3986o3).m37041c();
                }
                c3969c.f14419b -= j2;
                this.f14419b += j2;
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* renamed from: b */
    public final byte m37122b(long j) {
        C3986o c3986o;
        ?? r0;
        C3993u.m37014a(this.f14419b, j, 1L);
        long j2 = this.f14419b;
        if (j2 - j <= j) {
            char c = j - j2;
            C3986o c3986o2 = this.f14418a;
            do {
                c3986o = c3986o2.f14457g;
                r0 = c + (c3986o.f14453c - c3986o.f14452b);
                c3986o2 = c3986o;
                c = r0;
            } while (r0 < 0);
            return c3986o.f14451a[c3986o.f14452b + ((int) r0)];
        }
        C3986o c3986o3 = this.f14418a;
        ?? r8 = j;
        while (true) {
            C3986o c3986o4 = c3986o3;
            long j3 = c3986o4.f14453c - c3986o4.f14452b;
            if (r8 < j3) {
                return c3986o4.f14451a[c3986o4.f14452b + ((int) r8)];
            }
            r8 -= j3;
            c3986o3 = c3986o4.f14456f;
        }
    }

    /* renamed from: b */
    public final long m37124b() {
        return this.f14419b;
    }

    /* renamed from: b */
    public final C3969c mo37072i(int i) {
        C3986o m37115e = m37115e(1);
        byte[] bArr = m37115e.f14451a;
        int i2 = m37115e.f14453c;
        m37115e.f14453c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f14419b++;
        return this;
    }

    /* renamed from: b */
    public final C3969c mo37076c(byte[] bArr) {
        if (bArr != null) {
            return mo37075c(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    /* renamed from: b */
    public final C3969c mo37075c(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = i2;
            C3993u.m37014a(bArr.length, i, j);
            int i3 = i2 + i;
            while (i < i3) {
                C3986o m37115e = m37115e(1);
                int min = Math.min(i3 - i, PropertyFlags.UNSIGNED - m37115e.f14453c);
                System.arraycopy(bArr, i, m37115e.f14451a, m37115e.f14453c, min);
                i += min;
                m37115e.f14453c += min;
            }
            this.f14419b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d, com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: c */
    public final C3969c mo37060c() {
        return this;
    }

    /* renamed from: c */
    public final C3969c mo37073h(int i) {
        C3986o m37115e = m37115e(2);
        byte[] bArr = m37115e.f14451a;
        int i2 = m37115e.f14453c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        m37115e.f14453c = i3 + 1;
        this.f14419b += 2;
        return this;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: c */
    public final C3973f mo37059c(long j) throws EOFException {
        return new C3973f(mo37055g(j));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: d */
    public final C3969c mo37069u() {
        return this;
    }

    /* renamed from: d */
    public final C3969c mo37074g(int i) {
        C3986o m37115e = m37115e(4);
        byte[] bArr = m37115e.f14451a;
        int i2 = m37115e.f14453c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        m37115e.f14453c = i5 + 1;
        this.f14419b += 4;
        return this;
    }

    /* renamed from: d */
    public final String m37116d(long j) throws EOFException {
        return m37132a(j, C3993u.f14466a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r0.f14455e == false) goto L14;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bytedance.sdk.p127a.p128a.C3986o m37115e(int r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 <= 0) goto L4d
            r0 = r4
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L4d
            r0 = r3
            com.bytedance.sdk.a.a.o r0 = r0.f14418a
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L29
            com.bytedance.sdk.a.a.o r0 = com.bytedance.sdk.p127a.p128a.C3987p.m37040a()
            r5 = r0
            r0 = r3
            r1 = r5
            r0.f14418a = r1
            r0 = r5
            r1 = r5
            r0.f14457g = r1
            r0 = r5
            r1 = r5
            r0.f14456f = r1
            r0 = r5
            return r0
        L29:
            r0 = r5
            com.bytedance.sdk.a.a.o r0 = r0.f14457g
            r6 = r0
            r0 = r6
            int r0 = r0.f14453c
            r1 = r4
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L43
            r0 = r6
            r5 = r0
            r0 = r6
            boolean r0 = r0.f14455e
            if (r0 != 0) goto L4b
        L43:
            r0 = r6
            com.bytedance.sdk.a.a.o r1 = com.bytedance.sdk.p127a.p128a.C3987p.m37040a()
            com.bytedance.sdk.a.a.o r0 = r0.m37044a(r1)
            r5 = r0
        L4b:
            r0 = r5
            return r0
        L4d:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            r1.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p128a.C3969c.m37115e(int):com.bytedance.sdk.a.a.o");
    }

    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: e */
    public final String mo37057e(long j) throws EOFException {
        C3969c c3969c;
        if (j >= 0) {
            char c = 65535;
            if (j != Long.MAX_VALUE) {
                c = j + 1;
            }
            long m37135a = m37135a((byte) 10, 0L, c);
            if (m37135a != -1) {
                return m37113f(m37135a);
            }
            if (c < m37124b() && m37122b(c - 1) == 13 && m37122b((long) c) == 10) {
                return m37113f((long) c);
            }
            m37131a(new C3969c(), 0L, Math.min(32L, m37124b()));
            throw new EOFException("\\n not found: limit=" + Math.min(m37124b(), j) + " content=" + c3969c.m37109n().mo37028e() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: e */
    public final boolean mo37058e() {
        return this.f14419b == 0;
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3969c)) {
            return false;
        }
        C3969c c3969c = (C3969c) obj;
        long j = this.f14419b;
        if (j != c3969c.f14419b) {
            return false;
        }
        char c = 0;
        if (j == 0) {
            return true;
        }
        C3986o c3986o = this.f14418a;
        C3986o c3986o2 = c3969c.f14418a;
        int i = c3986o.f14452b;
        int i2 = c3986o2.f14452b;
        while (c < this.f14419b) {
            long min = Math.min(c3986o.f14453c - i, c3986o2.f14453c - i2);
            int i3 = 0;
            while (i3 < min) {
                if (c3986o.f14451a[i] != c3986o2.f14451a[i2]) {
                    return false;
                }
                i3++;
                i++;
                i2++;
            }
            C3986o c3986o3 = c3986o;
            int i4 = i;
            if (i == c3986o.f14453c) {
                c3986o3 = c3986o.f14456f;
                i4 = c3986o3.f14452b;
            }
            int i5 = i2;
            C3986o c3986o4 = c3986o2;
            if (i2 == c3986o2.f14453c) {
                c3986o4 = c3986o2.f14456f;
                i5 = c3986o4.f14452b;
            }
            c += min;
            c3986o = c3986o3;
            i = i4;
            i2 = i5;
            c3986o2 = c3986o4;
        }
        return true;
    }

    /* renamed from: f */
    public final C3973f m37114f(int i) {
        return i == 0 ? C3973f.f14422b : new C3988q(this, i);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: f */
    public final InputStream mo37056f() {
        return new InputStream() { // from class: com.bytedance.sdk.a.a.c.1
            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(C3969c.this.f14419b, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (C3969c.this.f14419b > 0) {
                    return C3969c.this.mo37054h() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                return C3969c.this.m37125a(bArr, i, i2);
            }

            public String toString() {
                return C3969c.this + ".inputStream()";
            }
        };
    }

    /* renamed from: f */
    public final String m37113f(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (m37122b(j2) == 13) {
                String m37116d = m37116d(j2);
                mo37053h(2L);
                return m37116d;
            }
        }
        String m37116d2 = m37116d(j);
        mo37053h(1L);
        return m37116d2;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3971d, com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
    public final void flush() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* renamed from: g */
    public final long m37112g() {
        ?? r0 = this.f14419b;
        if (r0 == 0) {
            return 0L;
        }
        C3986o c3986o = this.f14418a.f14457g;
        char c = r0;
        if (c3986o.f14453c < 8192) {
            c = r0;
            if (c3986o.f14455e) {
                c = r0 - (c3986o.f14453c - c3986o.f14452b);
            }
        }
        return c;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: g */
    public final byte[] mo37055g(long j) throws EOFException {
        C3993u.m37014a(this.f14419b, 0L, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[(int) j];
            mo37062a(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: h */
    public final byte mo37054h() {
        if (this.f14419b != 0) {
            C3986o c3986o = this.f14418a;
            int i = c3986o.f14452b;
            int i2 = c3986o.f14453c;
            byte[] bArr = c3986o.f14451a;
            int i3 = i + 1;
            byte b = bArr[i];
            this.f14419b--;
            if (i3 == i2) {
                this.f14418a = c3986o.m37042b();
                C3987p.m37039a(c3986o);
            } else {
                c3986o.f14452b = i3;
            }
            return b;
        }
        throw new IllegalStateException("size == 0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: h */
    public final void mo37053h(long j) throws EOFException {
        C3986o c3986o;
        while (j > 0) {
            if (this.f14418a == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, c3986o.f14453c - this.f14418a.f14452b);
            long j2 = min;
            this.f14419b -= j2;
            ?? r0 = j - j2;
            this.f14418a.f14452b += min;
            j = r0;
            if (this.f14418a.f14452b == this.f14418a.f14453c) {
                C3986o c3986o2 = this.f14418a;
                this.f14418a = c3986o2.m37042b();
                C3987p.m37039a(c3986o2);
                j = r0;
            }
        }
    }

    public final int hashCode() {
        int i;
        C3986o c3986o;
        C3986o c3986o2 = this.f14418a;
        if (c3986o2 == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = c3986o2.f14453c;
            i = i2;
            for (int i4 = c3986o2.f14452b; i4 < i3; i4++) {
                i = (i * 31) + c3986o2.f14451a[i4];
            }
            c3986o = c3986o2.f14456f;
            c3986o2 = c3986o;
            i2 = i;
        } while (c3986o != this.f14418a);
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /* renamed from: i */
    public final C3969c mo37070l(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return mo37072i(48);
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                return mo37077b("-9223372036854775808");
            }
            z = true;
        }
        if (c >= 100000000) {
            i2 = c < 1000000000000L ? c < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
        } else if (c >= 10000) {
            i2 = c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8;
        } else if (c >= 100) {
            i2 = c < 1000 ? 3 : 4;
        } else if (c >= 10) {
            i2 = 2;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 + 1;
        }
        C3986o m37115e = m37115e(i3);
        byte[] bArr = m37115e.f14451a;
        int i4 = m37115e.f14453c + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = f14417c[(int) (c % '\n')];
            c /= '\n';
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        m37115e.f14453c += i3;
        this.f14419b += i3;
        return this;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: i */
    public final short mo37052i() {
        if (this.f14419b < 2) {
            throw new IllegalStateException("size < 2: " + this.f14419b);
        }
        C3986o c3986o = this.f14418a;
        int i = c3986o.f14452b;
        int i2 = c3986o.f14453c;
        if (i2 - i < 2) {
            return (short) (((mo37054h() & 255) << 8) | (mo37054h() & 255));
        }
        byte[] bArr = c3986o.f14451a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        this.f14419b -= 2;
        if (i4 == i2) {
            this.f14418a = c3986o.m37042b();
            C3987p.m37039a(c3986o);
        } else {
            c3986o.f14452b = i4;
        }
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: j */
    public final int mo37051j() {
        if (this.f14419b < 4) {
            throw new IllegalStateException("size < 4: " + this.f14419b);
        }
        C3986o c3986o = this.f14418a;
        int i = c3986o.f14452b;
        int i2 = c3986o.f14453c;
        if (i2 - i < 4) {
            return ((mo37054h() & 255) << 24) | ((mo37054h() & 255) << 16) | ((mo37054h() & 255) << 8) | (mo37054h() & 255);
        }
        byte[] bArr = c3986o.f14451a;
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        int i5 = i4 + 1;
        byte b3 = bArr[i4];
        int i6 = i5 + 1;
        byte b4 = bArr[i5];
        this.f14419b -= 4;
        if (i6 == i2) {
            this.f14418a = c3986o.m37042b();
            C3987p.m37039a(c3986o);
        } else {
            c3986o.f14452b = i6;
        }
        return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: j */
    public final C3969c mo37071k(long j) {
        if (j == 0) {
            return mo37072i(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        C3986o m37115e = m37115e(numberOfTrailingZeros);
        byte[] bArr = m37115e.f14451a;
        int i = m37115e.f14453c;
        ?? r9 = j;
        for (int i2 = (m37115e.f14453c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f14417c[(int) (15 & r9)];
            r9 >>>= 4;
        }
        m37115e.f14453c += numberOfTrailingZeros;
        this.f14419b += numberOfTrailingZeros;
        return this;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: k */
    public final short mo37050k() {
        return C3993u.m37012a(mo37052i());
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: l */
    public final int mo37049l() {
        return C3993u.m37015a(mo37051j());
    }

    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: m */
    public final long mo37048m() {
        char c;
        int i;
        boolean z;
        byte b;
        int i2;
        int i3;
        if (this.f14419b != 0) {
            int i4 = 0;
            char c2 = 0;
            boolean z2 = false;
            do {
                C3986o c3986o = this.f14418a;
                byte[] bArr = c3986o.f14451a;
                int i5 = c3986o.f14452b;
                int i6 = c3986o.f14453c;
                c = c2;
                i = i4;
                while (true) {
                    z = z2;
                    if (i5 >= i6) {
                        break;
                    }
                    b = bArr[i5];
                    if (b < 48 || b > 57) {
                        if (b >= 97 && b <= 102) {
                            i3 = b - 97;
                        } else if (b < 65 || b > 70) {
                            break;
                        } else {
                            i3 = b - 65;
                        }
                        i2 = i3 + 10;
                    } else {
                        i2 = b - 48;
                    }
                    if ((0 & c) != 0) {
                        C3969c mo37072i = new C3969c().mo37071k(c).mo37072i((int) b);
                        throw new NumberFormatException("Number too large: " + mo37072i.m37108o());
                    }
                    c = (c << 4) | i2;
                    i5++;
                    i++;
                }
                if (i == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                }
                z = true;
                if (i5 == i6) {
                    this.f14418a = c3986o.m37042b();
                    C3987p.m37039a(c3986o);
                } else {
                    c3986o.f14452b = i5;
                }
                if (z) {
                    break;
                }
                i4 = i;
                z2 = z;
                c2 = c;
            } while (this.f14418a != null);
            this.f14419b -= i;
            return c;
        }
        throw new IllegalStateException("size == 0");
    }

    /* renamed from: n */
    public final C3973f m37109n() {
        return new C3973f(m37107q());
    }

    /* renamed from: o */
    public final String m37108o() {
        try {
            return m37132a(this.f14419b, C3993u.f14466a);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3972e
    /* renamed from: p */
    public final String mo37047p() throws EOFException {
        return mo37057e(Long.MAX_VALUE);
    }

    /* renamed from: q */
    public final byte[] m37107q() {
        try {
            return mo37055g(this.f14419b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: r */
    public final void m37106r() {
        try {
            mo37053h(this.f14419b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) throws IOException {
        C3986o c3986o = this.f14418a;
        if (c3986o == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), c3986o.f14453c - c3986o.f14452b);
        byteBuffer.put(c3986o.f14451a, c3986o.f14452b, min);
        c3986o.f14452b += min;
        this.f14419b -= min;
        if (c3986o.f14452b == c3986o.f14453c) {
            this.f14418a = c3986o.m37042b();
            C3987p.m37039a(c3986o);
        }
        return min;
    }

    /* renamed from: s */
    public final C3969c clone() {
        C3969c c3969c = new C3969c();
        if (this.f14419b == 0) {
            return c3969c;
        }
        C3986o m37046a = this.f14418a.m37046a();
        c3969c.f14418a = m37046a;
        m37046a.f14457g = m37046a;
        m37046a.f14456f = m37046a;
        C3986o c3986o = this.f14418a;
        while (true) {
            c3986o = c3986o.f14456f;
            if (c3986o == this.f14418a) {
                c3969c.f14419b = this.f14419b;
                return c3969c;
            }
            c3969c.f14418a.f14457g.m37044a(c3986o.m37046a());
        }
    }

    /* renamed from: t */
    public final C3973f m37104t() {
        long j = this.f14419b;
        if (j <= 2147483647L) {
            return m37114f((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f14419b);
    }

    public final String toString() {
        return m37104t().toString();
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                C3986o m37115e = m37115e(1);
                int min = Math.min(i, PropertyFlags.UNSIGNED - m37115e.f14453c);
                byteBuffer.get(m37115e.f14451a, m37115e.f14453c, min);
                i -= min;
                m37115e.f14453c += min;
            }
            this.f14419b += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }
}
