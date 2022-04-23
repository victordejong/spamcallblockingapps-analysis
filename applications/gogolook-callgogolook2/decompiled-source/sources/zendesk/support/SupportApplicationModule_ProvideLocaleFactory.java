package zendesk.support;

import java.util.Locale;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvideLocaleFactory.class */
public final class SupportApplicationModule_ProvideLocaleFactory implements AbstractC10866b<Locale> {
    public final SupportApplicationModule module;

    public SupportApplicationModule_ProvideLocaleFactory(SupportApplicationModule supportApplicationModule) {
        this.module = supportApplicationModule;
    }

    public static SupportApplicationModule_ProvideLocaleFactory create(SupportApplicationModule supportApplicationModule) {
        return new SupportApplicationModule_ProvideLocaleFactory(supportApplicationModule);
    }

    public static Locale provideLocale(SupportApplicationModule supportApplicationModule) {
        Locale provideLocale = supportApplicationModule.provideLocale();
        C10867c.m10383a(provideLocale, "Cannot return null from a non-@Nullable @Provides method");
        return provideLocale;
    }

    @Override // javax.inject.Provider
    public Locale get() {
        return provideLocale(this.module);
    }
}
