package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzdz;
import com.google.android.gms.internal.measurement.zzem;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.q1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/q1.class */
public final class C4571q1 extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: a */
    public final /* synthetic */ zzem f16847a;

    public C4571q1(zzem zzemVar) {
        this.f16847a = zzemVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f16847a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int zza;
        Map zzb = this.f16847a.zzb();
        if (zzb != null) {
            return zzb.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        zza = this.f16847a.zza(entry.getKey());
        return zza != -1 && zzdz.m9819a(this.f16847a.zzc[zza], entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return this.f16847a.zzf();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int zzi;
        Object obj2;
        Map zzb = this.f16847a.zzb();
        if (zzb != null) {
            return zzb.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f16847a.zza()) {
            return false;
        }
        zzi = this.f16847a.zzi();
        Object key = entry.getKey();
        Object value = entry.getValue();
        obj2 = this.f16847a.zze;
        zzem zzemVar = this.f16847a;
        int a = C4610w1.m25180a(key, value, zzi, obj2, zzemVar.zza, zzemVar.zzb, zzemVar.zzc);
        if (a == -1) {
            return false;
        }
        this.f16847a.zza(a, zzi);
        zzem.zzd(this.f16847a);
        this.f16847a.zzc();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f16847a.size();
    }
}
