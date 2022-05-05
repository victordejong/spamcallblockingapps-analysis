package zendesk.support.request;

import android.content.Context;
import com.squareup.picasso.Picasso;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.suas.Dispatcher;
import zendesk.support.ZendeskDeepLinkHelper;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestModule_ProvidesMessageFactoryFactory.class */
public final class RequestModule_ProvidesMessageFactoryFactory implements Factory<CellFactory> {
    private final Provider<ActionFactory> actionFactoryProvider;
    private final Provider<Context> contextProvider;
    private final Provider<ZendeskDeepLinkHelper> deepLinkHelperProvider;
    private final Provider<Dispatcher> dispatcherProvider;
    private final RequestModule module;
    private final Provider<Picasso> picassoProvider;

    public RequestModule_ProvidesMessageFactoryFactory(RequestModule requestModule, Provider<Context> provider, Provider<Picasso> provider2, Provider<ActionFactory> provider3, Provider<Dispatcher> provider4, Provider<ZendeskDeepLinkHelper> provider5) {
        this.module = requestModule;
        this.contextProvider = provider;
        this.picassoProvider = provider2;
        this.actionFactoryProvider = provider3;
        this.dispatcherProvider = provider4;
        this.deepLinkHelperProvider = provider5;
    }

    public static Factory<CellFactory> create(RequestModule requestModule, Provider<Context> provider, Provider<Picasso> provider2, Provider<ActionFactory> provider3, Provider<Dispatcher> provider4, Provider<ZendeskDeepLinkHelper> provider5) {
        return new RequestModule_ProvidesMessageFactoryFactory(requestModule, provider, provider2, provider3, provider4, provider5);
    }

    public static CellFactory proxyProvidesMessageFactory(RequestModule requestModule, Context context, Picasso picasso, Object obj, Dispatcher dispatcher, ZendeskDeepLinkHelper zendeskDeepLinkHelper) {
        return requestModule.providesMessageFactory(context, picasso, (ActionFactory) obj, dispatcher, zendeskDeepLinkHelper);
    }

    @Override // javax.inject.Provider
    public CellFactory get() {
        return (CellFactory) Preconditions.checkNotNull(this.module.providesMessageFactory(this.contextProvider.get(), this.picassoProvider.get(), this.actionFactoryProvider.get(), this.dispatcherProvider.get(), this.deepLinkHelperProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
