package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import zendesk.support.requestlist.RequestInfoDataSource;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_RequestInfoDataSourceFactory.class */
public final class SupportSdkModule_RequestInfoDataSourceFactory implements Factory<RequestInfoDataSource.LocalDataSource> {
    private final Provider<ExecutorService> backgroundThreadExecutorProvider;
    private final Provider<Executor> mainThreadExecutorProvider;
    private final SupportSdkModule module;
    private final Provider<SupportUiStorage> supportUiStorageProvider;

    public SupportSdkModule_RequestInfoDataSourceFactory(SupportSdkModule supportSdkModule, Provider<SupportUiStorage> provider, Provider<Executor> provider2, Provider<ExecutorService> provider3) {
        this.module = supportSdkModule;
        this.supportUiStorageProvider = provider;
        this.mainThreadExecutorProvider = provider2;
        this.backgroundThreadExecutorProvider = provider3;
    }

    public static Factory<RequestInfoDataSource.LocalDataSource> create(SupportSdkModule supportSdkModule, Provider<SupportUiStorage> provider, Provider<Executor> provider2, Provider<ExecutorService> provider3) {
        return new SupportSdkModule_RequestInfoDataSourceFactory(supportSdkModule, provider, provider2, provider3);
    }

    public static RequestInfoDataSource.LocalDataSource proxyRequestInfoDataSource(SupportSdkModule supportSdkModule, SupportUiStorage supportUiStorage, Executor executor, ExecutorService executorService) {
        return supportSdkModule.requestInfoDataSource(supportUiStorage, executor, executorService);
    }

    @Override // javax.inject.Provider
    public RequestInfoDataSource.LocalDataSource get() {
        return (RequestInfoDataSource.LocalDataSource) Preconditions.checkNotNull(this.module.requestInfoDataSource(this.supportUiStorageProvider.get(), this.mainThreadExecutorProvider.get(), this.backgroundThreadExecutorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
