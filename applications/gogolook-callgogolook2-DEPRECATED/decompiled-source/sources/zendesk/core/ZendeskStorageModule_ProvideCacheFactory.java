package zendesk.core;

import java.io.File;
import javax.inject.Provider;
import okhttp3.Cache;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideCacheFactory.class */
public final class ZendeskStorageModule_ProvideCacheFactory implements AbstractC10866b<Cache> {
    public final Provider<File> fileProvider;

    public ZendeskStorageModule_ProvideCacheFactory(Provider<File> provider) {
        this.fileProvider = provider;
    }

    public static ZendeskStorageModule_ProvideCacheFactory create(Provider<File> provider) {
        return new ZendeskStorageModule_ProvideCacheFactory(provider);
    }

    public static Cache provideCache(File file) {
        Cache provideCache = ZendeskStorageModule.provideCache(file);
        C10867c.m10383a(provideCache, "Cannot return null from a non-@Nullable @Provides method");
        return provideCache;
    }

    @Override // javax.inject.Provider
    public Cache get() {
        return provideCache(this.fileProvider.get());
    }
}
