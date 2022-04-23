package zendesk.core;

import java.io.File;
import javax.inject.Provider;
import okhttp3.Cache;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSessionStorageFactory.class */
public final class ZendeskStorageModule_ProvideSessionStorageFactory implements AbstractC10866b<SessionStorage> {
    public final Provider<BaseStorage> additionalSdkStorageProvider;
    public final Provider<File> belvedereDirProvider;
    public final Provider<File> cacheDirProvider;
    public final Provider<Cache> cacheProvider;
    public final Provider<File> dataDirProvider;
    public final Provider<IdentityStorage> identityStorageProvider;
    public final Provider<BaseStorage> mediaCacheProvider;

    public ZendeskStorageModule_ProvideSessionStorageFactory(Provider<IdentityStorage> provider, Provider<BaseStorage> provider2, Provider<BaseStorage> provider3, Provider<Cache> provider4, Provider<File> provider5, Provider<File> provider6, Provider<File> provider7) {
        this.identityStorageProvider = provider;
        this.additionalSdkStorageProvider = provider2;
        this.mediaCacheProvider = provider3;
        this.cacheProvider = provider4;
        this.cacheDirProvider = provider5;
        this.dataDirProvider = provider6;
        this.belvedereDirProvider = provider7;
    }

    public static ZendeskStorageModule_ProvideSessionStorageFactory create(Provider<IdentityStorage> provider, Provider<BaseStorage> provider2, Provider<BaseStorage> provider3, Provider<Cache> provider4, Provider<File> provider5, Provider<File> provider6, Provider<File> provider7) {
        return new ZendeskStorageModule_ProvideSessionStorageFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static SessionStorage provideSessionStorage(Object obj, BaseStorage baseStorage, BaseStorage baseStorage2, Cache cache, File file, File file2, File file3) {
        SessionStorage provideSessionStorage = ZendeskStorageModule.provideSessionStorage((IdentityStorage) obj, baseStorage, baseStorage2, cache, file, file2, file3);
        C10867c.m10383a(provideSessionStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideSessionStorage;
    }

    @Override // javax.inject.Provider
    public SessionStorage get() {
        return provideSessionStorage(this.identityStorageProvider.get(), this.additionalSdkStorageProvider.get(), this.mediaCacheProvider.get(), this.cacheProvider.get(), this.cacheDirProvider.get(), this.dataDirProvider.get(), this.belvedereDirProvider.get());
    }
}
