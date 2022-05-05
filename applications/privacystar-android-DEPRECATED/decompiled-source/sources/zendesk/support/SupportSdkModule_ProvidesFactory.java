package zendesk.support;

import com.google.gson.Gson;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesFactory.class */
public final class SupportSdkModule_ProvidesFactory implements Factory<Gson> {
    private final SupportSdkModule module;

    public SupportSdkModule_ProvidesFactory(SupportSdkModule supportSdkModule) {
        this.module = supportSdkModule;
    }

    public static Factory<Gson> create(SupportSdkModule supportSdkModule) {
        return new SupportSdkModule_ProvidesFactory(supportSdkModule);
    }

    public static Gson proxyProvides(SupportSdkModule supportSdkModule) {
        return supportSdkModule.provides();
    }

    @Override // javax.inject.Provider
    public Gson get() {
        return (Gson) Preconditions.checkNotNull(this.module.provides(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
