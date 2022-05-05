package p081h.p160h.p179e.p180a.p188o.p189g;

import androidx.core.view.InputDeviceCompat;
import com.aotter.net.gson.internal.bind.TypeAdapters;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.h.e.a.o.g.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/a.class */
public class C6411a extends InputStream {

    /* renamed from: a */
    public int f15960a;

    /* renamed from: b */
    public int f15961b;

    /* renamed from: c */
    public int f15962c;

    /* renamed from: d */
    public boolean f15963d;

    /* renamed from: e */
    public int f15964e;

    /* renamed from: f */
    public int f15965f;

    /* renamed from: h */
    public int f15967h;

    /* renamed from: i */
    public InputStream f15968i;

    /* renamed from: l */
    public int f15971l;

    /* renamed from: m */
    public int f15972m;

    /* renamed from: n */
    public int f15973n;

    /* renamed from: o */
    public int f15974o;

    /* renamed from: p */
    public int f15975p;

    /* renamed from: q */
    public int f15976q;

    /* renamed from: r */
    public int f15977r;

    /* renamed from: s */
    public int f15978s;

    /* renamed from: t */
    public int f15979t;

    /* renamed from: u */
    public int f15980u;

    /* renamed from: v */
    public int f15981v;

    /* renamed from: w */
    public int f15982w;

    /* renamed from: x */
    public char f15983x;

    /* renamed from: y */
    public C6412a f15984y;

    /* renamed from: g */
    public final C6413b f15966g = new C6413b();

    /* renamed from: j */
    public int f15969j = -1;

    /* renamed from: k */
    public int f15970k = 1;

    /* renamed from: h.h.e.a.o.g.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/o/g/a$a.class */
    public static final class C6412a {

        /* renamed from: a */
        public final boolean[] f15985a = new boolean[256];

        /* renamed from: b */
        public final byte[] f15986b = new byte[256];

        /* renamed from: c */
        public final byte[] f15987c = new byte[18002];

        /* renamed from: d */
        public final byte[] f15988d = new byte[18002];

        /* renamed from: e */
        public final int[] f15989e = new int[256];

        /* renamed from: f */
        public final int[][] f15990f = new int[6][258];

        /* renamed from: g */
        public final int[][] f15991g = new int[6][258];

        /* renamed from: h */
        public final int[][] f15992h = new int[6][258];

        /* renamed from: i */
        public final int[] f15993i = new int[6];

        /* renamed from: j */
        public final int[] f15994j = new int[InputDeviceCompat.SOURCE_KEYBOARD];

        /* renamed from: k */
        public final char[] f15995k = new char[256];

        /* renamed from: l */
        public final char[][] f15996l = new char[6][258];

        /* renamed from: m */
        public final byte[] f15997m = new byte[6];

        /* renamed from: n */
        public int[] f15998n;

        /* renamed from: o */
        public byte[] f15999o;

