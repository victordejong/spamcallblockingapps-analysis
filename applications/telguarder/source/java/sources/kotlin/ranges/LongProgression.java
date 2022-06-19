package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, m400d2 = {"Lkotlin/ranges/LongProgression;", "", "", "start", "endInclusive", "step", "(JJJ)V", "first", "getFirst", "()J", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "", "isEmpty", "iterator", "Lkotlin/collections/LongIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/ranges/LongProgression.class */
public class LongProgression implements Iterable<Long>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private final long first;
    private final long last;
    private final long step;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¨\u0006\t"}, m400d2 = {"Lkotlin/ranges/LongProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/LongProgression;", "rangeStart", "", "rangeEnd", "step", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/ranges/LongProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LongProgression fromClosedRange(long j, long j2, long j3) {
            return new LongProgression(j, j2, j3);
        }
    }

    public LongProgression(long j, long j2, long j3) {
        if (j3 != 0) {
            if (j3 == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
            }
            this.first = j;
            this.last = ProgressionUtilKt.getProgressionLastElement(j, j2, j3);
            this.step = j3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r5.step == r0.step) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.LongProgression
            if (r0 == 0) goto L49
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r6
            kotlin.ranges.LongProgression r0 = (kotlin.ranges.LongProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L43
        L18:
            r0 = r5
            long r0 = r0.first
            r7 = r0
            r0 = r6
            kotlin.ranges.LongProgression r0 = (kotlin.ranges.LongProgression) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.first
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L49
            r0 = r5
            long r0 = r0.last
            r1 = r6
            long r1 = r1.last
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L49
            r0 = r5
            long r0 = r0.step
            r1 = r6
            long r1 = r1.step
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L49
        L43:
            r0 = 1
            r9 = r0
            goto L4c
        L49:
            r0 = 0
            r9 = r0
        L4c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.LongProgression.equals(java.lang.Object):boolean");
    }

    public final long getFirst() {
        return this.first;
    }

    public final long getLast() {
        return this.last;
    }

    public final long getStep() {
        return this.step;
    }

    public int hashCode() {
        int i;
        if (isEmpty()) {
            i = -1;
        } else {
            long j = 31;
            long j2 = this.first;
            long j3 = this.last;
            long j4 = this.step;
            i = (int) ((j * (((j2 ^ (j2 >>> 32)) * j) + (j3 ^ (j3 >>> 32)))) + (j4 ^ (j4 >>> 32)));
        }
        return i;
    }

    public boolean isEmpty() {
        long j = this.step;
        boolean z = true;
        long j2 = this.first;
        long j3 = this.last;
        if (j <= 0 ? j2 >= j3 : j2 <= j3) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public Iterator<Long> iterator() {
        return new LongProgressionIterator(this.first, this.last, this.step);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.StringBuilder, long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public String toString() {
        ?? r0;
        char c;
        StringBuilder sb;
        long j = this.step;
        if (r0 > 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.first);
            sb2.append("..");
            sb2.append(this.last);
            sb2.append(" step ");
            ?? r02 = this.step;
            c = r02;
            sb = r02;
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(this.first);
            sb3.append(" downTo ");
            sb3.append(this.last);
            sb3.append(" step ");
            ?? r03 = -this.step;
            c = r03;
            sb = r03;
        }
        sb.append((long) c);
        return sb.toString();
    }
}
