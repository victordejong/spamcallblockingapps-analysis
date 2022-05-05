package zendesk.core;

import android.content.Context;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetApplicationContextFactory.class */
public final class CoreModule_GetApplicationContextFactory implements AbstractC10866b<Context> {
    public final CoreModule module;

    public CoreModule_GetApplicationContextFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static CoreModule_GetApplicationContextFactory create(CoreModule coreModule) {
        return new CoreModule_GetApplicationContextFactory(coreModule);
    }

    public static Context getApplicationContext(CoreModule coreModule) {
        Context applicationContext = coreModule.getApplicationContext();
        C10867c.m10383a(applicationContext, "Cannot return null from a non-@Nullable @Provides method");
        return applicationContext;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return getApplicationContext(this.module);
    }
}
