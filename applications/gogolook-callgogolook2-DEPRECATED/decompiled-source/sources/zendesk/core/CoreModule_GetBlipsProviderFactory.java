package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetBlipsProviderFactory.class */
public final class CoreModule_GetBlipsProviderFactory implements AbstractC10866b<BlipsProvider> {
    public final CoreModule module;

    public CoreModule_GetBlipsProviderFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetBlipsProviderFactory create(CoreModule coreModule) {
        return new CoreModule_GetBlipsProviderFactory(coreModule);
    }

    public static BlipsProvider getBlipsProvider(CoreModule coreModule) {
        BlipsProvider blipsProvider = coreModule.getBlipsProvider();
        C10867c.m10383a(blipsProvider, "Cannot return null from a non-@Nullable @Provides method");
        return blipsProvider;
    }

    @Override // javax.inject.Provider
    public BlipsProvider get() {
        return getBlipsProvider(this.module);
    }
}
