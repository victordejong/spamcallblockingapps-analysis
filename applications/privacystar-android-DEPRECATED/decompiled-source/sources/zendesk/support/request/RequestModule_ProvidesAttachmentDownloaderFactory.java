package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.belvedere.Belvedere;
import zendesk.support.request.AttachmentDownloaderComponent;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesAttachmentDownloaderFactory.class */
public final class RequestModule_ProvidesAttachmentDownloaderFactory implements Factory<AttachmentDownloaderComponent.AttachmentDownloader> {
    private final Provider<AttachmentDownloadService> attachmentToDiskServiceProvider;
    private final Provider<Belvedere> belvedereProvider;

    public RequestModule_ProvidesAttachmentDownloaderFactory(Provider<Belvedere> provider, Provider<AttachmentDownloadService> provider2) {
        this.belvedereProvider = provider;
        this.attachmentToDiskServiceProvider = provider2;
    }

    public static Factory<AttachmentDownloaderComponent.AttachmentDownloader> create(Provider<Belvedere> provider, Provider<AttachmentDownloadService> provider2) {
        return new RequestModule_ProvidesAttachmentDownloaderFactory(provider, provider2);
    }

    public static AttachmentDownloaderComponent.AttachmentDownloader proxyProvidesAttachmentDownloader(Belvedere belvedere, Object obj) {
        return RequestModule.providesAttachmentDownloader(belvedere, (AttachmentDownloadService) obj);
    }

    @Override // javax.inject.Provider
    public AttachmentDownloaderComponent.AttachmentDownloader get() {
        return (AttachmentDownloaderComponent.AttachmentDownloader) Preconditions.checkNotNull(RequestModule.providesAttachmentDownloader(this.belvedereProvider.get(), this.attachmentToDiskServiceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
