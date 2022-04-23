package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Map;
/* renamed from: h.i.a.e.j.g.q1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/q1.class */
public final class C7673q1<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, C7659o1> f18019a;

    public C7673q1(Map.Entry<K, C7659o1> entry) {
        this.f18019a = entry;
    }

    /* renamed from: a */
    public final C7659o1 m19824a() {
        return this.f18019a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f18019a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f18019a.getValue() == null) {
            return null;
        }
        C7659o1.m19960c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof AbstractC7627k2) {
            return this.f18019a.getValue().m19807b((AbstractC7627k2) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
