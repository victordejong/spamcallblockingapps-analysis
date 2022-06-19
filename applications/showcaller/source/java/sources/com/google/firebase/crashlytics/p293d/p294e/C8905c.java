package com.google.firebase.crashlytics.p293d.p294e;

import android.os.Bundle;
import com.google.firebase.crashlytics.p293d.C8898b;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.crashlytics.d.e.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/e/c.class */
public class C8905c implements AbstractC8904b, AbstractC8903a {

    /* renamed from: a */
    private final C8907e f38875a;

    /* renamed from: b */
    private final int f38876b;

    /* renamed from: c */
    private final TimeUnit f38877c;

    /* renamed from: e */
    private CountDownLatch f38879e;

    /* renamed from: d */
    private final Object f38878d = new Object();

    /* renamed from: f */
    private boolean f38880f = false;

    public C8905c(C8907e c8907e, int i, TimeUnit timeUnit) {
        this.f38875a = c8907e;
        this.f38876b = i;
        this.f38877c = timeUnit;
    }

    @Override // com.google.firebase.crashlytics.p293d.p294e.AbstractC8904b
    /* renamed from: I0 */
    public void mo2376I0(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f38879e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }

    @Override // com.google.firebase.crashlytics.p293d.p294e.AbstractC8903a
    /* renamed from: a */
    public void mo2374a(String str, Bundle bundle) {
        synchronized (this.f38878d) {
            C8898b m2397f = C8898b.m2397f();
            m2397f.m2394i("Logging event " + str + " to Firebase Analytics with params " + bundle);
            this.f38879e = new CountDownLatch(1);
            this.f38880f = false;
            this.f38875a.mo2374a(str, bundle);
            C8898b.m2397f().m2394i("Awaiting app exception callback from Analytics...");
            try {
                if (this.f38879e.await(this.f38876b, this.f38877c)) {
                    this.f38880f = true;
                    C8898b.m2397f().m2394i("App exception callback received from Analytics listener.");
                } else {
                    C8898b.m2397f().m2392k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                }
            } catch (InterruptedException e) {
                C8898b.m2397f().m2399d("Interrupted while awaiting app exception callback from Analytics listener.");
            }
            this.f38879e = null;
        }
    }
}
