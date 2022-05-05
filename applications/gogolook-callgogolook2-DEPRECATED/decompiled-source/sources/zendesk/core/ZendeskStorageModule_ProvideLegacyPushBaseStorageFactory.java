package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory implements AbstractC10866b<SharedPreferencesStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory(provider, provider2);
    }

    public static SharedPreferencesStorage provideLegacyPushBaseStorage(Context context, Object obj) {
        SharedPreferencesStorage provideLegacyPushBaseStorage = ZendeskStorageModule.provideLegacyPushBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideLegacyPushBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideLegacyPushBaseStorage;
    }

    @Override // javax.inject.Provider
    public SharedPreferencesStorage get() {
        return provideLegacyPushBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
