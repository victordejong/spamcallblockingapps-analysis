package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* renamed from: zendesk.core.ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory */
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProvidePushRegistrationProviderInternalFactory.class */
public final class C15458xb2419e95 implements AbstractC10866b<PushRegistrationProviderInternal> {
    public final Provider<PushRegistrationProvider> pushRegistrationProvider;

    public C15458xb2419e95(Provider<PushRegistrationProvider> provider) {
        this.pushRegistrationProvider = provider;
    }

    public static C15458xb2419e95 create(Provider<PushRegistrationProvider> provider) {
        return new C15458xb2419e95(provider);
    }

    public static PushRegistrationProviderInternal providePushRegistrationProviderInternal(PushRegistrationProvider pushRegistrationProvider) {
        PushRegistrationProviderInternal providePushRegistrationProviderInternal = ZendeskProvidersModule.providePushRegistrationProviderInternal(pushRegistrationProvider);
        C10867c.m10383a(providePushRegistrationProviderInternal, "Cannot return null from a non-@Nullable @Provides method");
        return providePushRegistrationProviderInternal;
    }

    @Override // javax.inject.Provider
    public PushRegistrationProviderInternal get() {
        return providePushRegistrationProviderInternal(this.pushRegistrationProvider.get());
    }
}
