package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeoy;
import com.google.android.gms.internal.ads.zzeph;
import java.util.Collections;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.xa0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xa0.class */
public abstract class xa0<K, V, V2> implements zzeoy<Map<K, V2>> {

    /* renamed from: a */
    public final Map<K, zzeph<V>> f16033a;

    public xa0(Map<K, zzeph<V>> map) {
        this.f16033a = Collections.unmodifiableMap(map);
    }

    /* renamed from: a */
    public final Map<K, zzeph<V>> m26163a() {
        return this.f16033a;
    }
}
