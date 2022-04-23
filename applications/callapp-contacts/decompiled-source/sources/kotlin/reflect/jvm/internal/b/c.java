package kotlin.reflect.jvm.internal.b;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/c.class */
final class c<V> {

    /* renamed from: a  reason: collision with root package name */
    static final c<Object> f36895a = new c<>();

    /* renamed from: b  reason: collision with root package name */
    private final long f36896b;

    /* renamed from: c  reason: collision with root package name */
    private final V f36897c;

    /* renamed from: d  reason: collision with root package name */
    private final c<V> f36898d;
    private final c<V> e;
    private final int f;

    private c() {
        this.f = 0;
        this.f36896b = 0L;
        this.f36897c = null;
        this.f36898d = null;
        this.e = null;
    }

    private c(long j, V v, c<V> cVar, c<V> cVar2) {
        this.f36896b = j;
        this.f36897c = v;
        this.f36898d = cVar;
        this.e = cVar2;
        this.f = cVar.f + 1 + cVar2.f;
    }

    private static <V> c<V> a(long j, V v, c<V> cVar, c<V> cVar2) {
        int i = ((c) cVar).f;
        int i2 = ((c) cVar2).f;
        if (i + i2 > 1) {
            if (i >= i2 * 5) {
                c<V> cVar3 = ((c) cVar).f36898d;
                c<V> cVar4 = ((c) cVar).e;
                if (((c) cVar4).f < ((c) cVar3).f * 2) {
                    long j2 = ((c) cVar).f36896b;
                    V v2 = ((c) cVar).f36897c;
                    long j3 = ((c) cVar).f36896b;
                    return new c<>(j2 + j, v2, cVar3, new c(-j3, v, cVar4.b(((c) cVar4).f36896b + j3), cVar2));
                }
                c<V> cVar5 = ((c) cVar4).f36898d;
                c<V> cVar6 = ((c) cVar4).e;
                long j4 = ((c) cVar4).f36896b;
                long j5 = ((c) cVar).f36896b;
                V v3 = ((c) cVar4).f36897c;
                long j6 = ((c) cVar4).f36896b;
                c cVar7 = new c(-j6, ((c) cVar).f36897c, cVar3, cVar5.b(((c) cVar5).f36896b + j6));
                long j7 = ((c) cVar).f36896b;
                long j8 = -j7;
                long j9 = ((c) cVar4).f36896b;
                return new c<>(j4 + j5 + j, v3, cVar7, new c(j8 - j9, v, cVar6.b(((c) cVar6).f36896b + j9 + j7), cVar2));
            } else if (i2 >= i * 5) {
                c<V> cVar8 = ((c) cVar2).f36898d;
                c<V> cVar9 = ((c) cVar2).e;
                if (((c) cVar8).f < ((c) cVar9).f * 2) {
                    long j10 = ((c) cVar2).f36896b;
                    V v4 = ((c) cVar2).f36897c;
                    long j11 = ((c) cVar2).f36896b;
                    return new c<>(j10 + j, v4, new c(-j11, v, cVar, cVar8.b(((c) cVar8).f36896b + j11)), cVar9);
                }
                c<V> cVar10 = ((c) cVar8).f36898d;
                c<V> cVar11 = ((c) cVar8).e;
                long j12 = ((c) cVar8).f36896b;
                long j13 = ((c) cVar2).f36896b;
                V v5 = ((c) cVar8).f36897c;
                long j14 = ((c) cVar2).f36896b;
                long j15 = -j14;
                long j16 = ((c) cVar8).f36896b;
                c cVar12 = new c(j15 - j16, v, cVar, cVar10.b(((c) cVar10).f36896b + j16 + j14));
                long j17 = ((c) cVar8).f36896b;
                return new c<>(j12 + j13 + j, v5, cVar12, new c(-j17, ((c) cVar2).f36897c, cVar11.b(((c) cVar11).f36896b + j17), cVar9));
            }
        }
        return new c<>(j, v, cVar, cVar2);
    }

    private c<V> a(c<V> cVar, c<V> cVar2) {
        return (cVar == this.f36898d && cVar2 == this.e) ? this : a(this.f36896b, this.f36897c, cVar, cVar2);
    }

    private c<V> b(long j) {
        return (this.f == 0 || j == this.f36896b) ? this : new c<>(j, this.f36897c, this.f36898d, this.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final V a(long j) {
        c<V> cVar = this;
        while (cVar.f != 0) {
            long j2 = cVar.f36896b;
            if (j < j2) {
                cVar = cVar.f36898d;
            } else if (j <= j2) {
                return cVar.f36897c;
            } else {
                cVar = cVar.e;
            }
            j -= j2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c<V> a(long j, V v) {
        if (this.f == 0) {
            return new c<>(j, v, this, this);
        }
        long j2 = this.f36896b;
        return j < j2 ? a(this.f36898d.a(j - j2, (long) v), this.e) : j > j2 ? a(this.f36898d, this.e.a(j - j2, (long) v)) : v == this.f36897c ? this : new c<>(j, v, this.f36898d, this.e);
    }
}
