package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zziq;
import com.google.android.gms.internal.measurement.zzku;
import java.util.ListIterator;
/* renamed from: c.d.b.d.g.f.h5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/h5.class */
public final class C4508h5 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f16760a;

    /* renamed from: b */
    public final /* synthetic */ int f16761b;

    /* renamed from: c */
    public final /* synthetic */ zzku f16762c;

    public C4508h5(zzku zzkuVar, int i) {
        zziq zziqVar;
        this.f16762c = zzkuVar;
        this.f16761b = i;
        zziqVar = this.f16762c.f29525a;
        this.f16760a = zziqVar.listIterator(this.f16761b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f16760a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f16760a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f16760a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f16760a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f16760a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f16760a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
