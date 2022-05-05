package p081h.p203i.p325c.p337n.p338d.p347m;

import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import kotlinx.coroutines.scheduling.CoroutineScheduler;
/* renamed from: h.i.c.n.d.m.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/c.class */
public final class C9781c implements Flushable {

    /* renamed from: a */
    public final byte[] f22200a;

    /* renamed from: b */
    public final int f22201b;

    /* renamed from: c */
    public int f22202c = 0;

    /* renamed from: d */
    public final OutputStream f22203d;

    /* renamed from: h.i.c.n.d.m.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/c$a.class */
    public static class C9782a extends IOException {
        public C9782a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    public C9781c(OutputStream outputStream, byte[] bArr) {
        this.f22203d = outputStream;
        this.f22200a = bArr;
        this.f22201b = bArr.length;
    }

    /* renamed from: a */
    public static C9781c m14272a(OutputStream outputStream) {
        return m14271a(outputStream, 4096);
    }

    /* renamed from: a */
    public static C9781c m14271a(OutputStream outputStream, int i) {
        return new C9781c(outputStream, new byte[i]);
    }

    /* renamed from: b */
    public static int m14267b(float f) {
        return 4;
    }

    /* renamed from: b */
    public static int m14265b(int i, float f) {
        return m14239l(i) + m14267b(f);
    }

    /* renamed from: b */
    public static int m14263b(int i, long j) {
        return m14239l(i) + m14246f(j);
    }

    /* renamed from: b */
    public static int m14262b(int i, C9778a aVar) {
        return m14239l(i) + m14255c(aVar);
    }

    /* renamed from: b */
    public static int m14261b(int i, boolean z) {
        return m14239l(i) + m14259b(z);
    }

    /* renamed from: b */
    public static int m14259b(boolean z) {
        return 1;
    }

    /* renamed from: c */
    public static int m14255c(C9778a aVar) {
        return m14241j(aVar.m14285b()) + aVar.m14285b();
    }

    /* renamed from: e */
    public static int m14250e(int i, int i2) {
        return m14239l(i) + m14243h(i2);
    }

