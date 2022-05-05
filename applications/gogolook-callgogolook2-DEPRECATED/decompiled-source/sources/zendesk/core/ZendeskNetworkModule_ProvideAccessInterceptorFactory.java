package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvideAccessInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvideAccessInterceptorFactory implements AbstractC10866b<ZendeskAccessInterceptor> {
    public final Provider<AccessProvider> accessProvider;
    public final Provider<CoreSettingsStorage> coreSettingsStorageProvider;
    public final Provider<IdentityManager> identityManagerProvider;
    public final Provider<Storage> storageProvider;

    public ZendeskNetworkModule_ProvideAccessInterceptorFactory(Provider<IdentityManager> provider, Provider<AccessProvider> provider2, Provider<Storage> provider3, Provider<CoreSettingsStorage> provider4) {
        this.identityManagerProvider = provider;
        this.accessProvider = provider2;
        this.storageProvider = provider3;
        this.coreSettingsStorageProvider = provider4;
    }

    public static ZendeskNetworkModule_ProvideAccessInterceptorFactory create(Provider<IdentityManager> provider, Provider<AccessProvider> provider2, Provider<Storage> provider3, Provider<CoreSettingsStorage> provider4) {
        return new ZendeskNetworkModule_ProvideAccessInterceptorFactory(provider, provider2, provider3, provider4);
    }

    public static ZendeskAccessInterceptor provideAccessInterceptor(Object obj, Object obj2, Object obj3, Object obj4) {
        ZendeskAccessInterceptor provideAccessInterceptor = ZendeskNetworkModule.provideAccessInterceptor((IdentityManager) obj, (AccessProvider) obj2, (Storage) obj3, (CoreSettingsStorage) obj4);
        C10867c.m10383a(provideAccessInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return provideAccessInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskAccessInterceptor get() {
        return provideAccessInterceptor(this.identityManagerProvider.get(), this.accessProvider.get(), this.storageProvider.get(), this.coreSettingsStorageProvider.get());
    }
}
