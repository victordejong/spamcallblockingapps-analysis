package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvideZendeskUploadServiceFactory.class */
public final class ServiceModule_ProvideZendeskUploadServiceFactory implements Factory<ZendeskUploadService> {
    private final Provider<UploadService> uploadServiceProvider;

    public ServiceModule_ProvideZendeskUploadServiceFactory(Provider<UploadService> provider) {
        this.uploadServiceProvider = provider;
    }

    public static Factory<ZendeskUploadService> create(Provider<UploadService> provider) {
        return new ServiceModule_ProvideZendeskUploadServiceFactory(provider);
    }

    public static ZendeskUploadService proxyProvideZendeskUploadService(Object obj) {
        return ServiceModule.provideZendeskUploadService((UploadService) obj);
    }

    @Override // javax.inject.Provider
    public ZendeskUploadService get() {
        return (ZendeskUploadService) Preconditions.checkNotNull(ServiceModule.provideZendeskUploadService(this.uploadServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
