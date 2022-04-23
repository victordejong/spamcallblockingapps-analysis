package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskNetworkModule_ProvidePushInterceptorFactory.class */
public final class ZendeskNetworkModule_ProvidePushInterceptorFactory implements AbstractC10866b<ZendeskPushInterceptor> {
    public final Provider<PushDeviceIdStorage> pushDeviceIdStorageProvider;
    public final Provider<PushRegistrationProviderInternal> pushProvider;

    public ZendeskNetworkModule_ProvidePushInterceptorFactory(Provider<PushRegistrationProviderInternal> provider, Provider<PushDeviceIdStorage> provider2) {
        this.pushProvider = provider;
        this.pushDeviceIdStorageProvider = provider2;
    }

    public static ZendeskNetworkModule_ProvidePushInterceptorFactory create(Provider<PushRegistrationProviderInternal> provider, Provider<PushDeviceIdStorage> provider2) {
        return new ZendeskNetworkModule_ProvidePushInterceptorFactory(provider, provider2);
    }

    public static ZendeskPushInterceptor providePushInterceptor(Object obj, Object obj2) {
        ZendeskPushInterceptor providePushInterceptor = ZendeskNetworkModule.providePushInterceptor((PushRegistrationProviderInternal) obj, (PushDeviceIdStorage) obj2);
        C10867c.m10383a(providePushInterceptor, "Cannot return null from a non-@Nullable @Provides method");
        return providePushInterceptor;
    }

    @Override // javax.inject.Provider
    public ZendeskPushInterceptor get() {
        return providePushInterceptor(this.pushProvider.get(), this.pushDeviceIdStorageProvider.get());
    }
}
