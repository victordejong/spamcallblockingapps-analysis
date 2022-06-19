package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.C1959ad;
/* renamed from: okhttp3.internal.connection.d */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/d.class */
public final class C2013d {

    /* renamed from: a */
    private final Set<C1959ad> f5048a = new LinkedHashSet();

    /* renamed from: a */
    public void m2291a(C1959ad c1959ad) {
        synchronized (this) {
            this.f5048a.add(c1959ad);
        }
    }

    /* renamed from: b */
    public void m2290b(C1959ad c1959ad) {
        synchronized (this) {
            this.f5048a.remove(c1959ad);
        }
    }

    /* renamed from: c */
    public boolean m2289c(C1959ad c1959ad) {
        boolean contains;
        synchronized (this) {
            contains = this.f5048a.contains(c1959ad);
        }
        return contains;
    }
}
