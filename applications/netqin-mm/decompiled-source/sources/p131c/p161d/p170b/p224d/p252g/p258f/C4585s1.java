package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzem;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.s1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/s1.class */
public final class C4585s1 extends AbstractSet<K> {

    /* renamed from: a */
    public final /* synthetic */ zzem f16871a;

    public C4585s1(zzem zzemVar) {
        this.f16871a = zzemVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f16871a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f16871a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<K> iterator() {
        return this.f16871a.zze();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object zzb;
        Object obj2;
        Map zzb2 = this.f16871a.zzb();
        if (zzb2 != null) {
            return zzb2.keySet().remove(obj);
        }
        zzb = this.f16871a.zzb(obj);
        obj2 = zzem.zzd;
        return zzb != obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f16871a.size();
    }
}
