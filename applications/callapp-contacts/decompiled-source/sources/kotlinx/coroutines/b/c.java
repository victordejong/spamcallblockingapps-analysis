package kotlinx.coroutines.b;

import kotlin.Metadata;
import kotlin.f.d;
import kotlinx.coroutines.af;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0007J\b\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "()V", "IO", "Lkotlinx/coroutines/CoroutineDispatcher;", "getIO", "()Lkotlinx/coroutines/CoroutineDispatcher;", EventConstants.CLOSE, "", "toDebugString", "", "toString", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/c.class */
public final class c extends d {

    /* renamed from: b  reason: collision with root package name */
    public static final c f38715b;
    private static final af e;

    static {
        c cVar = new c();
        f38715b = cVar;
        e = new f(cVar, w.a("kotlinx.coroutines.io.parallelism", d.c(64, x.a()), 0, 0, 12), "Dispatchers.IO", 1);
    }

    private c() {
        super(0, 0, null, 7, null);
    }

    public static af c() {
        return e;
    }

    @Override // kotlinx.coroutines.b.d, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.b.d, kotlinx.coroutines.af
    public final String toString() {
        return "Dispatchers.Default";
    }
}
