package zendesk.support;

import dagger.MembersInjector;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/DeepLinkingBroadcastReceiver_MembersInjector.class */
public final class DeepLinkingBroadcastReceiver_MembersInjector implements MembersInjector<DeepLinkingBroadcastReceiver> {
    private final Provider<ZendeskDeepLinkHelper> deepLinkHelperProvider;

    public DeepLinkingBroadcastReceiver_MembersInjector(Provider<ZendeskDeepLinkHelper> provider) {
        this.deepLinkHelperProvider = provider;
    }

    public static MembersInjector<DeepLinkingBroadcastReceiver> create(Provider<ZendeskDeepLinkHelper> provider) {
        return new DeepLinkingBroadcastReceiver_MembersInjector(provider);
    }

    public static void injectDeepLinkHelper(DeepLinkingBroadcastReceiver deepLinkingBroadcastReceiver, ZendeskDeepLinkHelper zendeskDeepLinkHelper) {
        deepLinkingBroadcastReceiver.deepLinkHelper = zendeskDeepLinkHelper;
    }

    public void injectMembers(DeepLinkingBroadcastReceiver deepLinkingBroadcastReceiver) {
        injectDeepLinkHelper(deepLinkingBroadcastReceiver, this.deepLinkHelperProvider.get());
    }
}
