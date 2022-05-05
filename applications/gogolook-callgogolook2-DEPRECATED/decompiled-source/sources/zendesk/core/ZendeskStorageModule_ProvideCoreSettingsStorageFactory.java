package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideCoreSettingsStorageFactory.class */
public final class ZendeskStorageModule_ProvideCoreSettingsStorageFactory implements AbstractC10866b<CoreSettingsStorage> {
    public final Provider<SettingsStorage> settingsStorageProvider;

    public ZendeskStorageModule_ProvideCoreSettingsStorageFactory(Provider<SettingsStorage> provider) {
        this.settingsStorageProvider = provider;
    }

    public static ZendeskStorageModule_ProvideCoreSettingsStorageFactory create(Provider<SettingsStorage> provider) {
        return new ZendeskStorageModule_ProvideCoreSettingsStorageFactory(provider);
    }

    public static CoreSettingsStorage provideCoreSettingsStorage(Object obj) {
        CoreSettingsStorage provideCoreSettingsStorage = ZendeskStorageModule.provideCoreSettingsStorage((SettingsStorage) obj);
        C10867c.m10383a(provideCoreSettingsStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideCoreSettingsStorage;
    }

    @Override // javax.inject.Provider
    public CoreSettingsStorage get() {
        return provideCoreSettingsStorage(this.settingsStorageProvider.get());
    }
}
