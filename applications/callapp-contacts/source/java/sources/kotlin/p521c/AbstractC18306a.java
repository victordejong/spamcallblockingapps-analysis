package kotlin.p521c;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018��2\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004R\u0018\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/CoroutineContext$Element;", "key", "Lkotlin/coroutines/CoroutineContext$Key;", "(Lkotlin/coroutines/CoroutineContext$Key;)V", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.a */
/* loaded from: classes5-dex2jar.jar:kotlin/c/a.class */
public abstract class AbstractC18306a implements AbstractC18335f.AbstractC18338b {
    private final AbstractC18335f.AbstractC18340c<?> key;

    public AbstractC18306a(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        this.key = key;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> operation) {
        C18524p.m3840d(operation, "operation");
        return (R) AbstractC18335f.AbstractC18338b.C18339a.m4076a(this, r, operation);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b, kotlin.p521c.AbstractC18335f
    public <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> key) {
        C18524p.m3840d(key, "key");
        return (E) AbstractC18335f.AbstractC18338b.C18339a.m4075a(this, key);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b
    public AbstractC18335f.AbstractC18340c<?> getKey() {
        return this.key;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> key) {
        C18524p.m3840d(key, "key");
        return AbstractC18335f.AbstractC18338b.C18339a.m4073b(this, key);
    }

    @Override // kotlin.p521c.AbstractC18335f
    public AbstractC18335f plus(AbstractC18335f context) {
        C18524p.m3840d(context, "context");
        return AbstractC18335f.AbstractC18338b.C18339a.m4074a(this, context);
    }
}
