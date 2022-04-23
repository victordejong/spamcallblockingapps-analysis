package p131c.p161d.p170b.p188c.p210w0.p215v;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.w0.v.o */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/o.class */
public final class C3113o {

    /* renamed from: a */
    public final C3110l f11366a;

    /* renamed from: b */
    public final int f11367b;

    /* renamed from: c */
    public final long[] f11368c;

    /* renamed from: d */
    public final int[] f11369d;

    /* renamed from: e */
    public final int f11370e;

    /* renamed from: f */
    public final long[] f11371f;

    /* renamed from: g */
    public final int[] f11372g;

    /* renamed from: h */
    public final long f11373h;

    public C3113o(C3110l lVar, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        boolean z = false;
        C2877e.m28734a(iArr.length == jArr2.length);
        C2877e.m28734a(jArr.length == jArr2.length);
        C2877e.m28734a(iArr2.length == jArr2.length ? true : z);
        this.f11366a = lVar;
        this.f11368c = jArr;
        this.f11369d = iArr;
        this.f11370e = i;
        this.f11371f = jArr2;
        this.f11372g = iArr2;
        this.f11373h = j;
        this.f11367b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m27791a(long j) {
        for (int b = C2885h0.m28643b(this.f11371f, j, true, false); b >= 0; b--) {
            if ((this.f11372g[b] & 1) != 0) {
                return b;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m27790b(long j) {
        for (int a = C2885h0.m28657a(this.f11371f, j, true, false); a < this.f11371f.length; a++) {
            if ((this.f11372g[a] & 1) != 0) {
                return a;
            }
        }
        return -1;
    }
}
