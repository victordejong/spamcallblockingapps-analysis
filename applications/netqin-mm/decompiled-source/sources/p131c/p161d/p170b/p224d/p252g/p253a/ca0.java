package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeku;
import com.google.android.gms.internal.ads.zzenc;
import java.util.Iterator;
/* renamed from: c.d.b.d.g.a.ca0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ca0.class */
public final class ca0 implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f12537a;

    /* renamed from: b */
    public final /* synthetic */ zzenc f12538b;

    public ca0(zzenc zzencVar) {
        zzeku zzekuVar;
        this.f12538b = zzencVar;
        zzekuVar = this.f12538b.f28100a;
        this.f12537a = zzekuVar.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f12537a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f12537a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
