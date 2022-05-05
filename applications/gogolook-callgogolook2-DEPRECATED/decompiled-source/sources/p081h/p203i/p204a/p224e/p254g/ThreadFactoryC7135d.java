package p081h.p203i.p204a.p224e.p254g;

import androidx.annotation.NonNull;
import com.google.android.gms.gcm.GcmTaskService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.i.a.e.g.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/g/d.class */
public final class ThreadFactoryC7135d implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f17242a = new AtomicInteger(1);

    public ThreadFactoryC7135d(GcmTaskService gcmTaskService) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(@NonNull Runnable runnable) {
        int andIncrement = this.f17242a.getAndIncrement();
        StringBuilder sb = new StringBuilder(20);
        sb.append("gcm-task#");
        sb.append(andIncrement);
        Thread thread = new Thread(runnable, sb.toString());
        thread.setPriority(4);
        return thread;
    }
}
