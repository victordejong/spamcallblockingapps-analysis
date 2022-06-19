package p080e5;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* renamed from: e5.j */
/* loaded from: classes-dex2jar.jar:e5/j.class */
public class CallableC2558j implements Callable<Void> {

    /* renamed from: a */
    public final /* synthetic */ long f8935a;

    /* renamed from: b */
    public final /* synthetic */ C2568p f8936b;

    public CallableC2558j(C2568p c2568p, long j) {
        this.f8936b = c2568p;
        this.f8935a = j;
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.f8935a);
        this.f8936b.f8964k.mo107a("_ae", bundle);
        return null;
    }
}
