package zendesk.core;

import android.content.Context;
import android.net.ConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ProviderNetworkInfoProviderFactory.class */
public final class ZendeskProvidersModule_ProviderNetworkInfoProviderFactory implements Factory<NetworkInfoProvider> {
    private final Provider<ConnectivityManager> connectivityManagerProvider;
    private final Provider<Context> contextProvider;

    public ZendeskProvidersModule_ProviderNetworkInfoProviderFactory(Provider<Context> provider, Provider<ConnectivityManager> provider2) {
        this.contextProvider = provider;
        this.connectivityManagerProvider = provider2;
    }

    public static Factory<NetworkInfoProvider> create(Provider<Context> provider, Provider<ConnectivityManager> provider2) {
        return new ZendeskProvidersModule_ProviderNetworkInfoProviderFactory(provider, provider2);
    }

    public static NetworkInfoProvider proxyProviderNetworkInfoProvider(Context context, ConnectivityManager connectivityManager) {
        return ZendeskProvidersModule.providerNetworkInfoProvider(context, connectivityManager);
    }

    @Override // javax.inject.Provider
    public NetworkInfoProvider get() {
        return (NetworkInfoProvider) Preconditions.checkNotNull(ZendeskProvidersModule.providerNetworkInfoProvider(this.contextProvider.get(), this.connectivityManagerProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
