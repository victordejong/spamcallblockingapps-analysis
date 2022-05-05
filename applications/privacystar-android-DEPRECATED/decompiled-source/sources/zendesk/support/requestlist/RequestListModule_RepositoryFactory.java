package zendesk.support.requestlist;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import zendesk.support.RequestProvider;
import zendesk.support.SupportUiStorage;
import zendesk.support.requestlist.RequestInfoDataSource;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule_RepositoryFactory.class */
public final class RequestListModule_RepositoryFactory implements Factory<RequestInfoDataSource.Repository> {
    private final Provider<ExecutorService> backgroundThreadExecutorProvider;
    private final Provider<RequestInfoDataSource.LocalDataSource> localDataSourceProvider;
    private final Provider<Executor> mainThreadExecutorProvider;
    private final Provider<RequestProvider> requestProvider;
    private final Provider<SupportUiStorage> supportUiStorageProvider;

    public RequestListModule_RepositoryFactory(Provider<RequestInfoDataSource.LocalDataSource> provider, Provider<SupportUiStorage> provider2, Provider<RequestProvider> provider3, Provider<Executor> provider4, Provider<ExecutorService> provider5) {
        this.localDataSourceProvider = provider;
        this.supportUiStorageProvider = provider2;
        this.requestProvider = provider3;
        this.mainThreadExecutorProvider = provider4;
        this.backgroundThreadExecutorProvider = provider5;
    }

    public static Factory<RequestInfoDataSource.Repository> create(Provider<RequestInfoDataSource.LocalDataSource> provider, Provider<SupportUiStorage> provider2, Provider<RequestProvider> provider3, Provider<Executor> provider4, Provider<ExecutorService> provider5) {
        return new RequestListModule_RepositoryFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static RequestInfoDataSource.Repository proxyRepository(RequestInfoDataSource.LocalDataSource localDataSource, SupportUiStorage supportUiStorage, RequestProvider requestProvider, Executor executor, ExecutorService executorService) {
        return RequestListModule.repository(localDataSource, supportUiStorage, requestProvider, executor, executorService);
    }

    @Override // javax.inject.Provider
    public RequestInfoDataSource.Repository get() {
        return (RequestInfoDataSource.Repository) Preconditions.checkNotNull(RequestListModule.repository(this.localDataSourceProvider.get(), this.supportUiStorageProvider.get(), this.requestProvider.get(), this.mainThreadExecutorProvider.get(), this.backgroundThreadExecutorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