        public C6412a(int i) {
            this.f15999o = new byte[i * 100000];
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x000e, code lost:
            if (r0.length < r4) goto L_0x0011;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int[] m22710a(int r4) {
            /*
                r3 = this;
                r0 = r3
                int[] r0 = r0.f15998n
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L_0x0011
                r0 = r5
                r6 = r0
                r0 = r5
                int r0 = r0.length
                r1 = r4
                if (r0 >= r1) goto L_0x001a
            L_0x0011:
                r0 = r4
                int[] r0 = new int[r0]
                r6 = r0
                r0 = r3
                r1 = r6
                r0.f15998n = r1
            L_0x001a:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.p188o.p189g.C6411a.C6412a.m22710a(int):int[]");
        }
    }

    public C6411a(InputStream inputStream) throws IOException {
        this.f15968i = inputStream;
        m22724c();
    }

    /* renamed from: a */
    public static void m22727a(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 <= i2; i6++) {
            for (int i7 = 0; i7 < i3; i7++) {
                i5 = i5;
                if (cArr[i7] == i6) {
                    iArr3[i5] = i7;
                    i5++;
                }
            }
        }
        int i8 = 23;
        while (true) {
            i8--;
            if (i8 <= 0) {
                break;
            }
            iArr2[i8] = 0;
            iArr[i8] = 0;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            int i10 = cArr[i9] + 1;
            iArr2[i10] = iArr2[i10] + 1;
        }
        int i11 = iArr2[0];
        for (int i12 = 1; i12 < 23; i12++) {
            i11 += iArr2[i12];
            iArr2[i12] = i11;
        }
        int i13 = iArr2[i];
        int i14 = i;
        while (i14 <= i2) {
            int i15 = i14 + 1;
            int i16 = iArr2[i15];
            int i17 = i4 + (i16 - i13);
            iArr[i14] = i17 - 1;
            i4 = i17 << 1;
            i14 = i15;
            i13 = i16;
        }
        while (true) {
            i++;
            if (i <= i2) {
                iArr2[i] = ((iArr[i - 1] + 1) << 1) - iArr2[i];
            } else {
                return;
            }
        }
    }

    /* renamed from: B */
    public final void m22733B() throws IOException {
        if (this.f15976q != this.f15977r) {
            this.f15975p = 1;
            m22713n();
            return;
        }
        int i = this.f15975p + 1;
        this.f15975p = i;
        if (i >= 4) {
            C6412a aVar = this.f15984y;
            byte[] bArr = aVar.f15999o;
            int i2 = this.f15982w;
            this.f15983x = (char) (bArr[i2] & 255);
            this.f15982w = aVar.f15998n[i2];
            this.f15979t = 0;
            m22732C();
            return;
        }
        m22713n();
    }

    /* renamed from: C */
    public final void m22732C() throws IOException {
        if (this.f15979t < this.f15983x) {
            int i = this.f15976q;
            this.f15969j = i;
            this.f15966g.m22708a(i);
            this.f15979t++;
            this.f15970k = 7;
            return;
        }
        this.f15978s++;
        this.f15975p = 0;
        m22713n();
    }

    /* renamed from: a */
    public final int m22729a(int i) throws IOException {
        int i2;
        int i3 = this.f15965f;
        int i4 = this.f15964e;
        int i5 = i3;
        int i6 = i4;
        if (i3 < i) {
            InputStream inputStream = this.f15968i;
            int i7 = i4;
            do {
                int read = inputStream.read();
                if (read >= 0) {
                    i6 = (i7 << 8) | read;
                    i2 = i3 + 8;
                    i3 = i2;
                    i7 = i6;
                } else {
                    throw new IOException("unexpected end of stream");
                }
            } while (i2 < i);
            this.f15964e = i6;
            i5 = i2;
        }
        int i8 = i5 - i;
        this.f15965f = i8;
        return ((1 << i) - 1) & (i6 >> i8);
    }

    /* renamed from: a */
    public final void m22731a() {
        C6412a aVar = this.f15984y;
        boolean[] zArr = aVar.f15985a;
        byte[] bArr = aVar.f15986b;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            i = i;
            if (zArr[i2]) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        this.f15967h = i;
    }

    /* renamed from: a */
    public final void m22730a(char c, String str) throws IOException {
        int read = this.f15968i.read();
        if (read != c) {
            throw new IOException("Stream is not BZip2 formatted: expected '" + c + "' as " + str + " byte but got '" + ((char) read) + "'");
        }
    }

    /* renamed from: a */
    public final void m22728a(int i, int i2) {
        C6412a aVar = this.f15984y;
        char[][] cArr = aVar.f15996l;
        int[] iArr = aVar.f15993i;
        int[][] iArr2 = aVar.f15990f;
        int[][] iArr3 = aVar.f15991g;
        int[][] iArr4 = aVar.f15992h;
        for (int i3 = 0; i3 < i2; i3++) {
            char[] cArr2 = cArr[i3];
            int i4 = i;
            char c = 0;
            char c2 = ' ';
            while (true) {
                int i5 = i4 - 1;
                if (i5 >= 0) {
                    char c3 = cArr2[i5];
                    char c4 = c;
                    if (c3 > c) {
                        c4 = c3;
                    }
                    i4 = i5;
                    c = c4;
                    if (c3 < c2) {
                        c2 = c3;
                        i4 = i5;
                        c = c4;
                    }
                }
            }
            m22727a(iArr2[i3], iArr3[i3], iArr4[i3], cArr[i3], c2, c, i);
            iArr[i3] = c2;
        }
    }

    /* renamed from: b */
    public final int m22726b() throws IOException {
        int i = this.f15969j;
        switch (this.f15970k) {
            case 0:
                return -1;
            case 1:
                throw new IllegalStateException();
            case 2:
                throw new IllegalStateException();
            case 3:
                m22712o();
                break;
            case 4:
                m22711p();
                break;
            case 5:
                throw new IllegalStateException();
            case 6:
                m22733B();
                break;
            case 7:
                m22732C();
                break;
            default:
                throw new IllegalStateException();
        }
        return i;
    }

    /* renamed from: b */
    public final int m22725b(int i) throws IOException {
        InputStream inputStream = this.f15968i;
        C6412a aVar = this.f15984y;
        int i2 = aVar.f15987c[i] & 255;
        int[] iArr = aVar.f15990f[i2];
        int i3 = aVar.f15993i[i2];
        int a = m22729a(i3);
        int i4 = this.f15965f;
        int i5 = this.f15964e;
        while (a > iArr[i3]) {
            i3++;
            while (i4 < 1) {
                int read = inputStream.read();
                if (read >= 0) {
                    i5 = (i5 << 8) | read;
                    i4 += 8;
                } else {
                    throw new IOException("unexpected end of stream");
                }
            }
            i4--;
            a = (a << 1) | (1 & (i5 >> i4));
        }
        this.f15965f = i4;
        this.f15964e = i5;
        return aVar.f15992h[i2][a - aVar.f15991g[i2][i3]];
    }

    /* renamed from: c */
    public final void m22724c() throws IOException {
        InputStream inputStream = this.f15968i;
        if (inputStream == null) {
            throw new IOException("No InputStream");
        } else if (inputStream.available() != 0) {
            m22730a('B', "first");
            m22730a('Z', TypeAdapters.C163827.SECOND);
            m22730a('h', "third");
            int read = this.f15968i.read();
            if (read < 49 || read > 57) {
                throw new IOException("Stream is not BZip2 formatted: illegal blocksize " + ((char) read));
            }
            this.f15962c = read - 48;
            m22723d();
            m22715l();
        } else {
            throw new IOException("Empty InputStream");
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f15968i;
        if (inputStream != null) {
            try {
                if (inputStream != System.in) {
                    inputStream.close();
                }
            } finally {
                this.f15984y = null;
                this.f15968i = null;
            }
        }
    }

    /* renamed from: d */
    public final void m22723d() throws IOException {
        char h = m22719h();
        char h2 = m22719h();
        char h3 = m22719h();
        char h4 = m22719h();
        char h5 = m22719h();
        char h6 = m22719h();
        if (h == 23 && h2 == 'r' && h3 == 'E' && h4 == '8' && h5 == 'P' && h6 == 144) {
            m22721f();
            return;
        }
        boolean z = false;
        if (h == '1' && h2 == 'A' && h3 == 'Y' && h4 == '&' && h5 == 'S' && h6 == 'Y') {
            this.f15971l = m22718i();
            if (m22729a(1) == 1) {
                z = true;
            }
            this.f15963d = z;
            if (this.f15984y == null) {
                this.f15984y = new C6412a(this.f15962c);
            }
            m22716k();
            this.f15966g.m22709a();
            this.f15970k = 1;
            return;
        }
        this.f15970k = 0;
        throw new IOException("bad block header");
    }

    /* renamed from: e */
    public final void m22722e() throws IOException {
        this.f15973n = this.f15966g.m22707b();
        int i = this.f15971l;
        int i2 = this.f15973n;
        if (i == i2) {
            int i3 = this.f15974o;
            this.f15974o = (i3 >>> 31) | (i3 << 1);
            this.f15974o ^= i2;
            return;
        }
        int i4 = this.f15972m;
        this.f15974o = (i4 >>> 31) | (i4 << 1);
        this.f15974o = i ^ this.f15974o;
        throw new IOException("BZip2 CRC error");
    }

    /* renamed from: f */
    public final void m22721f() throws IOException {
        this.f15972m = m22718i();
        this.f15970k = 0;
        this.f15984y = null;
        if (this.f15972m != this.f15974o) {
            throw new IOException("BZip2 CRC error");
        }
    }

    /* renamed from: g */
    public final boolean m22720g() throws IOException {
        int i = this.f15965f;
        int i2 = this.f15964e;
        boolean z = true;
        int i3 = i;
        int i4 = i2;
        if (i < 1) {
            int read = this.f15968i.read();
            if (read >= 0) {
                i4 = (i2 << 8) | read;
                i3 = i + 8;
                this.f15964e = i4;
            } else {
                throw new IOException("unexpected end of stream");
            }
        }
        int i5 = i3 - 1;
        this.f15965f = i5;
        if (((i4 >> i5) & 1) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public final char m22719h() throws IOException {
        return (char) m22729a(8);
    }

    /* renamed from: i */
    public final int m22718i() throws IOException {
        int a = m22729a(8);
        int a2 = m22729a(8);
        return m22729a(8) | (((((a << 8) | a2) << 8) | m22729a(8)) << 8);
    }

    /* renamed from: j */
    public final void m22717j() throws IOException {
        C6412a aVar = this.f15984y;
        boolean[] zArr = aVar.f15985a;
        byte[] bArr = aVar.f15997m;
        byte[] bArr2 = aVar.f15987c;
        byte[] bArr3 = aVar.f15988d;
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            i = i;
            if (m22720g()) {
                i |= 1 << i2;
            }
        }
        int i3 = 256;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            }
            zArr[i3] = false;
        }
        for (int i4 = 0; i4 < 16; i4++) {
            if (((1 << i4) & i) != 0) {
                for (int i5 = 0; i5 < 16; i5++) {
                    if (m22720g()) {
                        zArr[(i4 << 4) + i5] = true;
                    }
                }
            }
        }
        m22731a();
        int i6 = this.f15967h + 2;
        int a = m22729a(3);
        int a2 = m22729a(15);
        for (int i7 = 0; i7 < a2; i7++) {
            int i8 = 0;
            while (m22720g()) {
                i8++;
            }
            bArr3[i7] = (byte) i8;
        }
        int i9 = a;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            }
            bArr[i9] = (byte) i9;
        }
        for (int i10 = 0; i10 < a2; i10++) {
            int i11 = bArr3[i10] & 255;
            byte b = bArr[i11];
            while (i11 > 0) {
                bArr[i11] = bArr[i11 - 1];
                i11--;
            }
            bArr[0] = b;
            bArr2[i10] = b;
        }
        char[][] cArr = aVar.f15996l;
        for (int i12 = 0; i12 < a; i12++) {
            int a3 = m22729a(5);
            char[] cArr2 = cArr[i12];
            for (int i13 = 0; i13 < i6; i13++) {
                while (m22720g()) {
                    a3 += m22720g() ? -1 : 1;
                }
                cArr2[i13] = (char) a3;
            }
        }
        m22728a(i6, a);
    }

