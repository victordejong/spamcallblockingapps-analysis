package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzeb;
import com.google.android.gms.internal.measurement.zzfw;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.f.k1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/k1.class */
public abstract class AbstractC4529k1<E> extends zzfw<E> {

    /* renamed from: a */
    public final int f16798a;

    /* renamed from: b */
    public int f16799b;

    public AbstractC4529k1(int i, int i2) {
        zzeb.m9812b(i2, i);
        this.f16798a = i;
        this.f16799b = i2;
    }

    /* renamed from: a */
    public abstract E mo25164a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f16799b < this.f16798a;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f16799b > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.f16799b;
            this.f16799b = i + 1;
            return mo25164a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f16799b;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.f16799b - 1;
            this.f16799b = i;
            return mo25164a(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f16799b - 1;
    }
}
