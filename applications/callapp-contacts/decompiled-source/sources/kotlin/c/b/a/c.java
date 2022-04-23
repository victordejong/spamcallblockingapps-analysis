package kotlin.c.b.a;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.c.e;
import kotlin.c.f;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\b!\u0018��2\u00020\u0001B\u0019\b\u0016\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\b\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "completion", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/coroutines/Continuation;)V", "_context", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V", "context", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "intercepted", "releaseIntercepted", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/c.class */
public abstract class c extends a {

    /* renamed from: a  reason: collision with root package name */
    private transient d<Object> f36630a;

    /* renamed from: b  reason: collision with root package name */
    private final f f36631b;

    public c(d<Object> dVar) {
        this(dVar, dVar != null ? dVar.b() : null);
    }

    public c(d<Object> dVar, f fVar) {
        super(dVar);
        this.f36631b = fVar;
    }

    @Override // kotlin.c.b.a.a
    protected final void a() {
        d<?> dVar = this.f36630a;
        if (!(dVar == null || dVar == this)) {
            f.b bVar = b().get(e.f36647a);
            p.a(bVar);
            ((e) bVar).b(dVar);
        }
        this.f36630a = b.f36629a;
    }

    @Override // kotlin.c.d
    public final f b() {
        f fVar = this.f36631b;
        p.a(fVar);
        return fVar;
    }

    public final d<Object> f() {
        d<Object> dVar = this.f36630a;
        c cVar = dVar;
        if (dVar == null) {
            e eVar = (e) b().get(e.f36647a);
            cVar = eVar != null ? eVar.a(this) : this;
            this.f36630a = cVar;
        }
        return cVar;
    }
}