    /* renamed from: k */
    public final void m22716k() throws IOException {
        int i;
        this.f15961b = m22729a(24);
        m22717j();
        InputStream inputStream = this.f15968i;
        C6412a aVar = this.f15984y;
        byte[] bArr = aVar.f15999o;
        int[] iArr = aVar.f15989e;
        byte[] bArr2 = aVar.f15987c;
        byte[] bArr3 = aVar.f15986b;
        char[] cArr = aVar.f15995k;
        int[] iArr2 = aVar.f15993i;
        int[][] iArr3 = aVar.f15990f;
        int[][] iArr4 = aVar.f15991g;
        int[][] iArr5 = aVar.f15992h;
        int i2 = this.f15962c * 100000;
        int i3 = 256;
        while (true) {
            i3--;
            if (i3 < 0) {
                break;
            }
            cArr[i3] = (char) i3;
            iArr[i3] = 0;
        }
        int i4 = this.f15967h + 1;
        int b = m22725b(0);
        int i5 = this.f15964e;
        int i6 = this.f15965f;
        int i7 = bArr2[0] & 255;
        int[] iArr6 = iArr4[i7];
        int[] iArr7 = iArr3[i7];
        int[] iArr8 = iArr5[i7];
        int i8 = iArr2[i7];
        int i9 = -1;
        int i10 = 49;
        int i11 = 0;
        while (b != i4) {
            if (b == 0 || b == 1) {
                int i12 = -1;
                int i13 = 1;
                int[] iArr9 = iArr8;
                int i14 = i5;
                int[] iArr10 = iArr6;
                int i15 = i10;
                int i16 = b;
                while (true) {
                    if (i16 == 0) {
                        i12 += i13;
                    } else if (i16 == 1) {
                        i12 += i13 << 1;
                    } else {
                        byte b2 = bArr3[cArr[0]];
                        int i17 = b2 & 255;
                        iArr[i17] = iArr[i17] + i12 + 1;
                        while (i12 >= 0) {
                            i9++;
                            bArr[i9] = b2;
                            i12--;
                        }
                        if (i9 < i2) {
                            b = i16;
                            i10 = i15;
                            iArr6 = iArr10;
                            i5 = i14;
                            iArr8 = iArr9;
                        } else {
                            throw new IOException("block overrun");
                        }
                    }
                    if (i15 == 0) {
                        i11++;
                        int i18 = bArr2[i11] & 255;
                        iArr10 = iArr4[i18];
                        iArr7 = iArr3[i18];
                        iArr9 = iArr5[i18];
                        i8 = iArr2[i18];
                        i15 = 49;
                    } else {
                        i15--;
                        i11 = i11;
                    }
                    while (i6 < i8) {
                        int read = inputStream.read();
                        if (read >= 0) {
                            i14 = (i14 << 8) | read;
                            i6 += 8;
                        } else {
                            throw new IOException("unexpected end of stream");
                        }
                    }
                    int i19 = i6 - i8;
                    i6 = i19;
                    int i20 = (i14 >> i19) & ((1 << i8) - 1);
                    int i21 = i8;
                    while (i20 > iArr7[i21]) {
                        while (i6 < 1) {
                            int read2 = inputStream.read();
                            if (read2 >= 0) {
                                i14 = (i14 << 8) | read2;
                                i6 += 8;
                            } else {
                                throw new IOException("unexpected end of stream");
                            }
                        }
                        i6--;
                        i20 = (i20 << 1) | ((i14 >> i6) & 1);
                        i21++;
                    }
                    i16 = iArr9[i20 - iArr10[i21]];
                    i13 <<= 1;
                }
            } else {
                int i22 = i9 + 1;
                if (i22 < i2) {
                    int i23 = b - 1;
                    char c = cArr[i23];
                    int i24 = bArr3[c] & 255;
                    iArr[i24] = iArr[i24] + 1;
                    bArr[i22] = bArr3[c];
                    if (b <= 16) {
                        while (i23 > 0) {
                            cArr[i23] = cArr[i];
                            i23--;
                        }
                    } else {
                        System.arraycopy(cArr, 0, cArr, 1, i23);
                    }
                    cArr[0] = c;
                    if (i10 == 0) {
                        i11++;
                        int i25 = bArr2[i11] & 255;
                        iArr6 = iArr4[i25];
                        iArr7 = iArr3[i25];
                        iArr8 = iArr5[i25];
                        i8 = iArr2[i25];
                        i10 = 49;
                    } else {
                        i10--;
                    }
                    while (i6 < i8) {
                        int read3 = inputStream.read();
                        if (read3 >= 0) {
                            i5 = (i5 << 8) | read3;
                            i6 += 8;
                        } else {
                            throw new IOException("unexpected end of stream");
                        }
                    }
                    i6 -= i8;
                    int i26 = (i5 >> i6) & ((1 << i8) - 1);
                    int i27 = i8;
                    while (i26 > iArr7[i27]) {
                        i27++;
                        while (i6 < 1) {
                            int read4 = inputStream.read();
                            if (read4 >= 0) {
                                i5 = (i5 << 8) | read4;
                                i6 += 8;
                            } else {
                                throw new IOException("unexpected end of stream");
                            }
                        }
                        i6--;
                        i26 = (i26 << 1) | ((i5 >> i6) & 1);
                    }
                    b = iArr8[i26 - iArr6[i27]];
                    i9 = i22;
                } else {
                    throw new IOException("block overrun");
                }
            }
        }
        this.f15960a = i9;
        this.f15965f = i6;
        this.f15964e = i5;
    }

