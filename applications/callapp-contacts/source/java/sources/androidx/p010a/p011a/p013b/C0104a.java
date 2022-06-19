package androidx.p010a.p011a.p013b;

import androidx.p010a.p011a.p013b.C0105b;
import java.util.HashMap;
/* renamed from: androidx.a.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/a.class */
public class C0104a<K, V> extends C0105b<K, V> {

    /* renamed from: a */
    public HashMap<K, C0105b.C0108c<K, V>> f204a = new HashMap<>();

    @Override // androidx.p010a.p011a.p013b.C0105b
    /* renamed from: a */
    protected final C0105b.C0108c<K, V> mo46403a(K k) {
        return this.f204a.get(k);
    }

    @Override // androidx.p010a.p011a.p013b.C0105b
    /* renamed from: a */
    public final V mo46402a(K k, V v) {
        C0105b.C0108c<K, V> mo46403a = mo46403a(k);
        if (mo46403a != null) {
            return mo46403a.f210b;
        }
        this.f204a.put(k, m46400b(k, v));
        return null;
    }

    @Override // androidx.p010a.p011a.p013b.C0105b
    /* renamed from: b */
    public final V mo46401b(K k) {
        V v = (V) super.mo46401b(k);
        this.f204a.remove(k);
        return v;
    }

    /* renamed from: c */
    public final boolean m46405c(K k) {
        return this.f204a.containsKey(k);
    }
}
