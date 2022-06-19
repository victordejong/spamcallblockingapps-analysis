package kotlin.p075c;

import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.a */
/* loaded from: classes-dex2jar.jar:kotlin/c/a.class */
public abstract class AbstractC1620a implements AbstractC1646f.AbstractC1649b {
    private final AbstractC1646f.AbstractC1651c<?> key;

    public AbstractC1620a(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        this.key = abstractC1651c;
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "operation");
        return (R) AbstractC1646f.AbstractC1649b.C1650a.m3143a(this, r, abstractC1674m);
    }

    @Override // kotlin.p075c.AbstractC1646f.AbstractC1649b, kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return (E) AbstractC1646f.AbstractC1649b.C1650a.m3142a(this, abstractC1651c);
    }

    @Override // kotlin.p075c.AbstractC1646f.AbstractC1649b
    public AbstractC1646f.AbstractC1651c<?> getKey() {
        return this.key;
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return AbstractC1646f.AbstractC1649b.C1650a.m3140b(this, abstractC1651c);
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f plus(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return AbstractC1646f.AbstractC1649b.C1650a.m3141a(this, abstractC1646f);
    }
}
