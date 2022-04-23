package kotlin.c.b.a;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.internal.p;
import kotlin.o;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\b!\u0018��2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u00032\u00020\u0004B\u0017\u0012\u0010\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\u0002\u0010\u0006J$\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0001H\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\"\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013H$ø\u0001��¢\u0006\u0002\u0010\u0014J\b\u0010\u0015\u001a\u00020\rH\u0014J\u001e\u0010\u0016\u001a\u00020\r2\u000e\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0013ø\u0001��¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\u0005\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0001¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/io/Serializable;", "completion", "(Lkotlin/coroutines/Continuation;)V", "callerFrame", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCompletion", "()Lkotlin/coroutines/Continuation;", "create", "", "value", "getStackTraceElement", "Ljava/lang/StackTraceElement;", "invokeSuspend", "result", "Lkotlin/Result;", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "resumeWith", "(Ljava/lang/Object;)V", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/a.class */
public abstract class a implements Serializable, d, d<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final d<Object> f36628a;

    public a(d<Object> dVar) {
        this.f36628a = dVar;
    }

    public static d<v> a(d<?> completion) {
        p.d(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    protected abstract Object a(Object obj);

    public d<v> a(Object obj, d<?> completion) {
        p.d(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    protected void a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.c.d
    public final void b(Object obj) {
        Object a2;
        d dVar = this;
        while (true) {
            a aVar = (a) dVar;
            a frame = aVar;
            p.d(frame, "frame");
            d dVar2 = aVar.f36628a;
            p.a(dVar2);
            try {
                a2 = aVar.a(obj);
            } catch (Throwable th) {
                o.a aVar2 = o.f36812a;
                obj = o.d(kotlin.p.a(th));
            }
            if (a2 != kotlin.c.a.a.COROUTINE_SUSPENDED) {
                o.a aVar3 = o.f36812a;
                obj = o.d(a2);
                aVar.a();
                if (dVar2 instanceof a) {
                    dVar = dVar2;
                } else {
                    dVar2.b(obj);
                    return;
                }
            } else {
                return;
            }
        }
    }

    @Override // kotlin.c.b.a.d
    public final d c() {
        d<Object> dVar = this.f36628a;
        d<Object> dVar2 = dVar;
        if (!(dVar instanceof d)) {
            dVar2 = null;
        }
        return (d) dVar2;
    }

    @Override // kotlin.c.b.a.d
    public final StackTraceElement d() {
        return f.a(this);
    }

    public final d<Object> e() {
        return this.f36628a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Serializable a2 = f.a(this);
        if (a2 == null) {
            a2 = getClass().getName();
        }
        sb.append(a2);
        return sb.toString();
    }
}
