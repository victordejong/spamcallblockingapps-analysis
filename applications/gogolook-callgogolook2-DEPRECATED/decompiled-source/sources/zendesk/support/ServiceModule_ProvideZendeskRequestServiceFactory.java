package zendesk.support;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskRequestServiceFactory.class */
public final class ServiceModule_ProvideZendeskRequestServiceFactory implements AbstractC10866b<ZendeskRequestService> {
    public final Provider<RequestService> requestServiceProvider;

    public ServiceModule_ProvideZendeskRequestServiceFactory(Provider<RequestService> provider) {
        this.requestServiceProvider = provider;
    }

    public static ServiceModule_ProvideZendeskRequestServiceFactory create(Provider<RequestService> provider) {
        return new ServiceModule_ProvideZendeskRequestServiceFactory(provider);
    }

    public static ZendeskRequestService provideZendeskRequestService(Object obj) {
        ZendeskRequestService provideZendeskRequestService = ServiceModule.provideZendeskRequestService((RequestService) obj);
        C10867c.m10383a(provideZendeskRequestService, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskRequestService;
    }

    @Override // javax.inject.Provider
    public ZendeskRequestService get() {
        return provideZendeskRequestService(this.requestServiceProvider.get());
    }
}
