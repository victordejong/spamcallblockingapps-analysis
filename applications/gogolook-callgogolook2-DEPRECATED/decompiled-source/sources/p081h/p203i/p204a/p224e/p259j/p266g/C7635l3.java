package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: h.i.a.e.j.g.l3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/l3.class */
public final class C7635l3 implements Comparable<C7635l3>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f17907a;

    /* renamed from: b */
    public V f17908b;

    /* renamed from: c */
    public final /* synthetic */ C7578e3 f17909c;

    /* JADX WARN: Multi-variable type inference failed */
    public C7635l3(C7578e3 e3Var, K k, V v) {
        this.f17909c = e3Var;
        this.f17907a = k;
        this.f17908b = v;
    }

    public C7635l3(C7578e3 e3Var, Map.Entry<K, V> entry) {
        this(e3Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m20072a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C7635l3 l3Var) {
        return ((Comparable) getKey()).compareTo((Comparable) l3Var.getKey());
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
        return m20072a(this.f17907a, entry.getKey()) && m20072a(this.f17908b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f17907a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f17908b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f17907a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f17908b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f17909c.m20193e();
        V v2 = this.f17908b;
        this.f17908b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f17907a);
        String valueOf2 = String.valueOf(this.f17908b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
