package p193e.p1577m.p1578a.p1596c.p1602g1.p1607e0;

import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24771c0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.e0.t */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/e0/t.class */
public final class C24390t {

    /* renamed from: c */
    public boolean f68015c;

    /* renamed from: d */
    public boolean f68016d;

    /* renamed from: e */
    public boolean f68017e;

    /* renamed from: a */
    public final C24771c0 f68013a = new C24771c0(0);

    /* renamed from: f */
    public long f68018f = -9223372036854775807L;

    /* renamed from: g */
    public long f68019g = -9223372036854775807L;

    /* renamed from: h */
    public long f68020h = -9223372036854775807L;

    /* renamed from: b */
    public final C24798t f68014b = new C24798t();

    /* renamed from: c */
    public static long m5170c(C24798t c24798t) {
        int i = c24798t.f69505b;
        if (c24798t.m4545a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        System.arraycopy(c24798t.f69504a, c24798t.f69505b, bArr, 0, 9);
        c24798t.f69505b += 9;
        c24798t.m4547C(i);
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
            return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
        }
        return -9223372036854775807L;
    }

    /* renamed from: a */
    public final int m5172a(C24353e c24353e) {
        this.f68014b.m4520z(C24773d0.f69432f);
        this.f68015c = true;
        c24353e.f67728f = 0;
        return 0;
    }

    /* renamed from: b */
    public final int m5171b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
