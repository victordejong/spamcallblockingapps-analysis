package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetExecutorFactory.class */
public final class CoreModule_GetExecutorFactory implements Factory<Executor> {
    private final CoreModule module;

    public CoreModule_GetExecutorFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<Executor> create(CoreModule coreModule) {
        return new CoreModule_GetExecutorFactory(coreModule);
    }

    public static Executor proxyGetExecutor(CoreModule coreModule) {
        return coreModule.getExecutor();
    }

    @Override // javax.inject.Provider
    public Executor get() {
        return (Executor) Preconditions.checkNotNull(this.module.getExecutor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
