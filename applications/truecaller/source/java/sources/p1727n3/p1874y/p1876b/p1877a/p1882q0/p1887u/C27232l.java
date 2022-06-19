package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1887u;

import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.u.l */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/u/l.class */
public final class C27232l {

    /* renamed from: a */
    public final C27229i f76385a;

    /* renamed from: b */
    public final int f76386b;

    /* renamed from: c */
    public final long[] f76387c;

    /* renamed from: d */
    public final int[] f76388d;

    /* renamed from: e */
    public final int f76389e;

    /* renamed from: f */
    public final long[] f76390f;

    /* renamed from: g */
    public final int[] f76391g;

    /* renamed from: h */
    public final long f76392h;

    public C27232l(C27229i c27229i, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        MediaSessionCompat.m43211p(iArr.length == jArr2.length);
        MediaSessionCompat.m43211p(jArr.length == jArr2.length);
        MediaSessionCompat.m43211p(iArr2.length == jArr2.length);
        this.f76385a = c27229i;
        this.f76387c = jArr;
        this.f76388d = iArr;
        this.f76389e = i;
        this.f76390f = jArr2;
        this.f76391g = iArr2;
        this.f76392h = j;
        this.f76386b = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: a */
    public int m669a(long j) {
        for (int m283d = C27445x.m283d(this.f76390f, j, true, false); m283d >= 0; m283d--) {
            if ((this.f76391g[m283d] & 1) != 0) {
                return m283d;
            }
        }
        return -1;
    }

    /* renamed from: b */
    public int m668b(long j) {
        for (int m285b = C27445x.m285b(this.f76390f, j, true, false); m285b < this.f76390f.length; m285b++) {
            if ((this.f76391g[m285b] & 1) != 0) {
                return m285b;
            }
        }
        return -1;
    }
}
