package p074d9;

import android.os.Looper;
import android.os.Process;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;
import p074d9.C2497h;
/* renamed from: d9.b */
/* loaded from: classes2-dex2jar.jar:d9/b.class */
public class C2489b extends Thread implements AbstractC2491d {

    /* renamed from: a */
    public final LinkedBlockingQueue<C2497h> f8735a = new LinkedBlockingQueue<>();

    public C2489b(String str) {
        super(str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        C2497h.AbstractC2499b abstractC2499b;
        RuntimeException runtimeException;
        Looper.prepare();
        Process.setThreadPriority(10);
        while (true) {
            try {
                C2497h take = this.f8735a.take();
                Objects.requireNonNull(take);
                try {
                    take.f8747d.m3896e(take.f8746c);
                    if (take.f8745b != null) {
                        C2497h.m3512b().post(new RunnableC2495f(take));
                    }
                } finally {
                    if (abstractC2499b != null) {
                    }
                }
            } catch (InterruptedException e) {
                synchronized (this) {
                }
            }
        }
    }
}
