package kotlin.coroutines.experimental;

import kotlin.TypeCastException;
import p573f.p579t.p580c.AbstractC9999c;
import p573f.p579t.p580c.C10002d;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/experimental/CombinedContext.class */
public final class CombinedContext implements AbstractC9999c {

    /* renamed from: b */
    public final AbstractC9999c f38750b;

    /* renamed from: c */
    public final AbstractC9999c.AbstractC10000a f38751c;

    public CombinedContext(AbstractC9999c cVar, AbstractC9999c.AbstractC10000a aVar) {
        C10059q.m1637b(cVar, "left");
        C10059q.m1637b(aVar, "element");
        this.f38750b = cVar;
        this.f38751c = aVar;
    }

    /* renamed from: a */
    public final int m46a() {
        AbstractC9999c cVar = this.f38750b;
        return cVar instanceof CombinedContext ? ((CombinedContext) cVar).m46a() + 1 : 2;
    }

    @Override // p573f.p579t.p580c.AbstractC9999c
    /* renamed from: a */
    public <E extends AbstractC9999c.AbstractC10000a> E mo44a(AbstractC9999c.AbstractC10001b<E> bVar) {
        C10059q.m1637b(bVar, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e = (E) combinedContext.f38751c.mo44a(bVar);
            if (e != null) {
                return e;
            }
            AbstractC9999c cVar = combinedContext.f38750b;
            if (!(cVar instanceof CombinedContext)) {
                return (E) cVar.mo44a(bVar);
            }
            combinedContext = (CombinedContext) cVar;
        }
    }

    /* renamed from: a */
    public final boolean m45a(AbstractC9999c.AbstractC10000a aVar) {
        return C10059q.m1643a(mo44a((AbstractC9999c.AbstractC10001b<AbstractC9999c.AbstractC10000a>) aVar.getKey()), aVar);
    }

    /* renamed from: a */
    public final boolean m43a(CombinedContext combinedContext) {
        while (m45a(combinedContext.f38751c)) {
            AbstractC9999c cVar = combinedContext.f38750b;
            if (cVar instanceof CombinedContext) {
                combinedContext = (CombinedContext) cVar;
            } else if (cVar != null) {
                return m45a((AbstractC9999c.AbstractC10000a) cVar);
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element");
            }
        }
        return false;
    }

    @Override // p573f.p579t.p580c.AbstractC9999c
    /* renamed from: b */
    public AbstractC9999c mo42b(AbstractC9999c.AbstractC10001b<?> bVar) {
        C10059q.m1637b(bVar, "key");
        if (this.f38751c.mo44a(bVar) != null) {
            return this.f38750b;
        }
        AbstractC9999c b = this.f38750b.mo42b(bVar);
        return b == this.f38750b ? this : b == C10002d.f37163b ? this.f38751c : new CombinedContext(b, this.f38751c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0.m43a(r3) != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r3
            r1 = r4
            if (r0 == r1) goto L_0x002c
            r0 = r4
            boolean r0 = r0 instanceof kotlin.coroutines.experimental.CombinedContext
            if (r0 == 0) goto L_0x0027
            r0 = r4
            kotlin.coroutines.experimental.CombinedContext r0 = (kotlin.coroutines.experimental.CombinedContext) r0
            r4 = r0
            r0 = r4
            int r0 = r0.m46a()
            r1 = r3
            int r1 = r1.m46a()
            if (r0 != r1) goto L_0x0027
            r0 = r4
            r1 = r3
            boolean r0 = r0.m43a(r1)
            if (r0 == 0) goto L_0x0027
            goto L_0x002c
        L_0x0027:
            r0 = 0
            r5 = r0
            goto L_0x002e
        L_0x002c:
            r0 = 1
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.experimental.CombinedContext.equals(java.lang.Object):boolean");
    }

    @Override // p573f.p579t.p580c.AbstractC9999c
    public <R> R fold(R r, AbstractC10035p<? super R, ? super AbstractC9999c.AbstractC10000a, ? extends R> pVar) {
        C10059q.m1637b(pVar, "operation");
        return (R) pVar.invoke((Object) this.f38750b.fold(r, pVar), this.f38751c);
    }

    public int hashCode() {
        return this.f38750b.hashCode() + this.f38751c.hashCode();
    }

    public String toString() {
        return "[" + ((String) fold("", CombinedContext$toString$1.INSTANCE)) + "]";
    }
}
