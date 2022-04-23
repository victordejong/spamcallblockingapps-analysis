package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdxj;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.a.b10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b10.class */
public abstract class b10<E> extends zzdxj<E> {

    /* renamed from: a */
    public final int f12324a;

    /* renamed from: b */
    public int f12325b;

    public b10(int i, int i2) {
        zzdwd.m13092b(i2, i);
        this.f12324a = i;
        this.f12325b = i2;
    }

    /* renamed from: a */
    public abstract E mo27022a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f12325b < this.f12324a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f12325b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f12325b;
            this.f12325b = i + 1;
            return mo27022a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12325b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f12325b - 1;
            this.f12325b = i;
            return mo27022a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12325b - 1;
    }
}
