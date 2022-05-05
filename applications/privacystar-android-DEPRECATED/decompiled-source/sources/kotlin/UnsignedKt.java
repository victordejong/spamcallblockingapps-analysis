package kotlin;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.spongycastle.asn1.cmc.BodyPartID;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0018\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0001\u001a\"\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u001a\"\u0010\b\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001ø\u0001��¢\u0006\u0004\b\t\u0010\u0007\u001a\u0018\u0010\n\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u000bH\u0001\u001a\"\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001ø\u0001��¢\u0006\u0004\b\u000e\u0010\u000f\u001a\"\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\rH\u0001ø\u0001��¢\u0006\u0004\b\u0011\u0010\u000f\u001a\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000bH��\u001a\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0001H��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, m254d2 = {"uintCompare", "", "v1", "v2", "uintDivide", "Lkotlin/UInt;", "uintDivide-J1ME1BU", "(II)I", "uintRemainder", "uintRemainder-J1ME1BU", "ulongCompare", "", "ulongDivide", "Lkotlin/ULong;", "ulongDivide-eb3DHEI", "(JJ)J", "ulongRemainder", "ulongRemainder-eb3DHEI", "ulongToString", "", "v", "base", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "UnsignedKt")
/* loaded from: classes2-dex2jar.jar:kotlin/UnsignedKt.class */
public final class UnsignedKt {
    @PublishedApi
    public static final int uintCompare(int i, int i2) {
        return Intrinsics.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: uintDivide-J1ME1BU  reason: not valid java name */
    public static final int m3090uintDivideJ1ME1BU(int i, int i2) {
        return UInt.m2894constructorimpl((int) ((i & BodyPartID.bodyIdMax) / (i2 & BodyPartID.bodyIdMax)));
    }

    @PublishedApi
    /* renamed from: uintRemainder-J1ME1BU  reason: not valid java name */
    public static final int m3091uintRemainderJ1ME1BU(int i, int i2) {
        return UInt.m2894constructorimpl((int) ((i & BodyPartID.bodyIdMax) % (i2 & BodyPartID.bodyIdMax)));
    }

    @PublishedApi
    public static final int ulongCompare(long j, long j2) {
        return ((j ^ Long.MIN_VALUE) > (j2 ^ Long.MIN_VALUE) ? 1 : ((j ^ Long.MIN_VALUE) == (j2 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    @PublishedApi
    /* renamed from: ulongDivide-eb3DHEI  reason: not valid java name */
    public static final long m3092ulongDivideeb3DHEI(long j, long j2) {
        if (j2 < 0) {
            return ulongCompare(j, j2) < 0 ? ULong.m2962constructorimpl(0L) : ULong.m2962constructorimpl(1L);
        } else if (j >= 0) {
            return ULong.m2962constructorimpl(j / j2);
        } else {
            int i = 1;
            long j3 = ((j >>> 1) / j2) << 1;
            if (ulongCompare(ULong.m2962constructorimpl(j - (j3 * j2)), ULong.m2962constructorimpl(j2)) < 0) {
                i = 0;
            }
            return ULong.m2962constructorimpl(j3 + i);
        }
    }

    @PublishedApi
    /* renamed from: ulongRemainder-eb3DHEI  reason: not valid java name */
    public static final long m3093ulongRemaindereb3DHEI(long j, long j2) {
        if (j2 < 0) {
            if (ulongCompare(j, j2) >= 0) {
                j = ULong.m2962constructorimpl(j - j2);
            }
            return j;
        } else if (j >= 0) {
            return ULong.m2962constructorimpl(j % j2);
        } else {
            long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
            if (ulongCompare(ULong.m2962constructorimpl(j3), ULong.m2962constructorimpl(j2)) < 0) {
                j2 = 0;
            }
            return ULong.m2962constructorimpl(j3 - j2);
        }
    }

    @NotNull
    public static final String ulongToString(long j) {
        return ulongToString(j, 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 4 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String ulongToString(long r7, int r9) {
        /*
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0017
            r0 = r7
            r1 = r9
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            r0 = r10
            return r0
        L_0x0017:
            r0 = r9
            long r0 = (long) r0
            r11 = r0
            r0 = r7
            r1 = 1
            long r0 = r0 >>> r1
            r1 = r11
            long r0 = r0 / r1
            r1 = 1
            long r0 = r0 << r1
            r13 = r0
            r0 = r7
            r1 = r13
            r2 = r11
            long r1 = r1 * r2
            long r0 = r0 - r1
            r15 = r0
            r0 = r13
            r17 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0049
            r0 = r15
            r1 = r11
            long r0 = r0 - r1
            r7 = r0
            r0 = r13
            r1 = 1
            long r0 = r0 + r1
            r17 = r0
        L_0x0049:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r17
            r1 = r9
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r19 = r0
            r0 = r19
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            r0 = r10
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r19 = r0
            r0 = r19
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            r0 = r10
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.ulongToString(long, int):java.lang.String");
    }
}
