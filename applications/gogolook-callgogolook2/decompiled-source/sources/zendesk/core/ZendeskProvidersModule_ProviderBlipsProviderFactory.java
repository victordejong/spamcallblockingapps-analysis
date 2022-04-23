package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderBlipsProviderFactory.class */
public final class ZendeskProvidersModule_ProviderBlipsProviderFactory implements AbstractC10866b<BlipsProvider> {
    public final Provider<ZendeskBlipsProvider> zendeskBlipsProvider;

    public ZendeskProvidersModule_ProviderBlipsProviderFactory(Provider<ZendeskBlipsProvider> provider) {
        this.zendeskBlipsProvider = provider;
    }

    public static ZendeskProvidersModule_ProviderBlipsProviderFactory create(Provider<ZendeskBlipsProvider> provider) {
        return new ZendeskProvidersModule_ProviderBlipsProviderFactory(provider);
    }

    public static BlipsProvider providerBlipsProvider(Object obj) {
        ZendeskBlipsProvider zendeskBlipsProvider = (ZendeskBlipsProvider) obj;
        ZendeskProvidersModule.providerBlipsProvider(zendeskBlipsProvider);
        C10867c.m10383a(zendeskBlipsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return zendeskBlipsProvider;
    }

    @Override // javax.inject.Provider
    public BlipsProvider get() {
        return providerBlipsProvider(this.zendeskBlipsProvider.get());
    }
}
