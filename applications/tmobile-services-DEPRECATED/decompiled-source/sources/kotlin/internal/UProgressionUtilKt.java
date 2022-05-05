package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UnsignedKt;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\u001a*\u0010\u0006\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020��H\u0002ø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005\u001a*\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007H\u0002ø\u0001��¢\u0006\u0004\b\b\u0010\t\u001a*\u0010\u000f\u001a\u00020��2\u0006\u0010\n\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020��2\u0006\u0010\r\u001a\u00020\fH\u0001ø\u0001��¢\u0006\u0004\b\u000e\u0010\u0005\u001a*\u0010\u000f\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001ø\u0001��¢\u0006\u0004\b\u0011\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "differenceModulo", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "start", "end", "", "step", "getProgressionLastElement-Nkh28Cs", "getProgressionLastElement", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/internal/UProgressionUtilKt.class */
public final class UProgressionUtilKt {
    /* renamed from: a */
    private static final int m1894a(int i, int i2, int i3) {
        int b = UnsignedKt.m2382b(i, i3);
        int b2 = UnsignedKt.m2382b(i2, i3);
        int a = UnsignedKt.m2383a(b, b2);
        int i4 = b - b2;
        UInt.m2444g(i4);
        if (a < 0) {
            i4 += i3;
            UInt.m2444g(i4);
        }
        return i4;
    }

    /* renamed from: b */
    private static final long m1893b(long j, long j2, long j3) {
        long d = UnsignedKt.m2380d(j, j3);
        long d2 = UnsignedKt.m2380d(j2, j3);
        int c = UnsignedKt.m2381c(d, d2);
        long j4 = d - d2;
        ULong.m2423g(j4);
        if (c < 0) {
            j4 += j3;
            ULong.m2423g(j4);
        }
        return j4;
    }

    @SinceKotlin
    @PublishedApi
    /* renamed from: c */
    public static final long m1892c(long j, long j2, long j3) {
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            if (UnsignedKt.m2381c(j, j2) < 0) {
                ULong.m2423g(j3);
                j2 -= m1893b(j2, j, j3);
                ULong.m2423g(j2);
            }
        } else if (i >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (UnsignedKt.m2381c(j, j2) > 0) {
            long j4 = -j3;
            ULong.m2423g(j4);
            j2 += m1893b(j, j2, j4);
            ULong.m2423g(j2);
        }
        return j2;
    }

    @SinceKotlin
    @PublishedApi
    /* renamed from: d */
    public static final int m1891d(int i, int i2, int i3) {
        if (i3 > 0) {
            if (UnsignedKt.m2383a(i, i2) < 0) {
                UInt.m2444g(i3);
                i2 -= m1894a(i2, i, i3);
                UInt.m2444g(i2);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (UnsignedKt.m2383a(i, i2) > 0) {
            int i4 = -i3;
            UInt.m2444g(i4);
            i2 += m1894a(i, i2, i4);
            UInt.m2444g(i2);
        }
        return i2;
    }
}
