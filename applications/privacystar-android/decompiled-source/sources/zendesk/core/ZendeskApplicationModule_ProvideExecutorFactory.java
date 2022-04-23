package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideExecutorFactory.class */
public final class ZendeskApplicationModule_ProvideExecutorFactory implements Factory<ExecutorService> {
    private static final ZendeskApplicationModule_ProvideExecutorFactory INSTANCE = new ZendeskApplicationModule_ProvideExecutorFactory();

    public static Factory<ExecutorService> create() {
        return INSTANCE;
    }

    public static ExecutorService proxyProvideExecutor() {
        return ZendeskApplicationModule.provideExecutor();
    }

    @Override // javax.inject.Provider
    public ExecutorService get() {
        return (ExecutorService) Preconditions.checkNotNull(ZendeskApplicationModule.provideExecutor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
