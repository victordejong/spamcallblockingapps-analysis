package androidx.p002a.p003a.p005b;

import androidx.p002a.p003a.p005b.C0037b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.a.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/a.class */
public class C0036a<K, V> extends C0037b<K, V> {

    /* renamed from: b */
    private HashMap<K, C0037b.C0040c<K, V>> f72b = new HashMap<>();

    @Override // androidx.p002a.p003a.p005b.C0037b
    /* renamed from: a */
    protected C0037b.C0040c<K, V> mo8012a(K k) {
        return this.f72b.get(k);
    }

    @Override // androidx.p002a.p003a.p005b.C0037b
    /* renamed from: a */
    public V mo8011a(K k, V v) {
        C0037b.C0040c<K, V> mo8012a = mo8012a(k);
        if (mo8012a != null) {
            return mo8012a.f78b;
        }
        this.f72b.put(k, m8008b(k, v));
        return null;
    }

    @Override // androidx.p002a.p003a.p005b.C0037b
    /* renamed from: b */
    public V mo8009b(K k) {
        V v = (V) super.mo8009b(k);
        this.f72b.remove(k);
        return v;
    }

    /* renamed from: c */
    public boolean m8015c(K k) {
        return this.f72b.containsKey(k);
    }

    /* renamed from: d */
    public Map.Entry<K, V> m8014d(K k) {
        if (m8015c(k)) {
            return this.f72b.get(k).f80d;
        }
        return null;
    }
}
