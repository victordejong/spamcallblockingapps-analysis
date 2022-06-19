package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import okhttp3.internal.p027ws.WebSocketProtocol;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\n\u001a\u001e\u0010��\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001e\u0010��\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0005H\u0007ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001e\u0010��\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\bH\u0007ø\u0001��¢\u0006\u0004\b\t\u0010\n\u001a\u001e\u0010��\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000bH\u0007ø\u0001��¢\u0006\u0004\b\f\u0010\r\u001a\u001e\u0010\u000e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b\u0010\u0010\u0004\u001a\u001e\u0010\u000e\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0007\u001a\u001e\u0010\u000e\u001a\u00020\b*\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001��¢\u0006\u0004\b\u0012\u0010\n\u001a\u001e\u0010\u000e\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001��¢\u0006\u0004\b\u0013\u0010\r\u001a&\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0007ø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016\u001a&\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005H\u0007ø\u0001��¢\u0006\u0004\b\u0017\u0010\u0018\u001a$\u0010\u0014\u001a\u00020\u0005*\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00050\u001aH\u0007ø\u0001��¢\u0006\u0004\b\u001b\u0010\u001c\u001a&\u0010\u0014\u001a\u00020\b*\u00020\b2\u0006\u0010\u0002\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\bH\u0007ø\u0001��¢\u0006\u0004\b\u001d\u0010\u001e\u001a$\u0010\u0014\u001a\u00020\b*\u00020\b2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001aH\u0007ø\u0001��¢\u0006\u0004\b\u001f\u0010 \u001a&\u0010\u0014\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007ø\u0001��¢\u0006\u0004\b!\u0010\"\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001��¢\u0006\u0004\b'\u0010(\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\b\u0010)\u001a\u0004\u0018\u00010\u0005H\u0087\nø\u0001��¢\u0006\u0002\b*\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\bH\u0087\u0002ø\u0001��¢\u0006\u0004\b+\u0010,\u001a\u001f\u0010#\u001a\u00020$*\u00020%2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001��¢\u0006\u0004\b-\u0010.\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0001H\u0087\u0002ø\u0001��¢\u0006\u0004\b0\u00101\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u0005H\u0087\u0002ø\u0001��¢\u0006\u0004\b2\u00103\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\b\u0010)\u001a\u0004\u0018\u00010\bH\u0087\nø\u0001��¢\u0006\u0002\b4\u001a\u001f\u0010#\u001a\u00020$*\u00020/2\u0006\u0010&\u001a\u00020\u000bH\u0087\u0002ø\u0001��¢\u0006\u0004\b5\u00106\u001a\u001f\u00107\u001a\u000208*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001��¢\u0006\u0004\b:\u0010;\u001a\u001f\u00107\u001a\u000208*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001��¢\u0006\u0004\b<\u0010=\u001a\u001f\u00107\u001a\u00020>*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001��¢\u0006\u0004\b?\u0010@\u001a\u001f\u00107\u001a\u000208*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001��¢\u0006\u0004\bA\u0010B\u001a\u0015\u0010C\u001a\u00020\u0005*\u00020%H\u0087\bø\u0001��¢\u0006\u0002\u0010D\u001a\u001c\u0010C\u001a\u00020\u0005*\u00020%2\u0006\u0010C\u001a\u00020EH\u0007ø\u0001��¢\u0006\u0002\u0010F\u001a\u0015\u0010C\u001a\u00020\b*\u00020/H\u0087\bø\u0001��¢\u0006\u0002\u0010G\u001a\u001c\u0010C\u001a\u00020\b*\u00020/2\u0006\u0010C\u001a\u00020EH\u0007ø\u0001��¢\u0006\u0002\u0010H\u001a\u0012\u0010I\u001a\u0004\u0018\u00010\u0005*\u00020%H\u0087\bø\u0001��\u001a\u0019\u0010I\u001a\u0004\u0018\u00010\u0005*\u00020%2\u0006\u0010C\u001a\u00020EH\u0007ø\u0001��\u001a\u0012\u0010I\u001a\u0004\u0018\u00010\b*\u00020/H\u0087\bø\u0001��\u001a\u0019\u0010I\u001a\u0004\u0018\u00010\b*\u00020/2\u0006\u0010C\u001a\u00020EH\u0007ø\u0001��\u001a\f\u0010J\u001a\u000208*\u000208H\u0007\u001a\f\u0010J\u001a\u00020>*\u00020>H\u0007\u001a\u0015\u0010K\u001a\u000208*\u0002082\u0006\u0010K\u001a\u00020LH\u0087\u0004\u001a\u0015\u0010K\u001a\u00020>*\u00020>2\u0006\u0010K\u001a\u00020MH\u0087\u0004\u001a\u001f\u0010N\u001a\u00020%*\u00020\u00012\u0006\u00109\u001a\u00020\u0001H\u0087\u0004ø\u0001��¢\u0006\u0004\bO\u0010P\u001a\u001f\u0010N\u001a\u00020%*\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0087\u0004ø\u0001��¢\u0006\u0004\bQ\u0010R\u001a\u001f\u0010N\u001a\u00020/*\u00020\b2\u0006\u00109\u001a\u00020\bH\u0087\u0004ø\u0001��¢\u0006\u0004\bS\u0010T\u001a\u001f\u0010N\u001a\u00020%*\u00020\u000b2\u0006\u00109\u001a\u00020\u000bH\u0087\u0004ø\u0001��¢\u0006\u0004\bU\u0010V\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006W"}, m400d2 = {"coerceAtLeast", "Lkotlin/UByte;", "minimumValue", "coerceAtLeast-Kr8caGY", "(BB)B", "Lkotlin/UInt;", "coerceAtLeast-J1ME1BU", "(II)I", "Lkotlin/ULong;", "coerceAtLeast-eb3DHEI", "(JJ)J", "Lkotlin/UShort;", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-Kr8caGY", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-WZ9TVnA", "(III)I", "range", "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "coerceIn-VKSA0NQ", "(SSS)S", "contains", "", "Lkotlin/ranges/UIntRange;", "value", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "element", "contains-biwQdVI", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "Lkotlin/ranges/ULongRange;", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-GYNo2lE", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", "Lkotlin/ranges/UIntProgression;", "to", "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "Lkotlin/ranges/ULongProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "random", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;)J", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "kotlin-stdlib"}, m399k = 5, m398mv = {1, 4, 0}, m396xi = 1, m395xs = "kotlin/ranges/URangesKt")
/* loaded from: classes-dex2jar.jar:kotlin/ranges/URangesKt___URangesKt.class */
class URangesKt___URangesKt {
    /* renamed from: coerceAtLeast-5PvTz6A */
    public static final short m5434coerceAtLeast5PvTz6A(short s, short s2) {
        short s3 = s;
        if (Intrinsics.compare(s & 65535, 65535 & s2) < 0) {
            s3 = s2;
        }
        return s3;
    }

