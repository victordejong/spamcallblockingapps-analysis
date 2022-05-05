package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.collections.ULongIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\b\u0003\u0018��2\u00020\u0001B\"\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0010ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u0005H\u0016ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u000bR\u001c\u0010\f\u001a\u00020\u00058\u0002@\u0002X\u0082\u000eø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\f\u0010\nR\u001c\u0010\r\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\n\u0004\b\r\u0010\n\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0013"}, d2 = {"Lkotlin/ranges/ULongProgressionIterator;", "Lkotlin/collections/ULongIterator;", "", "hasNext", "()Z", "Lkotlin/ULong;", "nextULong-s-VKNKU", "()J", "nextULong", "finalElement", "J", "Z", "next", "step", "first", "last", "", "<init>", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ULongProgressionIterator.class */
final class ULongProgressionIterator extends ULongIterator {

    /* renamed from: f */
    private final long f20821f;

    /* renamed from: g */
    private boolean f20822g;

    /* renamed from: h */
    private final long f20823h;

    /* renamed from: i */
    private long f20824i;

    private ULongProgressionIterator(long j, long j2, long j3) {
        this.f20821f = j2;
        boolean z = true;
        int c = UnsignedKt.m2381c(j, j2);
        if (j3 <= 0 ? c < 0 : c > 0) {
            z = false;
        }
        this.f20822g = z;
        ULong.m2423g(j3);
        this.f20823h = j3;
        this.f20824i = !this.f20822g ? this.f20821f : j;
    }

    public /* synthetic */ ULongProgressionIterator(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
    }

    @Override // kotlin.collections.ULongIterator
    /* renamed from: b */
    public long mo1696b() {
        long j = this.f20824i;
        if (j != this.f20821f) {
            long j2 = this.f20823h + j;
            ULong.m2423g(j2);
            this.f20824i = j2;
        } else if (this.f20822g) {
            this.f20822g = false;
        } else {
            throw new NoSuchElementException();
        }
        return j;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f20822g;
    }
}
