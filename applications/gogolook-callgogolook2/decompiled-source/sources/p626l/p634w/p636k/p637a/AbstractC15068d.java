package p626l.p634w.p636k.p637a;

import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15045e;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.k.a.d */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/d.class */
public abstract class AbstractC15068d extends AbstractC15065a {
    public final AbstractC15049g _context;
    public transient AbstractC15044d<Object> intercepted;

    public AbstractC15068d(AbstractC15044d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }

    public AbstractC15068d(AbstractC15044d<Object> dVar, AbstractC15049g gVar) {
        super(dVar);
        this._context = gVar;
    }

    @Override // p626l.p634w.AbstractC15044d
    public AbstractC15049g getContext() {
        AbstractC15049g gVar = this._context;
        if (gVar != null) {
            return gVar;
        }
        C15149k.m378b();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r4 != null) goto L_0x0031;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p626l.p634w.AbstractC15044d<java.lang.Object> intercepted() {
        /*
            r3 = this;
            r0 = r3
            l.w.d<java.lang.Object> r0 = r0.intercepted
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x000c
            goto L_0x0036
        L_0x000c:
            r0 = r3
            l.w.g r0 = r0.getContext()
            l.w.e$b r1 = p626l.p634w.AbstractC15045e.f33077M
            l.w.g$b r0 = r0.get(r1)
            l.w.e r0 = (p626l.p634w.AbstractC15045e) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r4
            r1 = r3
            l.w.d r0 = r0.interceptContinuation(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            goto L_0x0031
        L_0x002f:
            r0 = r3
            r4 = r0
        L_0x0031:
            r0 = r3
            r1 = r4
            r0.intercepted = r1
        L_0x0036:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p634w.p636k.p637a.AbstractC15068d.intercepted():l.w.d");
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public void releaseIntercepted() {
        AbstractC15044d<?> dVar = this.intercepted;
        if (!(dVar == null || dVar == this)) {
            AbstractC15049g.AbstractC15052b bVar = getContext().get(AbstractC15045e.f33077M);
            if (bVar != null) {
                ((AbstractC15045e) bVar).releaseInterceptedContinuation(dVar);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        this.intercepted = C15067c.f33097a;
    }
}
