package p080e5;

import com.google.android.gms.tasks.Task;
import java.util.concurrent.Callable;
import p157l5.AbstractC3500d;
/* renamed from: e5.t */
/* loaded from: classes-dex2jar.jar:e5/t.class */
public class CallableC2573t implements Callable<Task<Void>> {

    /* renamed from: a */
    public final /* synthetic */ AbstractC3500d f8977a;

    /* renamed from: b */
    public final /* synthetic */ C2575v f8978b;

    public CallableC2573t(C2575v c2575v, AbstractC3500d abstractC3500d) {
        this.f8978b = c2575v;
        this.f8977a = abstractC3500d;
    }

    @Override // java.util.concurrent.Callable
    public Task<Void> call() throws Exception {
        return C2575v.m3423a(this.f8978b, this.f8977a);
    }
}
