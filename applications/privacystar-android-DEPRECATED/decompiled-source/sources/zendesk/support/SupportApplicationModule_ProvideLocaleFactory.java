package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvideLocaleFactory.class */
public final class SupportApplicationModule_ProvideLocaleFactory implements Factory<Locale> {
    private final SupportApplicationModule module;

    public SupportApplicationModule_ProvideLocaleFactory(SupportApplicationModule supportApplicationModule) {
        this.module = supportApplicationModule;
    }

    public static Factory<Locale> create(SupportApplicationModule supportApplicationModule) {
        return new SupportApplicationModule_ProvideLocaleFactory(supportApplicationModule);
    }

    public static Locale proxyProvideLocale(SupportApplicationModule supportApplicationModule) {
        return supportApplicationModule.provideLocale();
    }

    @Override // javax.inject.Provider
    public Locale get() {
        return (Locale) Preconditions.checkNotNull(this.module.provideLocale(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
