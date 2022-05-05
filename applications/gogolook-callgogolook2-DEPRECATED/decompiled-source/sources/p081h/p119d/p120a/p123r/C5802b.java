package p081h.p119d.p120a.p123r;

import androidx.core.app.FrameMetricsAggregator;
import androidx.media.AudioAttributesCompat;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: h.d.a.r.b */
/* loaded from: classes-dex2jar.jar:h/d/a/r/b.class */
public class C5802b {

    /* renamed from: a */
    public int f14617a;

    /* renamed from: b */
    public int f14618b;

    /* renamed from: c */
    public byte[] f14619c;

    /* renamed from: d */
    public int f14620d;

    /* renamed from: e */
    public int f14621e;

    /* renamed from: f */
    public int f14622f;

    /* renamed from: g */
    public int f14623g;

    /* renamed from: i */
    public int f14625i;

    /* renamed from: p */
    public int f14632p;

    /* renamed from: q */
    public int f14633q;

    /* renamed from: r */
    public int f14634r;

    /* renamed from: v */
    public int f14638v;

    /* renamed from: h */
    public int f14624h = 12;

    /* renamed from: j */
    public int f14626j = 4096;

    /* renamed from: k */
    public int[] f14627k = new int[5003];

    /* renamed from: l */
    public int[] f14628l = new int[5003];

    /* renamed from: m */
    public int f14629m = 5003;

    /* renamed from: n */
    public int f14630n = 0;

    /* renamed from: o */
    public boolean f14631o = false;

    /* renamed from: s */
    public int f14635s = 0;

    /* renamed from: t */
    public int f14636t = 0;

    /* renamed from: u */
    public int[] f14637u = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, AudioAttributesCompat.FLAG_ALL, 2047, 4095, 8191, 16383, JsonParser.MAX_SHORT_I, 65535};

    /* renamed from: w */
    public byte[] f14639w = new byte[256];

    public C5802b(int i, int i2, byte[] bArr, int i3) {
        this.f14617a = i;
        this.f14618b = i2;
        this.f14619c = bArr;
        this.f14620d = Math.max(2, i3);
    }

    /* renamed from: a */
    public final int m24327a() {
        int i = this.f14621e;
        if (i == 0) {
            return -1;
        }
        this.f14621e = i - 1;
        byte[] bArr = this.f14619c;
        int i2 = this.f14622f;
        this.f14622f = i2 + 1;
        return bArr[i2] & 255;
    }

    /* renamed from: a */
    public final int m24325a(int i) {
        return (1 << i) - 1;
    }

    /* renamed from: a */
    public void m24326a(byte b, OutputStream outputStream) throws IOException {
        byte[] bArr = this.f14639w;
        int i = this.f14638v;
        this.f14638v = i + 1;
        bArr[i] = b;
        if (this.f14638v >= 254) {
            m24319c(outputStream);
        }
    }

    /* renamed from: a */
    public void m24324a(int i, OutputStream outputStream) throws IOException {
        int i2;
        int[] iArr;
        this.f14632p = i;
        int i3 = 0;
        this.f14631o = false;
        this.f14623g = this.f14632p;
        this.f14625i = m24325a(this.f14623g);
        this.f14633q = 1 << (i - 1);
        int i4 = this.f14633q;
        this.f14634r = i4 + 1;
        this.f14630n = i4 + 2;
        this.f14638v = 0;
        int a = m24327a();
        for (int i5 = this.f14629m; i5 < 65536; i5 *= 2) {
            i3++;
        }
        int i6 = this.f14629m;
        m24322b(i6);
        m24321b(this.f14633q, outputStream);
        while (true) {
            int a2 = m24327a();
            if (a2 != -1) {
                int i7 = (a2 << this.f14624h) + a;
                int i8 = (a2 << (8 - i3)) ^ a;
                int[] iArr2 = this.f14627k;
                if (iArr2[i8] == i7) {
                    a = this.f14628l[i8];
                } else {
                    int i9 = i8;
                    if (iArr2[i8] >= 0) {
                        int i10 = i6 - i8;
                        int i11 = i8;
                        if (i8 == 0) {
                            i10 = 1;
                            i11 = i8;
                        }
                        do {
                            int i12 = i11 - i10;
                            i2 = i12;
                            if (i12 < 0) {
                                i2 = i12 + i6;
                            }
                            iArr = this.f14627k;
                            if (iArr[i2] == i7) {
                                a = this.f14628l[i2];
                                break;
                            }
                            i11 = i2;
                        } while (iArr[i2] >= 0);
                        i9 = i2;
                    }
                    m24321b(a, outputStream);
                    int i13 = this.f14630n;
                    if (i13 < this.f14626j) {
                        int[] iArr3 = this.f14628l;
                        this.f14630n = i13 + 1;
                        iArr3[i9] = i13;
                        this.f14627k[i9] = i7;
                    } else {
                        m24323a(outputStream);
                    }
                    a = a2;
                }
            } else {
                m24321b(a, outputStream);
                m24321b(this.f14634r, outputStream);
                return;
            }
        }
    }

    /* renamed from: a */
    public void m24323a(OutputStream outputStream) throws IOException {
        m24322b(this.f14629m);
        int i = this.f14633q;
        this.f14630n = i + 2;
        this.f14631o = true;
        m24321b(i, outputStream);
    }

    /* renamed from: b */
    public void m24322b(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            this.f14627k[i2] = -1;
        }
    }

    /* renamed from: b */
    public void m24321b(int i, OutputStream outputStream) throws IOException {
        int i2 = this.f14635s;
        int[] iArr = this.f14637u;
        int i3 = this.f14636t;
        this.f14635s = i2 & iArr[i3];
        if (i3 > 0) {
            this.f14635s |= i << i3;
        } else {
            this.f14635s = i;
        }
        this.f14636t += this.f14623g;
        while (this.f14636t >= 8) {
            m24326a((byte) (this.f14635s & 255), outputStream);
            this.f14635s >>= 8;
            this.f14636t -= 8;
        }
        if (this.f14630n > this.f14625i || this.f14631o) {
            if (this.f14631o) {
                int i4 = this.f14632p;
                this.f14623g = i4;
                this.f14625i = m24325a(i4);
                this.f14631o = false;
            } else {
                this.f14623g++;
                int i5 = this.f14623g;
                if (i5 == this.f14624h) {
                    this.f14625i = this.f14626j;
                } else {
                    this.f14625i = m24325a(i5);
                }
            }
        }
        if (i == this.f14634r) {
            while (this.f14636t > 0) {
                m24326a((byte) (this.f14635s & 255), outputStream);
                this.f14635s >>= 8;
                this.f14636t -= 8;
            }
            m24319c(outputStream);
        }
    }

    /* renamed from: b */
    public void m24320b(OutputStream outputStream) throws IOException {
        outputStream.write(this.f14620d);
        this.f14621e = this.f14617a * this.f14618b;
        this.f14622f = 0;
        m24324a(this.f14620d + 1, outputStream);
        outputStream.write(0);
    }

    /* renamed from: c */
    public void m24319c(OutputStream outputStream) throws IOException {
        int i = this.f14638v;
        if (i > 0) {
            outputStream.write(i);
            outputStream.write(this.f14639w, 0, this.f14638v);
            this.f14638v = 0;
        }
    }
}
