package p1727n3.p1834m0.p1835c0.p1845t.p1847x;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p1727n3.p1834m0.p1835c0.p1845t.ExecutorC26790k;
/* renamed from: n3.m0.c0.t.x.b */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/x/b.class */
public class C26822b implements AbstractC26821a {

    /* renamed from: a */
    public final ExecutorC26790k f75051a;

    /* renamed from: b */
    public final Handler f75052b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Executor f75053c = new ExecutorC26823a();

    /* renamed from: n3.m0.c0.t.x.b$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/x/b$a.class */
    public class ExecutorC26823a implements Executor {
        public ExecutorC26823a() {
            C26822b.this = r4;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C26822b.this.f75052b.post(runnable);
        }
    }

    public C26822b(Executor executor) {
        this.f75051a = new ExecutorC26790k(executor);
    }
}
