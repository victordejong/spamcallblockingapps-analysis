package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory.class */
public final class ZendeskStorageModule_ProvideCoreSettingsStorageFactory implements Factory<CoreSettingsStorage> {
    private final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskStorageModule_ProvideCoreSettingsStorageFactory(Provider<SettingsStorage> provider) {
        this.settingsStorageProvider = provider;
    }

    public static Factory<CoreSettingsStorage> create(Provider<SettingsStorage> provider) {
        return new ZendeskStorageModule_ProvideCoreSettingsStorageFactory(provider);
    }

    public static CoreSettingsStorage proxyProvideCoreSettingsStorage(Object obj) {
        return ZendeskStorageModule.provideCoreSettingsStorage((SettingsStorage) obj);
    }

    @Override // javax.inject.Provider
    public CoreSettingsStorage get() {
        return (CoreSettingsStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideCoreSettingsStorage(this.settingsStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
