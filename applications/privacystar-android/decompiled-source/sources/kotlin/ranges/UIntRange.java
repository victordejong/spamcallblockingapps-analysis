package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin(version = "1.3")
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018�� \u00172\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u0018\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003ø\u0001��¢\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0017\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004ø\u0001��¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004ø\u0001��¢\u0006\u0006\u001a\u0004\b\t\u0010\bø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, m254d2 = {"Lkotlin/ranges/UIntRange;", "Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/UInt;", "start", "endInclusive", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getEndInclusive", "()Lkotlin/UInt;", "getStart", "contains", "", FirebaseAnalytics.Param.VALUE, "contains-WZ4Q5Ns", "(I)Z", "equals", "other", "", "hashCode", "", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntRange.class */
public final class UIntRange extends UIntProgression implements ClosedRange<UInt> {
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final UIntRange EMPTY = new UIntRange(-1, 0, null);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lkotlin/ranges/UIntRange$Companion;", "", "()V", "EMPTY", "Lkotlin/ranges/UIntRange;", "getEMPTY", "()Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final UIntRange getEMPTY() {
            return UIntRange.EMPTY;
        }
    }

    private UIntRange(int i, int i2) {
        super(i, i2, 1, null);
    }

    public /* synthetic */ UIntRange(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(UInt uInt) {
        return m3231containsWZ4Q5Ns(uInt.m2935unboximpl());
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public boolean m3231containsWZ4Q5Ns(int i) {
        return UnsignedKt.uintCompare(getFirst(), i) <= 0 && UnsignedKt.uintCompare(i, getLast()) <= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (getLast() == r0.getLast()) goto L_0x0035;
     */
    @Override // kotlin.ranges.UIntProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.UIntRange
            if (r0 == 0) goto L_0x003a
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.UIntRange r0 = (kotlin.ranges.UIntRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0035
        L_0x0018:
            r0 = r3
            int r0 = r0.getFirst()
            r5 = r0
            r0 = r4
            kotlin.ranges.UIntRange r0 = (kotlin.ranges.UIntRange) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.getFirst()
            if (r0 != r1) goto L_0x003a
            r0 = r3
            int r0 = r0.getLast()
            r1 = r4
            int r1 = r1.getLast()
            if (r0 != r1) goto L_0x003a
        L_0x0035:
            r0 = 1
            r6 = r0
            goto L_0x003c
        L_0x003a:
            r0 = 0
            r6 = r0
        L_0x003c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.UIntRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public UInt getEndInclusive() {
        return UInt.m2888boximpl(getLast());
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public UInt getStart() {
        return UInt.m2888boximpl(getFirst());
    }

    @Override // kotlin.ranges.UIntProgression
    public int hashCode() {
        return isEmpty() ? -1 : (getFirst() * 31) + getLast();
    }

    @Override // kotlin.ranges.UIntProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return UnsignedKt.uintCompare(getFirst(), getLast()) > 0;
    }

    @Override // kotlin.ranges.UIntProgression
    @NotNull
    public String toString() {
        return UInt.m2929toStringimpl(getFirst()) + ".." + UInt.m2929toStringimpl(getLast());
    }
}
