package kotlin.p521c.p523b.p524a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
import kotlin.p521c.AbstractC18333e;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\b!\u0018��2\u00020\u0001B\u0019\b\u0016\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\b\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;", "completion", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/coroutines/Continuation;)V", "_context", "Lkotlin/coroutines/CoroutineContext;", "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V", "context", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "intercepted", "releaseIntercepted", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b.a.c */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/c.class */
public abstract class AbstractC18318c extends AbstractC18316a {

    /* renamed from: a */
    private transient AbstractC18332d<Object> f63423a;

    /* renamed from: b */
    private final AbstractC18335f f63424b;

    public AbstractC18318c(AbstractC18332d<Object> abstractC18332d) {
        this(abstractC18332d, abstractC18332d != null ? abstractC18332d.mo787b() : null);
    }

    public AbstractC18318c(AbstractC18332d<Object> abstractC18332d, AbstractC18335f abstractC18335f) {
        super(abstractC18332d);
        this.f63424b = abstractC18335f;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
    /* renamed from: a */
    protected final void mo4092a() {
        AbstractC18332d<?> abstractC18332d = this.f63423a;
        if (abstractC18332d != null && abstractC18332d != this) {
            AbstractC18335f.AbstractC18338b abstractC18338b = mo787b().get(AbstractC18333e.f63440a);
            C18524p.m3851a(abstractC18338b);
            ((AbstractC18333e) abstractC18338b).mo1089b(abstractC18332d);
        }
        this.f63423a = C18317b.f63422a;
    }

    @Override // kotlin.p521c.AbstractC18332d
    /* renamed from: b */
    public final AbstractC18335f mo787b() {
        AbstractC18335f abstractC18335f = this.f63424b;
        C18524p.m3851a(abstractC18335f);
        return abstractC18335f;
    }

    /* renamed from: f */
    public final AbstractC18332d<Object> m4091f() {
        AbstractC18332d<Object> abstractC18332d = this.f63423a;
        AbstractC18318c abstractC18318c = abstractC18332d;
        if (abstractC18332d == null) {
            AbstractC18333e abstractC18333e = (AbstractC18333e) mo787b().get(AbstractC18333e.f63440a);
            abstractC18318c = abstractC18333e != null ? abstractC18333e.mo1090a(this) : this;
            this.f63423a = abstractC18318c;
        }
        return abstractC18318c;
    }
}
