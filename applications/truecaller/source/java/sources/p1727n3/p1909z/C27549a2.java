package p1727n3.p1909z;
/* renamed from: n3.z.a2 */
/* loaded from: classes-dex2jar.jar:n3/z/a2.class */
public final class C27549a2 {

    /* renamed from: a */
    public final int f77597a;

    /* renamed from: b */
    public final int f77598b;

    /* renamed from: c */
    public final boolean f77599c;

    /* renamed from: d */
    public final int f77600d;

    /* renamed from: e */
    public final int f77601e;

    /* renamed from: f */
    public final int f77602f;

    public C27549a2(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        i2 = (i6 & 2) != 0 ? i : i2;
        z = (i6 & 4) != 0 ? true : z;
        i3 = (i6 & 8) != 0 ? i * 3 : i3;
        i4 = (i6 & 16) != 0 ? Integer.MAX_VALUE : i4;
        i5 = (i6 & 32) != 0 ? Integer.MIN_VALUE : i5;
        this.f77597a = i;
        this.f77598b = i2;
        this.f77599c = z;
        this.f77600d = i3;
        this.f77601e = i4;
        this.f77602f = i5;
        if (z || i2 != 0) {
            if (i4 == Integer.MAX_VALUE || i4 >= (i2 * 2) + i) {
                if (!(i5 != Integer.MIN_VALUE ? i5 > 0 : true)) {
                    throw new IllegalArgumentException("jumpThreshold must be positive to enable jumps or COUNT_UNDEFINED to disable jumping.".toString());
                }
                return;
            }
            throw new IllegalArgumentException("Maximum size must be at least pageSize + 2*prefetchDist, pageSize=" + i + ", prefetchDist=" + i2 + ", maxSize=" + i4);
        }
        throw new IllegalArgumentException("Placeholders and prefetch are the only ways to trigger loading of more data in PagingData, so either placeholders must be enabled, or prefetch distance must be > 0.");
    }
}
