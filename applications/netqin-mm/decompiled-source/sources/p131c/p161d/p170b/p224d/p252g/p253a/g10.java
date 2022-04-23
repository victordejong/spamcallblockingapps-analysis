package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdxg;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.a.g10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g10.class */
public final class g10 extends zzdxg<T> {

    /* renamed from: a */
    public boolean f13011a;

    /* renamed from: b */
    public final /* synthetic */ Object f13012b;

    public g10(Object obj) {
        this.f13012b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f13011a;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f13011a) {
            this.f13011a = true;
            return this.f13012b;
        }
        throw new NoSuchElementException();
    }
}
