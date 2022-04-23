package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeoo;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.d.b.d.g.a.wa0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wa0.class */
public final class wa0 implements Iterator<E> {

    /* renamed from: a */
    public int f15930a = 0;

    /* renamed from: b */
    public final /* synthetic */ zzeoo f15931b;

    public wa0(zzeoo zzeooVar) {
        this.f15931b = zzeooVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15930a < this.f15931b.f28122a.size() || this.f15931b.f28123b.hasNext();
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [E, java.lang.Object] */
    @Override // java.util.Iterator
    public final E next() {
        while (this.f15930a >= this.f15931b.f28122a.size()) {
            zzeoo zzeooVar = this.f15931b;
            zzeooVar.f28122a.add(zzeooVar.f28123b.next());
        }
        List<E> list = this.f15931b.f28122a;
        int i = this.f15930a;
        this.f15930a = i + 1;
        return list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
