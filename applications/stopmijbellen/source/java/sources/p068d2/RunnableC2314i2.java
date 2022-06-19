package p068d2;

import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import java.io.PrintStream;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: d2.i2 */
/* loaded from: classes-dex2jar.jar:d2/i2.class */
public class RunnableC2314i2 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2355k2 f8261a;

    public RunnableC2314i2(C2355k2 c2355k2) {
        this.f8261a = c2355k2;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2355k2 c2355k2 = this.f8261a;
        c2355k2.f8362b = null;
        Objects.requireNonNull(c2355k2);
        C2408t.m3591d().m3718p().m3686e(0, 2, "AdColony session ending, releasing Context.", false);
        C2408t.m3591d().f8064B = true;
        C2408t.f8531a = null;
        C2272g2 c2272g2 = c2355k2.f8364d;
        c2272g2.f8175i = true;
        c2272g2.f8176j = true;
        C2195d2 c2195d2 = C2408t.m3591d().m3718p().f8197d;
        c2272g2.f8172f = false;
        c2272g2.f8170d = false;
        if (c2195d2 != null) {
            synchronized (c2195d2) {
                c2195d2.f8008b.shutdown();
                try {
                    ScheduledExecutorService scheduledExecutorService = c2195d2.f8008b;
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    if (!scheduledExecutorService.awaitTermination(1L, timeUnit)) {
                        c2195d2.f8008b.shutdownNow();
                        if (!c2195d2.f8008b.awaitTermination(1L, timeUnit)) {
                            PrintStream printStream = System.err;
                            printStream.println(C2195d2.class.getSimpleName() + ": ScheduledExecutorService did not terminate");
                        }
                    }
                } catch (InterruptedException e) {
                    c2195d2.f8008b.shutdownNow();
                    Thread.currentThread().interrupt();
                }
            }
        }
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3747f(c2267f4, "session_length", (SystemClock.uptimeMillis() - c2272g2.f8169c) / 1000.0d);
        new C2410t0("SessionInfo.on_stop", 1, c2267f4).m3586b();
        C2408t.m3588g();
        C2168b.f7919a.shutdown();
        if (C2408t.m3591d().m3717q().m3572h()) {
            ScheduledFuture<?> scheduledFuture = c2355k2.f8363c;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                c2355k2.f8363c.cancel(false);
            }
            try {
                c2355k2.f8363c = c2355k2.f8361a.schedule(new RunnableC2324j2(c2355k2), 10L, TimeUnit.SECONDS);
            } catch (RejectedExecutionException e2) {
                StringBuilder m8752j = C0082b.m8752j("RejectedExecutionException when scheduling message pumping stop ");
                m8752j.append(e2.toString());
                C0082b.m8750l(0, 0, m8752j.toString(), true);
            }
        }
    }
}
