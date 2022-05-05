package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.NoSuchElementException;
/* renamed from: h.i.a.e.j.q.u2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/u2.class */
public final class C8745u2 implements AbstractC8794z2 {

    /* renamed from: a */
    public int f20003a = 0;

    /* renamed from: b */
    public final int f20004b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC8736t2 f20005c;

    public C8745u2(AbstractC8736t2 t2Var) {
        this.f20005c = t2Var;
        this.f20004b = this.f20005c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f20003a < this.f20004b;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.AbstractC8794z2
    public final byte nextByte() {
        try {
            AbstractC8736t2 t2Var = this.f20005c;
            int i = this.f20003a;
            this.f20003a = i + 1;
            return t2Var.mo17073g(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
