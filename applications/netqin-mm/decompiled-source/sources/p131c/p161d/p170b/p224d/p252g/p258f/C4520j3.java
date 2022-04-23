package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzik;
import com.google.android.gms.internal.measurement.zzjj;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.j3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/j3.class */
public final class C4520j3<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, zzik> f16782a;

    public C4520j3(Map.Entry<K, zzik> entry) {
        this.f16782a = entry;
    }

    /* renamed from: a */
    public final zzik m25443a() {
        return this.f16782a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f16782a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f16782a.getValue() == null) {
            return null;
        }
        zzik.m9630c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzjj) {
            return this.f16782a.getValue().m9628a((zzjj) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
