package p003a2;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import p292y1.ExecutorC4963j;
/* renamed from: a2.b */
/* loaded from: classes-dex2jar.jar:a2/b.class */
public class C0009b implements AbstractC0008a {

    /* renamed from: a */
    public final ExecutorC4963j f8a;

    /* renamed from: b */
    public final Handler f9b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Executor f10c = new ExecutorC0010a();

    /* renamed from: a2.b$a */
    /* loaded from: classes-dex2jar.jar:a2/b$a.class */
    public class ExecutorC0010a implements Executor {
        public ExecutorC0010a() {
            C0009b.this = r4;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0009b.this.f9b.post(runnable);
        }
    }

    public C0009b(Executor executor) {
        this.f8a = new ExecutorC4963j(executor);
    }
}
