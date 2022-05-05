package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.suas.Dispatcher;
import zendesk.suas.Store;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesDispatcherFactory.class */
public final class RequestModule_ProvidesDispatcherFactory implements Factory<Dispatcher> {
    private final Provider<Store> storeProvider;

    public RequestModule_ProvidesDispatcherFactory(Provider<Store> provider) {
        this.storeProvider = provider;
    }

    public static Factory<Dispatcher> create(Provider<Store> provider) {
        return new RequestModule_ProvidesDispatcherFactory(provider);
    }

    public static Dispatcher proxyProvidesDispatcher(Store store) {
        return RequestModule.providesDispatcher(store);
    }

    @Override // javax.inject.Provider
    public Dispatcher get() {
        return (Dispatcher) Preconditions.checkNotNull(RequestModule.providesDispatcher(this.storeProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
