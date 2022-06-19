package kotlin.p521c.p523b.p524a;

import java.io.Serializable;
import kotlin.C18539o;
import kotlin.C18542p;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.p522a.EnumC18307a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b!\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0017\u0012\u0010\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\u0002\u0010\u0006J$\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\"\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013H$ø\u0001��¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\rH\u0014J\u001e\u0010\u0016\u001a\u00020\r2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013ø\u0001��¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, m4298d2 = {"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/io/Serializable;", "completion", "(Lkotlin/coroutines/Continuation;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCompletion", "()Lkotlin/coroutines/Continuation;", "create", "", "value", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "invokeSuspend", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "resumeWith", "(Ljava/lang/Object;)V", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/a.class */
public abstract class AbstractC18316a implements Serializable, AbstractC18319d, AbstractC18332d<Object> {

    /* renamed from: a */
    private final AbstractC18332d<Object> f63421a;

    public AbstractC18316a(AbstractC18332d<Object> abstractC18332d) {
        this.f63421a = abstractC18332d;
    }

    /* renamed from: a */
    public static AbstractC18332d<C20128v> m4094a(AbstractC18332d<?> completion) {
        C18524p.m3840d(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    /* renamed from: a */
    protected abstract Object mo57a(Object obj);

    /* renamed from: a */
    public AbstractC18332d<C20128v> mo4095a(Object obj, AbstractC18332d<?> completion) {
        C18524p.m3840d(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    /* renamed from: a */
    protected void mo4092a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final void mo786b(Object obj) {
        Object mo57a;
        AbstractC18332d abstractC18332d = this;
        while (true) {
            AbstractC18316a abstractC18316a = (AbstractC18316a) abstractC18332d;
            AbstractC18316a frame = abstractC18316a;
            C18524p.m3840d(frame, "frame");
            AbstractC18332d abstractC18332d2 = abstractC18316a.f63421a;
            C18524p.m3851a(abstractC18332d2);
            try {
                mo57a = abstractC18316a.mo57a(obj);
            } catch (Throwable th) {
                C18539o.C18540a c18540a = C18539o.f63626a;
                obj = C18539o.m3836d(C18542p.m3834a(th));
            }
            if (mo57a == EnumC18307a.COROUTINE_SUSPENDED) {
                return;
            }
            C18539o.C18540a c18540a2 = C18539o.f63626a;
            obj = C18539o.m3836d(mo57a);
            abstractC18316a.mo4092a();
            if (!(abstractC18332d2 instanceof AbstractC18316a)) {
                abstractC18332d2.mo786b(obj);
                return;
            }
            abstractC18332d = abstractC18332d2;
        }
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: c */
    public final AbstractC18319d mo784c() {
        AbstractC18332d<Object> abstractC18332d = this.f63421a;
        AbstractC18332d<Object> abstractC18332d2 = abstractC18332d;
        if (!(abstractC18332d instanceof AbstractC18319d)) {
            abstractC18332d2 = null;
        }
        return (AbstractC18319d) abstractC18332d2;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18319d
    /* renamed from: d */
    public final StackTraceElement mo782d() {
        return C18321f.m4084a(this);
    }

    /* renamed from: e */
    public final AbstractC18332d<Object> m4093e() {
        return this.f63421a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        String m4084a = C18321f.m4084a(this);
        if (m4084a == null) {
            m4084a = getClass().getName();
        }
        sb.append((Serializable) m4084a);
        return sb.toString();
    }
}
