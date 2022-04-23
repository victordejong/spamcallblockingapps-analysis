package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzfx;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.f.z1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/z1.class */
public final class C4628z1 extends zzfx<T> {

    /* renamed from: a */
    public boolean f16944a;

    /* renamed from: b */
    public final /* synthetic */ Object f16945b;

    public C4628z1(Object obj) {
        this.f16945b = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f16944a;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [T, java.lang.Object] */
    @Override // java.util.Iterator
    public final T next() {
        if (!this.f16944a) {
            this.f16944a = true;
            return this.f16945b;
        }
        throw new NoSuchElementException();
    }
}
