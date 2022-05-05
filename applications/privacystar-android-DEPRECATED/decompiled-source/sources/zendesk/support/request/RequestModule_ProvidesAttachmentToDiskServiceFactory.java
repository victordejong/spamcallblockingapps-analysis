package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ExecutorService;
import javax.inject.Provider;
import okhttp3.OkHttpClient;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesAttachmentToDiskServiceFactory.class */
public final class RequestModule_ProvidesAttachmentToDiskServiceFactory implements Factory<AttachmentDownloadService> {
    private final Provider<ExecutorService> executorProvider;
    private final Provider<OkHttpClient> okHttpClientProvider;

    public RequestModule_ProvidesAttachmentToDiskServiceFactory(Provider<OkHttpClient> provider, Provider<ExecutorService> provider2) {
        this.okHttpClientProvider = provider;
        this.executorProvider = provider2;
    }

    public static Factory<AttachmentDownloadService> create(Provider<OkHttpClient> provider, Provider<ExecutorService> provider2) {
        return new RequestModule_ProvidesAttachmentToDiskServiceFactory(provider, provider2);
    }

    public static AttachmentDownloadService proxyProvidesAttachmentToDiskService(OkHttpClient okHttpClient, ExecutorService executorService) {
        return RequestModule.providesAttachmentToDiskService(okHttpClient, executorService);
    }

    @Override // javax.inject.Provider
    public AttachmentDownloadService get() {
        return (AttachmentDownloadService) Preconditions.checkNotNull(RequestModule.providesAttachmentToDiskService(this.okHttpClientProvider.get(), this.executorProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
