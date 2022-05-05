package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory implements AbstractC10866b<SharedPreferencesStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideLegacyIdentityBaseStorageFactory(provider, provider2);
    }

    public static SharedPreferencesStorage provideLegacyIdentityBaseStorage(Context context, Object obj) {
        SharedPreferencesStorage provideLegacyIdentityBaseStorage = ZendeskStorageModule.provideLegacyIdentityBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideLegacyIdentityBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideLegacyIdentityBaseStorage;
    }

    @Override // javax.inject.Provider
    public SharedPreferencesStorage get() {
        return provideLegacyIdentityBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
