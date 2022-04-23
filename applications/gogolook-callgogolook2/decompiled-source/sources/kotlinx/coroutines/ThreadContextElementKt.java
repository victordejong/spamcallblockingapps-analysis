package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.ThreadLocalElement;
import kotlinx.coroutines.internal.ThreadLocalKey;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p636k.p637a.C15066b;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\u001a+\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0006\u001a\u00020\u0007*\u0006\u0012\u0002\b\u00030\u0003H\u0086Hø\u0001��¢\u0006\u0002\u0010\b\u001a\u0019\u0010\t\u001a\u00020\n*\u0006\u0012\u0002\b\u00030\u0003H\u0086Hø\u0001��¢\u0006\u0002\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, m815d2 = {"asContextElement", "Lkotlinx/coroutines/ThreadContextElement;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ThreadLocal;", C13032a.f29462d, "(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlinx/coroutines/ThreadContextElement;", "ensurePresent", "", "(Ljava/lang/ThreadLocal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isPresent", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/ThreadContextElementKt.class */
public final class ThreadContextElementKt {
    public static final <T> ThreadContextElement<T> asContextElement(ThreadLocal<T> threadLocal, T t) {
        return new ThreadLocalElement(t, threadLocal);
    }

    public static /* synthetic */ ThreadContextElement asContextElement$default(ThreadLocal threadLocal, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = threadLocal.get();
        }
        return asContextElement(threadLocal, obj);
    }

    public static final Object ensurePresent(ThreadLocal<?> threadLocal, AbstractC15044d<? super C14989s> dVar) {
        if (C15066b.m474a(dVar.getContext().get(new ThreadLocalKey(threadLocal)) != null).booleanValue()) {
            return C14989s.f33022a;
        }
        throw new IllegalStateException(("ThreadLocal " + threadLocal + " is missing from context " + dVar.getContext()).toString());
    }

    public static final Object ensurePresent$$forInline(ThreadLocal threadLocal, AbstractC15044d dVar) {
        C15148j.m388c(3);
        throw new NullPointerException();
    }

    public static final Object isPresent(ThreadLocal<?> threadLocal, AbstractC15044d<? super Boolean> dVar) {
        return C15066b.m474a(dVar.getContext().get(new ThreadLocalKey(threadLocal)) != null);
    }

    public static final Object isPresent$$forInline(ThreadLocal threadLocal, AbstractC15044d dVar) {
        C15148j.m388c(3);
        throw new NullPointerException();
    }
}
