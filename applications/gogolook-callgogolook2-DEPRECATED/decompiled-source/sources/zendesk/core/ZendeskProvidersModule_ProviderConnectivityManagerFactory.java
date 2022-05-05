package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderConnectivityManagerFactory.class */
public final class ZendeskProvidersModule_ProviderConnectivityManagerFactory implements AbstractC10866b<ConnectivityManager> {
    public final Provider<Context> contextProvider;

    public ZendeskProvidersModule_ProviderConnectivityManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ZendeskProvidersModule_ProviderConnectivityManagerFactory create(Provider<Context> provider) {
        return new ZendeskProvidersModule_ProviderConnectivityManagerFactory(provider);
    }

    public static ConnectivityManager providerConnectivityManager(Context context) {
        ConnectivityManager providerConnectivityManager = ZendeskProvidersModule.providerConnectivityManager(context);
        C10867c.m10383a(providerConnectivityManager, "Cannot return null from a non-@Nullable @Provides method");
        return providerConnectivityManager;
    }

    @Override // javax.inject.Provider
    public ConnectivityManager get() {
        return providerConnectivityManager(this.contextProvider.get());
    }
}
