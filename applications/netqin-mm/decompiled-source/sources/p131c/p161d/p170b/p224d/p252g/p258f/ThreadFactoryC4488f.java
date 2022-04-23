package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzag;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* renamed from: c.d.b.d.g.f.f */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/f.class */
public final class ThreadFactoryC4488f implements ThreadFactory {

    /* renamed from: a */
    public ThreadFactory f16741a = Executors.defaultThreadFactory();

    public ThreadFactoryC4488f(zzag zzagVar) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f16741a.newThread(runnable);
        newThread.setName("ScionFrontendApi");
        return newThread;
    }
}