    /* renamed from: coerceAtLeast-J1ME1BU */
    public static final int m5435coerceAtLeastJ1ME1BU(int i, int i2) {
        int i3 = i;
        if (UnsignedKt.uintCompare(i, i2) < 0) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: coerceAtLeast-Kr8caGY */
    public static final byte m5436coerceAtLeastKr8caGY(byte b, byte b2) {
        byte b3 = b;
        if (Intrinsics.compare(b & 255, b2 & 255) < 0) {
            b3 = b2;
        }
        return b3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: coerceAtLeast-eb3DHEI */
    public static final long m5437coerceAtLeasteb3DHEI(long j, long j2) {
        char c = j;
        if (UnsignedKt.ulongCompare(j, j2) < 0) {
            c = j2;
        }
        return c;
    }

    /* renamed from: coerceAtMost-5PvTz6A */
    public static final short m5438coerceAtMost5PvTz6A(short s, short s2) {
        short s3 = s;
        if (Intrinsics.compare(s & 65535, 65535 & s2) > 0) {
            s3 = s2;
        }
        return s3;
    }

    /* renamed from: coerceAtMost-J1ME1BU */
    public static final int m5439coerceAtMostJ1ME1BU(int i, int i2) {
        int i3 = i;
        if (UnsignedKt.uintCompare(i, i2) > 0) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: coerceAtMost-Kr8caGY */
    public static final byte m5440coerceAtMostKr8caGY(byte b, byte b2) {
        byte b3 = b;
        if (Intrinsics.compare(b & 255, b2 & 255) > 0) {
            b3 = b2;
        }
        return b3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: coerceAtMost-eb3DHEI */
    public static final long m5441coerceAtMosteb3DHEI(long j, long j2) {
        char c = j;
        if (UnsignedKt.ulongCompare(j, j2) > 0) {
            c = j2;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: coerceIn-JPwROB0 */
    public static final long m5442coerceInJPwROB0(long j, ClosedRange<ULong> range) {
        char c;
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt.coerceIn(ULong.m4322boximpl(j), (ClosedFloatingPointRange<ULong>) range)).m4371unboximpl();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (UnsignedKt.ulongCompare(j, range.getStart().m4371unboximpl()) < 0) {
            c = range.getStart().m4371unboximpl();
        } else {
            c = j;
            if (UnsignedKt.ulongCompare(j, range.getEndInclusive().m4371unboximpl()) > 0) {
                c = range.getEndInclusive().m4371unboximpl();
            }
        }
        return c;
    }

    /* renamed from: coerceIn-VKSA0NQ */
    public static final short m5443coerceInVKSA0NQ(short s, short s2, short s3) {
        int i = s2 & 65535;
        int i2 = s3 & 65535;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = 65535 & s;
            return Intrinsics.compare(i3, i) < 0 ? s2 : Intrinsics.compare(i3, i2) > 0 ? s3 : s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UShort.m4463toStringimpl(s3) + " is less than minimum " + UShort.m4463toStringimpl(s2) + '.');
    }

    /* renamed from: coerceIn-WZ9TVnA */
    public static final int m5444coerceInWZ9TVnA(int i, int i2, int i3) {
        if (UnsignedKt.uintCompare(i2, i3) <= 0) {
            return UnsignedKt.uintCompare(i, i2) < 0 ? i2 : UnsignedKt.uintCompare(i, i3) > 0 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UInt.m4294toStringimpl(i3) + " is less than minimum " + UInt.m4294toStringimpl(i2) + '.');
    }

    /* renamed from: coerceIn-b33U2AM */
    public static final byte m5445coerceInb33U2AM(byte b, byte b2, byte b3) {
        int i = b2 & 255;
        int i2 = b3 & 255;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = b & 255;
            return Intrinsics.compare(i3, i) < 0 ? b2 : Intrinsics.compare(i3, i2) > 0 ? b3 : b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + UByte.m4223toStringimpl(b3) + " is less than minimum " + UByte.m4223toStringimpl(b2) + '.');
    }

    /* renamed from: coerceIn-sambcqE */
    public static final long m5446coerceInsambcqE(long j, long j2, long j3) {
        if (UnsignedKt.ulongCompare(j2, j3) <= 0) {
            return UnsignedKt.ulongCompare(j, j2) < 0 ? j2 : UnsignedKt.ulongCompare(j, j3) > 0 ? j3 : j;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ULong.m4365toStringimpl(j3) + " is less than minimum " + ULong.m4365toStringimpl(j2) + '.');
    }

    /* renamed from: coerceIn-wuiCnnA */
    public static final int m5447coerceInwuiCnnA(int i, ClosedRange<UInt> range) {
        int i2;
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt.coerceIn(UInt.m4251boximpl(i), (ClosedFloatingPointRange<UInt>) range)).m4300unboximpl();
        }
        if (range.isEmpty()) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
        }
        if (UnsignedKt.uintCompare(i, range.getStart().m4300unboximpl()) < 0) {
            i2 = range.getStart().m4300unboximpl();
        } else {
            i2 = i;
            if (UnsignedKt.uintCompare(i, range.getEndInclusive().m4300unboximpl()) > 0) {
                i2 = range.getEndInclusive().m4300unboximpl();
            }
        }
        return i2;
    }

