package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14986p;
import p626l.p634w.AbstractC15037a;
import p626l.p634w.AbstractC15038b;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15045e;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b&\u0018�� \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B\u0005¢\u0006\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH&J\u001c\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0017J \u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\r\"\u0004\b��\u0010\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0011\u0010\u0012\u001a\u00020��2\u0006\u0010\u0013\u001a\u00020��H\u0087\u0002J\u0014\u0010\u0014\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\rH\u0017J\b\u0010\u0015\u001a\u00020\u0016H\u0016¨\u0006\u0018"}, m815d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "()V", "dispatch", "", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchYield", "interceptContinuation", "Lkotlin/coroutines/Continuation;", ExifInterface.GPS_DIRECTION_TRUE, "continuation", "isDispatchNeeded", "", "plus", "other", "releaseInterceptedContinuation", "toString", "", "Key", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher.class */
public abstract class CoroutineDispatcher extends AbstractC15037a implements AbstractC15045e {
    public static final Key Key = new Key(null);

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m815d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "()V", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
    /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher$Key.class */
    public static final class Key extends AbstractC15038b<AbstractC15045e, CoroutineDispatcher> {

        @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineDispatcher;", "it", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
        /* renamed from: kotlinx.coroutines.CoroutineDispatcher$Key$1 */
        /* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/CoroutineDispatcher$Key$1.class */
        public static final class C147011 extends AbstractC15150l implements AbstractC15118l<AbstractC15049g.AbstractC15052b, CoroutineDispatcher> {
            public static final C147011 INSTANCE = new C147011();

            public C147011() {
                super(1);
            }

            public final CoroutineDispatcher invoke(AbstractC15049g.AbstractC15052b bVar) {
                AbstractC15049g.AbstractC15052b bVar2 = bVar;
                if (!(bVar instanceof CoroutineDispatcher)) {
                    bVar2 = null;
                }
                return (CoroutineDispatcher) bVar2;
            }
        }

        public Key() {
            super(AbstractC15045e.f33077M, C147011.INSTANCE);
        }

        public /* synthetic */ Key(C15145g gVar) {
            this();
        }
    }

    public CoroutineDispatcher() {
        super(AbstractC15045e.f33077M);
    }

    public abstract void dispatch(AbstractC15049g gVar, Runnable runnable);

    @InternalCoroutinesApi
    public void dispatchYield(AbstractC15049g gVar, Runnable runnable) {
        dispatch(gVar, runnable);
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g.AbstractC15052b, p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        return (E) AbstractC15045e.C15046a.m492a(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15045e
    public final <T> AbstractC15044d<T> interceptContinuation(AbstractC15044d<? super T> dVar) {
        return new DispatchedContinuation(this, dVar);
    }

    public boolean isDispatchNeeded(AbstractC15049g gVar) {
        return true;
    }

    @Override // p626l.p634w.AbstractC15037a, p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        return AbstractC15045e.C15046a.m491b(this, cVar);
    }

    public final CoroutineDispatcher plus(CoroutineDispatcher coroutineDispatcher) {
        return coroutineDispatcher;
    }

    @Override // p626l.p634w.AbstractC15045e
    @InternalCoroutinesApi
    public void releaseInterceptedContinuation(AbstractC15044d<?> dVar) {
        if (dVar != null) {
            CancellableContinuationImpl<?> reusableCancellableContinuation = ((DispatchedContinuation) dVar).getReusableCancellableContinuation();
            if (reusableCancellableContinuation != null) {
                reusableCancellableContinuation.detachChild$kotlinx_coroutines_core();
                return;
            }
            return;
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<*>");
    }

    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }
}
