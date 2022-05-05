package zendesk.core;

import java.io.File;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory.class */
public final class ZendeskStorageModule_ProvidesDiskLruStorageFactory implements AbstractC10866b<BaseStorage> {
    public final Provider<File> fileProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvidesDiskLruStorageFactory(Provider<File> provider, Provider<Serializer> provider2) {
        this.fileProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvidesDiskLruStorageFactory create(Provider<File> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvidesDiskLruStorageFactory(provider, provider2);
    }

    public static BaseStorage providesDiskLruStorage(File file, Object obj) {
        BaseStorage providesDiskLruStorage = ZendeskStorageModule.providesDiskLruStorage(file, (Serializer) obj);
        C10867c.m10383a(providesDiskLruStorage, "Cannot return null from a non-@Nullable @Provides method");
        return providesDiskLruStorage;
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return providesDiskLruStorage(this.fileProvider.get(), this.serializerProvider.get());
    }
}
