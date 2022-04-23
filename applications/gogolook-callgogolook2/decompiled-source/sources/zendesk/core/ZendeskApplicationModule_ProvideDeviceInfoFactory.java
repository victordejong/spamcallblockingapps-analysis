package zendesk.core;

import android.content.Context;
import javax.inject.Provider;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideDeviceInfoFactory.class */
public final class ZendeskApplicationModule_ProvideDeviceInfoFactory implements AbstractC10866b<DeviceInfo> {
    public final Provider<Context> contextProvider;

    public ZendeskApplicationModule_ProvideDeviceInfoFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public static ZendeskApplicationModule_ProvideDeviceInfoFactory create(Provider<Context> provider) {
        return new ZendeskApplicationModule_ProvideDeviceInfoFactory(provider);
    }

    public static DeviceInfo provideDeviceInfo(Context context) {
        DeviceInfo provideDeviceInfo = ZendeskApplicationModule.provideDeviceInfo(context);
        C10867c.m10383a(provideDeviceInfo, "Cannot return null from a non-@Nullable @Provides method");
        return provideDeviceInfo;
    }

    @Override // javax.inject.Provider
    public DeviceInfo get() {
        return provideDeviceInfo(this.contextProvider.get());
    }
}
