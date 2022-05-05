package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0081\b\u0018��2\u00020\u0001B\u0013\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0014\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002HÂ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001e\u0010\u0006\u001a\u00020��2\f\b\u0002\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0013¨\u0006\u0016"}, d2 = {"Lkotlinx/coroutines/internal/ThreadLocalKey;", "kotlin/coroutines/CoroutineContext$Key", "Ljava/lang/ThreadLocal;", "component1", "()Ljava/lang/ThreadLocal;", "threadLocal", "copy", "(Ljava/lang/ThreadLocal;)Lkotlinx/coroutines/internal/ThreadLocalKey;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Ljava/lang/ThreadLocal;", "<init>", "(Ljava/lang/ThreadLocal;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@PublishedApi
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/internal/ThreadLocalKey.class */
public final class ThreadLocalKey implements CoroutineContext.Key<ThreadLocalElement<?>> {

    /* renamed from: a */
    private final ThreadLocal<?> f23964a;

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            return (obj instanceof ThreadLocalKey) && Intrinsics.m1834a(this.f23964a, ((ThreadLocalKey) obj).f23964a);
        }
        return true;
    }

    public int hashCode() {
        ThreadLocal<?> threadLocal = this.f23964a;
        return threadLocal != null ? threadLocal.hashCode() : 0;
    }

    @NotNull
    public String toString() {
        return "ThreadLocalKey(threadLocal=" + this.f23964a + ")";
    }
}
