package p131c.p161d.p170b.p224d.p252g.p255c;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: c.d.b.d.g.c.y1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/y1.class */
public final class C4437y1 implements Comparable<C4437y1>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f16656a;

    /* renamed from: b */
    public V f16657b;

    /* renamed from: c */
    public final /* synthetic */ C4406r1 f16658c;

    /* JADX WARN: Multi-variable type inference failed */
    public C4437y1(C4406r1 r1Var, K k, V v) {
        this.f16658c = r1Var;
        this.f16656a = k;
        this.f16657b = v;
    }

    public C4437y1(C4406r1 r1Var, Map.Entry<K, V> entry) {
        this(r1Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m25577a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C4437y1 y1Var) {
        return ((Comparable) getKey()).compareTo((Comparable) y1Var.getKey());
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
        return m25577a(this.f16656a, entry.getKey()) && m25577a(this.f16657b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f16656a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f16657b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f16656a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f16657b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f16658c.m25653e();
        V v2 = this.f16657b;
        this.f16657b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f16656a);
        String valueOf2 = String.valueOf(this.f16657b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
