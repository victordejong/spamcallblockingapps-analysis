package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory.class */
public final class ZendeskProvidersModule_ProvidePushRegistrationProviderFactory implements AbstractC10866b<PushRegistrationProvider> {
    public final Provider<BlipsCoreProvider> blipsProvider;
    public final Provider<Context> contextProvider;
    public final Provider<IdentityManager> identityManagerProvider;
    public final Provider<PushDeviceIdStorage> pushDeviceIdStorageProvider;
    public final Provider<PushRegistrationService> pushRegistrationServiceProvider;
    public final Provider<SettingsProvider> settingsProvider;

    public ZendeskProvidersModule_ProvidePushRegistrationProviderFactory(Provider<PushRegistrationService> provider, Provider<IdentityManager> provider2, Provider<SettingsProvider> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushDeviceIdStorage> provider5, Provider<Context> provider6) {
        this.pushRegistrationServiceProvider = provider;
        this.identityManagerProvider = provider2;
        this.settingsProvider = provider3;
        this.blipsProvider = provider4;
        this.pushDeviceIdStorageProvider = provider5;
        this.contextProvider = provider6;
    }

    public static ZendeskProvidersModule_ProvidePushRegistrationProviderFactory create(Provider<PushRegistrationService> provider, Provider<IdentityManager> provider2, Provider<SettingsProvider> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushDeviceIdStorage> provider5, Provider<Context> provider6) {
        return new ZendeskProvidersModule_ProvidePushRegistrationProviderFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static PushRegistrationProvider providePushRegistrationProvider(Object obj, Object obj2, SettingsProvider settingsProvider, Object obj3, Object obj4, Context context) {
        PushRegistrationProvider providePushRegistrationProvider = ZendeskProvidersModule.providePushRegistrationProvider((PushRegistrationService) obj, (IdentityManager) obj2, settingsProvider, (BlipsCoreProvider) obj3, (PushDeviceIdStorage) obj4, context);
        C10867c.m10383a(providePushRegistrationProvider, "Cannot return null from a non-@Nullable @Provides method");
        return providePushRegistrationProvider;
    }

    @Override // javax.inject.Provider
    public PushRegistrationProvider get() {
        return providePushRegistrationProvider(this.pushRegistrationServiceProvider.get(), this.identityManagerProvider.get(), this.settingsProvider.get(), this.blipsProvider.get(), this.pushDeviceIdStorageProvider.get(), this.contextProvider.get());
    }
}
