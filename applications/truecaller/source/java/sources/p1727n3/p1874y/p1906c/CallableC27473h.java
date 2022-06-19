package p1727n3.p1874y.p1906c;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Callable;
import n3.y.b.a.k0;
/* renamed from: n3.y.c.h */
/* loaded from: classes-dex2jar.jar:n3/y/c/h.class */
public class CallableC27473h implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ m f77338a;

    public CallableC27473h(m mVar) {
        this.f77338a = mVar;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        C27477j0 c27477j0 = this.f77338a.a;
        MediaSessionCompat.m43187x(c27477j0.m228c() != 1001, null);
        k0 k0Var = c27477j0.f77349g;
        k0Var.n();
        ?? c = k0Var.c.c();
        char c2 = c;
        if (c == -9223372036854775807L) {
            c2 = 65535;
        }
        return Long.valueOf(c2);
    }
}