    /* renamed from: l */
    public final void m22715l() throws IOException {
        C6412a aVar = this.f15984y;
        if (aVar != null) {
            int[] iArr = aVar.f15994j;
            int[] a = aVar.m22710a(this.f15960a + 1);
            C6412a aVar2 = this.f15984y;
            byte[] bArr = aVar2.f15999o;
            iArr[0] = 0;
            System.arraycopy(aVar2.f15989e, 0, iArr, 1, 256);
            int i = iArr[0];
            for (int i2 = 1; i2 <= 256; i2++) {
                i += iArr[i2];
                iArr[i2] = i;
            }
            int i3 = this.f15960a;
            for (int i4 = 0; i4 <= i3; i4++) {
                int i5 = bArr[i4] & 255;
                int i6 = iArr[i5];
                iArr[i5] = i6 + 1;
                a[i6] = i4;
            }
            int i7 = this.f15961b;
            if (i7 < 0 || i7 >= a.length) {
                throw new IOException("stream corrupted");
            }
            this.f15982w = a[i7];
            this.f15975p = 0;
            this.f15978s = 0;
            this.f15976q = 256;
            if (this.f15963d) {
                this.f15980u = 0;
                this.f15981v = 0;
                m22714m();
                return;
            }
            m22713n();
        }
    }

