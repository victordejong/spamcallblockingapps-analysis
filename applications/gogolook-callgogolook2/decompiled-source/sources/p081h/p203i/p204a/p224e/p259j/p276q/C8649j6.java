package p081h.p203i.p204a.p224e.p259j.p276q;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: h.i.a.e.j.q.j6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/j6.class */
public final class C8649j6 implements Comparable<C8649j6>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f19791a;

    /* renamed from: b */
    public V f19792b;

    /* renamed from: c */
    public final /* synthetic */ C8575c6 f19793c;

    /* JADX WARN: Multi-variable type inference failed */
    public C8649j6(C8575c6 c6Var, K k, V v) {
        this.f19793c = c6Var;
        this.f19791a = k;
        this.f19792b = v;
    }

    public C8649j6(C8575c6 c6Var, Map.Entry<K, V> entry) {
        this(c6Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m17431a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C8649j6 j6Var) {
        return ((Comparable) getKey()).compareTo((Comparable) j6Var.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return m17431a(this.f19791a, entry.getKey()) && m17431a(this.f19792b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f19791a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f19792b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f19791a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f19792b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f19793c.m17738f();
        V v2 = this.f19792b;
        this.f19792b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f19791a);
        String valueOf2 = String.valueOf(this.f19792b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
