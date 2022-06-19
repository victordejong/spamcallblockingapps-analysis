package p134j4;

import java.util.concurrent.ThreadFactory;
/* renamed from: j4.i2 */
/* loaded from: classes-dex2jar.jar:j4/i2.class */
public final /* synthetic */ class ThreadFactoryC3216i2 implements ThreadFactory {

    /* renamed from: a */
    public static final /* synthetic */ ThreadFactoryC3216i2 f10844a = new ThreadFactoryC3216i2();

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "UpdateListenerExecutor");
    }
}