    /* renamed from: m */
    public final void m22714m() throws IOException {
        if (this.f15978s <= this.f15960a) {
            this.f15977r = this.f15976q;
            C6412a aVar = this.f15984y;
            byte[] bArr = aVar.f15999o;
            int i = this.f15982w;
            byte b = bArr[i];
            this.f15982w = aVar.f15998n[i];
            int i2 = this.f15980u;
            int i3 = 0;
            if (i2 == 0) {
                this.f15980u = C6419h.m22696a(this.f15981v) - 1;
                int i4 = this.f15981v + 1;
                this.f15981v = i4;
                if (i4 == 512) {
                    this.f15981v = 0;
                }
            } else {
                this.f15980u = i2 - 1;
            }
            if (this.f15980u == 1) {
                i3 = 1;
            }
            int i5 = (b & 255) ^ i3;
            this.f15976q = i5;
            this.f15978s++;
            this.f15969j = i5;
            this.f15970k = 3;
            this.f15966g.m22708a(i5);
            return;
        }
        m22722e();
        m22723d();
        m22715l();
    }

    /* renamed from: n */
    public final void m22713n() throws IOException {
        int i = this.f15978s;
        if (i <= this.f15960a) {
            this.f15977r = this.f15976q;
            C6412a aVar = this.f15984y;
            byte[] bArr = aVar.f15999o;
            int i2 = this.f15982w;
            int i3 = bArr[i2] & 255;
            this.f15976q = i3;
            this.f15982w = aVar.f15998n[i2];
            this.f15978s = i + 1;
            this.f15969j = i3;
            this.f15970k = 6;
            this.f15966g.m22708a(i3);
            return;
        }
        this.f15970k = 5;
        m22722e();
        m22723d();
        m22715l();
    }

