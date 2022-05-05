package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetNetworkInfoProviderFactory.class */
public final class CoreModule_GetNetworkInfoProviderFactory implements Factory<NetworkInfoProvider> {
    private final CoreModule module;

    public CoreModule_GetNetworkInfoProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<NetworkInfoProvider> create(CoreModule coreModule) {
        return new CoreModule_GetNetworkInfoProviderFactory(coreModule);
    }

    public static NetworkInfoProvider proxyGetNetworkInfoProvider(CoreModule coreModule) {
        return coreModule.getNetworkInfoProvider();
    }

    @Override // javax.inject.Provider
    public NetworkInfoProvider get() {
        return (NetworkInfoProvider) Preconditions.checkNotNull(this.module.getNetworkInfoProvider(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
