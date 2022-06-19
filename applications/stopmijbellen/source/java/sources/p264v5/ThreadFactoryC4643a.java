package p264v5;

import java.util.concurrent.ThreadFactory;
/* renamed from: v5.a */
/* loaded from: classes2-dex2jar.jar:v5/a.class */
public final /* synthetic */ class ThreadFactoryC4643a implements ThreadFactory {

    /* renamed from: a */
    public static final /* synthetic */ ThreadFactoryC4643a f14336a = new ThreadFactoryC4643a();

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i = C4646d.f14342b;
        return new Thread(runnable, "heartbeat-information-executor");
    }
}
