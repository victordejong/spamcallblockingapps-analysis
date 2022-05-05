package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_ActionHandlerRegistryFactory.class */
public final class CoreModule_ActionHandlerRegistryFactory implements Factory<ActionHandlerRegistry> {
    private final CoreModule module;

    public CoreModule_ActionHandlerRegistryFactory(CoreModule coreModule) {
        this.module = coreModule;
    }

    public static Factory<ActionHandlerRegistry> create(CoreModule coreModule) {
        return new CoreModule_ActionHandlerRegistryFactory(coreModule);
    }

    public static ActionHandlerRegistry proxyActionHandlerRegistry(CoreModule coreModule) {
        return coreModule.actionHandlerRegistry();
    }

    @Override // javax.inject.Provider
    public ActionHandlerRegistry get() {
        return (ActionHandlerRegistry) Preconditions.checkNotNull(this.module.actionHandlerRegistry(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
