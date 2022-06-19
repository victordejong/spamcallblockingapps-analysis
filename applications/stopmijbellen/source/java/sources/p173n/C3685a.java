package p173n;

import java.util.HashMap;
import p173n.C3686b;
/* renamed from: n.a */
/* loaded from: classes-dex2jar.jar:n/a.class */
public class C3685a<K, V> extends C3686b<K, V> {

    /* renamed from: e */
    public HashMap<K, C3686b.C3689c<K, V>> f12052e = new HashMap<>();

    @Override // p173n.C3686b
    /* renamed from: a */
    public C3686b.C3689c<K, V> mo1891a(K k) {
        return this.f12052e.get(k);
    }

    public boolean contains(K k) {
        return this.f12052e.containsKey(k);
    }

    @Override // p173n.C3686b
    /* renamed from: d */
    public V mo1888d(K k, V v) {
        C3686b.C3689c<K, V> c3689c = this.f12052e.get(k);
        if (c3689c != null) {
            return c3689c.f12058b;
        }
        this.f12052e.put(k, m1889c(k, v));
        return null;
    }

    @Override // p173n.C3686b
    /* renamed from: e */
    public V mo1887e(K k) {
        V v = (V) super.mo1887e(k);
        this.f12052e.remove(k);
        return v;
    }
}
