package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: c.d.b.d.g.a.p90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/p90.class */
public final class p90 implements Comparable<p90>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f14416a;

    /* renamed from: b */
    public V f14417b;

    /* renamed from: c */
    public final /* synthetic */ k90 f14418c;

    /* JADX WARN: Multi-variable type inference failed */
    public p90(k90 k90Var, K k, V v) {
        this.f14418c = k90Var;
        this.f14416a = k;
        this.f14417b = v;
    }

    public p90(k90 k90Var, Map.Entry<K, V> entry) {
        this(k90Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m26545a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(p90 p90Var) {
        return ((Comparable) getKey()).compareTo((Comparable) p90Var.getKey());
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
        return m26545a(this.f14416a, entry.getKey()) && m26545a(this.f14417b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f14416a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f14417b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f14416a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f14417b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f14418c.m26717f();
        V v2 = this.f14417b;
        this.f14417b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f14416a);
        String valueOf2 = String.valueOf(this.f14417b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
