package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018�� \u001a2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001aB\"\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006ø\u0001��¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0010H\u0016J\t\u0010\u0016\u001a\u00020\u0017H\u0096\u0002J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0019\u0010\b\u001a\u00020\u0002ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u0002ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\nø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001b"}, m400d2 = {"Lkotlin/ranges/ULongProgression;", "", "Lkotlin/ULong;", "start", "endInclusive", "step", "", "(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-s-VKNKU", "()J", "J", "last", "getLast-s-VKNKU", "getStep", "equals", "", "other", "", "hashCode", "", "isEmpty", "iterator", "Lkotlin/collections/ULongIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/ranges/ULongProgression.class */
public class ULongProgression implements Iterable<ULong>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private final long first;
    private final long last;
    private final long step;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m400d2 = {"Lkotlin/ranges/ULongProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/ULongProgression;", "rangeStart", "Lkotlin/ULong;", "rangeEnd", "step", "", "fromClosedRange-7ftBX0g", "(JJJ)Lkotlin/ranges/ULongProgression;", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/ranges/ULongProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: fromClosedRange-7ftBX0g */
        public final ULongProgression m5429fromClosedRange7ftBX0g(long j, long j2, long j3) {
            return new ULongProgression(j, j2, j3, null);
        }
    }

    private ULongProgression(long j, long j2, long j3) {
        if (j3 != 0) {
            if (j3 == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
            }
            this.first = j;
            this.last = UProgressionUtilKt.m5371getProgressionLastElement7ftBX0g(j, j2, j3);
            this.step = j3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public /* synthetic */ ULongProgression(long j, long j2, long j3, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3);
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
            boolean r0 = r0 instanceof kotlin.ranges.ULongProgression
            if (r0 == 0) goto L49
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r6
            kotlin.ranges.ULongProgression r0 = (kotlin.ranges.ULongProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L43
        L18:
            r0 = r5
            long r0 = r0.first
            r7 = r0
            r0 = r6
            kotlin.ranges.ULongProgression r0 = (kotlin.ranges.ULongProgression) r0
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ULongProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: getFirst-s-VKNKU */
    public final long m5427getFirstsVKNKU() {
        return this.first;
    }

    /* renamed from: getLast-s-VKNKU */
    public final long m5428getLastsVKNKU() {
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
            long j = this.first;
            int m4328constructorimpl = (int) ULong.m4328constructorimpl(j ^ ULong.m4328constructorimpl(j >>> 32));
            long j2 = this.last;
            int m4328constructorimpl2 = (int) ULong.m4328constructorimpl(j2 ^ ULong.m4328constructorimpl(j2 >>> 32));
            long j3 = this.step;
            i = ((int) (j3 ^ (j3 >>> 32))) + (((m4328constructorimpl * 31) + m4328constructorimpl2) * 31);
        }
        return i;
    }

    public boolean isEmpty() {
        long j = this.step;
        boolean z = true;
        int ulongCompare = UnsignedKt.ulongCompare(this.first, this.last);
        if (j <= 0 ? ulongCompare >= 0 : ulongCompare <= 0) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public Iterator<ULong> iterator() {
        return new ULongProgressionIterator(this.first, this.last, this.step, null);
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
            sb2.append(ULong.m4365toStringimpl(this.first));
            sb2.append("..");
            sb2.append(ULong.m4365toStringimpl(this.last));
            sb2.append(" step ");
            ?? r02 = this.step;
            c = r02;
            sb = r02;
        } else {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(ULong.m4365toStringimpl(this.first));
            sb3.append(" downTo ");
            sb3.append(ULong.m4365toStringimpl(this.last));
            sb3.append(" step ");
            ?? r03 = -this.step;
            c = r03;
            sb = r03;
        }
        sb.append((long) c);
        return sb.toString();
    }
}
