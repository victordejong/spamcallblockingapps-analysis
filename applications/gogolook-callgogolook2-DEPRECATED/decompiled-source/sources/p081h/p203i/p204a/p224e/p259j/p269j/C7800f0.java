package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.NoSuchElementException;
/* renamed from: h.i.a.e.j.j.f0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/f0.class */
public final class C7800f0 implements AbstractC7846k0 {

    /* renamed from: a */
    public int f18244a = 0;

    /* renamed from: b */
    public final int f18245b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC7791e0 f18246c;

    public C7800f0(AbstractC7791e0 e0Var) {
        this.f18246c = e0Var;
        this.f18245b = this.f18246c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18244a < this.f18245b;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7846k0
    public final byte nextByte() {
        try {
            AbstractC7791e0 e0Var = this.f18246c;
            int i = this.f18244a;
            this.f18244a = i + 1;
            return e0Var.mo19164g(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
