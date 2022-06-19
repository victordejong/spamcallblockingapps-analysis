package p186o1;

import android.support.p012v4.media.C0082b;
import androidx.work.C0677a;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: o1.a */
/* loaded from: classes-dex2jar.jar:o1/a.class */
public class ThreadFactoryC3815a implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f12291a = new AtomicInteger(0);

    /* renamed from: b */
    public final /* synthetic */ boolean f12292b;

    public ThreadFactoryC3815a(C0677a c0677a, boolean z) {
        this.f12292b = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        StringBuilder m8752j = C0082b.m8752j(this.f12292b ? "WM.task-" : "androidx.work-");
        m8752j.append(this.f12291a.incrementAndGet());
        return new Thread(runnable, m8752j.toString());
    }
}
