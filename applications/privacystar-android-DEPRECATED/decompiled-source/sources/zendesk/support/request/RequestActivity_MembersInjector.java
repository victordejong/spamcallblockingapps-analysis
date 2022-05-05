package zendesk.support.request;

import com.squareup.picasso.Picasso;
import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
import zendesk.suas.Store;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestActivity_MembersInjector.class */
public final class RequestActivity_MembersInjector implements MembersInjector<RequestActivity> {
    private final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private final Provider<ActionFactory> afProvider;
    private final Provider<HeadlessComponentListener> headlessComponentListenerProvider;
    private final Provider<Picasso> picassoProvider;
    private final Provider<Store> storeProvider;

    public RequestActivity_MembersInjector(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<HeadlessComponentListener> provider3, Provider<Picasso> provider4, Provider<ActionHandlerRegistry> provider5) {
        this.storeProvider = provider;
        this.afProvider = provider2;
        this.headlessComponentListenerProvider = provider3;
        this.picassoProvider = provider4;
        this.actionHandlerRegistryProvider = provider5;
    }

    public static MembersInjector<RequestActivity> create(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<HeadlessComponentListener> provider3, Provider<Picasso> provider4, Provider<ActionHandlerRegistry> provider5) {
        return new RequestActivity_MembersInjector(provider, provider2, provider3, provider4, provider5);
    }

    public static void injectActionHandlerRegistry(RequestActivity requestActivity, ActionHandlerRegistry actionHandlerRegistry) {
        requestActivity.actionHandlerRegistry = actionHandlerRegistry;
    }

    public static void injectAf(RequestActivity requestActivity, Object obj) {
        requestActivity.f1892af = (ActionFactory) obj;
    }

    public static void injectHeadlessComponentListener(RequestActivity requestActivity, Object obj) {
        requestActivity.headlessComponentListener = (HeadlessComponentListener) obj;
    }

    public static void injectPicasso(RequestActivity requestActivity, Picasso picasso) {
        requestActivity.picasso = picasso;
    }

    public static void injectStore(RequestActivity requestActivity, Store store) {
        requestActivity.store = store;
    }

    public void injectMembers(RequestActivity requestActivity) {
        injectStore(requestActivity, this.storeProvider.get());
        injectAf(requestActivity, this.afProvider.get());
        injectHeadlessComponentListener(requestActivity, this.headlessComponentListenerProvider.get());
        injectPicasso(requestActivity, this.picassoProvider.get());
        injectActionHandlerRegistry(requestActivity, this.actionHandlerRegistryProvider.get());
    }
}
