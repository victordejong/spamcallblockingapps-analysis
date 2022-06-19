package kotlin;

import io.realm.BuildConfig;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.text.CharsKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��0\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001��¢\u0006\u0002\u0010\u0004\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0001ø\u0001��¢\u0006\u0002\u0010\u0007\u001a\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0001\u001a\"\u0010\f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u001a\"\u0010\u000f\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u0001H\u0001ø\u0001��¢\u0006\u0004\b\u0010\u0010\u000e\u001a\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\tH\u0001\u001a\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u0013H\u0001\u001a\"\u0010\u0014\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001��¢\u0006\u0004\b\u0015\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0001ø\u0001��¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0013H\u0001\u001a\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u0013H��\u001a\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0002\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\tH��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, m400d2 = {"doubleToUInt", "Lkotlin/UInt;", "v", "", "(D)I", "doubleToULong", "Lkotlin/ULong;", "(D)J", "uintCompare", "", "v1", "v2", "uintDivide", "uintDivide-J1ME1BU", "(II)I", "uintRemainder", "uintRemainder-J1ME1BU", "uintToDouble", "ulongCompare", "", "ulongDivide", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "ulongToDouble", "ulongToString", "", BuildConfig.FLAVOR, "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes2-dex2jar.jar:kotlin/UnsignedKt.class */
public final class UnsignedKt {
    public static final int doubleToUInt(double d) {
        int i = -1;
        if (Double.isNaN(d) || d <= uintToDouble(0)) {
            i = 0;
        } else if (d < uintToDouble(-1)) {
            double d2 = Integer.MAX_VALUE;
            i = d <= d2 ? UInt.m4257constructorimpl((int) d) : UInt.m4257constructorimpl(UInt.m4257constructorimpl((int) (d - d2)) + UInt.m4257constructorimpl(Integer.MAX_VALUE));
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    public static final long doubleToULong(double d) {
        char c = 65535;
        if (Double.isNaN(d) || d <= ulongToDouble(0L)) {
            c = 0;
        } else if (d < ulongToDouble(-1L)) {
            c = d < ((double) LongCompanionObject.MAX_VALUE) ? ULong.m4328constructorimpl((long) d) : ULong.m4328constructorimpl(ULong.m4328constructorimpl((long) (d - 9.223372036854776E18d)) - Long.MIN_VALUE);
        }
        return c;
    }

    public static final int uintCompare(int i, int i2) {
        return Intrinsics.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    /* renamed from: uintDivide-J1ME1BU */
    public static final int m4490uintDivideJ1ME1BU(int i, int i2) {
        return UInt.m4257constructorimpl((int) ((i & 4294967295L) / (i2 & 4294967295L)));
    }

    /* renamed from: uintRemainder-J1ME1BU */
    public static final int m4491uintRemainderJ1ME1BU(int i, int i2) {
        return UInt.m4257constructorimpl((int) ((i & 4294967295L) % (i2 & 4294967295L)));
    }

    public static final double uintToDouble(int i) {
        return (Integer.MAX_VALUE & i) + (((i >>> 31) << 30) * 2);
    }

    public static final int ulongCompare(long j, long j2) {
        return ((j ^ Long.MIN_VALUE) > (j2 ^ Long.MIN_VALUE) ? 1 : ((j ^ Long.MIN_VALUE) == (j2 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: ulongDivide-eb3DHEI */
    public static final long m4492ulongDivideeb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return ulongCompare(j, j2) < 0 ? ULong.m4328constructorimpl(0L) : ULong.m4328constructorimpl(1L);
        } else if (j >= 0) {
            return ULong.m4328constructorimpl(j / j2);
        } else {
            int i = 1;
            long j3 = ((j >>> 1) / j2) << 1;
            if (ulongCompare(ULong.m4328constructorimpl(j - (j3 * j2)), ULong.m4328constructorimpl(j2)) < 0) {
                i = 0;
            }
            return ULong.m4328constructorimpl(j3 + i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: ulongRemainder-eb3DHEI */
    public static final long m4493ulongRemaindereb3DHEI(long j, long j2) {
        if (j2 < 0) {
            int ulongCompare = ulongCompare(j, j2);
            ?? r7 = j;
            if (ulongCompare >= 0) {
                r7 = ULong.m4328constructorimpl(j - j2);
            }
            return r7;
        } else if (j >= 0) {
            return ULong.m4328constructorimpl(j % j2);
        } else {
            long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
            int ulongCompare2 = ulongCompare(ULong.m4328constructorimpl(j3), ULong.m4328constructorimpl(j2));
            ?? r9 = j2;
            if (ulongCompare2 < 0) {
                r9 = 0;
            }
            return ULong.m4328constructorimpl(j3 - r9);
        }
    }

    public static final double ulongToDouble(long j) {
        return ((j >>> 11) * 2048) + (j & 2047);
    }

    public static final String ulongToString(long j) {
        return ulongToString(j, 10);
    }

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public static final String ulongToString(long j, int i) {
        if (j >= 0) {
            String l = Long.toString(j, CharsKt.checkRadix(i));
            Intrinsics.checkNotNullExpressionValue(l, "java.lang.Long.toString(this, checkRadix(radix))");
            return l;
        }
        long j2 = i;
        ?? r0 = ((j >>> 1) / j2) << 1;
        ?? r02 = j - (r0 * j2);
        char c = r0;
        char c2 = r02;
        if (r02 >= j2) {
            c2 = r02 - j2;
            c = r0 + 1;
        }
        StringBuilder sb = new StringBuilder();
        String l2 = Long.toString(c, CharsKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(l2, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l2);
        String l3 = Long.toString(c2, CharsKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(l3, "java.lang.Long.toString(this, checkRadix(radix))");
        sb.append(l3);
        return sb.toString();
    }
}
