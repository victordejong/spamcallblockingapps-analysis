package p1727n3.p1874y.p1906c;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.util.concurrent.Callable;
import n3.y.b.a.k0;
/* renamed from: n3.y.c.i */
/* loaded from: classes-dex2jar.jar:n3/y/c/i.class */
public class CallableC27475i implements Callable<Long> {

    /* renamed from: a */
    public final /* synthetic */ m f77340a;

    public CallableC27475i(m mVar) {
        this.f77340a = mVar;
    }

    @Override // java.util.concurrent.Callable
    public Long call() throws Exception {
        C27477j0 c27477j0 = this.f77340a.a;
        MediaSessionCompat.m43187x(c27477j0.m228c() != 1001, null);
        k0 k0Var = c27477j0.f77349g;
        k0Var.n();
        return Long.valueOf(k0Var.c.b());
    }
}
