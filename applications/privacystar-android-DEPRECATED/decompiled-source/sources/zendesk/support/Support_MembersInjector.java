package zendesk.support;

import dagger.MembersInjector;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
import zendesk.core.AuthenticationProvider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/Support_MembersInjector.class */
public final class Support_MembersInjector implements MembersInjector<Support> {
    private final Provider<ActionHandlerRegistry> actionHandlerRegistryProvider;
    private final Provider<AuthenticationProvider> authenticationProvider;
    private final Provider<SupportBlipsProvider> blipsProvider;
    private final Provider<ProviderStore> providerStoreProvider;
    private final Provider<RequestMigrator> requestMigratorProvider;
    private final Provider<RequestProvider> requestProvider;
    private final Provider<SupportModule> supportModuleProvider;

    public Support_MembersInjector(Provider<ProviderStore> provider, Provider<SupportModule> provider2, Provider<RequestMigrator> provider3, Provider<SupportBlipsProvider> provider4, Provider<ActionHandlerRegistry> provider5, Provider<RequestProvider> provider6, Provider<AuthenticationProvider> provider7) {
        this.providerStoreProvider = provider;
        this.supportModuleProvider = provider2;
        this.requestMigratorProvider = provider3;
        this.blipsProvider = provider4;
        this.actionHandlerRegistryProvider = provider5;
        this.requestProvider = provider6;
        this.authenticationProvider = provider7;
    }

    public static MembersInjector<Support> create(Provider<ProviderStore> provider, Provider<SupportModule> provider2, Provider<RequestMigrator> provider3, Provider<SupportBlipsProvider> provider4, Provider<ActionHandlerRegistry> provider5, Provider<RequestProvider> provider6, Provider<AuthenticationProvider> provider7) {
        return new Support_MembersInjector(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static void injectActionHandlerRegistry(Support support, ActionHandlerRegistry actionHandlerRegistry) {
        support.actionHandlerRegistry = actionHandlerRegistry;
    }

    public static void injectAuthenticationProvider(Support support, AuthenticationProvider authenticationProvider) {
        support.authenticationProvider = authenticationProvider;
    }

    public static void injectBlipsProvider(Support support, SupportBlipsProvider supportBlipsProvider) {
        support.blipsProvider = supportBlipsProvider;
    }

    public static void injectProviderStore(Support support, ProviderStore providerStore) {
        support.providerStore = providerStore;
    }

    public static void injectRequestMigrator(Support support, Object obj) {
        support.requestMigrator = (RequestMigrator) obj;
    }

    public static void injectRequestProvider(Support support, RequestProvider requestProvider) {
        support.requestProvider = requestProvider;
    }

    public static void injectSupportModule(Support support, SupportModule supportModule) {
        support.supportModule = supportModule;
    }

    public void injectMembers(Support support) {
        injectProviderStore(support, this.providerStoreProvider.get());
        injectSupportModule(support, this.supportModuleProvider.get());
        injectRequestMigrator(support, this.requestMigratorProvider.get());
        injectBlipsProvider(support, this.blipsProvider.get());
        injectActionHandlerRegistry(support, this.actionHandlerRegistryProvider.get());
        injectRequestProvider(support, this.requestProvider.get());
        injectAuthenticationProvider(support, this.authenticationProvider.get());
    }
}
