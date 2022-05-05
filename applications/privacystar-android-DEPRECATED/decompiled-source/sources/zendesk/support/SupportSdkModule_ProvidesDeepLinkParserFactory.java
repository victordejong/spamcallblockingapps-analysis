package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import javax.inject.Provider;
import zendesk.support.ZendeskDeepLinkParser;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesDeepLinkParserFactory.class */
public final class SupportSdkModule_ProvidesDeepLinkParserFactory implements Factory<ZendeskDeepLinkParser> {
    private final SupportSdkModule module;
    private final Provider<List<ZendeskDeepLinkParser.Module>> parserModulesProvider;
    private final Provider<String> zendeskUrlProvider;

    public SupportSdkModule_ProvidesDeepLinkParserFactory(SupportSdkModule supportSdkModule, Provider<String> provider, Provider<List<ZendeskDeepLinkParser.Module>> provider2) {
        this.module = supportSdkModule;
        this.zendeskUrlProvider = provider;
        this.parserModulesProvider = provider2;
    }

    public static Factory<ZendeskDeepLinkParser> create(SupportSdkModule supportSdkModule, Provider<String> provider, Provider<List<ZendeskDeepLinkParser.Module>> provider2) {
        return new SupportSdkModule_ProvidesDeepLinkParserFactory(supportSdkModule, provider, provider2);
    }

    public static ZendeskDeepLinkParser proxyProvidesDeepLinkParser(SupportSdkModule supportSdkModule, String str, List<ZendeskDeepLinkParser.Module> list) {
        return supportSdkModule.providesDeepLinkParser(str, list);
    }

    @Override // javax.inject.Provider
    public ZendeskDeepLinkParser get() {
        return (ZendeskDeepLinkParser) Preconditions.checkNotNull(this.module.providesDeepLinkParser(this.zendeskUrlProvider.get(), this.parserModulesProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
