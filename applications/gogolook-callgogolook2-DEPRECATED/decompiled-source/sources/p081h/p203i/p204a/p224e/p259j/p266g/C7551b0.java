package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: h.i.a.e.j.g.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/b0.class */
public final class C7551b0 implements Iterator {

    /* renamed from: a */
    public int f17730a = 0;

    /* renamed from: b */
    public final int f17731b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC7539a0 f17732c;

    public C7551b0(AbstractC7539a0 a0Var) {
        this.f17732c = a0Var;
        this.f17731b = this.f17732c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17730a < this.f17731b;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    public final byte nextByte() {
        try {
            AbstractC7539a0 a0Var = this.f17732c;
            int i = this.f17730a;
            this.f17730a = i + 1;
            return a0Var.mo20137g(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
