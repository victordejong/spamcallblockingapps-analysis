package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import zendesk.support.request.ComponentPersistence;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesDiskQueueFactory.class */
public final class RequestModule_ProvidesDiskQueueFactory implements Factory<ComponentPersistence.PersistenceQueue> {
    private final Provider<ExecutorService> executorServiceProvider;

    public RequestModule_ProvidesDiskQueueFactory(Provider<ExecutorService> provider) {
        this.executorServiceProvider = provider;
    }

    public static Factory<ComponentPersistence.PersistenceQueue> create(Provider<ExecutorService> provider) {
        return new RequestModule_ProvidesDiskQueueFactory(provider);
    }

    public static ComponentPersistence.PersistenceQueue proxyProvidesDiskQueue(ExecutorService executorService) {
        return RequestModule.providesDiskQueue(executorService);
    }

    @Override // javax.inject.Provider
    public ComponentPersistence.PersistenceQueue get() {
        return (ComponentPersistence.PersistenceQueue) Preconditions.checkNotNull(RequestModule.providesDiskQueue(this.executorServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
