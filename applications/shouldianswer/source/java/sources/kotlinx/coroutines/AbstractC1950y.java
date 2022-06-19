package kotlinx.coroutines;

import kotlin.p075c.AbstractC1620a;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1642d;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.y */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/y.class */
public abstract class AbstractC1950y extends AbstractC1620a implements AbstractC1642d {
    public AbstractC1950y() {
        super(AbstractC1642d.f4366a);
    }

    @Override // kotlin.p075c.AbstractC1642d
    /* renamed from: a */
    public final <T> AbstractC1641c<T> mo2514a(AbstractC1641c<? super T> abstractC1641c) {
        C1694h.m3117b(abstractC1641c, "continuation");
        return new C1806ao(this, abstractC1641c);
    }

    /* renamed from: a */
    public abstract void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable);

    /* renamed from: a */
    public boolean mo2513a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return true;
    }

    @Override // kotlin.p075c.AbstractC1642d
    /* renamed from: b */
    public void mo2511b(AbstractC1641c<?> abstractC1641c) {
        C1694h.m3117b(abstractC1641c, "continuation");
        AbstractC1642d.C1643a.m3149a(this, abstractC1641c);
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f.AbstractC1649b, kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return (E) AbstractC1642d.C1643a.m3148a(this, abstractC1651c);
    }

    @Override // kotlin.p075c.AbstractC1620a, kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return AbstractC1642d.C1643a.m3147b(this, abstractC1651c);
    }

    public String toString() {
        return C1789ag.m2954b(this) + '@' + C1789ag.m2956a(this);
    }
}
