package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.p521c.AbstractC18335f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÂ\u0002\u0018��2\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlinx/coroutines/UndispatchedMarker;", "Lkotlin/coroutines/CoroutineContext$Element;", "Lkotlin/coroutines/CoroutineContext$Key;", "()V", "key", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.ct */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/ct.class */
public final class C20251ct implements AbstractC18335f.AbstractC18338b, AbstractC18335f.AbstractC18340c<C20251ct> {

    /* renamed from: a */
    public static final C20251ct f66707a = new C20251ct();

    private C20251ct() {
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final <R> R fold(R r, Function2<? super R, ? super AbstractC18335f.AbstractC18338b, ? extends R> function2) {
        return (R) AbstractC18335f.AbstractC18338b.C18339a.m4076a(this, r, function2);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b, kotlin.p521c.AbstractC18335f
    public final <E extends AbstractC18335f.AbstractC18338b> E get(AbstractC18335f.AbstractC18340c<E> abstractC18340c) {
        return (E) AbstractC18335f.AbstractC18338b.C18339a.m4075a(this, abstractC18340c);
    }

    @Override // kotlin.p521c.AbstractC18335f.AbstractC18338b
    public final AbstractC18335f.AbstractC18340c<?> getKey() {
        return this;
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f minusKey(AbstractC18335f.AbstractC18340c<?> abstractC18340c) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4073b(this, abstractC18340c);
    }

    @Override // kotlin.p521c.AbstractC18335f
    public final AbstractC18335f plus(AbstractC18335f abstractC18335f) {
        return AbstractC18335f.AbstractC18338b.C18339a.m4074a(this, abstractC18335f);
    }
}
