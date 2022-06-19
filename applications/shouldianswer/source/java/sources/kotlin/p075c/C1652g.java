package kotlin.p075c;

import java.io.Serializable;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.g */
/* loaded from: classes-dex2jar.jar:kotlin/c/g.class */
public final class C1652g implements Serializable, AbstractC1646f {

    /* renamed from: a */
    public static final C1652g f4369a = new C1652g();

    private C1652g() {
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
        C1694h.m3117b(abstractC1674m, "operation");
        return r;
    }

    @Override // kotlin.p075c.AbstractC1646f
    public <E extends AbstractC1646f.AbstractC1649b> E get(AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return null;
    }

    public int hashCode() {
        return 0;
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f minusKey(AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
        C1694h.m3117b(abstractC1651c, "key");
        return this;
    }

    @Override // kotlin.p075c.AbstractC1646f
    public AbstractC1646f plus(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return abstractC1646f;
    }

    public String toString() {
        return "EmptyCoroutineContext";
    }
}
