package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.NoSuchElementException;
/* renamed from: h.i.a.e.j.l.j8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/j8.class */
public final class C8186j8 extends AbstractC8227l8 {

    /* renamed from: a */
    public int f18935a = 0;

    /* renamed from: b */
    public final int f18936b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC8209k8 f18937c;

    public C8186j8(AbstractC8209k8 k8Var) {
        this.f18937c = k8Var;
        this.f18936b = this.f18937c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18935a < this.f18936b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8301p8
    public final byte nextByte() {
        int i = this.f18935a;
        if (i < this.f18936b) {
            this.f18935a = i + 1;
            return this.f18937c.mo18141h(i);
        }
        throw new NoSuchElementException();
    }
}
