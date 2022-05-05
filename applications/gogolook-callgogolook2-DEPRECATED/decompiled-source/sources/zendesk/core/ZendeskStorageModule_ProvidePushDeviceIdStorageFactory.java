package zendesk.core;

import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvidePushDeviceIdStorageFactory.class */
public final class ZendeskStorageModule_ProvidePushDeviceIdStorageFactory implements AbstractC10866b<PushDeviceIdStorage> {
    public final Provider<BaseStorage> additionalSdkStorageProvider;

    public ZendeskStorageModule_ProvidePushDeviceIdStorageFactory(Provider<BaseStorage> provider) {
        this.additionalSdkStorageProvider = provider;
    }

    public static ZendeskStorageModule_ProvidePushDeviceIdStorageFactory create(Provider<BaseStorage> provider) {
        return new ZendeskStorageModule_ProvidePushDeviceIdStorageFactory(provider);
    }

    public static PushDeviceIdStorage providePushDeviceIdStorage(BaseStorage baseStorage) {
        PushDeviceIdStorage providePushDeviceIdStorage = ZendeskStorageModule.providePushDeviceIdStorage(baseStorage);
        C10867c.m10383a(providePushDeviceIdStorage, "Cannot return null from a non-@Nullable @Provides method");
        return providePushDeviceIdStorage;
    }

    @Override // javax.inject.Provider
    public PushDeviceIdStorage get() {
        return providePushDeviceIdStorage(this.additionalSdkStorageProvider.get());
    }
}
