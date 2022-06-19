package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import java.io.EOFException;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/e.class */
public final class C24344e {

    /* renamed from: a */
    public int f67689a;

    /* renamed from: b */
    public int f67690b;

    /* renamed from: c */
    public long f67691c;

    /* renamed from: d */
    public int f67692d;

    /* renamed from: e */
    public int f67693e;

    /* renamed from: f */
    public int f67694f;

    /* renamed from: g */
    public final int[] f67695g = new int[255];

    /* renamed from: h */
    public final C24798t f67696h = new C24798t(255);

    /* renamed from: a */
    public boolean m5225a(C24353e c24353e, boolean z) throws IOException, InterruptedException {
        this.f67696h.m4522x();
        m5224b();
        long j = c24353e.f67725c;
        if (!(j == -1 || j - c24353e.m5211d() >= 27) || !c24353e.m5210e(this.f67696h.f69504a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.f67696h.m4528r() != 1332176723) {
            if (!z) {
                throw new C24560m0("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int m4529q = this.f67696h.m4529q();
            this.f67689a = m4529q;
            if (m4529q != 0) {
                if (!z) {
                    throw new C24560m0("unsupported bit stream revision");
                }
                return false;
            }
            this.f67690b = this.f67696h.m4529q();
            C24798t c24798t = this.f67696h;
            byte[] bArr = c24798t.f69504a;
            int i = c24798t.f69505b;
            int i2 = i + 1;
            c24798t.f69505b = i2;
            long j2 = bArr[i];
            int i3 = i2 + 1;
            c24798t.f69505b = i3;
            long j3 = bArr[i2];
            int i4 = i3 + 1;
            c24798t.f69505b = i4;
            long j4 = bArr[i3];
            int i5 = i4 + 1;
            c24798t.f69505b = i5;
            long j5 = bArr[i4];
            int i6 = i5 + 1;
            c24798t.f69505b = i6;
            long j6 = bArr[i5];
            int i7 = i6 + 1;
            c24798t.f69505b = i7;
            long j7 = bArr[i6];
            int i8 = i7 + 1;
            c24798t.f69505b = i8;
            c24798t.f69505b = i8 + 1;
            this.f67691c = (j2 & 255) | ((j3 & 255) << 8) | ((j4 & 255) << 16) | ((j5 & 255) << 24) | ((j6 & 255) << 32) | ((j7 & 255) << 40) | ((bArr[i7] & 255) << 48) | ((bArr[i8] & 255) << 56);
            c24798t.m4538h();
            this.f67696h.m4538h();
            this.f67696h.m4538h();
            int m4529q2 = this.f67696h.m4529q();
            this.f67692d = m4529q2;
            this.f67693e = m4529q2 + 27;
            this.f67696h.m4522x();
            c24353e.m5210e(this.f67696h.f69504a, 0, this.f67692d, false);
            for (int i9 = 0; i9 < this.f67692d; i9++) {
                this.f67695g[i9] = this.f67696h.m4529q();
                this.f67694f += this.f67695g[i9];
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m5224b() {
        this.f67689a = 0;
        this.f67690b = 0;
        this.f67691c = 0L;
        this.f67692d = 0;
        this.f67693e = 0;
        this.f67694f = 0;
    }
}
