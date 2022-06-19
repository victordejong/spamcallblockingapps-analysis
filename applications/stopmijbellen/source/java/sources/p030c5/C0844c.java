package p030c5;

import android.os.Bundle;
import android.util.Log;
import java.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p086f.C2678t;
import p285x4.AbstractC4857a;
/* renamed from: c5.c */
/* loaded from: classes-dex2jar.jar:c5/c.class */
public class C0844c implements AbstractC0843b, AbstractC0842a {

    /* renamed from: a */
    public final C2678t f3120a;

    /* renamed from: b */
    public final Object f3121b = new Object();

    /* renamed from: c */
    public CountDownLatch f3122c;

    public C0844c(C2678t c2678t, int i, TimeUnit timeUnit) {
        this.f3120a = c2678t;
    }

    @Override // p030c5.AbstractC0842a
    /* renamed from: a */
    public void mo107a(String str, Bundle bundle) {
        synchronized (this.f3121b) {
            Objects.toString(bundle);
            Log.isLoggable("FirebaseCrashlytics", 2);
            this.f3122c = new CountDownLatch(1);
            ((AbstractC4857a) this.f3120a.f9203a).mo343e("clx", str, bundle);
            Log.isLoggable("FirebaseCrashlytics", 2);
            try {
                if (this.f3122c.await(500, TimeUnit.MILLISECONDS)) {
                    Log.isLoggable("FirebaseCrashlytics", 2);
                } else {
                    Log.w("FirebaseCrashlytics", "Timeout exceeded while awaiting app exception callback from Analytics listener.", null);
                }
            } catch (InterruptedException e) {
            }
            this.f3122c = null;
        }
    }

    @Override // p030c5.AbstractC0843b
    /* renamed from: b */
    public void mo7281b(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f3122c;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
