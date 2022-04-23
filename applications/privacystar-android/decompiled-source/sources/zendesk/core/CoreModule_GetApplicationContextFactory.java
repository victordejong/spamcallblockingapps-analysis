package zendesk.core;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_GetApplicationContextFactory.class */
public final class CoreModule_GetApplicationContextFactory implements Factory<Context> {
    private final CoreModule module;

    public CoreModule_GetApplicationContextFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<Context> create(CoreModule coreModule) {
        return new CoreModule_GetApplicationContextFactory(coreModule);
    }

    public static Context proxyGetApplicationContext(CoreModule coreModule) {
        return coreModule.getApplicationContext();
    }

    @Override // javax.inject.Provider
    public Context get() {
        return (Context) Preconditions.checkNotNull(this.module.getApplicationContext(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
