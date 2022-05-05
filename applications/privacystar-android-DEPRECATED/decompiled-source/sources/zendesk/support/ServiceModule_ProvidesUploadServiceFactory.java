package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.RestServiceProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ServiceModule_ProvidesUploadServiceFactory.class */
public final class ServiceModule_ProvidesUploadServiceFactory implements Factory<UploadService> {
    private final Provider<RestServiceProvider> restServiceProvider;

    public ServiceModule_ProvidesUploadServiceFactory(Provider<RestServiceProvider> provider) {
        this.restServiceProvider = provider;
    }

    public static Factory<UploadService> create(Provider<RestServiceProvider> provider) {
        return new ServiceModule_ProvidesUploadServiceFactory(provider);
    }

    public static UploadService proxyProvidesUploadService(RestServiceProvider restServiceProvider) {
        return ServiceModule.providesUploadService(restServiceProvider);
    }

    @Override // javax.inject.Provider
    public UploadService get() {
        return (UploadService) Preconditions.checkNotNull(ServiceModule.providesUploadService(this.restServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
