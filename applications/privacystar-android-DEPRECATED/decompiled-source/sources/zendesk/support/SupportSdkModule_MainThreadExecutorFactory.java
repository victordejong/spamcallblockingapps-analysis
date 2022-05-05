package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_MainThreadExecutorFactory.class */
public final class SupportSdkModule_MainThreadExecutorFactory implements Factory<Executor> {
    private final SupportSdkModule module;

    public SupportSdkModule_MainThreadExecutorFactory(SupportSdkModule supportSdkModule) {
        this.module = supportSdkModule;
    }

    public static Factory<Executor> create(SupportSdkModule supportSdkModule) {
        return new SupportSdkModule_MainThreadExecutorFactory(supportSdkModule);
    }

    public static Executor proxyMainThreadExecutor(SupportSdkModule supportSdkModule) {
        return supportSdkModule.mainThreadExecutor();
    }

    @Override // javax.inject.Provider
    public Executor get() {
        return (Executor) Preconditions.checkNotNull(this.module.mainThreadExecutor(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
