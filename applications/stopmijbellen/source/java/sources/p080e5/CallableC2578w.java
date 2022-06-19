package p080e5;

import android.util.Log;
import java.util.concurrent.Callable;
/* renamed from: e5.w */
/* loaded from: classes-dex2jar.jar:e5/w.class */
public class CallableC2578w implements Callable<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ C2575v f8995a;

    public CallableC2578w(C2575v c2575v) {
        this.f8995a = c2575v;
    }

    @Override // java.util.concurrent.Callable
    public Boolean call() throws Exception {
        C2568p c2568p = this.f8995a.f8986f;
        boolean z = true;
        if (!c2568p.f8956c.m8402a().exists()) {
            String m3427f = c2568p.m3427f();
            if (m3427f == null || !c2568p.f8962i.mo7421h(m3427f)) {
                z = false;
            }
        } else {
            Log.isLoggable("FirebaseCrashlytics", 2);
            c2568p.f8956c.m8402a().delete();
        }
        return Boolean.valueOf(z);
    }
}
