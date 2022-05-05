package zendesk.support;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
import zendesk.core.ZendeskLocaleConverter;
/* loaded from: classes3-dex2jar.jar:zendesk/support/ProviderModule_ProvideZendeskLocaleConverterFactory.class */
public final class ProviderModule_ProvideZendeskLocaleConverterFactory implements AbstractC10866b<ZendeskLocaleConverter> {
    public final ProviderModule module;

    public ProviderModule_ProvideZendeskLocaleConverterFactory(ProviderModule providerModule) {
        this.module = providerModule;
    }

    public static ProviderModule_ProvideZendeskLocaleConverterFactory create(ProviderModule providerModule) {
        return new ProviderModule_ProvideZendeskLocaleConverterFactory(providerModule);
    }

    public static ZendeskLocaleConverter provideZendeskLocaleConverter(ProviderModule providerModule) {
        ZendeskLocaleConverter provideZendeskLocaleConverter = providerModule.provideZendeskLocaleConverter();
        C10867c.m10383a(provideZendeskLocaleConverter, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskLocaleConverter;
    }

    @Override // javax.inject.Provider
    public ZendeskLocaleConverter get() {
        return provideZendeskLocaleConverter(this.module);
    }
}
