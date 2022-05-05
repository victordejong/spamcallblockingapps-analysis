package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Map;
/* renamed from: h.i.a.e.j.l.ba */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/ba.class */
public final class C8029ba<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, C8482z9> f18759a;

    public C8029ba(Map.Entry<K, C8482z9> entry) {
        this.f18759a = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f18759a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f18759a.getValue() == null) {
            return null;
        }
        C8482z9.m17908c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof AbstractC8390ua) {
            return this.f18759a.getValue().m18609b((AbstractC8390ua) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
