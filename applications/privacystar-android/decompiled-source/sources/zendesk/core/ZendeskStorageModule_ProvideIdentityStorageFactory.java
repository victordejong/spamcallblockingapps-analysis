package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityStorageFactory.class */
public final class ZendeskStorageModule_ProvideIdentityStorageFactory implements Factory<IdentityStorage> {
    private final Provider<BaseStorage> baseStorageProvider;

    public ZendeskStorageModule_ProvideIdentityStorageFactory(Provider<BaseStorage> provider) {
        this.baseStorageProvider = provider;
    }

    public static Factory<IdentityStorage> create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvideIdentityStorageFactory(provider);
    }

    public static IdentityStorage proxyProvideIdentityStorage(BaseStorage baseStorage) {
        return ZendeskStorageModule.provideIdentityStorage(baseStorage);
    }

    @Override // javax.inject.Provider
    public IdentityStorage get() {
        return (IdentityStorage) Preconditions.checkNotNull(ZendeskStorageModule.provideIdentityStorage(this.baseStorageProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
