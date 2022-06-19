package p134j4;

import java.util.concurrent.ThreadFactory;
/* renamed from: j4.h2 */
/* loaded from: classes-dex2jar.jar:j4/h2.class */
public final /* synthetic */ class ThreadFactoryC3212h2 implements ThreadFactory {

    /* renamed from: a */
    public static final /* synthetic */ ThreadFactoryC3212h2 f10821a = new ThreadFactoryC3212h2();

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, "AssetPackBackgroundExecutor");
    }
}
