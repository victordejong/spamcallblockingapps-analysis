package p080e5;

import android.util.Log;
import java.util.Date;
import java.util.Objects;
import p080e5.C2581z;
import p157l5.AbstractC3500d;
/* renamed from: e5.k */
/* loaded from: classes-dex2jar.jar:e5/k.class */
public class C2560k implements C2581z.AbstractC2582a {

    /* renamed from: a */
    public final /* synthetic */ C2568p f8938a;

    public C2560k(C2568p c2568p) {
        this.f8938a = c2568p;
    }

    /* renamed from: a */
    public void m3434a(AbstractC3500d abstractC3500d, Thread thread, Throwable th) {
        C2568p c2568p = this.f8938a;
        synchronized (c2568p) {
            Objects.toString(th);
            thread.getName();
            Log.isLoggable("FirebaseCrashlytics", 3);
            try {
                C2564l0.m3433a(c2568p.f8957d.m3438c(new CallableC2565m(c2568p, new Date(), th, thread, abstractC3500d)));
            } catch (Exception e) {
            }
        }
    }
}
