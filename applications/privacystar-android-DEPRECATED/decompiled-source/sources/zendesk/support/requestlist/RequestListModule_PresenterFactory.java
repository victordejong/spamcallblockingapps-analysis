package zendesk.support.requestlist;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListModule_PresenterFactory.class */
public final class RequestListModule_PresenterFactory implements Factory<RequestListPresenter> {
    private final Provider<RequestListModel> modelProvider;
    private final Provider<RequestListView> viewProvider;

    public RequestListModule_PresenterFactory(Provider<RequestListView> provider, Provider<RequestListModel> provider2) {
        this.viewProvider = provider;
        this.modelProvider = provider2;
    }

    public static Factory<RequestListPresenter> create(Provider<RequestListView> provider, Provider<RequestListModel> provider2) {
        return new RequestListModule_PresenterFactory(provider, provider2);
    }

    public static RequestListPresenter proxyPresenter(Object obj, Object obj2) {
        return RequestListModule.presenter((RequestListView) obj, (RequestListModel) obj2);
    }

    @Override // javax.inject.Provider
    public RequestListPresenter get() {
        return (RequestListPresenter) Preconditions.checkNotNull(RequestListModule.presenter(this.viewProvider.get(), this.modelProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
