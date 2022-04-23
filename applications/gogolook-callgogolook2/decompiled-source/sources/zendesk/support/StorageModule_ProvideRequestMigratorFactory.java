package zendesk.support;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/StorageModule_ProvideRequestMigratorFactory.class */
public final class StorageModule_ProvideRequestMigratorFactory implements AbstractC10866b<RequestMigrator> {
    public final Provider<Context> contextProvider;
    public final StorageModule module;

    public StorageModule_ProvideRequestMigratorFactory(StorageModule storageModule, Provider<Context> provider) {
        this.module = storageModule;
        this.contextProvider = provider;
    }

    public static StorageModule_ProvideRequestMigratorFactory create(StorageModule storageModule, Provider<Context> provider) {
        return new StorageModule_ProvideRequestMigratorFactory(storageModule, provider);
    }

    public static RequestMigrator provideRequestMigrator(StorageModule storageModule, Context context) {
        RequestMigrator provideRequestMigrator = storageModule.provideRequestMigrator(context);
        C10867c.m10383a(provideRequestMigrator, "Cannot return null from a non-@Nullable @Provides method");
        return provideRequestMigrator;
    }

    @Override // javax.inject.Provider
    public RequestMigrator get() {
        return provideRequestMigrator(this.module, this.contextProvider.get());
    }
}
