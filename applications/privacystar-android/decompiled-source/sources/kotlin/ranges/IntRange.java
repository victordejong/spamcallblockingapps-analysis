package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u00142\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0014B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b¨\u0006\u0015"}, m254d2 = {"Lkotlin/ranges/IntRange;", "Lkotlin/ranges/IntProgression;", "Lkotlin/ranges/ClosedRange;", "", "start", "endInclusive", "(II)V", "getEndInclusive", "()Ljava/lang/Integer;", "getStart", "contains", "", FirebaseAnalytics.Param.VALUE, "equals", "other", "", "hashCode", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/IntRange.class */
public final class IntRange extends IntProgression implements ClosedRange<Integer> {
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final IntRange EMPTY = new IntRange(1, 0);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lkotlin/ranges/IntRange$Companion;", "", "()V", "EMPTY", "Lkotlin/ranges/IntRange;", "getEMPTY", "()Lkotlin/ranges/IntRange;", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/IntRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final IntRange getEMPTY() {
            return IntRange.EMPTY;
        }
    }

    public IntRange(int i, int i2) {
        super(i, i2, 1);
    }

    public boolean contains(int i) {
        return getFirst() <= i && i <= getLast();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(Integer num) {
        return contains(num.intValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (getLast() == r0.getLast()) goto L_0x0035;
     */
    @Override // kotlin.ranges.IntProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.IntRange
            if (r0 == 0) goto L_0x003a
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.IntRange r0 = (kotlin.ranges.IntRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0035
        L_0x0018:
            r0 = r3
            int r0 = r0.getFirst()
            r5 = r0
            r0 = r4
            kotlin.ranges.IntRange r0 = (kotlin.ranges.IntRange) r0
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.IntRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Integer getEndInclusive() {
        return Integer.valueOf(getLast());
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    public Integer getStart() {
        return Integer.valueOf(getFirst());
    }

    @Override // kotlin.ranges.IntProgression
    public int hashCode() {
        return isEmpty() ? -1 : (getFirst() * 31) + getLast();
    }

    @Override // kotlin.ranges.IntProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    @Override // kotlin.ranges.IntProgression
    @NotNull
    public String toString() {
        return getFirst() + ".." + getLast();
    }
}
