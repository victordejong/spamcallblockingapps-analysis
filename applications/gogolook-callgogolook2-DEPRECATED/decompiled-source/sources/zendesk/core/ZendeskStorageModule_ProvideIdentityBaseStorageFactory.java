package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideIdentityBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideIdentityBaseStorageFactory implements AbstractC10866b<BaseStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideIdentityBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideIdentityBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideIdentityBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage provideIdentityBaseStorage(Context context, Object obj) {
        BaseStorage provideIdentityBaseStorage = ZendeskStorageModule.provideIdentityBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideIdentityBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideIdentityBaseStorage;
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return provideIdentityBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
