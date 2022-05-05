package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.LongIterator;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\r\b��\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u0007¨\u0006\u0012"}, d2 = {"Lkotlin/ranges/LongProgressionIterator;", "Lkotlin/collections/LongIterator;", "", "hasNext", "()Z", "", "nextLong", "()J", "finalElement", "J", "Z", "next", "step", "getStep", "first", "last", "<init>", "(JJJ)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/LongProgressionIterator.class */
public final class LongProgressionIterator extends LongIterator {

    /* renamed from: f */
    private final long f20807f;

    /* renamed from: g */
    private boolean f20808g;

    /* renamed from: h */
    private long f20809h;

    /* renamed from: i */
    private final long f20810i;

    public LongProgressionIterator(long j, long j2, long j3) {
        this.f20810i = j3;
        this.f20807f = j2;
        boolean z = true;
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (j3 <= 0 ? i < 0 : i > 0) {
            z = false;
        }
        this.f20808g = z;
        this.f20809h = !z ? this.f20807f : j;
    }

    @Override // kotlin.collections.LongIterator
    /* renamed from: b */
    public long mo1725b() {
        long j = this.f20809h;
        if (j != this.f20807f) {
            this.f20809h = this.f20810i + j;
        } else if (this.f20808g) {
            this.f20808g = false;
        } else {
            throw new NoSuchElementException();
        }
        return j;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20808g;
    }
}
