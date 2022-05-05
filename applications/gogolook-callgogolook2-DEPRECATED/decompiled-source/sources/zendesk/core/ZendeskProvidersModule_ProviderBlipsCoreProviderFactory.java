package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderBlipsCoreProviderFactory.class */
public final class ZendeskProvidersModule_ProviderBlipsCoreProviderFactory implements AbstractC10866b<BlipsCoreProvider> {
    public final Provider<ZendeskBlipsProvider> zendeskBlipsProvider;

    public ZendeskProvidersModule_ProviderBlipsCoreProviderFactory(Provider<ZendeskBlipsProvider> provider) {
        this.zendeskBlipsProvider = provider;
    }

    public static ZendeskProvidersModule_ProviderBlipsCoreProviderFactory create(Provider<ZendeskBlipsProvider> provider) {
        return new ZendeskProvidersModule_ProviderBlipsCoreProviderFactory(provider);
    }

    public static BlipsCoreProvider providerBlipsCoreProvider(Object obj) {
        ZendeskBlipsProvider zendeskBlipsProvider = (ZendeskBlipsProvider) obj;
        ZendeskProvidersModule.providerBlipsCoreProvider(zendeskBlipsProvider);
        C10867c.m10383a(zendeskBlipsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return zendeskBlipsProvider;
    }

    @Override // javax.inject.Provider
    public BlipsCoreProvider get() {
        return providerBlipsCoreProvider(this.zendeskBlipsProvider.get());
    }
}
