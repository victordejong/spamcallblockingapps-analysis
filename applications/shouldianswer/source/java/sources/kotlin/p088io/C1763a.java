package kotlin.p088io;

import java.io.Closeable;
import kotlin.C1593a;
/* renamed from: kotlin.io.a */
/* loaded from: classes-dex2jar.jar:kotlin/io/a.class */
public final class C1763a {
    /* renamed from: a */
    public static final void m2995a(Closeable closeable, Throwable th) {
        if (closeable == null) {
            return;
        }
        if (th == null) {
            closeable.close();
            return;
        }
        try {
            closeable.close();
        } catch (Throwable th2) {
            C1593a.m3178a(th, th2);
        }
    }
}
