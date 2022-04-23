package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcx;
import com.google.android.gms.internal.clearcut.zzfa;
import java.util.ListIterator;
/* renamed from: c.d.b.d.g.c.i2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/i2.class */
public final class C4358i2 implements ListIterator<String> {

    /* renamed from: a */
    public ListIterator<String> f16529a;

    /* renamed from: b */
    public final /* synthetic */ int f16530b;

    /* renamed from: c */
    public final /* synthetic */ zzfa f16531c;

    public C4358i2(zzfa zzfaVar, int i) {
        zzcx zzcxVar;
        this.f16531c = zzfaVar;
        this.f16530b = i;
        zzcxVar = this.f16531c.f29276a;
        this.f16529a = zzcxVar.listIterator(this.f16530b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f16529a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f16529a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f16529a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f16529a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f16529a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f16529a.previousIndex();
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
