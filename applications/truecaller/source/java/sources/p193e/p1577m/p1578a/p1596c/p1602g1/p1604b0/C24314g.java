package p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.b0.g */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/b0/g.class */
public final class C24314g implements AbstractC24311e {

    /* renamed from: a */
    public final long f67512a;

    /* renamed from: b */
    public final int f67513b;

    /* renamed from: c */
    public final long f67514c;

    /* renamed from: d */
    public final long f67515d;

    /* renamed from: e */
    public final long f67516e;

    /* renamed from: f */
    public final long[] f67517f;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    public C24314g(long j, int i, long j2, long j3, long[] jArr) {
        this.f67512a = j;
        this.f67513b = i;
        this.f67514c = j2;
        this.f67517f = jArr;
        this.f67515d = j3;
        this.f67516e = j3 == -1 ? (char) 65535 : j + j3;
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v33, types: [double] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        if (!mo5143c()) {
            return new AbstractC24418q.C24419a(new C24421r(0L, this.f67512a + this.f67513b));
        }
        long m4617g = C24773d0.m4617g(j, 0L, this.f67514c);
        double d = (m4617g * 100.0d) / this.f67514c;
        char c = 0;
        if (d > PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            if (d >= 100.0d) {
                c = 0;
            } else {
                int i = (int) d;
                long[] jArr = this.f67517f;
                Objects.requireNonNull(jArr);
                double d2 = jArr[i];
                c = d2 + (((i == 99 ? (char) 0 : jArr[i + 1]) - d2) * (d - i));
            }
        }
        return new AbstractC24418q.C24419a(new C24421r(m4617g, this.f67512a + C24773d0.m4617g(Math.round((c / 0) * this.f67515d), this.f67513b, this.f67515d - 1)));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return this.f67517f != null;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: e */
    public long mo5268e() {
        return this.f67516e;
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [double] */
    /* JADX WARN: Type inference failed for: r0v43 */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: f */
    public long mo5267f(long j) {
        long j2 = j - this.f67512a;
        if (!mo5143c() || j2 <= this.f67513b) {
            return 0L;
        }
        long[] jArr = this.f67517f;
        Objects.requireNonNull(jArr);
        double d = (j2 * 256.0d) / this.f67515d;
        int m4621c = C24773d0.m4621c(jArr, (long) d, true, true);
        long j3 = this.f67514c;
        long j4 = (m4621c * j3) / 100;
        long j5 = jArr[m4621c];
        int i = m4621c + 1;
        long j6 = (j3 * i) / 100;
        char c = m4621c == 99 ? (char) 256 : jArr[i];
        return Math.round((j5 == c ? (char) 0 : (d - j5) / (c - j5)) * (j6 - j4)) + j4;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67514c;
    }
}
