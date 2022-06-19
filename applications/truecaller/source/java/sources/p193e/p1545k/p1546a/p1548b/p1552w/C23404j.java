package p193e.p1545k.p1546a.p1548b.p1552w;

import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.b.w.j */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/j.class */
public class C23404j extends Reader {

    /* renamed from: a */
    public final C23396b f64810a;

    /* renamed from: b */
    public InputStream f64811b;

    /* renamed from: c */
    public byte[] f64812c;

    /* renamed from: d */
    public int f64813d;

    /* renamed from: e */
    public int f64814e;

    /* renamed from: f */
    public final boolean f64815f;

    /* renamed from: g */
    public char f64816g = (char) 0;

    /* renamed from: h */
    public int f64817h;

    /* renamed from: i */
    public int f64818i;

    /* renamed from: j */
    public final boolean f64819j;

    /* renamed from: k */
    public char[] f64820k;

    public C23404j(C23396b c23396b, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        this.f64810a = c23396b;
        this.f64811b = inputStream;
        this.f64812c = bArr;
        this.f64813d = i;
        this.f64814e = i2;
        this.f64815f = z;
        this.f64819j = inputStream != null;
    }

    /* renamed from: b */
    public final void m7093b() {
        byte[] bArr = this.f64812c;
        if (bArr != null) {
            this.f64812c = null;
            this.f64810a.m7129f(bArr);
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        InputStream inputStream = this.f64811b;
        if (inputStream != null) {
            this.f64811b = null;
            m7093b();
            inputStream.close();
        }
    }

    /* renamed from: d */
    public final void m7092d(int i, int i2) throws IOException {
        int i3 = this.f64818i;
        int i4 = this.f64817h;
        StringBuilder m8716F = C22128a.m8716F("Unexpected EOF in the middle of a 4-byte UTF-32 char: got ", i, ", needed ", i2, ", at char #");
        m8716F.append(i4);
        m8716F.append(", byte #");
        m8716F.append(i3 + i);
        m8716F.append(")");
        throw new CharConversionException(m8716F.toString());
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        if (this.f64820k == null) {
            this.f64820k = new char[1];
        }
        if (read(this.f64820k, 0, 1) < 1) {
            return -1;
        }
        return this.f64820k[0];
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x013e  */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(char[] r9, int r10, int r11) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1552w.C23404j.read(char[], int, int):int");
    }
}
