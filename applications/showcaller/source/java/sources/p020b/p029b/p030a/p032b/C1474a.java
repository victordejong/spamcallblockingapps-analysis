package p020b.p029b.p030a.p032b;

import java.util.HashMap;
import java.util.Map;
import p020b.p029b.p030a.p032b.C1475b;
/* renamed from: b.b.a.b.a */
/* loaded from: classes-dex2jar.jar:b/b/a/b/a.class */
public class C1474a<K, V> extends C1475b<K, V> {

    /* renamed from: h */
    private HashMap<K, C1475b.C1478c<K, V>> f5915h = new HashMap<>();

    public boolean contains(K k) {
        return this.f5915h.containsKey(k);
    }

    @Override // p020b.p029b.p030a.p032b.C1475b
    /* renamed from: d */
    protected C1475b.C1478c<K, V> mo29986d(K k) {
        return this.f5915h.get(k);
    }

    @Override // p020b.p029b.p030a.p032b.C1475b
    /* renamed from: j */
    public V mo29982j(K k, V v) {
        C1475b.C1478c<K, V> mo29986d = mo29986d(k);
        if (mo29986d != null) {
            return mo29986d.f5921e;
        }
        this.f5915h.put(k, m29983i(k, v));
        return null;
    }

    @Override // p020b.p029b.p030a.p032b.C1475b
    /* renamed from: l */
    public V mo29981l(K k) {
        V v = (V) super.mo29981l(k);
        this.f5915h.remove(k);
        return v;
    }

    /* renamed from: m */
    public Map.Entry<K, V> m29988m(K k) {
        if (contains(k)) {
            return this.f5915h.get(k).f5923g;
        }
        return null;
    }
}
