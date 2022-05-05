package zendesk.support;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestMigratorFactory.class */
public final class StorageModule_ProvideRequestMigratorFactory implements Factory<RequestMigrator> {
    private final Provider<Context> contextProvider;
    private final StorageModule module;

    public StorageModule_ProvideRequestMigratorFactory(StorageModule storageModule, Provider<Context> provider) {
        this.module = storageModule;
        this.contextProvider = provider;
    }

    public static Factory<RequestMigrator> create(StorageModule storageModule, Provider<Context> provider) {
        return new StorageModule_ProvideRequestMigratorFactory(storageModule, provider);
    }

    public static RequestMigrator proxyProvideRequestMigrator(StorageModule storageModule, Context context) {
        return storageModule.provideRequestMigrator(context);
    }

    @Override // javax.inject.Provider
    public RequestMigrator get() {
        return (RequestMigrator) Preconditions.checkNotNull(this.module.provideRequestMigrator(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
