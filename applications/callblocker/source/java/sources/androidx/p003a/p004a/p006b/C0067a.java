package androidx.p003a.p004a.p006b;

import androidx.p003a.p004a.p006b.C0068b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.a.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/a.class */
public class C0067a<K, V> extends C0068b<K, V> {

    /* renamed from: b */
    private HashMap<K, C0068b.C0071c<K, V>> f162b = new HashMap<>();

    @Override // androidx.p003a.p004a.p006b.C0068b
    /* renamed from: a */
    protected C0068b.C0071c<K, V> mo22304a(K k) {
        return this.f162b.get(k);
    }

    @Override // androidx.p003a.p004a.p006b.C0068b
    /* renamed from: a */
    public V mo22303a(K k, V v) {
        V v2;
        C0068b.C0071c<K, V> mo22304a = mo22304a(k);
        if (mo22304a != null) {
            v2 = mo22304a.f168b;
        } else {
            this.f162b.put(k, m22300b(k, v));
            v2 = null;
        }
        return v2;
    }

    @Override // androidx.p003a.p004a.p006b.C0068b
    /* renamed from: b */
    public V mo22301b(K k) {
        V v = (V) super.mo22301b(k);
        this.f162b.remove(k);
        return v;
    }

    /* renamed from: c */
    public boolean m22307c(K k) {
        return this.f162b.containsKey(k);
    }

    /* renamed from: d */
    public Map.Entry<K, V> m22306d(K k) {
        return m22307c(k) ? this.f162b.get(k).f170d : null;
    }
}
