package p193e.p1577m.p1578a.p1596c;

import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1789g0.C26232y;
/* renamed from: e.m.a.c.x0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/x0.class */
public final class C24859x0 {

    /* renamed from: c */
    public static final C24859x0 f69708c;

    /* renamed from: d */
    public static final C24859x0 f69709d;

    /* renamed from: a */
    public final long f69710a;

    /* renamed from: b */
    public final long f69711b;

    static {
        C24859x0 c24859x0 = new C24859x0(0L, 0L);
        f69708c = c24859x0;
        C26232y.m2310r(RecyclerView.FOREVER_NS >= 0);
        C26232y.m2310r(RecyclerView.FOREVER_NS >= 0);
        C26232y.m2310r(RecyclerView.FOREVER_NS >= 0);
        C26232y.m2310r(0 >= 0);
        C26232y.m2310r(0 >= 0);
        boolean z = false;
        if (RecyclerView.FOREVER_NS >= 0) {
            z = true;
        }
        C26232y.m2310r(z);
        f69709d = c24859x0;
    }

    public C24859x0(long j, long j2) {
        C26232y.m2310r(j >= 0);
        C26232y.m2310r(j2 >= 0);
        this.f69710a = j;
        this.f69711b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C24859x0.class != obj.getClass()) {
            return false;
        }
        C24859x0 c24859x0 = (C24859x0) obj;
        if (this.f69710a != c24859x0.f69710a || this.f69711b != c24859x0.f69711b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f69710a) * 31) + ((int) this.f69711b);
    }
}
