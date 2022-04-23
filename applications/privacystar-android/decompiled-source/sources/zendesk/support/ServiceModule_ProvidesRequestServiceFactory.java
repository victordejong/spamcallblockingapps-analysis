package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesRequestServiceFactory.class */
public final class ServiceModule_ProvidesRequestServiceFactory implements Factory<RequestService> {
    private final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesRequestServiceFactory(Provider<RestServiceProvider> provider) {
        this.restServiceProvider = provider;
    }

    public static Factory<RequestService> create(Provider<RestServiceProvider> provider) {
        return new ServiceModule_ProvidesRequestServiceFactory(provider);
    }

    public static RequestService proxyProvidesRequestService(RestServiceProvider restServiceProvider) {
        return ServiceModule.providesRequestService(restServiceProvider);
    }

    @Override // javax.inject.Provider
    public RequestService get() {
        return (RequestService) Preconditions.checkNotNull(ServiceModule.providesRequestService(this.restServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
