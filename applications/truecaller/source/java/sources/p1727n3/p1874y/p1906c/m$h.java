package p1727n3.p1874y.p1906c;

import java.util.concurrent.Callable;
import n3.h.a.f;
/* renamed from: n3.y.c.m$h */
/* loaded from: classes-dex2jar.jar:n3/y/c/m$h.class */
public class m$h implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ f f77387a;

    /* renamed from: b */
    public final /* synthetic */ Callable f77388b;

    public m$h(m mVar, f fVar, Callable callable) {
        this.f77387a = fVar;
        this.f77388b = callable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f77387a.h(this.f77388b.call());
        } catch (Throwable th) {
            this.f77387a.i(th);
        }
    }
}
