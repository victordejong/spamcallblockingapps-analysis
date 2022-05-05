package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideBase64SerializerFactory.class */
public final class ZendeskApplicationModule_ProvideBase64SerializerFactory implements AbstractC10866b<Serializer> {
    public final Provider<Serializer> gsonSerializerProvider;
    public final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideBase64SerializerFactory(ZendeskApplicationModule zendeskApplicationModule, Provider<Serializer> provider) {
        this.module = zendeskApplicationModule;
        this.gsonSerializerProvider = provider;
    }

    public static ZendeskApplicationModule_ProvideBase64SerializerFactory create(ZendeskApplicationModule zendeskApplicationModule, Provider<Serializer> provider) {
        return new ZendeskApplicationModule_ProvideBase64SerializerFactory(zendeskApplicationModule, provider);
    }

    public static Serializer provideBase64Serializer(ZendeskApplicationModule zendeskApplicationModule, Object obj) {
        Serializer provideBase64Serializer = zendeskApplicationModule.provideBase64Serializer((Serializer) obj);
        C10867c.m10383a(provideBase64Serializer, "Cannot return null from a non-@Nullable @Provides method");
        return provideBase64Serializer;
    }

    @Override // javax.inject.Provider
    public Serializer get() {
        return provideBase64Serializer(this.module, this.gsonSerializerProvider.get());
    }
}
