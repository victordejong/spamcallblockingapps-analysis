package p081h.p203i.p204a.p224e.p235d.p249s.p250t;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;
import p081h.p203i.p204a.p224e.p259j.p267h.HandlerC7748h;
/* renamed from: h.i.a.e.d.s.t.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/t/a.class */
public class ExecutorC7088a implements Executor {

    /* renamed from: a */
    public final Handler f17197a;

    public ExecutorC7088a(Looper looper) {
        this.f17197a = new HandlerC7748h(looper);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NonNull Runnable runnable) {
        this.f17197a.post(runnable);
    }
}
