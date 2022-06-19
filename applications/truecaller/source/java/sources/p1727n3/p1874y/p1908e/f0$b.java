package p1727n3.p1874y.p1908e;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import p1727n3.p1874y.p1875a.AbstractC27066a;
/* renamed from: n3.y.e.f0$b */
/* loaded from: classes-dex2jar.jar:n3/y/e/f0$b.class */
public class f0$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ListenableFuture f77532a;

    public f0$b(f0 f0Var, ListenableFuture listenableFuture) {
        this.f77532a = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ((AbstractC27066a) this.f77532a.get()).mo964d();
        } catch (InterruptedException | ExecutionException e) {
        }
    }
}
