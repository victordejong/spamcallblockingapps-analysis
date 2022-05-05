package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import zendesk.core.ActionHandlerRegistry;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesDeepLinkHelperFactory.class */
public final class SupportSdkModule_ProvidesDeepLinkHelperFactory implements Factory<ZendeskDeepLinkHelper> {
    private final SupportSdkModule module;
    private final Provider<ZendeskDeepLinkParser> parserProvider;
    private final Provider<ActionHandlerRegistry> registryProvider;

    public SupportSdkModule_ProvidesDeepLinkHelperFactory(SupportSdkModule supportSdkModule, Provider<ActionHandlerRegistry> provider, Provider<ZendeskDeepLinkParser> provider2) {
        this.module = supportSdkModule;
        this.registryProvider = provider;
        this.parserProvider = provider2;
    }

    public static Factory<ZendeskDeepLinkHelper> create(SupportSdkModule supportSdkModule, Provider<ActionHandlerRegistry> provider, Provider<ZendeskDeepLinkParser> provider2) {
        return new SupportSdkModule_ProvidesDeepLinkHelperFactory(supportSdkModule, provider, provider2);
    }

    public static ZendeskDeepLinkHelper proxyProvidesDeepLinkHelper(SupportSdkModule supportSdkModule, ActionHandlerRegistry actionHandlerRegistry, Object obj) {
        return supportSdkModule.providesDeepLinkHelper(actionHandlerRegistry, (ZendeskDeepLinkParser) obj);
    }

    @Override // javax.inject.Provider
    public ZendeskDeepLinkHelper get() {
        return (ZendeskDeepLinkHelper) Preconditions.checkNotNull(this.module.providesDeepLinkHelper(this.registryProvider.get(), this.parserProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
