package p1727n3.p1874y.p1876b.p1877a;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: n3.y.b.a.j0 */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/j0.class */
public final class C27093j0 {

    /* renamed from: c */
    public static final C27093j0 f75717c;

    /* renamed from: d */
    public static final C27093j0 f75718d = new C27093j0(RecyclerView.FOREVER_NS, RecyclerView.FOREVER_NS);

    /* renamed from: e */
    public static final C27093j0 f75719e = new C27093j0(RecyclerView.FOREVER_NS, 0);

    /* renamed from: f */
    public static final C27093j0 f75720f = new C27093j0(0, RecyclerView.FOREVER_NS);

    /* renamed from: g */
    public static final C27093j0 f75721g;

    /* renamed from: a */
    public final long f75722a;

    /* renamed from: b */
    public final long f75723b;

    static {
        C27093j0 c27093j0 = new C27093j0(0L, 0L);
        f75717c = c27093j0;
        f75721g = c27093j0;
    }

    public C27093j0(long j, long j2) {
        MediaSessionCompat.m43211p(j >= 0);
        MediaSessionCompat.m43211p(j2 >= 0);
        this.f75722a = j;
        this.f75723b = j2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || C27093j0.class != obj.getClass()) {
            return false;
        }
        C27093j0 c27093j0 = (C27093j0) obj;
        if (this.f75722a != c27093j0.f75722a || this.f75723b != c27093j0.f75723b) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((int) this.f75722a) * 31) + ((int) this.f75723b);
    }
}
