package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory.class */
public final class ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory implements AbstractC10866b<ZendeskLocaleConverter> {
    public final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory(ZendeskApplicationModule zendeskApplicationModule) {
        this.module = zendeskApplicationModule;
    }

    public static ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory create(ZendeskApplicationModule zendeskApplicationModule) {
        return new ZendeskApplicationModule_ProvideZendeskLocaleConverterFactory(zendeskApplicationModule);
    }

    public static ZendeskLocaleConverter provideZendeskLocaleConverter(ZendeskApplicationModule zendeskApplicationModule) {
        ZendeskLocaleConverter provideZendeskLocaleConverter = zendeskApplicationModule.provideZendeskLocaleConverter();
        C10867c.m10383a(provideZendeskLocaleConverter, "Cannot return null from a non-@Nullable @Provides method");
        return provideZendeskLocaleConverter;
    }

    @Override // javax.inject.Provider
    public ZendeskLocaleConverter get() {
        return provideZendeskLocaleConverter(this.module);
    }
}
