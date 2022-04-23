package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: h.i.a.e.j.l.tb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/tb.class */
public final class C8373tb implements Comparable<C8373tb>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f19300a;

    /* renamed from: b */
    public V f19301b;

    /* renamed from: c */
    public final /* synthetic */ C8288ob f19302c;

    /* JADX WARN: Multi-variable type inference failed */
    public C8373tb(C8288ob obVar, K k, V v) {
        this.f19302c = obVar;
        this.f19300a = k;
        this.f19301b = v;
    }

    public C8373tb(C8288ob obVar, Map.Entry<K, V> entry) {
        this(obVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m18160a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C8373tb tbVar) {
        return ((Comparable) getKey()).compareTo((Comparable) tbVar.getKey());
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
        return m18160a(this.f19300a, entry.getKey()) && m18160a(this.f19301b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f19300a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f19301b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f19300a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f19301b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f19302c.m18222f();
        V v2 = this.f19301b;
        this.f19301b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f19300a);
        String valueOf2 = String.valueOf(this.f19301b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
