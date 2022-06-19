package kotlinx.coroutines.p090b;

import kotlinx.coroutines.p090b.ExecutorC1822a;
/* renamed from: kotlinx.coroutines.b.b */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/b.class */
public final /* synthetic */ class C1826b {

    /* renamed from: a */
    public static final /* synthetic */ int[] f4551a = new int[ExecutorC1822a.EnumC1825c.values().length];

    static {
        f4551a[ExecutorC1822a.EnumC1825c.PARKING.ordinal()] = 1;
        f4551a[ExecutorC1822a.EnumC1825c.BLOCKING.ordinal()] = 2;
        f4551a[ExecutorC1822a.EnumC1825c.CPU_ACQUIRED.ordinal()] = 3;
        f4551a[ExecutorC1822a.EnumC1825c.RETIRING.ordinal()] = 4;
        f4551a[ExecutorC1822a.EnumC1825c.TERMINATED.ordinal()] = 5;
    }
}
