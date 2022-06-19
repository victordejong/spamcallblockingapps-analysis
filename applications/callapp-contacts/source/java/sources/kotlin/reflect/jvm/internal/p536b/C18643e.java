package kotlin.reflect.jvm.internal.p536b;

import java.io.Serializable;
/* renamed from: kotlin.reflect.jvm.internal.b.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/e.class */
public final class C18643e<K, V> implements Serializable {

    /* renamed from: a */
    public final K f63725a;

    /* renamed from: b */
    public final V f63726b;

    public C18643e(K k, V v) {
        this.f63725a = k;
        this.f63726b = v;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C18643e)) {
            return false;
        }
        C18643e c18643e = (C18643e) obj;
        K k = this.f63725a;
        if (k == null) {
            if (c18643e.f63725a != null) {
                return false;
            }
        } else if (!k.equals(c18643e.f63725a)) {
            return false;
        }
        V v = this.f63726b;
        V v2 = c18643e.f63726b;
        return v == null ? v2 == null : v.equals(v2);
    }

    public final int hashCode() {
        K k = this.f63725a;
        int i = 0;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.f63726b;
        if (v != null) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return this.f63725a + "=" + this.f63726b;
    }
}
