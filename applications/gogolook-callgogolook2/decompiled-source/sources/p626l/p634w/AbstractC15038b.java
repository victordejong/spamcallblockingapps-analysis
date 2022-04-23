package p626l.p634w;

import androidx.core.app.Person;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.AbstractC15049g.AbstractC15052b;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.b */
/* loaded from: classes3-dex2jar.jar:l/w/b.class */
public abstract class AbstractC15038b<B extends AbstractC15049g.AbstractC15052b, E extends B> implements AbstractC15049g.AbstractC15054c<E> {
    public final AbstractC15118l<AbstractC15049g.AbstractC15052b, E> safeCast;
    public final AbstractC15049g.AbstractC15054c<?> topmostKey;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [l.z.c.l<l.w.g$b, E extends B>, java.lang.Object, l.z.c.l<? super l.w.g$b, ? extends E extends B>] */
    public AbstractC15038b(AbstractC15049g.AbstractC15054c<B> cVar, AbstractC15118l<? super AbstractC15049g.AbstractC15052b, ? extends E> lVar) {
        C15149k.m377b(cVar, "baseKey");
        C15149k.m377b(lVar, "safeCast");
        this.safeCast = lVar;
        this.topmostKey = cVar instanceof AbstractC15038b ? ((AbstractC15038b) cVar).topmostKey : cVar;
    }

    public final boolean isSubKey$kotlin_stdlib(AbstractC15049g.AbstractC15054c<?> cVar) {
        C15149k.m377b(cVar, Person.KEY_KEY);
        return cVar == this || this.topmostKey == cVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Ll/w/g$b;)TE; */
    public final AbstractC15049g.AbstractC15052b tryCast$kotlin_stdlib(AbstractC15049g.AbstractC15052b bVar) {
        C15149k.m377b(bVar, "element");
        return (AbstractC15049g.AbstractC15052b) this.safeCast.invoke(bVar);
    }
}
