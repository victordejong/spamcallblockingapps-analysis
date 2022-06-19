package kotlin.ranges;

import kotlin.Metadata;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0007\u0018�� \u00172\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0017B\u0018\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003ø\u0001��¢\u0006\u0002\u0010\u0006J\u001b\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u000bH\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u001a\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\t\u0010\bø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0018"}, m400d2 = {"Lkotlin/ranges/ULongRange;", "Lkotlin/ranges/ULongProgression;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ULong;", "start", "endInclusive", "(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getEndInclusive-s-VKNKU", "()J", "getStart-s-VKNKU", "contains", "", "value", "contains-VKZWuLQ", "(J)Z", "equals", "other", "", "hashCode", "", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/ranges/ULongRange.class */
public final class ULongRange extends ULongProgression implements ClosedRange<ULong> {
    public static final Companion Companion = new Companion(null);
    private static final ULongRange EMPTY = new ULongRange(-1, 0, null);

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m400d2 = {"Lkotlin/ranges/ULongRange$Companion;", "", "()V", "EMPTY", "Lkotlin/ranges/ULongRange;", "getEMPTY", "()Lkotlin/ranges/ULongRange;", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:kotlin/ranges/ULongRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ULongRange getEMPTY() {
            return ULongRange.EMPTY;
        }
    }

    private ULongRange(long j, long j2) {
        super(j, j2, 1L, null);
    }

    public /* synthetic */ ULongRange(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ boolean contains(ULong uLong) {
        return m5431containsVKZWuLQ(uLong.m4371unboximpl());
    }

    /* renamed from: contains-VKZWuLQ */
    public boolean m5431containsVKZWuLQ(long j) {
        return UnsignedKt.ulongCompare(m5427getFirstsVKNKU(), j) <= 0 && UnsignedKt.ulongCompare(j, m5428getLastsVKNKU()) <= 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (m5428getLastsVKNKU() == r0.m5428getLastsVKNKU()) goto L12;
     */
    @Override // kotlin.ranges.ULongProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.ULongRange
            if (r0 == 0) goto L3d
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L18
            r0 = r6
            kotlin.ranges.ULongRange r0 = (kotlin.ranges.ULongRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L37
        L18:
            r0 = r5
            long r0 = r0.m5427getFirstsVKNKU()
            r7 = r0
            r0 = r6
            kotlin.ranges.ULongRange r0 = (kotlin.ranges.ULongRange) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.m5427getFirstsVKNKU()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3d
            r0 = r5
            long r0 = r0.m5428getLastsVKNKU()
            r1 = r6
            long r1 = r1.m5428getLastsVKNKU()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3d
        L37:
            r0 = 1
            r9 = r0
            goto L40
        L3d:
            r0 = 0
            r9 = r0
        L40:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ULongRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ ULong getEndInclusive() {
        return ULong.m4322boximpl(m5432getEndInclusivesVKNKU());
    }

    /* renamed from: getEndInclusive-s-VKNKU */
    public long m5432getEndInclusivesVKNKU() {
        return m5428getLastsVKNKU();
    }

    @Override // kotlin.ranges.ClosedRange
    public /* bridge */ /* synthetic */ ULong getStart() {
        return ULong.m4322boximpl(m5433getStartsVKNKU());
    }

    /* renamed from: getStart-s-VKNKU */
    public long m5433getStartsVKNKU() {
        return m5427getFirstsVKNKU();
    }

    @Override // kotlin.ranges.ULongProgression
    public int hashCode() {
        int i;
        if (isEmpty()) {
            i = -1;
        } else {
            i = ((int) ULong.m4328constructorimpl(m5428getLastsVKNKU() ^ ULong.m4328constructorimpl(m5428getLastsVKNKU() >>> 32))) + (((int) ULong.m4328constructorimpl(m5427getFirstsVKNKU() ^ ULong.m4328constructorimpl(m5427getFirstsVKNKU() >>> 32))) * 31);
        }
        return i;
    }

    @Override // kotlin.ranges.ULongProgression, kotlin.ranges.ClosedRange
    public boolean isEmpty() {
        return UnsignedKt.ulongCompare(m5427getFirstsVKNKU(), m5428getLastsVKNKU()) > 0;
    }

    @Override // kotlin.ranges.ULongProgression
    public String toString() {
        return ULong.m4365toStringimpl(m5427getFirstsVKNKU()) + ".." + ULong.m4365toStringimpl(m5428getLastsVKNKU());
    }
}
