package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.b */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/b.class */
public final class C27174b implements AbstractC27186n {

    /* renamed from: a */
    public final int f76016a;

    /* renamed from: b */
    public final int[] f76017b;

    /* renamed from: c */
    public final long[] f76018c;

    /* renamed from: d */
    public final long[] f76019d;

    /* renamed from: e */
    public final long[] f76020e;

    /* renamed from: f */
    public final long f76021f;

    public C27174b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f76017b = iArr;
        this.f76018c = jArr;
        this.f76019d = jArr2;
        this.f76020e = jArr3;
        int length = iArr.length;
        this.f76016a = length;
        if (length <= 0) {
            this.f76021f = 0L;
            return;
        }
        int i = length - 1;
        this.f76021f = jArr2[i] + jArr3[i];
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: b */
    public AbstractC27186n.C27187a mo602b(long j) {
        int m283d = C27445x.m283d(this.f76020e, j, true, true);
        long[] jArr = this.f76020e;
        long j2 = jArr[m283d];
        long[] jArr2 = this.f76018c;
        C27189o c27189o = new C27189o(j2, jArr2[m283d]);
        if (j2 >= j || m283d == this.f76016a - 1) {
            return new AbstractC27186n.C27187a(c27189o);
        }
        int i = m283d + 1;
        return new AbstractC27186n.C27187a(c27189o, new C27189o(jArr[i], jArr2[i]));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: c */
    public boolean mo601c() {
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
    /* renamed from: g */
    public long mo599g() {
        return this.f76021f;
    }

    public String toString() {
        int i = this.f76016a;
        String arrays = Arrays.toString(this.f76017b);
        String arrays2 = Arrays.toString(this.f76018c);
        String arrays3 = Arrays.toString(this.f76020e);
        String arrays4 = Arrays.toString(this.f76019d);
        StringBuilder sb = new StringBuilder(C22128a.m8623f2(arrays4, C22128a.m8623f2(arrays3, C22128a.m8623f2(arrays2, C22128a.m8623f2(arrays, 71)))));
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        C22128a.m8666T0(sb, ", offsets=", arrays2, ", timeUs=", arrays3);
        return C22128a.m8610j(sb, ", durationsUs=", arrays4, ")");
    }
}
