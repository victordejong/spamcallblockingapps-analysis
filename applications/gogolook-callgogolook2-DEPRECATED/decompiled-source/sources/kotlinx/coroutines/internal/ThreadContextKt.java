package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.ThreadContextElement;
import p626l.C14986p;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004H��\u001a\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH��\u001a\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H��\"\u000e\u0010��\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004¢\u0006\u0002\n��\",\u0010\u0006\u001a \u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0002\b\u0003\u0018\u00010\u00070\u0003X\u0082\u0004¢\u0006\u0002\n��\" \u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n��\" \u0010\n\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m815d2 = {"ZERO", "Lkotlinx/coroutines/internal/Symbol;", "countAll", "Lkotlin/Function2;", "", "Lkotlin/coroutines/CoroutineContext$Element;", "findOne", "Lkotlinx/coroutines/ThreadContextElement;", "restoreState", "Lkotlinx/coroutines/internal/ThreadState;", "updateState", "restoreThreadContext", "", "context", "Lkotlin/coroutines/CoroutineContext;", "oldState", "threadContextElements", "updateThreadContext", "countOrElement", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt.class */
public final class ThreadContextKt {
    public static final Symbol ZERO = new Symbol("ZERO");
    public static final AbstractC15122p<Object, AbstractC15049g.AbstractC15052b, Object> countAll = ThreadContextKt$countAll$1.INSTANCE;
    public static final AbstractC15122p<ThreadContextElement<?>, AbstractC15049g.AbstractC15052b, ThreadContextElement<?>> findOne = ThreadContextKt$findOne$1.INSTANCE;
    public static final AbstractC15122p<ThreadState, AbstractC15049g.AbstractC15052b, ThreadState> updateState = ThreadContextKt$updateState$1.INSTANCE;
    public static final AbstractC15122p<ThreadState, AbstractC15049g.AbstractC15052b, ThreadState> restoreState = ThreadContextKt$restoreState$1.INSTANCE;

    public static final void restoreThreadContext(AbstractC15049g gVar, Object obj) {
        if (obj != ZERO) {
            if (obj instanceof ThreadState) {
                ((ThreadState) obj).start();
                gVar.fold(obj, restoreState);
                return;
            }
            Object fold = gVar.fold(null, findOne);
            if (fold != null) {
                ((ThreadContextElement) fold).restoreThreadContext(gVar, obj);
                return;
            }
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
    }

    public static final Object threadContextElements(AbstractC15049g gVar) {
        Object fold = gVar.fold(0, countAll);
        if (fold != null) {
            return fold;
        }
        C15149k.m378b();
        throw null;
    }

    public static final Object updateThreadContext(AbstractC15049g gVar, Object obj) {
        Object obj2;
        if (obj == null) {
            obj = threadContextElements(gVar);
        }
        if (obj == 0) {
            obj2 = ZERO;
        } else if (obj instanceof Integer) {
            obj2 = gVar.fold(new ThreadState(gVar, ((Number) obj).intValue()), updateState);
        } else if (obj != null) {
            obj2 = ((ThreadContextElement) obj).updateThreadContext(gVar);
        } else {
            throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
        return obj2;
    }
}
