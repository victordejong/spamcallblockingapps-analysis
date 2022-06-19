package kotlinx.coroutines.p090b;

import java.util.concurrent.TimeUnit;
import kotlin.p084f.C1713d;
import kotlinx.coroutines.internal.C1924v;
/* renamed from: kotlinx.coroutines.b.m */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/m.class */
public final class C1837m {

    /* renamed from: a */
    public static final long f4573a = C1924v.m2584a("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 0L, 0L, 12, (Object) null);

    /* renamed from: b */
    public static final int f4574b = C1924v.m2586a("kotlinx.coroutines.scheduler.offload.threshold", 96, 0, 128, 4, (Object) null);

    /* renamed from: c */
    public static final int f4575c = C1924v.m2586a("kotlinx.coroutines.scheduler.blocking.parallelism", 16, 0, 0, 12, (Object) null);

    /* renamed from: d */
    public static final int f4576d = C1924v.m2586a("kotlinx.coroutines.scheduler.core.pool.size", C1713d.m3076c(C1924v.m2589a(), 2), 1, 0, 8, (Object) null);

    /* renamed from: e */
    public static final int f4577e = C1924v.m2586a("kotlinx.coroutines.scheduler.max.pool.size", C1713d.m3080a(C1924v.m2589a() * 128, f4576d, 2097150), 0, 2097150, 4, (Object) null);

    /* renamed from: f */
    public static final long f4578f = TimeUnit.SECONDS.toNanos(C1924v.m2584a("kotlinx.coroutines.scheduler.keep.alive.sec", 5L, 0L, 0L, 12, (Object) null));

    /* renamed from: g */
    public static AbstractC1838n f4579g = C1831g.f4564a;
}
