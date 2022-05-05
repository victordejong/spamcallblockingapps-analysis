package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
import okhttp3.Cache;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory.class */
public final class ZendeskStorageModule_ProvideSessionStorageFactory implements Factory<SessionStorage> {
    private final Provider<BaseStorage> additionalSdkStorageProvider;
    private final Provider<File> belvedereDirProvider;
    private final Provider<File> cacheDirProvider;
    private final Provider<Cache> cacheProvider;
    private final Provider<File> dataDirProvider;
    private final Provider<IdentityStorage> identityStorageProvider;
    private final Provider<BaseStorage> mediaCacheProvider;

    public ZendeskStorageModule_ProvideSessionStorageFactory(Provider<IdentityStorage> provider, Provider<BaseStorage> provider2, Provider<BaseStorage> provider3, Provider<Cache> provider4, Provider<File> provider5, Provider<File> provider6, Provider<File> provider7) {
        this.identityStorageProvider = provider;
        this.additionalSdkStorageProvider = provider2;
        this.mediaCacheProvider = provider3;
        this.cacheProvider = provider4;
        this.cacheDirProvider = provider5;
        this.dataDirProvider = provider6;
        this.belvedereDirProvider = provider7;
    }

    public static Factory<SessionStorage> create(Provider<IdentityStorage> provider, Provider<BaseStorage> provider2, Provider<BaseStorage> provider3, Provider<Cache> provider4, Provider<File> provider5, Provider<File> provider6, Provider<File> provider7) {
        return new ZendeskStorageModule_ProvideSessionStorageFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static SessionStorage proxyProvideSessionStorage(Object obj, BaseStorage baseStorage, BaseStorage baseStorage2, Cache cache, File file, File file2, File file3) {
        return ZendeskStorageModule.provideSessionStorage((IdentityStorage) obj, baseStorage, baseStorage2, cache, file, file2, file3);
    }

    @Override // javax.inject.Provider
    public SessionStorage get() {
        return (SessionStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideSessionStorage(this.identityStorageProvider.get(), this.additionalSdkStorageProvider.get(), this.mediaCacheProvider.get(), this.cacheProvider.get(), this.cacheDirProvider.get(), this.dataDirProvider.get(), this.belvedereDirProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
