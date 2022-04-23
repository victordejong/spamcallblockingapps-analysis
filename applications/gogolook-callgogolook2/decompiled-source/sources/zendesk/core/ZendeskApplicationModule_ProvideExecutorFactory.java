package zendesk.core;

import java.util.concurrent.ScheduledExecutorService;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideExecutorFactory.class */
public final class ZendeskApplicationModule_ProvideExecutorFactory implements AbstractC10866b<ScheduledExecutorService> {
    public static final ZendeskApplicationModule_ProvideExecutorFactory INSTANCE = new ZendeskApplicationModule_ProvideExecutorFactory();

    public static ZendeskApplicationModule_ProvideExecutorFactory create() {
        return INSTANCE;
    }

    public static ScheduledExecutorService provideExecutor() {
        ScheduledExecutorService provideExecutor = ZendeskApplicationModule.provideExecutor();
        C10867c.m10383a(provideExecutor, "Cannot return null from a non-@Nullable @Provides method");
        return provideExecutor;
    }

    @Override // javax.inject.Provider
    public ScheduledExecutorService get() {
        return provideExecutor();
    }
}
