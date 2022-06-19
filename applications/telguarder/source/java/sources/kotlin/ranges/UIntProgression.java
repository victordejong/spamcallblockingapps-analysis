package kotlin.ranges;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0017\u0018�� \u00192\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\"\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006ø\u0001��¢\u0006\u0002\u0010\u0007J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0006H\u0016J\b\u0010\u0014\u001a\u00020\u0010H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0019\u0010\b\u001a\u00020\u0002ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0019\u0010\f\u001a\u00020\u0002ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\nø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001a"}, m400d2 = {"Lkotlin/ranges/UIntProgression;", "", "Lkotlin/UInt;", "start", "endInclusive", "step", "", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "first", "getFirst-pVg5ArA", "()I", "I", "last", "getLast-pVg5ArA", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/UIntIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/ranges/UIntProgression.class */
public class UIntProgression implements Iterable<UInt>, KMappedMarker {
    public static final Companion Companion = new Companion(null);
    private final int first;
    private final int last;
    private final int step;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, m400d2 = {"Lkotlin/ranges/UIntProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/UIntProgression;", "rangeStart", "Lkotlin/UInt;", "rangeEnd", "step", "", "fromClosedRange-Nkh28Cs", "(III)Lkotlin/ranges/UIntProgression;", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/ranges/UIntProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: fromClosedRange-Nkh28Cs */
        public final UIntProgression m5421fromClosedRangeNkh28Cs(int i, int i2, int i3) {
            return new UIntProgression(i, i2, i3, null);
        }
    }

    private UIntProgression(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == Integer.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            }
            this.first = i;
            this.last = UProgressionUtilKt.m5372getProgressionLastElementNkh28Cs(i, i2, i3);
            this.step = i3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    public /* synthetic */ UIntProgression(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.step == r0.step) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.UIntProgression
            if (r0 == 0) goto L45
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r4
            kotlin.ranges.UIntProgression r0 = (kotlin.ranges.UIntProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L40
        L18:
            r0 = r3
            int r0 = r0.first
            r5 = r0
            r0 = r4
            kotlin.ranges.UIntProgression r0 = (kotlin.ranges.UIntProgression) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.first
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.last
            r1 = r4
            int r1 = r1.last
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.step
            r1 = r4
            int r1 = r1.step
            if (r0 != r1) goto L45
        L40:
            r0 = 1
            r6 = r0
            goto L47
        L45:
            r0 = 0
            r6 = r0
        L47:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.UIntProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: getFirst-pVg5ArA */
    public final int m5419getFirstpVg5ArA() {
        return this.first;
    }

    /* renamed from: getLast-pVg5ArA */
    public final int m5420getLastpVg5ArA() {
        return this.last;
    }

    public final int getStep() {
        return this.step;
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.first * 31) + this.last) * 31) + this.step;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.step <= 0 ? UnsignedKt.uintCompare(this.first, this.last) >= 0 : UnsignedKt.uintCompare(this.first, this.last) <= 0) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public Iterator<UInt> iterator() {
        return new UIntProgressionIterator(this.first, this.last, this.step, null);
    }

    public String toString() {
        int i;
        StringBuilder sb;
        if (this.step > 0) {
            sb = new StringBuilder();
            sb.append(UInt.m4294toStringimpl(this.first));
            sb.append("..");
            sb.append(UInt.m4294toStringimpl(this.last));
            sb.append(" step ");
            i = this.step;
        } else {
            sb = new StringBuilder();
            sb.append(UInt.m4294toStringimpl(this.first));
            sb.append(" downTo ");
            sb.append(UInt.m4294toStringimpl(this.last));
            sb.append(" step ");
            i = -this.step;
        }
        sb.append(i);
        return sb.toString();
    }
}
