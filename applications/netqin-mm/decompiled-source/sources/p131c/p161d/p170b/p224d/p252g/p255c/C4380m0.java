package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzcr;
import com.google.android.gms.internal.clearcut.zzdo;
import java.util.Map;
/* renamed from: c.d.b.d.g.c.m0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/m0.class */
public final class C4380m0<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, zzcr> f16563a;

    public C4380m0(Map.Entry<K, zzcr> entry) {
        this.f16563a = entry;
    }

    /* renamed from: a */
    public final zzcr m25806a() {
        return this.f16563a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f16563a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f16563a.getValue() == null) {
            return null;
        }
        zzcr.m10693c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzdo) {
            return this.f16563a.getValue().m10689b((zzdo) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
