package p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0;

import android.util.Pair;
import p193e.p1577m.p1578a.p1596c.C24854v;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24421r;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.b0.c */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/b0/c.class */
public final class C24309c implements AbstractC24311e {

    /* renamed from: a */
    public final long[] f67488a;

    /* renamed from: b */
    public final long[] f67489b;

    /* renamed from: c */
    public final long f67490c;

    public C24309c(long[] jArr, long[] jArr2) {
        this.f67488a = jArr;
        this.f67489b = jArr2;
        this.f67490c = C24854v.m4383a(jArr2[jArr2.length - 1]);
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [double] */
    /* renamed from: a */
    public static Pair<Long, Long> m5273a(long j, long[] jArr, long[] jArr2) {
        int m4621c = C24773d0.m4621c(jArr, j, true, true);
        long j2 = jArr[m4621c];
        long j3 = jArr2[m4621c];
        int i = m4621c + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? (char) 0 : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: b */
    public AbstractC24418q.C24419a mo5144b(long j) {
        Pair<Long, Long> m5273a = m5273a(C24854v.m4382b(C24773d0.m4617g(j, 0L, this.f67490c)), this.f67489b, this.f67488a);
        return new AbstractC24418q.C24419a(new C24421r(C24854v.m4383a(((Long) m5273a.first).longValue()), ((Long) m5273a.second).longValue()));
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: c */
    public boolean mo5143c() {
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: e */
    public long mo5268e() {
        return -1L;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1604b0.AbstractC24311e
    /* renamed from: f */
    public long mo5267f(long j) {
        return C24854v.m4383a(((Long) m5273a(j, this.f67488a, this.f67489b).second).longValue());
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
    /* renamed from: g */
    public long mo5142g() {
        return this.f67490c;
    }
}
