package zendesk.core;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskProvidersModule_ActionHandlerRegistryFactory.class */
public final class ZendeskProvidersModule_ActionHandlerRegistryFactory implements Factory<ActionHandlerRegistry> {
    private static final ZendeskProvidersModule_ActionHandlerRegistryFactory INSTANCE = new ZendeskProvidersModule_ActionHandlerRegistryFactory();

    public static Factory<ActionHandlerRegistry> create() {
        return INSTANCE;
    }

    public static ActionHandlerRegistry proxyActionHandlerRegistry() {
        return ZendeskProvidersModule.actionHandlerRegistry();
    }

    @Override // javax.inject.Provider
    public ActionHandlerRegistry get() {
        return (ActionHandlerRegistry) Preconditions.checkNotNull(ZendeskProvidersModule.actionHandlerRegistry(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
