package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSettingsBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideSettingsBaseStorageFactory implements AbstractC10866b<BaseStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideSettingsBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideSettingsBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideSettingsBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage provideSettingsBaseStorage(Context context, Object obj) {
        BaseStorage provideSettingsBaseStorage = ZendeskStorageModule.provideSettingsBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideSettingsBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideSettingsBaseStorage;
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return provideSettingsBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
