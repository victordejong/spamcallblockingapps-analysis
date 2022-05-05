package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import zendesk.support.ZendeskDeepLinkParser;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesParserModuleFactory.class */
public final class SupportSdkModule_ProvidesParserModuleFactory implements Factory<List<ZendeskDeepLinkParser.Module>> {
    private final SupportSdkModule module;

    public SupportSdkModule_ProvidesParserModuleFactory(SupportSdkModule supportSdkModule) {
        this.module = supportSdkModule;
    }

    public static Factory<List<ZendeskDeepLinkParser.Module>> create(SupportSdkModule supportSdkModule) {
        return new SupportSdkModule_ProvidesParserModuleFactory(supportSdkModule);
    }

    public static List<ZendeskDeepLinkParser.Module> proxyProvidesParserModule(SupportSdkModule supportSdkModule) {
        return supportSdkModule.providesParserModule();
    }

    @Override // javax.inject.Provider
    public List<ZendeskDeepLinkParser.Module> get() {
        return (List) Preconditions.checkNotNull(this.module.providesParserModule(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
