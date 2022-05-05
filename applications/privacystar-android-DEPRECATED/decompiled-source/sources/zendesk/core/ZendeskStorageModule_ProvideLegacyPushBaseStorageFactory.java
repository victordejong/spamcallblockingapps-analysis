package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory implements Factory<SharedPreferencesStorage> {
    private final Provider<Context> contextProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static Factory<SharedPreferencesStorage> create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideLegacyPushBaseStorageFactory(provider, provider2);
    }

    public static SharedPreferencesStorage proxyProvideLegacyPushBaseStorage(Context context, Object obj) {
        return ZendeskStorageModule.provideLegacyPushBaseStorage(context, (Serializer) obj);
    }

    @Override // javax.inject.Provider
    public SharedPreferencesStorage get() {
        return (SharedPreferencesStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideLegacyPushBaseStorage(this.contextProvider.get(), this.serializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
