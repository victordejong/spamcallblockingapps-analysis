package kotlin.random;

import kotlin.Metadata;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��:\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0001ø\u0001��¢\u0006\u0004\b\u0005\u0010\u0006\u001a\"\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0001ø\u0001��¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007ø\u0001��¢\u0006\u0002\u0010\u0010\u001a\u001e\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u0011\u001a\u00020\fH\u0007ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013\u001a2\u0010\u000b\u001a\u00020\f*\u00020\r2\u0006\u0010\u0011\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\u000f2\b\b\u0002\u0010\u0015\u001a\u00020\u000fH\u0007ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0014\u0010\u0018\u001a\u00020\u0003*\u00020\rH\u0007ø\u0001��¢\u0006\u0002\u0010\u0019\u001a\u001e\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0003H\u0007ø\u0001��¢\u0006\u0004\b\u001a\u0010\u001b\u001a&\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0007ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001c\u0010\u0018\u001a\u00020\u0003*\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007ø\u0001��¢\u0006\u0002\u0010 \u001a\u0014\u0010!\u001a\u00020\b*\u00020\rH\u0007ø\u0001��¢\u0006\u0002\u0010\"\u001a\u001e\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u0004\u001a\u00020\bH\u0007ø\u0001��¢\u0006\u0004\b#\u0010$\u001a&\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\bH\u0007ø\u0001��¢\u0006\u0004\b%\u0010&\u001a\u001c\u0010!\u001a\u00020\b*\u00020\r2\u0006\u0010\u001e\u001a\u00020'H\u0007ø\u0001��¢\u0006\u0002\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, m400d2 = {"checkUIntRangeBounds", "", "from", "Lkotlin/UInt;", "until", "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkULongRangeBounds", "Lkotlin/ULong;", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "nextUBytes", "Lkotlin/UByteArray;", "Lkotlin/random/Random;", "size", "", "(Lkotlin/random/Random;I)[B", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "fromIndex", "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "nextUInt", "(Lkotlin/random/Random;)I", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", "range", "Lkotlin/ranges/UIntRange;", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "nextULong", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/random/URandomKt.class */
public final class URandomKt {
    /* renamed from: checkUIntRangeBounds-J1ME1BU */
    public static final void m5403checkUIntRangeBoundsJ1ME1BU(int i, int i2) {
        if (UnsignedKt.uintCompare(i2, i) > 0) {
            return;
        }
        throw new IllegalArgumentException(RandomKt.boundsErrorMessage(UInt.m4251boximpl(i), UInt.m4251boximpl(i2)).toString());
    }

    /* renamed from: checkULongRangeBounds-eb3DHEI */
    public static final void m5404checkULongRangeBoundseb3DHEI(long j, long j2) {
        if (UnsignedKt.ulongCompare(j2, j) > 0) {
            return;
        }
        throw new IllegalArgumentException(RandomKt.boundsErrorMessage(ULong.m4322boximpl(j), ULong.m4322boximpl(j2)).toString());
    }

    public static final byte[] nextUBytes(Random nextUBytes, int i) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        return UByteArray.m4232constructorimpl(nextUBytes.nextBytes(i));
    }

    /* renamed from: nextUBytes-EVgfTAA */
    public static final byte[] m5405nextUBytesEVgfTAA(Random nextUBytes, byte[] array) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array);
        return array;
    }

    /* renamed from: nextUBytes-Wvrt4B4 */
    public static final byte[] m5406nextUBytesWvrt4B4(Random nextUBytes, byte[] array, int i, int i2) {
        Intrinsics.checkNotNullParameter(nextUBytes, "$this$nextUBytes");
        Intrinsics.checkNotNullParameter(array, "array");
        nextUBytes.nextBytes(array, i, i2);
        return array;
    }

    /* renamed from: nextUBytes-Wvrt4B4$default */
    public static /* synthetic */ byte[] m5407nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m4238getSizeimpl(bArr);
        }
        return m5406nextUBytesWvrt4B4(random, bArr, i, i2);
    }

    public static final int nextUInt(Random nextUInt) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        return UInt.m4257constructorimpl(nextUInt.nextInt());
    }

    public static final int nextUInt(Random nextUInt, UIntRange range) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return UnsignedKt.uintCompare(range.m5420getLastpVg5ArA(), -1) < 0 ? m5408nextUInta8DCA5k(nextUInt, range.m5419getFirstpVg5ArA(), UInt.m4257constructorimpl(range.m5420getLastpVg5ArA() + 1)) : UnsignedKt.uintCompare(range.m5419getFirstpVg5ArA(), 0) > 0 ? UInt.m4257constructorimpl(m5408nextUInta8DCA5k(nextUInt, UInt.m4257constructorimpl(range.m5419getFirstpVg5ArA() - 1), range.m5420getLastpVg5ArA()) + 1) : nextUInt(nextUInt);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + range);
    }

    /* renamed from: nextUInt-a8DCA5k */
    public static final int m5408nextUInta8DCA5k(Random nextUInt, int i, int i2) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        m5403checkUIntRangeBoundsJ1ME1BU(i, i2);
        return UInt.m4257constructorimpl(nextUInt.nextInt(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    /* renamed from: nextUInt-qCasIEU */
    public static final int m5409nextUIntqCasIEU(Random nextUInt, int i) {
        Intrinsics.checkNotNullParameter(nextUInt, "$this$nextUInt");
        return m5408nextUInta8DCA5k(nextUInt, 0, i);
    }

    public static final long nextULong(Random nextULong) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        return ULong.m4328constructorimpl(nextULong.nextLong());
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    public static final long nextULong(Random nextULong, ULongRange range) {
        char c;
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot get random in empty range: " + range);
        }
        if (UnsignedKt.ulongCompare(range.m5428getLastsVKNKU(), -1L) < 0) {
            c = m5411nextULongjmpaWc(nextULong, range.m5427getFirstsVKNKU(), ULong.m4328constructorimpl(range.m5428getLastsVKNKU() + ULong.m4328constructorimpl(1 & 4294967295L)));
        } else if (UnsignedKt.ulongCompare(range.m5427getFirstsVKNKU(), 0L) > 0) {
            long j = 1 & 4294967295L;
            c = ULong.m4328constructorimpl(m5411nextULongjmpaWc(nextULong, ULong.m4328constructorimpl(range.m5427getFirstsVKNKU() - ULong.m4328constructorimpl(j)), range.m5428getLastsVKNKU()) + ULong.m4328constructorimpl(j));
        } else {
            c = nextULong(nextULong);
        }
        return c;
    }

    /* renamed from: nextULong-V1Xi4fY */
    public static final long m5410nextULongV1Xi4fY(Random nextULong, long j) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        return m5411nextULongjmpaWc(nextULong, 0L, j);
    }

    /* renamed from: nextULong-jmpaW-c */
    public static final long m5411nextULongjmpaWc(Random nextULong, long j, long j2) {
        Intrinsics.checkNotNullParameter(nextULong, "$this$nextULong");
        m5404checkULongRangeBoundseb3DHEI(j, j2);
        return ULong.m4328constructorimpl(nextULong.nextLong(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }
}
