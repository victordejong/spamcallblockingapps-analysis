package kotlin.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\t\u001a'\u0010\u0004\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020��H\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a'\u0010\u0004\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0004\u0010\u0007\u001a'\u0010\u000b\u001a\u00020��2\u0006\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020��2\u0006\u0010\n\u001a\u00020��H\u0001¢\u0006\u0004\b\u000b\u0010\u0005\u001a'\u0010\u000b\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0001¢\u0006\u0004\b\u000b\u0010\u0007\u001a\u001f\u0010\f\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020��H\u0002¢\u0006\u0004\b\f\u0010\r\u001a\u001f\u0010\f\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u000e¨\u0006\u000f"}, d2 = {"", "a", "b", "c", "differenceModulo", "(III)I", "", "(JJJ)J", "start", "end", "step", "getProgressionLastElement", "mod", "(II)I", "(JJ)J", "kotlin-stdlib"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/internal/ProgressionUtilKt.class */
public final class ProgressionUtilKt {
    /* renamed from: a */
    private static final int m1900a(int i, int i2, int i3) {
        return m1896e(m1896e(i, i3) - m1896e(i2, i3), i3);
    }

    /* renamed from: b */
    private static final long m1899b(long j, long j2, long j3) {
        return m1895f(m1895f(j, j3) - m1895f(j2, j3), j3);
    }

    @PublishedApi
    /* renamed from: c */
    public static final int m1898c(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                i2 -= m1900a(i2, i, i3);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (i > i2) {
            i2 += m1900a(i, i2, -i3);
        }
        return i2;
    }

    @PublishedApi
    /* renamed from: d */
    public static final long m1897d(long j, long j2, long j3) {
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            if (j < j2) {
                j2 -= m1899b(j2, j, j3);
            }
        } else if (i >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (j > j2) {
            j2 += m1899b(j, j2, -j3);
        }
        return j2;
    }

    /* renamed from: e */
    private static final int m1896e(int i, int i2) {
        int i3 = i % i2;
        if (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }

    /* renamed from: f */
    private static final long m1895f(long j, long j2) {
        long j3 = j % j2;
        if (j3 < 0) {
            j3 += j2;
        }
        return j3;
    }
}
