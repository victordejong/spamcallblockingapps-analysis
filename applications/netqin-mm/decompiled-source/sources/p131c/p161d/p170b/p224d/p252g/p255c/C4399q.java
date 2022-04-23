package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: c.d.b.d.g.c.q */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/q.class */
public final class C4399q implements Iterator {

    /* renamed from: a */
    public int f16611a = 0;

    /* renamed from: b */
    public final int f16612b;

    /* renamed from: c */
    public final /* synthetic */ zzbb f16613c;

    public C4399q(zzbb zzbbVar) {
        this.f16613c = zzbbVar;
        this.f16612b = this.f16613c.size();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16611a < this.f16612b;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    public final byte nextByte() {
        try {
            zzbb zzbbVar = this.f16613c;
            int i = this.f16611a;
            this.f16611a = i + 1;
            return zzbbVar.zzj(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
