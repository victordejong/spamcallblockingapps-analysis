package zendesk.support.requestlist;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule_RefreshHandlerFactory.class */
public final class RequestListModule_RefreshHandlerFactory implements Factory<RequestListSyncHandler> {
    private final Provider<RequestListPresenter> presenterProvider;

    public RequestListModule_RefreshHandlerFactory(Provider<RequestListPresenter> provider) {
        this.presenterProvider = provider;
    }

    public static Factory<RequestListSyncHandler> create(Provider<RequestListPresenter> provider) {
        return new RequestListModule_RefreshHandlerFactory(provider);
    }

    public static RequestListSyncHandler proxyRefreshHandler(Object obj) {
        return RequestListModule.refreshHandler((RequestListPresenter) obj);
    }

    @Override // javax.inject.Provider
    public RequestListSyncHandler get() {
        return (RequestListSyncHandler) Preconditions.checkNotNull(RequestListModule.refreshHandler(this.presenterProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
