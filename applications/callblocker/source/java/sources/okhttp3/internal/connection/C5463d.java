package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.C5408ae;
/* renamed from: okhttp3.internal.connection.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/d.class */
public final class C5463d {

    /* renamed from: a */
    private final Set<C5408ae> f22822a = new LinkedHashSet();

    /* renamed from: a */
    public void m610a(C5408ae c5408ae) {
        synchronized (this) {
            this.f22822a.add(c5408ae);
        }
    }

    /* renamed from: b */
    public void m609b(C5408ae c5408ae) {
        synchronized (this) {
            this.f22822a.remove(c5408ae);
        }
    }

    /* renamed from: c */
    public boolean m608c(C5408ae c5408ae) {
        boolean contains;
        synchronized (this) {
            contains = this.f22822a.contains(c5408ae);
        }
        return contains;
    }
}
