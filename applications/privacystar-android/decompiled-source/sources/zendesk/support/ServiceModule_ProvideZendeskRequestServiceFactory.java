package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory.class */
public final class ServiceModule_ProvideZendeskRequestServiceFactory implements Factory<ZendeskRequestService> {
    private final Provider<RequestService> requestServiceProvider;

    public ServiceModule_ProvideZendeskRequestServiceFactory(Provider<RequestService> provider) {
        this.requestServiceProvider = provider;
    }

    public static Factory<ZendeskRequestService> create(Provider<RequestService> provider) {
        return new ServiceModule_ProvideZendeskRequestServiceFactory(provider);
    }

    public static ZendeskRequestService proxyProvideZendeskRequestService(Object obj) {
        return ServiceModule.provideZendeskRequestService((RequestService) obj);
    }

    @Override // javax.inject.Provider
    public ZendeskRequestService get() {
        return (ZendeskRequestService) Preconditions.checkNotNull(ServiceModule.provideZendeskRequestService(this.requestServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
