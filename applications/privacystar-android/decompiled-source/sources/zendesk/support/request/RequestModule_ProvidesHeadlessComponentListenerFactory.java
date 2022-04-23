package zendesk.support.request;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesHeadlessComponentListenerFactory.class */
public final class RequestModule_ProvidesHeadlessComponentListenerFactory implements Factory<HeadlessComponentListener> {
    private final Provider<AttachmentDownloaderComponent> attachmentDownloaderProvider;
    private final Provider<ComponentPersistence> persistenceProvider;
    private final Provider<ComponentUpdateActionHandlers> updatesComponentProvider;

    public RequestModule_ProvidesHeadlessComponentListenerFactory(Provider<ComponentPersistence> provider, Provider<AttachmentDownloaderComponent> provider2, Provider<ComponentUpdateActionHandlers> provider3) {
        this.persistenceProvider = provider;
        this.attachmentDownloaderProvider = provider2;
        this.updatesComponentProvider = provider3;
    }

    public static Factory<HeadlessComponentListener> create(Provider<ComponentPersistence> provider, Provider<AttachmentDownloaderComponent> provider2, Provider<ComponentUpdateActionHandlers> provider3) {
        return new RequestModule_ProvidesHeadlessComponentListenerFactory(provider, provider2, provider3);
    }

    public static HeadlessComponentListener proxyProvidesHeadlessComponentListener(Object obj, Object obj2, Object obj3) {
        return RequestModule.providesHeadlessComponentListener((ComponentPersistence) obj, (AttachmentDownloaderComponent) obj2, (ComponentUpdateActionHandlers) obj3);
    }

    @Override // javax.inject.Provider
    public HeadlessComponentListener get() {
        return (HeadlessComponentListener) Preconditions.checkNotNull(RequestModule.providesHeadlessComponentListener(this.persistenceProvider.get(), this.attachmentDownloaderProvider.get(), this.updatesComponentProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
