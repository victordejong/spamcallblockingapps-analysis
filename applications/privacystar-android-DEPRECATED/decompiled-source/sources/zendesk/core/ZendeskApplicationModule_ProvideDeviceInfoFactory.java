package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory.class */
public final class ZendeskApplicationModule_ProvideDeviceInfoFactory implements Factory<DeviceInfo> {
    private final Provider<Context> contextProvider;

    public ZendeskApplicationModule_ProvideDeviceInfoFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static Factory<DeviceInfo> create(Provider<Context> provider) {
        return new ZendeskApplicationModule_ProvideDeviceInfoFactory(provider);
    }

    public static DeviceInfo proxyProvideDeviceInfo(Context context) {
        return ZendeskApplicationModule.provideDeviceInfo(context);
    }

    @Override // javax.inject.Provider
    public DeviceInfo get() {
        return (DeviceInfo) Preconditions.checkNotNull(ZendeskApplicationModule.provideDeviceInfo(this.contextProvider.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
