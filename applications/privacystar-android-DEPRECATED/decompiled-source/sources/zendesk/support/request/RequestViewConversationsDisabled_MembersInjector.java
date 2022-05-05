package zendesk.support.request;

import com.squareup.picasso.Picasso;
import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.suas.Store;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/RequestViewConversationsDisabled_MembersInjector.class */
public final class RequestViewConversationsDisabled_MembersInjector implements MembersInjector<RequestViewConversationsDisabled> {
    private final Provider<ActionFactory> afProvider;
    private final Provider<Picasso> picassoProvider;
    private final Provider<Store> storeProvider;

    public RequestViewConversationsDisabled_MembersInjector(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<Picasso> provider3) {
        this.storeProvider = provider;
        this.afProvider = provider2;
        this.picassoProvider = provider3;
    }

    public static MembersInjector<RequestViewConversationsDisabled> create(Provider<Store> provider, Provider<ActionFactory> provider2, Provider<Picasso> provider3) {
        return new RequestViewConversationsDisabled_MembersInjector(provider, provider2, provider3);
    }

    public static void injectAf(RequestViewConversationsDisabled requestViewConversationsDisabled, Object obj) {
        requestViewConversationsDisabled.f1893af = (ActionFactory) obj;
    }

    public static void injectPicasso(RequestViewConversationsDisabled requestViewConversationsDisabled, Picasso picasso) {
        requestViewConversationsDisabled.picasso = picasso;
    }

    public static void injectStore(RequestViewConversationsDisabled requestViewConversationsDisabled, Store store) {
        requestViewConversationsDisabled.store = store;
    }

    public void injectMembers(RequestViewConversationsDisabled requestViewConversationsDisabled) {
        injectStore(requestViewConversationsDisabled, this.storeProvider.get());
        injectAf(requestViewConversationsDisabled, this.afProvider.get());
        injectPicasso(requestViewConversationsDisabled, this.picassoProvider.get());
    }
}
