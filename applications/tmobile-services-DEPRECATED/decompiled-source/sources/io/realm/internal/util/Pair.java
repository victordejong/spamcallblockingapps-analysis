package io.realm.internal.util;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/util/Pair.class */
public class Pair<F, S> {

    /* renamed from: a */
    public F f20252a;

    /* renamed from: b */
    public S f20253b;

    public Pair(F f, S s) {
        this.f20252a = f;
        this.f20253b = s;
    }

    /* renamed from: a */
    private boolean m2537a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        boolean z = false;
        if (m2537a(pair.f20252a, this.f20252a)) {
            z = false;
            if (m2537a(pair.f20253b, this.f20253b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f20252a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f20253b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f20252a) + " " + String.valueOf(this.f20253b) + "}";
    }
}
