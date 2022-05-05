package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Map;
/* renamed from: h.i.a.e.j.j.y1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/y1.class */
public final class C7959y1<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, C7945w1> f18674a;

    public C7959y1(Map.Entry<K, C7945w1> entry) {
        this.f18674a = entry;
    }

    /* renamed from: a */
    public final C7945w1 m18801a() {
        return this.f18674a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f18674a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f18674a.getValue() == null) {
            return null;
        }
        C7945w1.m18846c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof AbstractC7925t2) {
            return this.f18674a.getValue().m19514b((AbstractC7925t2) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
