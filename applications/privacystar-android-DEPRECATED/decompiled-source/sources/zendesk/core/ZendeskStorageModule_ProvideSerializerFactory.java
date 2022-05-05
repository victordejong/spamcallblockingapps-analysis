package zendesk.core;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSerializerFactory.class */
public final class ZendeskStorageModule_ProvideSerializerFactory implements Factory<Serializer> {
    private final Provider<Gson> gsonProvider;

    public ZendeskStorageModule_ProvideSerializerFactory(Provider<Gson> provider) {
        this.gsonProvider = provider;
    }

    public static Factory<Serializer> create(Provider<Gson> provider) {
        return new ZendeskStorageModule_ProvideSerializerFactory(provider);
    }

    public static Serializer proxyProvideSerializer(Gson gson) {
        return ZendeskStorageModule.provideSerializer(gson);
    }

    @Override // javax.inject.Provider
    public Serializer get() {
        return (Serializer) Preconditions.checkNotNull(ZendeskStorageModule.provideSerializer(this.gsonProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
