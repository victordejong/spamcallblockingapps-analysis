package p1727n3.p1758e.p1759a.p1761e.p1762k2.p1763o;

import android.os.Build;
import android.view.Surface;
/* renamed from: n3.e.a.e.k2.o.b */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/b.class */
public final class C25806b {

    /* renamed from: a */
    public final AbstractC25807a f72244a;

    /* renamed from: n3.e.a.e.k2.o.b$a */
    /* loaded from: classes-dex2jar.jar:n3/e/a/e/k2/o/b$a.class */
    public interface AbstractC25807a {
        /* renamed from: a */
        String mo2983a();

        /* renamed from: b */
        Object mo2982b();

        Surface getSurface();
    }

    public C25806b(Surface surface) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f72244a = new e(surface);
        } else if (i >= 26) {
            this.f72244a = new d(surface);
        } else if (i >= 24) {
            this.f72244a = new c(surface);
        } else {
            this.f72244a = new C25808f(surface);
        }
    }

    public C25806b(AbstractC25807a abstractC25807a) {
        this.f72244a = abstractC25807a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C25806b)) {
            return false;
        }
        return this.f72244a.equals(((C25806b) obj).f72244a);
    }

    public int hashCode() {
        return this.f72244a.hashCode();
    }
}
