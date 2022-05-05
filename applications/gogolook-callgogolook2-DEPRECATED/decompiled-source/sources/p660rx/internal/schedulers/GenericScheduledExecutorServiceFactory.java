package p660rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import p660rx.functions.Func0;
import p660rx.internal.util.RxThreadFactory;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.schedulers.GenericScheduledExecutorServiceFactory */
/* loaded from: classes3-dex2jar.jar:rx/internal/schedulers/GenericScheduledExecutorServiceFactory.class */
public enum GenericScheduledExecutorServiceFactory {
    ;
    
    public static final RxThreadFactory THREAD_FACTORY = new RxThreadFactory("RxScheduledExecutorPool-");

    public static ScheduledExecutorService create() {
        Func0<? extends ScheduledExecutorService> onGenericScheduledExecutorService = RxJavaHooks.getOnGenericScheduledExecutorService();
        return onGenericScheduledExecutorService == null ? createDefault() : (ScheduledExecutorService) onGenericScheduledExecutorService.call();
    }

    public static ScheduledExecutorService createDefault() {
        return Executors.newScheduledThreadPool(1, threadFactory());
    }

    public static ThreadFactory threadFactory() {
        return THREAD_FACTORY;
    }
}