    /* renamed from: contains-68kG9v0 */
    public static final boolean m5448contains68kG9v0(UIntRange contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m5423containsWZ4Q5Ns(UInt.m4257constructorimpl(b & 255));
    }

    /* renamed from: contains-GYNo2lE */
    private static final boolean m5449containsGYNo2lE(ULongRange contains, ULong uLong) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uLong != null && contains.m5431containsVKZWuLQ(uLong.m4371unboximpl());
    }

    /* renamed from: contains-Gab390E */
    public static final boolean m5450containsGab390E(ULongRange contains, int i) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m5431containsVKZWuLQ(ULong.m4328constructorimpl(i & 4294967295L));
    }

    /* renamed from: contains-ULb-yJY */
    public static final boolean m5451containsULbyJY(ULongRange contains, byte b) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m5431containsVKZWuLQ(ULong.m4328constructorimpl(b & 255));
    }

    /* renamed from: contains-ZsK3CEQ */
    public static final boolean m5452containsZsK3CEQ(UIntRange contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m5423containsWZ4Q5Ns(UInt.m4257constructorimpl(s & 65535));
    }

    /* renamed from: contains-biwQdVI */
    private static final boolean m5453containsbiwQdVI(UIntRange contains, UInt uInt) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return uInt != null && contains.m5423containsWZ4Q5Ns(uInt.m4300unboximpl());
    }

    /* renamed from: contains-fz5IDCE */
    public static final boolean m5454containsfz5IDCE(UIntRange contains, long j) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return ULong.m4328constructorimpl(j >>> 32) == 0 && contains.m5423containsWZ4Q5Ns(UInt.m4257constructorimpl((int) j));
    }

    /* renamed from: contains-uhHAxoY */
    public static final boolean m5455containsuhHAxoY(ULongRange contains, short s) {
        Intrinsics.checkNotNullParameter(contains, "$this$contains");
        return contains.m5431containsVKZWuLQ(ULong.m4328constructorimpl(s & WebSocketProtocol.PAYLOAD_SHORT_MAX));
    }

    /* renamed from: downTo-5PvTz6A */
    public static final UIntProgression m5456downTo5PvTz6A(short s, short s2) {
        return UIntProgression.Companion.m5421fromClosedRangeNkh28Cs(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(s2 & 65535), -1);
    }

    /* renamed from: downTo-J1ME1BU */
    public static final UIntProgression m5457downToJ1ME1BU(int i, int i2) {
        return UIntProgression.Companion.m5421fromClosedRangeNkh28Cs(i, i2, -1);
    }

    /* renamed from: downTo-Kr8caGY */
    public static final UIntProgression m5458downToKr8caGY(byte b, byte b2) {
        return UIntProgression.Companion.m5421fromClosedRangeNkh28Cs(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(b2 & 255), -1);
    }

    /* renamed from: downTo-eb3DHEI */
    public static final ULongProgression m5459downToeb3DHEI(long j, long j2) {
        return ULongProgression.Companion.m5429fromClosedRange7ftBX0g(j, j2, -1L);
    }

    private static final int random(UIntRange uIntRange) {
        return URangesKt.random(uIntRange, Random.Default);
    }

    public static final int random(UIntRange random, Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return URandomKt.nextUInt(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final long random(ULongRange uLongRange) {
        return URangesKt.random(uLongRange, Random.Default);
    }

    public static final long random(ULongRange random, Random random2) {
        Intrinsics.checkNotNullParameter(random, "$this$random");
        Intrinsics.checkNotNullParameter(random2, "random");
        try {
            return URandomKt.nextULong(random2, random);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    private static final UInt randomOrNull(UIntRange uIntRange) {
        return URangesKt.randomOrNull(uIntRange, Random.Default);
    }

    public static final UInt randomOrNull(UIntRange randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return UInt.m4251boximpl(URandomKt.nextUInt(random, randomOrNull));
    }

    private static final ULong randomOrNull(ULongRange uLongRange) {
        return URangesKt.randomOrNull(uLongRange, Random.Default);
    }

    public static final ULong randomOrNull(ULongRange randomOrNull, Random random) {
        Intrinsics.checkNotNullParameter(randomOrNull, "$this$randomOrNull");
        Intrinsics.checkNotNullParameter(random, "random");
        if (randomOrNull.isEmpty()) {
            return null;
        }
        return ULong.m4322boximpl(URandomKt.nextULong(random, randomOrNull));
    }

    public static final UIntProgression reversed(UIntProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return UIntProgression.Companion.m5421fromClosedRangeNkh28Cs(reversed.m5420getLastpVg5ArA(), reversed.m5419getFirstpVg5ArA(), -reversed.getStep());
    }

    public static final ULongProgression reversed(ULongProgression reversed) {
        Intrinsics.checkNotNullParameter(reversed, "$this$reversed");
        return ULongProgression.Companion.m5429fromClosedRange7ftBX0g(reversed.m5428getLastsVKNKU(), reversed.m5427getFirstsVKNKU(), -reversed.getStep());
    }

    public static final UIntProgression step(UIntProgression step, int i) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int m5419getFirstpVg5ArA = step.m5419getFirstpVg5ArA();
        int m5420getLastpVg5ArA = step.m5420getLastpVg5ArA();
        if (step.getStep() <= 0) {
            i = -i;
        }
        return companion.m5421fromClosedRangeNkh28Cs(m5419getFirstpVg5ArA, m5420getLastpVg5ArA, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [kotlin.ranges.ULongProgression$Companion] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final ULongProgression step(ULongProgression step, long j) {
        Intrinsics.checkNotNullParameter(step, "$this$step");
        RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ?? r0 = ULongProgression.Companion;
        long m5427getFirstsVKNKU = step.m5427getFirstsVKNKU();
        long m5428getLastsVKNKU = step.m5428getLastsVKNKU();
        ?? r9 = j;
        if (step.getStep() <= 0) {
            r9 = -j;
        }
        return r0.m5429fromClosedRange7ftBX0g(m5427getFirstsVKNKU, m5428getLastsVKNKU, r9);
    }

    /* renamed from: until-5PvTz6A */
    public static final UIntRange m5460until5PvTz6A(short s, short s2) {
        int i = s2 & 65535;
        return Intrinsics.compare(i, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m4257constructorimpl(s & 65535), UInt.m4257constructorimpl(UInt.m4257constructorimpl(i) - 1), null);
    }

    /* renamed from: until-J1ME1BU */
    public static final UIntRange m5461untilJ1ME1BU(int i, int i2) {
        return UnsignedKt.uintCompare(i2, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(i, UInt.m4257constructorimpl(i2 - 1), null);
    }

    /* renamed from: until-Kr8caGY */
    public static final UIntRange m5462untilKr8caGY(byte b, byte b2) {
        int i = b2 & 255;
        return Intrinsics.compare(i, 0) <= 0 ? UIntRange.Companion.getEMPTY() : new UIntRange(UInt.m4257constructorimpl(b & 255), UInt.m4257constructorimpl(UInt.m4257constructorimpl(i) - 1), null);
    }

    /* renamed from: until-eb3DHEI */
    public static final ULongRange m5463untileb3DHEI(long j, long j2) {
        return UnsignedKt.ulongCompare(j2, 0L) <= 0 ? ULongRange.Companion.getEMPTY() : new ULongRange(j, ULong.m4328constructorimpl(j2 - ULong.m4328constructorimpl(1 & 4294967295L)), null);
    }
}