    /* renamed from: o */
    public final void m22712o() throws IOException {
        if (this.f15976q != this.f15977r) {
            this.f15970k = 2;
            this.f15975p = 1;
            m22714m();
            return;
        }
        int i = this.f15975p + 1;
        this.f15975p = i;
        if (i >= 4) {
            C6412a aVar = this.f15984y;
            byte[] bArr = aVar.f15999o;
            int i2 = this.f15982w;
            this.f15983x = (char) (bArr[i2] & 255);
            this.f15982w = aVar.f15998n[i2];
            int i3 = this.f15980u;
            if (i3 == 0) {
                this.f15980u = C6419h.m22696a(this.f15981v) - 1;
                int i4 = this.f15981v + 1;
                this.f15981v = i4;
                if (i4 == 512) {
                    this.f15981v = 0;
                }
            } else {
                this.f15980u = i3 - 1;
            }
            this.f15979t = 0;
            this.f15970k = 4;
            if (this.f15980u == 1) {
                this.f15983x = (char) (this.f15983x ^ 1);
            }
            m22711p();
            return;
        }
        this.f15970k = 2;
        m22714m();
    }

    /* renamed from: p */
    public final void m22711p() throws IOException {
        if (this.f15979t < this.f15983x) {
            int i = this.f15976q;
            this.f15969j = i;
            this.f15966g.m22708a(i);
            this.f15979t++;
            return;
        }
        this.f15970k = 2;
        this.f15978s++;
        this.f15975p = 0;
        m22714m();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.f15968i != null) {
            return m22726b();
        }
        throw new IOException("stream closed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int b;
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        } else if (i2 >= 0) {
            int i3 = i + i2;
            if (i3 > bArr.length) {
                throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > dest.length(" + bArr.length + ").");
            } else if (this.f15968i != null) {
                int i4 = i;
                while (i4 < i3 && (b = m22726b()) >= 0) {
                    bArr[i4] = (byte) b;
                    i4++;
                }
                return i4 == i ? -1 : i4 - i;
            } else {
                throw new IOException("stream closed");
            }
        } else {
            throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
        }
    }
}
