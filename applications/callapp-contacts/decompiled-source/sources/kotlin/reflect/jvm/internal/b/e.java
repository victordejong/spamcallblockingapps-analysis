package kotlin.reflect.jvm.internal.b;

import java.io.Serializable;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/b/e.class */
public final class e<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final K f36901a;

    /* renamed from: b  reason: collision with root package name */
    public final V f36902b;

    public e(K k, V v) {
        this.f36901a = k;
        this.f36902b = v;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        K k = this.f36901a;
        if (k == null) {
            if (eVar.f36901a != null) {
                return false;
            }
        } else if (!k.equals(eVar.f36901a)) {
            return false;
        }
        V v = this.f36902b;
        V v2 = eVar.f36902b;
        return v == null ? v2 == null : v.equals(v2);
    }

    public final int hashCode() {
        K k = this.f36901a;
        int i = 0;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.f36902b;
        if (v != null) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    public final String toString() {
        return this.f36901a + "=" + this.f36902b;
    }
}
