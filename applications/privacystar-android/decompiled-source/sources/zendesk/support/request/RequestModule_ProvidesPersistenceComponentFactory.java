package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import zendesk.support.SupportUiStorage;
import zendesk.support.request.ComponentPersistence;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesPersistenceComponentFactory.class */
public final class RequestModule_ProvidesPersistenceComponentFactory implements Factory<ComponentPersistence> {
    private final Provider<ExecutorService> executorServiceProvider;
    private final Provider<ComponentPersistence.PersistenceQueue> queueProvider;
    private final Provider<SupportUiStorage> supportUiStorageProvider;

    public RequestModule_ProvidesPersistenceComponentFactory(Provider<SupportUiStorage> provider, Provider<ComponentPersistence.PersistenceQueue> provider2, Provider<ExecutorService> provider3) {
        this.supportUiStorageProvider = provider;
        this.queueProvider = provider2;
        this.executorServiceProvider = provider3;
    }

    public static Factory<ComponentPersistence> create(Provider<SupportUiStorage> provider, Provider<ComponentPersistence.PersistenceQueue> provider2, Provider<ExecutorService> provider3) {
        return new RequestModule_ProvidesPersistenceComponentFactory(provider, provider2, provider3);
    }

    public static ComponentPersistence proxyProvidesPersistenceComponent(SupportUiStorage supportUiStorage, Object obj, ExecutorService executorService) {
        return RequestModule.providesPersistenceComponent(supportUiStorage, (ComponentPersistence.PersistenceQueue) obj, executorService);
    }

    @Override // javax.inject.Provider
    public ComponentPersistence get() {
        return (ComponentPersistence) Preconditions.checkNotNull(RequestModule.providesPersistenceComponent(this.supportUiStorageProvider.get(), this.queueProvider.get(), this.executorServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
