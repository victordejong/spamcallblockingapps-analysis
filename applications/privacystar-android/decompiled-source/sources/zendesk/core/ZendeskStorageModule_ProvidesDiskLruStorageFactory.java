package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidesDiskLruStorageFactory.class */
public final class ZendeskStorageModule_ProvidesDiskLruStorageFactory implements Factory<BaseStorage> {
    private final Provider<File> fileProvider;
    private final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvidesDiskLruStorageFactory(Provider<File> provider, Provider<Serializer> provider2) {
        this.fileProvider = provider;
        this.serializerProvider = provider2;
    }

    public static Factory<BaseStorage> create(Provider<File> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvidesDiskLruStorageFactory(provider, provider2);
    }

    public static BaseStorage proxyProvidesDiskLruStorage(File file, Object obj) {
        return ZendeskStorageModule.providesDiskLruStorage(file, (Serializer) obj);
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return (BaseStorage) Preconditions.checkNotNull(ZendeskStorageModule.providesDiskLruStorage(this.fileProvider.get(), this.serializerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
