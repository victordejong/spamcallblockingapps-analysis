package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskStorageModule_ProvideSdkBaseStorageFactory.class */
public final class ZendeskStorageModule_ProvideSdkBaseStorageFactory implements AbstractC10866b<BaseStorage> {
    public final Provider<Context> contextProvider;
    public final Provider<Serializer> serializerProvider;

    public ZendeskStorageModule_ProvideSdkBaseStorageFactory(Provider<Context> provider, Provider<Serializer> provider2) {
        this.contextProvider = provider;
        this.serializerProvider = provider2;
    }

    public static ZendeskStorageModule_ProvideSdkBaseStorageFactory create(Provider<Context> provider, Provider<Serializer> provider2) {
        return new ZendeskStorageModule_ProvideSdkBaseStorageFactory(provider, provider2);
    }

    public static BaseStorage provideSdkBaseStorage(Context context, Object obj) {
        BaseStorage provideSdkBaseStorage = ZendeskStorageModule.provideSdkBaseStorage(context, (Serializer) obj);
        C10867c.m10383a(provideSdkBaseStorage, "Cannot return null from a non-@Nullable @Provides method");
        return provideSdkBaseStorage;
    }

    @Override // javax.inject.Provider
    public BaseStorage get() {
        return provideSdkBaseStorage(this.contextProvider.get(), this.serializerProvider.get());
    }
}
