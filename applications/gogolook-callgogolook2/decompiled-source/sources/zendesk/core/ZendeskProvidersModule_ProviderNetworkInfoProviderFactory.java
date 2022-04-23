package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory.class */
public final class ZendeskProvidersModule_ProviderNetworkInfoProviderFactory implements AbstractC10866b<NetworkInfoProvider> {
    public final Provider<ConnectivityManager> connectivityManagerProvider;
    public final Provider<Context> contextProvider;

    public ZendeskProvidersModule_ProviderNetworkInfoProviderFactory(Provider<Context> provider, Provider<ConnectivityManager> provider2) {
        this.contextProvider = provider;
        this.connectivityManagerProvider = provider2;
    }

    public static ZendeskProvidersModule_ProviderNetworkInfoProviderFactory create(Provider<Context> provider, Provider<ConnectivityManager> provider2) {
        return new ZendeskProvidersModule_ProviderNetworkInfoProviderFactory(provider, provider2);
    }

    public static NetworkInfoProvider providerNetworkInfoProvider(Context context, ConnectivityManager connectivityManager) {
        NetworkInfoProvider providerNetworkInfoProvider = ZendeskProvidersModule.providerNetworkInfoProvider(context, connectivityManager);
        C10867c.m10383a(providerNetworkInfoProvider, "Cannot return null from a non-@Nullable @Provides method");
        return providerNetworkInfoProvider;
    }

    @Override // javax.inject.Provider
    public NetworkInfoProvider get() {
        return providerNetworkInfoProvider(this.contextProvider.get(), this.connectivityManagerProvider.get());
    }
}
