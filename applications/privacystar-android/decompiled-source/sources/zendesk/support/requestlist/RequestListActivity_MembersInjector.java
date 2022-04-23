package zendesk.support.requestlist;

import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
/* loaded from: classes3-dex2jar.jar:zendesk/support/requestlist/RequestListActivity_MembersInjector.class */
public final class RequestListActivity_MembersInjector implements MembersInjector<RequestListActivity> {
    private final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private final Provider<RequestListModel> modelProvider;
    private final Provider<RequestListPresenter> presenterProvider;
    private final Provider<RequestListSyncHandler> syncHandlerProvider;
    private final Provider<RequestListView> viewProvider;

    public RequestListActivity_MembersInjector(Provider<RequestListPresenter> provider, Provider<RequestListView> provider2, Provider<RequestListModel> provider3, Provider<ActionHandlerRegistry> provider4, Provider<RequestListSyncHandler> provider5) {
        this.presenterProvider = provider;
        this.viewProvider = provider2;
        this.modelProvider = provider3;
        this.actionHandlerRegistryProvider = provider4;
        this.syncHandlerProvider = provider5;
    }

    public static MembersInjector<RequestListActivity> create(Provider<RequestListPresenter> provider, Provider<RequestListView> provider2, Provider<RequestListModel> provider3, Provider<ActionHandlerRegistry> provider4, Provider<RequestListSyncHandler> provider5) {
        return new RequestListActivity_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    public static void injectActionHandlerRegistry(RequestListActivity requestListActivity, ActionHandlerRegistry actionHandlerRegistry) {
        requestListActivity.actionHandlerRegistry = actionHandlerRegistry;
    }

    public static void injectModel(RequestListActivity requestListActivity, Object obj) {
        requestListActivity.model = (RequestListModel) obj;
    }

    public static void injectPresenter(RequestListActivity requestListActivity, Object obj) {
        requestListActivity.presenter = (RequestListPresenter) obj;
    }

    public static void injectSyncHandler(RequestListActivity requestListActivity, Object obj) {
        requestListActivity.syncHandler = (RequestListSyncHandler) obj;
    }

    public static void injectView(RequestListActivity requestListActivity, Object obj) {
        requestListActivity.view = (RequestListView) obj;
    }

    public void injectMembers(RequestListActivity requestListActivity) {
        injectPresenter(requestListActivity, this.presenterProvider.get());
        injectView(requestListActivity, this.viewProvider.get());
        injectModel(requestListActivity, this.modelProvider.get());
        injectActionHandlerRegistry(requestListActivity, this.actionHandlerRegistryProvider.get());
        injectSyncHandler(requestListActivity, this.syncHandlerProvider.get());
    }
}
