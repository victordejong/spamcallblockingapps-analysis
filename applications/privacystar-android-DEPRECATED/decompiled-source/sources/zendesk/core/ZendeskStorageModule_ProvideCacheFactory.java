package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.io.File;
import javax.inject.Provider;
import okhttp3.Cache;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideCacheFactory.class */
public final class ZendeskStorageModule_ProvideCacheFactory implements Factory<Cache> {
    private final Provider<File> fileProvider;

    public ZendeskStorageModule_ProvideCacheFactory(Provider<File> provider) {
        this.fileProvider = provider;
    }

    public static Factory<Cache> create(Provider<File> provider) {
        return new ZendeskStorageModule_ProvideCacheFactory(provider);
    }

    public static Cache proxyProvideCache(File file) {
        return ZendeskStorageModule.provideCache(file);
    }

    @Override // javax.inject.Provider
    public Cache get() {
        return (Cache) Preconditions.checkNotNull(ZendeskStorageModule.provideCache(this.fileProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
