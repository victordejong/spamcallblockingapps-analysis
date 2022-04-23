package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.x.y */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/y.class */
public final class C3185y {

    /* renamed from: c */
    public boolean f11754c;

    /* renamed from: d */
    public boolean f11755d;

    /* renamed from: e */
    public boolean f11756e;

    /* renamed from: a */
    public final C2881f0 f11752a = new C2881f0(0);

    /* renamed from: f */
    public long f11757f = -9223372036854775807L;

    /* renamed from: g */
    public long f11758g = -9223372036854775807L;

    /* renamed from: h */
    public long f11759h = -9223372036854775807L;

    /* renamed from: b */
    public final C2904v f11753b = new C2904v();

    /* renamed from: a */
    public static boolean m27569a(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1) {
            return false;
        }
        if ((bArr[8] & 3) == 3) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static long m27564b(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: c */
    public static long m27562c(C2904v vVar) {
        int c = vVar.m28543c();
        if (vVar.m28552a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        vVar.m28546a(bArr, 0, 9);
        vVar.m28538e(c);
        if (!m27569a(bArr)) {
            return -9223372036854775807L;
        }
        return m27564b(bArr);
    }

    /* renamed from: a */
    public final int m27571a(AbstractC3043h hVar) {
        this.f11753b.m28548a(C2885h0.f10482f);
        this.f11754c = true;
        hVar.mo28050c();
        return 0;
    }

    /* renamed from: a */
    public int m27570a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        if (!this.f11756e) {
            return m27561c(hVar, nVar);
        }
        if (this.f11758g == -9223372036854775807L) {
            return m27571a(hVar);
        }
        if (!this.f11755d) {
            return m27565b(hVar, nVar);
        }
        long j = this.f11757f;
        if (j == -9223372036854775807L) {
            return m27571a(hVar);
        }
        this.f11759h = this.f11752a.m28711b(this.f11758g) - this.f11752a.m28711b(j);
        return m27571a(hVar);
    }

    /* renamed from: a */
    public final int m27568a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public long m27573a() {
        return this.f11759h;
    }

    /* renamed from: a */
    public final long m27572a(C2904v vVar) {
        int d = vVar.m28541d();
        for (int c = vVar.m28543c(); c < d - 3; c++) {
            if (m27568a(vVar.f10530a, c) == 442) {
                vVar.m28538e(c + 4);
                long c2 = m27562c(vVar);
                if (c2 != -9223372036854775807L) {
                    return c2;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public final int m27565b(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        int min = (int) Math.min(20000L, hVar.mo28058a());
        long j = 0;
        if (hVar.getPosition() != j) {
            nVar.f10989a = j;
            return 1;
        }
        this.f11753b.m28542c(min);
        hVar.mo28050c();
        hVar.mo28055a(this.f11753b.f10530a, 0, min);
        this.f11757f = m27572a(this.f11753b);
        this.f11755d = true;
        return 0;
    }

    /* renamed from: b */
    public final long m27566b(C2904v vVar) {
        int c = vVar.m28543c();
        for (int d = vVar.m28541d() - 4; d >= c; d--) {
            if (m27568a(vVar.f10530a, d) == 442) {
                vVar.m28538e(d + 4);
                long c2 = m27562c(vVar);
                if (c2 != -9223372036854775807L) {
                    return c2;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public C2881f0 m27567b() {
        return this.f11752a;
    }

    /* renamed from: c */
    public final int m27561c(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        long a = hVar.mo28058a();
        int min = (int) Math.min(20000L, a);
        long j = a - min;
        if (hVar.getPosition() != j) {
            nVar.f10989a = j;
            return 1;
        }
        this.f11753b.m28542c(min);
        hVar.mo28050c();
        hVar.mo28055a(this.f11753b.f10530a, 0, min);
        this.f11758g = m27566b(this.f11753b);
        this.f11756e = true;
        return 0;
    }

    /* renamed from: c */
    public boolean m27563c() {
        return this.f11754c;
    }
}
