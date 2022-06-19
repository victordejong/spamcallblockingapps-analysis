package p193e.p1485h.p1486a.p1493c.p1510y0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* renamed from: e.h.a.c.y0.f */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/f.class */
public class ExecutorC22887f implements Executor {

    /* renamed from: a */
    public Handler f63539a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f63539a.post(runnable);
    }
}
