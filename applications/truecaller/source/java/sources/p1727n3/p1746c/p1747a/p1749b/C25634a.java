package p1727n3.p1746c.p1747a.p1749b;

import java.util.HashMap;
import p1727n3.p1746c.p1747a.p1749b.C25635b;
/* renamed from: n3.c.a.b.a */
/* loaded from: classes-dex2jar.jar:n3/c/a/b/a.class */
public class C25634a<K, V> extends C25635b<K, V> {

    /* renamed from: e */
    public HashMap<K, C25635b.C25636c<K, V>> f71809e = new HashMap<>();

    @Override // p1727n3.p1746c.p1747a.p1749b.C25635b
    /* renamed from: a */
    public C25635b.C25636c<K, V> mo3107a(K k) {
        return this.f71809e.get(k);
    }

    public boolean contains(K k) {
        return this.f71809e.containsKey(k);
    }

    @Override // p1727n3.p1746c.p1747a.p1749b.C25635b
    /* renamed from: d */
    public V mo3104d(K k, V v) {
        C25635b.C25636c<K, V> c25636c = this.f71809e.get(k);
        if (c25636c != null) {
            return c25636c.f71815b;
        }
        this.f71809e.put(k, m3105c(k, v));
        return null;
    }

    @Override // p1727n3.p1746c.p1747a.p1749b.C25635b
    /* renamed from: e */
    public V mo3103e(K k) {
        V v = (V) super.mo3103e(k);
        this.f71809e.remove(k);
        return v;
    }
}
