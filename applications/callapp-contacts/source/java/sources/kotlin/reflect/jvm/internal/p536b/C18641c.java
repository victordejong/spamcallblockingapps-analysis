package kotlin.reflect.jvm.internal.p536b;
/* renamed from: kotlin.reflect.jvm.internal.b.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/c.class */
final class C18641c<V> {

    /* renamed from: a */
    static final C18641c<Object> f63717a = new C18641c<>();

    /* renamed from: b */
    private final long f63718b;

    /* renamed from: c */
    private final V f63719c;

    /* renamed from: d */
    private final C18641c<V> f63720d;

    /* renamed from: e */
    private final C18641c<V> f63721e;

    /* renamed from: f */
    private final int f63722f;

    private C18641c() {
        this.f63722f = 0;
        this.f63718b = 0L;
        this.f63719c = null;
        this.f63720d = null;
        this.f63721e = null;
    }

    private C18641c(long j, V v, C18641c<V> c18641c, C18641c<V> c18641c2) {
        this.f63718b = j;
        this.f63719c = v;
        this.f63720d = c18641c;
        this.f63721e = c18641c2;
        this.f63722f = c18641c.f63722f + 1 + c18641c2.f63722f;
    }

    /* renamed from: a */
    private static <V> C18641c<V> m3739a(long j, V v, C18641c<V> c18641c, C18641c<V> c18641c2) {
        int i = ((C18641c) c18641c).f63722f;
        int i2 = ((C18641c) c18641c2).f63722f;
        if (i + i2 > 1) {
            if (i >= i2 * 5) {
                C18641c<V> c18641c3 = ((C18641c) c18641c).f63720d;
                C18641c<V> c18641c4 = ((C18641c) c18641c).f63721e;
                if (((C18641c) c18641c4).f63722f < ((C18641c) c18641c3).f63722f * 2) {
                    long j2 = ((C18641c) c18641c).f63718b;
                    V v2 = ((C18641c) c18641c).f63719c;
                    long j3 = ((C18641c) c18641c).f63718b;
                    return new C18641c<>(j2 + j, v2, c18641c3, new C18641c(-j3, v, c18641c4.m3737b(((C18641c) c18641c4).f63718b + j3), c18641c2));
                }
                C18641c<V> c18641c5 = ((C18641c) c18641c4).f63720d;
                C18641c<V> c18641c6 = ((C18641c) c18641c4).f63721e;
                long j4 = ((C18641c) c18641c4).f63718b;
                long j5 = ((C18641c) c18641c).f63718b;
                V v3 = ((C18641c) c18641c4).f63719c;
                long j6 = ((C18641c) c18641c4).f63718b;
                C18641c c18641c7 = new C18641c(-j6, ((C18641c) c18641c).f63719c, c18641c3, c18641c5.m3737b(((C18641c) c18641c5).f63718b + j6));
                long j7 = ((C18641c) c18641c).f63718b;
                long j8 = -j7;
                long j9 = ((C18641c) c18641c4).f63718b;
                return new C18641c<>(j4 + j5 + j, v3, c18641c7, new C18641c(j8 - j9, v, c18641c6.m3737b(((C18641c) c18641c6).f63718b + j9 + j7), c18641c2));
            } else if (i2 >= i * 5) {
                C18641c<V> c18641c8 = ((C18641c) c18641c2).f63720d;
                C18641c<V> c18641c9 = ((C18641c) c18641c2).f63721e;
                if (((C18641c) c18641c8).f63722f < ((C18641c) c18641c9).f63722f * 2) {
                    long j10 = ((C18641c) c18641c2).f63718b;
                    V v4 = ((C18641c) c18641c2).f63719c;
                    long j11 = ((C18641c) c18641c2).f63718b;
                    return new C18641c<>(j10 + j, v4, new C18641c(-j11, v, c18641c, c18641c8.m3737b(((C18641c) c18641c8).f63718b + j11)), c18641c9);
                }
                C18641c<V> c18641c10 = ((C18641c) c18641c8).f63720d;
                C18641c<V> c18641c11 = ((C18641c) c18641c8).f63721e;
                long j12 = ((C18641c) c18641c8).f63718b;
                long j13 = ((C18641c) c18641c2).f63718b;
                V v5 = ((C18641c) c18641c8).f63719c;
                long j14 = ((C18641c) c18641c2).f63718b;
                long j15 = -j14;
                long j16 = ((C18641c) c18641c8).f63718b;
                C18641c c18641c12 = new C18641c(j15 - j16, v, c18641c, c18641c10.m3737b(((C18641c) c18641c10).f63718b + j16 + j14));
                long j17 = ((C18641c) c18641c8).f63718b;
                return new C18641c<>(j12 + j13 + j, v5, c18641c12, new C18641c(-j17, ((C18641c) c18641c2).f63719c, c18641c11.m3737b(((C18641c) c18641c11).f63718b + j17), c18641c9));
            }
        }
        return new C18641c<>(j, v, c18641c, c18641c2);
    }

    /* renamed from: a */
    private C18641c<V> m3738a(C18641c<V> c18641c, C18641c<V> c18641c2) {
        return (c18641c == this.f63720d && c18641c2 == this.f63721e) ? this : m3739a(this.f63718b, this.f63719c, c18641c, c18641c2);
    }

    /* renamed from: b */
    private C18641c<V> m3737b(long j) {
        return (this.f63722f == 0 || j == this.f63718b) ? this : new C18641c<>(j, this.f63719c, this.f63720d, this.f63721e);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: a */
    public final V m3741a(long j) {
        C18641c<V> c18641c;
        C18641c<V> c18641c2 = this;
        ?? r6 = j;
        while (c18641c2.f63722f != 0) {
            long j2 = c18641c2.f63718b;
            if (r6 < j2) {
                c18641c = c18641c2.f63720d;
            } else if (r6 <= j2) {
                return c18641c2.f63719c;
            } else {
                c18641c = c18641c2.f63721e;
            }
            c18641c2 = c18641c;
            r6 -= j2;
        }
        return null;
    }

    /* renamed from: a */
    public final C18641c<V> m3740a(long j, V v) {
        if (this.f63722f == 0) {
            return new C18641c<>(j, v, this, this);
        }
        long j2 = this.f63718b;
        return j < j2 ? m3738a(this.f63720d.m3740a(j - j2, (long) v), this.f63721e) : j > j2 ? m3738a(this.f63720d, this.f63721e.m3740a(j - j2, (long) v)) : v == this.f63719c ? this : new C18641c<>(j, v, this.f63720d, this.f63721e);
    }
}
