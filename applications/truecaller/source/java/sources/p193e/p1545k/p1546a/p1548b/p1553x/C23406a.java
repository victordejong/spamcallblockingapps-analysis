package p193e.p1545k.p1546a.p1548b.p1553x;

import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1545k.p1546a.p1548b.p1552w.C23396b;
/* renamed from: e.k.a.b.x.a */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/x/a.class */
public final class C23406a {

    /* renamed from: a */
    public final C23396b f64827a;

    /* renamed from: b */
    public final InputStream f64828b;

    /* renamed from: c */
    public final byte[] f64829c;

    /* renamed from: d */
    public int f64830d;

    /* renamed from: e */
    public int f64831e;

    /* renamed from: f */
    public final boolean f64832f;

    /* renamed from: g */
    public boolean f64833g;

    /* renamed from: h */
    public int f64834h;

    public C23406a(C23396b c23396b, InputStream inputStream) {
        this.f64833g = true;
        this.f64827a = c23396b;
        this.f64828b = inputStream;
        c23396b.m7134a(c23396b.f64782e);
        byte[] m7254a = c23396b.f64781d.m7254a(0);
        c23396b.f64782e = m7254a;
        this.f64829c = m7254a;
        this.f64830d = 0;
        this.f64831e = 0;
        this.f64832f = true;
    }

    public C23406a(C23396b c23396b, byte[] bArr, int i, int i2) {
        this.f64833g = true;
        this.f64827a = c23396b;
        this.f64828b = null;
        this.f64829c = bArr;
        this.f64830d = i;
        this.f64831e = i + i2;
        this.f64832f = false;
    }

    /* renamed from: a */
    public final boolean m7088a(int i) {
        if ((65280 & i) == 0) {
            this.f64833g = true;
        } else if ((i & 255) != 0) {
            return false;
        } else {
            this.f64833g = false;
        }
        this.f64834h = 2;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0175, code lost:
        if (m7088a(r0 >>> 16) != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01cf, code lost:
        if (m7088a((r0[r0 + 1] & 255) | ((r0[r0] & 255) << 8)) != false) goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0323  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p1545k.p1546a.p1548b.AbstractC23376j m7087b(int r14, p193e.p1545k.p1546a.p1548b.AbstractC23382n r15, p193e.p1545k.p1546a.p1548b.p1554y.C23416a r16, p193e.p1545k.p1546a.p1548b.p1554y.C23418b r17, int r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 877
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1545k.p1546a.p1548b.p1553x.C23406a.m7087b(int, e.k.a.b.n, e.k.a.b.y.a, e.k.a.b.y.b, int):e.k.a.b.j");
    }

    /* renamed from: c */
    public boolean m7086c(int i) throws IOException {
        int i2;
        int i3 = this.f64831e - this.f64830d;
        while (true) {
            int i4 = i3;
            if (i4 < i) {
                InputStream inputStream = this.f64828b;
                if (inputStream == null) {
                    i2 = -1;
                } else {
                    byte[] bArr = this.f64829c;
                    int i5 = this.f64831e;
                    i2 = inputStream.read(bArr, i5, bArr.length - i5);
                }
                if (i2 < 1) {
                    return false;
                }
                this.f64831e += i2;
                i3 = i4 + i2;
            } else {
                return true;
            }
        }
    }

    /* renamed from: d */
    public final void m7085d(String str) throws IOException {
        throw new CharConversionException(C22128a.m8725C2("Unsupported UCS-4 endianness (", str, ") detected"));
    }
}
