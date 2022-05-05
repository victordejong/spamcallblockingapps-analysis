package zendesk.support.request;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
import zendesk.support.requestlist.RequestInfoDataSource;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesConversationsUpdatesComponentFactory.class */
public final class RequestModule_ProvidesConversationsUpdatesComponentFactory implements Factory<ComponentUpdateActionHandlers> {
    private final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private final Provider<Context> contextProvider;
    private final Provider<RequestInfoDataSource.LocalDataSource> requestInfoDataSourceProvider;

    public RequestModule_ProvidesConversationsUpdatesComponentFactory(Provider<Context> provider, Provider<ActionHandlerRegistry> provider2, Provider<RequestInfoDataSource.LocalDataSource> provider3) {
        this.contextProvider = provider;
        this.actionHandlerRegistryProvider = provider2;
        this.requestInfoDataSourceProvider = provider3;
    }

    public static Factory<ComponentUpdateActionHandlers> create(Provider<Context> provider, Provider<ActionHandlerRegistry> provider2, Provider<RequestInfoDataSource.LocalDataSource> provider3) {
        return new RequestModule_ProvidesConversationsUpdatesComponentFactory(provider, provider2, provider3);
    }

    public static ComponentUpdateActionHandlers proxyProvidesConversationsUpdatesComponent(Context context, ActionHandlerRegistry actionHandlerRegistry, RequestInfoDataSource.LocalDataSource localDataSource) {
        return RequestModule.providesConversationsUpdatesComponent(context, actionHandlerRegistry, localDataSource);
    }

    @Override // javax.inject.Provider
    public ComponentUpdateActionHandlers get() {
        return (ComponentUpdateActionHandlers) Preconditions.checkNotNull(RequestModule.providesConversationsUpdatesComponent(this.contextProvider.get(), this.actionHandlerRegistryProvider.get(), this.requestInfoDataSourceProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
