package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesRequestServiceFactory.class */
public final class ServiceModule_ProvidesRequestServiceFactory implements AbstractC10866b<RequestService> {
    public final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesRequestServiceFactory(Provider<RestServiceProvider> provider) {
        this.restServiceProvider = provider;
    }

    public static ServiceModule_ProvidesRequestServiceFactory create(Provider<RestServiceProvider> provider) {
        return new ServiceModule_ProvidesRequestServiceFactory(provider);
    }

    public static RequestService providesRequestService(RestServiceProvider restServiceProvider) {
        RequestService providesRequestService = ServiceModule.providesRequestService(restServiceProvider);
        C10867c.m10383a(providesRequestService, "Cannot return null from a non-@Nullable @Provides method");
        return providesRequestService;
    }

    @Override // javax.inject.Provider
    public RequestService get() {
        return providesRequestService(this.restServiceProvider.get());
    }
}