    /* renamed from: e */
    public static int m14249e(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if ((CoroutineScheduler.PARKED_VERSION_MASK & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    /* renamed from: f */
    public static int m14247f(int i, int i2) {
        return m14239l(i) + m14240k(i2);
    }

    /* renamed from: f */
    public static int m14246f(long j) {
        return m14249e(j);
    }

    /* renamed from: g */
    public static int m14244g(int i, int i2) {
        return m14239l(i) + m14238m(i2);
    }

    /* renamed from: h */
    public static int m14243h(int i) {
        return m14242i(i);
    }

    /* renamed from: i */
    public static int m14242i(int i) {
        if (i >= 0) {
            return m14241j(i);
        }
        return 10;
    }

    /* renamed from: j */
    public static int m14241j(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: k */
    public static int m14240k(int i) {
        return m14241j(m14237n(i));
    }

    /* renamed from: l */
    public static int m14239l(int i) {
        return m14241j(C9784e.m14206a(i, 0));
    }

    /* renamed from: m */
    public static int m14238m(int i) {
        return m14241j(i);
    }

    /* renamed from: n */
    public static int m14237n(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public final void m14283a() throws IOException {
        OutputStream outputStream = this.f22203d;
        if (outputStream != null) {
            outputStream.write(this.f22200a, 0, this.f22202c);
            this.f22202c = 0;
            return;
        }
        throw new C9782a();
    }

    /* renamed from: a */
    public void m14282a(byte b) throws IOException {
        if (this.f22202c == this.f22201b) {
            m14283a();
        }
        byte[] bArr = this.f22200a;
        int i = this.f22202c;
        this.f22202c = i + 1;
        bArr[i] = b;
    }

    /* renamed from: a */
    public void m14281a(float f) throws IOException {
        m14254d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public void m14280a(int i) throws IOException {
        m14266b(i);
    }

    /* renamed from: a */
    public void m14279a(int i, float f) throws IOException {
        m14257c(i, 5);
        m14281a(f);
    }

    /* renamed from: a */
    public void m14278a(int i, int i2) throws IOException {
        m14257c(i, 0);
        m14280a(i2);
    }

    /* renamed from: a */
    public void m14277a(int i, long j) throws IOException {
        m14257c(i, 0);
        m14252d(j);
    }

    /* renamed from: a */
    public void m14276a(int i, C9778a aVar) throws IOException {
        m14257c(i, 2);
        m14274a(aVar);
    }

    /* renamed from: a */
    public void m14275a(int i, boolean z) throws IOException {
        m14257c(i, 0);
        m14270a(z);
    }

    /* renamed from: a */
    public void m14274a(C9778a aVar) throws IOException {
        m14251e(aVar.m14285b());
        m14260b(aVar);
    }

    /* renamed from: a */
    public void m14273a(C9778a aVar, int i, int i2) throws IOException {
        int i3 = this.f22201b;
        int i4 = this.f22202c;
        if (i3 - i4 >= i2) {
            aVar.m14286a(this.f22200a, i, i4, i2);
            this.f22202c += i2;
            return;
        }
        int i5 = i3 - i4;
        aVar.m14286a(this.f22200a, i, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f22202c = this.f22201b;
        m14283a();
        if (i7 <= this.f22201b) {
            aVar.m14286a(this.f22200a, i6, 0, i7);
            this.f22202c = i7;
            return;
        }
        InputStream a = aVar.m14290a();
        long j = i6;
        if (j == a.skip(j)) {
            while (i7 > 0) {
                int min = Math.min(i7, this.f22201b);
                int read = a.read(this.f22200a, 0, min);
                if (read == min) {
                    this.f22203d.write(this.f22200a, 0, read);
                    i7 -= read;
                } else {
                    throw new IllegalStateException("Read failed.");
                }
            }
            return;
        }
        throw new IllegalStateException("Skip failed.");
    }

    /* renamed from: a */
    public void m14270a(boolean z) throws IOException {
        m14258c(z ? 1 : 0);
    }

    /* renamed from: a */
    public void m14269a(byte[] bArr) throws IOException {
        m14268a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public void m14268a(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f22201b;
        int i4 = this.f22202c;
        if (i3 - i4 >= i2) {
            System.arraycopy(bArr, i, this.f22200a, i4, i2);
            this.f22202c += i2;
            return;
        }
        int i5 = i3 - i4;
        System.arraycopy(bArr, i, this.f22200a, i4, i5);
        int i6 = i + i5;
        int i7 = i2 - i5;
        this.f22202c = this.f22201b;
        m14283a();
        if (i7 <= this.f22201b) {
            System.arraycopy(bArr, i6, this.f22200a, 0, i7);
            this.f22202c = i7;
            return;
        }
        this.f22203d.write(bArr, i6, i7);
    }

    /* renamed from: b */
    public void m14266b(int i) throws IOException {
        if (i >= 0) {
            m14251e(i);
        } else {
            m14256c(i);
        }
    }

    /* renamed from: b */
    public void m14264b(int i, int i2) throws IOException {
        m14257c(i, 0);
        m14248f(i2);
    }

    /* renamed from: b */
    public void m14260b(C9778a aVar) throws IOException {
        m14273a(aVar, 0, aVar.m14285b());
    }

    /* renamed from: c */
    public void m14258c(int i) throws IOException {
        m14282a((byte) i);
    }

    /* renamed from: c */
    public void m14257c(int i, int i2) throws IOException {
        m14251e(C9784e.m14206a(i, i2));
    }

    /* renamed from: c */
    public void m14256c(long j) throws IOException {
        while (((-128) & j) != 0) {
            m14258c((((int) j) & 127) | 128);
            j >>>= 7;
        }
        m14258c((int) j);
    }

    /* renamed from: d */
    public void m14254d(int i) throws IOException {
        m14258c(i & 255);
        m14258c((i >> 8) & 255);
        m14258c((i >> 16) & 255);
        m14258c((i >> 24) & 255);
    }

    /* renamed from: d */
    public void m14253d(int i, int i2) throws IOException {
        m14257c(i, 0);
        m14245g(i2);
    }

    /* renamed from: d */
    public void m14252d(long j) throws IOException {
        m14256c(j);
    }

    /* renamed from: e */
    public void m14251e(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m14258c((i & 127) | 128);
            i >>>= 7;
        }
        m14258c(i);
    }

    /* renamed from: f */
    public void m14248f(int i) throws IOException {
        m14251e(m14237n(i));
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.f22203d != null) {
            m14283a();
        }
    }

    /* renamed from: g */
    public void m14245g(int i) throws IOException {
        m14251e(i);
    }
}
