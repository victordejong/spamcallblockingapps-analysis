package kotlin;

import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0010\u0006\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a\u001a\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��H\u0001ø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001a\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020��H\u0001ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a\"\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0001ø\u0001��¢\u0006\u0004\b\r\u0010\f\u001a\"\u0010\u0010\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0001ø\u0001��¢\u0006\u0004\b\u000f\u0010\f\u001a\u0017\u0010\u0011\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020\bH\u0001¢\u0006\u0004\b\u0011\u0010\u0012\u001a\u001f\u0010\u0014\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0001¢\u0006\u0004\b\u0014\u0010\u0015\u001a\"\u0010\u0018\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0001ø\u0001��¢\u0006\u0004\b\u0016\u0010\u0017\u001a\"\u0010\u001a\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005H\u0001ø\u0001��¢\u0006\u0004\b\u0019\u0010\u0017\u001a\u0017\u0010\u001b\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020\u0013H\u0001¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0001\u001a\u00020\u0013H��¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001f\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0001\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\bH��¢\u0006\u0004\b\u001e\u0010!\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\""}, d2 = {"", "v", "Lkotlin/UInt;", "doubleToUInt", "(D)I", "Lkotlin/ULong;", "doubleToULong", "(D)J", "", "v1", "v2", "uintCompare", "(II)I", "uintDivide-J1ME1BU", "uintDivide", "uintRemainder-J1ME1BU", "uintRemainder", "uintToDouble", "(I)D", "", "ulongCompare", "(JJ)I", "ulongDivide-eb3DHEI", "(JJ)J", "ulongDivide", "ulongRemainder-eb3DHEI", "ulongRemainder", "ulongToDouble", "(J)D", "", "ulongToString", "(J)Ljava/lang/String;", "base", "(JI)Ljava/lang/String;", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:kotlin/UnsignedKt.class */
public final class UnsignedKt {
    @PublishedApi
    /* renamed from: a */
    public static final int m2383a(int i, int i2) {
        return Intrinsics.m1828g(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    @PublishedApi
    /* renamed from: b */
    public static final int m2382b(int i, int i2) {
        int i3 = (int) ((i & 4294967295L) % (i2 & 4294967295L));
        UInt.m2444g(i3);
        return i3;
    }

    @PublishedApi
    /* renamed from: c */
    public static final int m2381c(long j, long j2) {
        return ((j ^ Long.MIN_VALUE) > (j2 ^ Long.MIN_VALUE) ? 1 : ((j ^ Long.MIN_VALUE) == (j2 ^ Long.MIN_VALUE) ? 0 : -1));
    }

    @PublishedApi
    /* renamed from: d */
    public static final long m2380d(long j, long j2) {
        if (j2 < 0) {
            if (m2381c(j, j2) >= 0) {
                j -= j2;
                ULong.m2423g(j);
            }
            return j;
        } else if (j >= 0) {
            long j3 = j % j2;
            ULong.m2423g(j3);
            return j3;
        } else {
            long j4 = j - ((((j >>> 1) / j2) << 1) * j2);
            ULong.m2423g(j4);
            ULong.m2423g(j2);
            if (m2381c(j4, j2) < 0) {
                j2 = 0;
            }
            long j5 = j4 - j2;
            ULong.m2423g(j5);
            return j5;
        }
    }

    @NotNull
    /* renamed from: e */
    public static final String m2379e(long j) {
        return m2378f(j, 10);
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
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String m2378f(long r7, int r9) {
        /*
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0019
            r0 = r9
            int r0 = kotlin.text.CharsKt.m1576a(r0)
            r0 = r7
            r1 = r9
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r10
            return r0
        L_0x0019:
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
            if (r0 < 0) goto L_0x004b
            r0 = r15
            r1 = r11
            long r0 = r0 - r1
            r7 = r0
            r0 = r13
            r1 = 1
            long r0 = r0 + r1
            r17 = r0
        L_0x004b:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r9
            int r0 = kotlin.text.CharsKt.m1576a(r0)
            r0 = r17
            r1 = r9
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r19 = r0
            r0 = r19
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r10
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            int r0 = kotlin.text.CharsKt.m1576a(r0)
            r0 = r7
            r1 = r9
            java.lang.String r0 = java.lang.Long.toString(r0, r1)
            r19 = r0
            r0 = r19
            java.lang.String r1 = "java.lang.Long.toString(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r10
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UnsignedKt.m2378f(long, int):java.lang.String");
    }
}
