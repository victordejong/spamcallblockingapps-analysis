package p626l.p634w;

import androidx.core.app.Person;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.a */
/* loaded from: classes3-dex2jar.jar:l/w/a.class */
public abstract class AbstractC15037a implements AbstractC15049g.AbstractC15052b {
    public final AbstractC15049g.AbstractC15054c<?> key;

    public AbstractC15037a(AbstractC15049g.AbstractC15054c<?> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        this.key = cVar;
    }

    @Override // p626l.p634w.AbstractC15049g
    public <R> R fold(R r, AbstractC15122p<? super R, ? super AbstractC15049g.AbstractC15052b, ? extends R> pVar) {
        C15149k.m377b(pVar, "operation");
        return (R) AbstractC15049g.AbstractC15052b.C15053a.m486a(this, r, pVar);
    }

    @Override // p626l.p634w.AbstractC15049g.AbstractC15052b, p626l.p634w.AbstractC15049g
    public <E extends AbstractC15049g.AbstractC15052b> E get(AbstractC15049g.AbstractC15054c<E> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        return (E) AbstractC15049g.AbstractC15052b.C15053a.m485a(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15049g.AbstractC15052b
    public AbstractC15049g.AbstractC15054c<?> getKey() {
        return this.key;
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g minusKey(AbstractC15049g.AbstractC15054c<?> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        return AbstractC15049g.AbstractC15052b.C15053a.m483b(this, cVar);
    }

    @Override // p626l.p634w.AbstractC15049g
    public AbstractC15049g plus(AbstractC15049g gVar) {
        C15149k.m377b(gVar, "context");
        return AbstractC15049g.AbstractC15052b.C15053a.m484a(this, gVar);
    }
}
