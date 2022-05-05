package zendesk.core;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideExecutorServiceFactory.class */
public final class ZendeskApplicationModule_ProvideExecutorServiceFactory implements AbstractC10866b<ExecutorService> {
    public final Provider<ScheduledExecutorService> scheduledExecutorServiceProvider;

    public ZendeskApplicationModule_ProvideExecutorServiceFactory(Provider<ScheduledExecutorService> provider) {
        this.scheduledExecutorServiceProvider = provider;
    }

    public static ZendeskApplicationModule_ProvideExecutorServiceFactory create(Provider<ScheduledExecutorService> provider) {
        return new ZendeskApplicationModule_ProvideExecutorServiceFactory(provider);
    }

    public static ExecutorService provideExecutorService(ScheduledExecutorService scheduledExecutorService) {
        ZendeskApplicationModule.provideExecutorService(scheduledExecutorService);
        C10867c.m10383a(scheduledExecutorService, "Cannot return null from a non-@Nullable @Provides method");
        return scheduledExecutorService;
    }

    @Override // javax.inject.Provider
    public ExecutorService get() {
        return provideExecutorService(this.scheduledExecutorServiceProvider.get());
    }
}
