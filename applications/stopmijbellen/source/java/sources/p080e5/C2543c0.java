package p080e5;

import android.util.Log;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
/* renamed from: e5.c0 */
/* loaded from: classes-dex2jar.jar:e5/c0.class */
public class C2543c0 extends AbstractRunnableC2542c {

    /* renamed from: a */
    public final /* synthetic */ String f8900a;

    /* renamed from: b */
    public final /* synthetic */ ExecutorService f8901b;

    /* renamed from: c */
    public final /* synthetic */ long f8902c;

    /* renamed from: d */
    public final /* synthetic */ TimeUnit f8903d;

    public C2543c0(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.f8900a = str;
        this.f8901b = executorService;
        this.f8902c = j;
        this.f8903d = timeUnit;
    }

    @Override // p080e5.AbstractRunnableC2542c
    /* renamed from: b */
    public void mo3460b() {
        try {
            Log.isLoggable("FirebaseCrashlytics", 3);
            this.f8901b.shutdown();
            if (this.f8901b.awaitTermination(this.f8902c, this.f8903d)) {
                return;
            }
            Log.isLoggable("FirebaseCrashlytics", 3);
            this.f8901b.shutdownNow();
        } catch (InterruptedException e) {
            String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f8900a);
            Log.isLoggable("FirebaseCrashlytics", 3);
            this.f8901b.shutdownNow();
        }
    }
}
