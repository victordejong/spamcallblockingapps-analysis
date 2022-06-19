package p000;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: ca1 */
/* loaded from: classes3-dex2jar.jar:ca1.class */
public class ca1 {

    /* renamed from: a */
    public static ScheduledExecutorService f2215a = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: b */
    public static ScheduledFuture<?> f2216b;

    /* renamed from: ca1$a */
    /* loaded from: classes3-dex2jar.jar:ca1$a.class */
    public static final class RunnableC0298a implements Runnable {
        /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 636
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p000.ca1.RunnableC0298a.run():void");
        }
    }

    /* renamed from: a */
    public static void m5402a() {
        ScheduledFuture<?> scheduledFuture = f2216b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        f2216b = f2215a.schedule(new RunnableC0298a(), 5000L, TimeUnit.MILLISECONDS);
    }
}
