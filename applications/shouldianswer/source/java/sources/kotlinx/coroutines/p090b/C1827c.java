package kotlinx.coroutines.p090b;

import kotlin.p084f.C1713d;
import kotlinx.coroutines.AbstractC1950y;
import kotlinx.coroutines.internal.C1924v;
/* renamed from: kotlinx.coroutines.b.c */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/b/c.class */
public final class C1827c extends C1828d {

    /* renamed from: b */
    public static final C1827c f4552b;

    /* renamed from: c */
    private static final AbstractC1950y f4553c;

    static {
        C1827c c1827c = new C1827c();
        f4552b = c1827c;
        f4553c = c1827c.m2836a(C1924v.m2586a("kotlinx.coroutines.io.parallelism", C1713d.m3076c(64, C1924v.m2589a()), 0, 0, 12, (Object) null));
    }

    private C1827c() {
        super(0, 0, null, 7, null);
    }

    /* renamed from: b */
    public final AbstractC1950y m2837b() {
        return f4553c;
    }

    @Override // kotlinx.coroutines.p090b.C1828d, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("DefaultDispatcher cannot be closed");
    }

    @Override // kotlinx.coroutines.p090b.C1828d, kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return "DefaultDispatcher";
    }
}
