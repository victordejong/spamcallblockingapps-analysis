package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderFactory.class */
public final class ZendeskProvidersModule_ProvidePushRegistrationProviderFactory implements Factory<PushRegistrationProvider> {
    private final Provider<BlipsCoreProvider> blipsProvider;
    private final Provider<Context> contextProvider;
    private final Provider<IdentityManager> identityManagerProvider;
    private final Provider<PushDeviceIdStorage> pushDeviceIdStorageProvider;
    private final Provider<PushRegistrationService> pushRegistrationServiceProvider;
    private final Provider<SettingsProvider> settingsProvider;

    public ZendeskProvidersModule_ProvidePushRegistrationProviderFactory(Provider<PushRegistrationService> provider, Provider<IdentityManager> provider2, Provider<SettingsProvider> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushDeviceIdStorage> provider5, Provider<Context> provider6) {
        this.pushRegistrationServiceProvider = provider;
        this.identityManagerProvider = provider2;
        this.settingsProvider = provider3;
        this.blipsProvider = provider4;
        this.pushDeviceIdStorageProvider = provider5;
        this.contextProvider = provider6;
    }

    public static Factory<PushRegistrationProvider> create(Provider<PushRegistrationService> provider, Provider<IdentityManager> provider2, Provider<SettingsProvider> provider3, Provider<BlipsCoreProvider> provider4, Provider<PushDeviceIdStorage> provider5, Provider<Context> provider6) {
        return new ZendeskProvidersModule_ProvidePushRegistrationProviderFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static PushRegistrationProvider proxyProvidePushRegistrationProvider(Object obj, Object obj2, SettingsProvider settingsProvider, Object obj3, Object obj4, Context context) {
        return ZendeskProvidersModule.providePushRegistrationProvider((PushRegistrationService) obj, (IdentityManager) obj2, settingsProvider, (BlipsCoreProvider) obj3, (PushDeviceIdStorage) obj4, context);
    }

    @Override // javax.inject.Provider
    public PushRegistrationProvider get() {
        return (PushRegistrationProvider) Preconditions.checkNotNull(ZendeskProvidersModule.providePushRegistrationProvider(this.pushRegistrationServiceProvider.get(), this.identityManagerProvider.get(), this.settingsProvider.get(), this.blipsProvider.get(), this.pushDeviceIdStorageProvider.get(), this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
