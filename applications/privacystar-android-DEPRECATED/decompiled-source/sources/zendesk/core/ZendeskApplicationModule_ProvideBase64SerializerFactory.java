package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory.class */
public final class ZendeskApplicationModule_ProvideBase64SerializerFactory implements Factory<Serializer> {
    private final Provider<Serializer> gsonSerializerProvider;
    private final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideBase64SerializerFactory(ZendeskApplicationModule zendeskApplicationModule, Provider<Serializer> provider) {
        this.module = zendeskApplicationModule;
        this.gsonSerializerProvider = provider;
    }

    public static Factory<Serializer> create(ZendeskApplicationModule zendeskApplicationModule, Provider<Serializer> provider) {
        return new ZendeskApplicationModule_ProvideBase64SerializerFactory(zendeskApplicationModule, provider);
    }

    public static Serializer proxyProvideBase64Serializer(ZendeskApplicationModule zendeskApplicationModule, Object obj) {
        return zendeskApplicationModule.provideBase64Serializer((Serializer) obj);
    }

    @Override // javax.inject.Provider
    public Serializer get() {
        return (Serializer) Preconditions.checkNotNull(this.module.provideBase64Serializer(this.gsonSerializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
