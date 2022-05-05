package p081h.p203i.p204a.p224e.p293r;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p259j.p279t.HandlerC8812a;
/* renamed from: h.i.a.e.r.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/j.class */
public final class C9146j {

    /* renamed from: a */
    public static final Executor f20832a = new ExecutorC9147a();

    /* renamed from: b */
    public static final Executor f20833b = new ExecutorC9133c0();

    /* renamed from: h.i.a.e.r.j$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/r/j$a.class */
    public static final class ExecutorC9147a implements Executor {

        /* renamed from: a */
        public final Handler f20834a = new HandlerC8812a(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            this.f20834a.post(runnable);
        }
    }
}
