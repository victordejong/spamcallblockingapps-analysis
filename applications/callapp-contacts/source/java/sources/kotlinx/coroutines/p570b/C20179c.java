package kotlinx.coroutines.p570b;

import kotlin.Metadata;
import kotlin.p530f.C18363d;
import kotlinx.coroutines.AbstractC20140af;
import kotlinx.coroutines.internal.C20297w;
import kotlinx.coroutines.internal.C20298x;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "()V", "IO", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIO", "()Lkotlinx/coroutines/CoroutineDispatcher;", EventConstants.CLOSE, "", "toDebugString", "", "toString", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/c.class */
public final class C20179c extends C20180d {

    /* renamed from: b */
    public static final C20179c f66607b;

    /* renamed from: e */
    private static final AbstractC20140af f66608e;

    static {
        C20179c c20179c = new C20179c();
        f66607b = c20179c;
        f66608e = new ExecutorC20182f(c20179c, C20297w.m813a("kotlinx.coroutines.io.parallelism", C18363d.m4051c(64, C20298x.m810a()), 0, 0, 12), "Dispatchers.IO", 1);
    }

    private C20179c() {
        super(0, 0, null, 7, null);
    }

    /* renamed from: c */
    public static AbstractC20140af m1032c() {
        return f66608e;
    }

    @Override // kotlinx.coroutines.p570b.C20180d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.p570b.C20180d, kotlinx.coroutines.AbstractC20140af
    public final String toString() {
        return "Dispatchers.Default";
    }
}
