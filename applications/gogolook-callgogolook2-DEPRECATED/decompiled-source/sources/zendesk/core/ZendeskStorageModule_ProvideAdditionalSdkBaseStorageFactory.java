package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory implements AbstractC10866b<BaseStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideAdditionalSdkBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage provideAdditionalSdkBaseStorage(Context context, Object obj) {
        BaseStorage provideAdditionalSdkBaseStorage = ZendeskStorageModule.provideAdditionalSdkBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideAdditionalSdkBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideAdditionalSdkBaseStorage;
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return provideAdditionalSdkBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
