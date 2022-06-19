package p193e.p1411b.p1412a;

import java.util.Arrays;
/* renamed from: e.b.a.p */
/* loaded from: classes-dex2jar.jar:e/b/a/p.class */
public final class C21942p<V> {

    /* renamed from: a */
    public final V f60927a;

    /* renamed from: b */
    public final Throwable f60928b;

    public C21942p(V v) {
        this.f60927a = v;
        this.f60928b = null;
    }

    public C21942p(Throwable th) {
        this.f60928b = th;
        this.f60927a = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C21942p)) {
            return false;
        }
        C21942p c21942p = (C21942p) obj;
        V v = this.f60927a;
        if (v != null && v.equals(c21942p.f60927a)) {
            return true;
        }
        Throwable th = this.f60928b;
        if (th != null && c21942p.f60928b != null) {
            return th.toString().equals(this.f60928b.toString());
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f60927a, this.f60928b});
    }
}
