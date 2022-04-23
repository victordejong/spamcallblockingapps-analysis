package p131c.p161d.p170b.p224d.p252g.p258f;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: c.d.b.d.g.f.y4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/y4.class */
public final class C4625y4 implements Comparable<C4625y4>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f16938a;

    /* renamed from: b */
    public V f16939b;

    /* renamed from: c */
    public final /* synthetic */ C4567p4 f16940c;

    /* JADX WARN: Multi-variable type inference failed */
    public C4625y4(C4567p4 p4Var, K k, V v) {
        this.f16940c = p4Var;
        this.f16938a = k;
        this.f16939b = v;
    }

    public C4625y4(C4567p4 p4Var, Map.Entry<K, V> entry) {
        this(p4Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m25122a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C4625y4 y4Var) {
        return ((Comparable) getKey()).compareTo((Comparable) y4Var.getKey());
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
        return m25122a(this.f16938a, entry.getKey()) && m25122a(this.f16939b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f16938a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f16939b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f16938a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f16939b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f16940c.m25322f();
        V v2 = this.f16939b;
        this.f16939b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f16938a);
        String valueOf2 = String.valueOf(this.f16939b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
