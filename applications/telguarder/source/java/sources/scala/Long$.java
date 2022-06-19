package scala;

import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes3-dex2jar.jar:scala/Long$.class */
public final class Long$ implements AnyValCompanion {
    public static final Long$ MODULE$ = null;
    private final long MaxValue;
    private final long MinValue;

    static {
        new Long$();
    }

    private Long$() {
        MODULE$ = this;
    }

    public final long MaxValue() {
        return LongCompanionObject.MAX_VALUE;
    }

    public final long MinValue() {
        return Long.MIN_VALUE;
    }

    public Long box(long j) {
        return Long.valueOf(j);
    }

    public double long2double(long j) {
        return j;
    }

    public float long2float(long j) {
        return (float) j;
    }

    public String toString() {
        return "object scala.Long";
    }

    public long unbox(Object obj) {
        return ((Long) obj).longValue();
    }
}
