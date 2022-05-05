package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.List;
import zendesk.core.ActionHandler;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkModule_ProvidesActionHandlersFactory.class */
public final class SupportSdkModule_ProvidesActionHandlersFactory implements Factory<List<ActionHandler>> {
    private final SupportSdkModule module;

    public SupportSdkModule_ProvidesActionHandlersFactory(SupportSdkModule supportSdkModule) {
        this.module = supportSdkModule;
    }

    public static Factory<List<ActionHandler>> create(SupportSdkModule supportSdkModule) {
        return new SupportSdkModule_ProvidesActionHandlersFactory(supportSdkModule);
    }

    public static List<ActionHandler> proxyProvidesActionHandlers(SupportSdkModule supportSdkModule) {
        return supportSdkModule.providesActionHandlers();
    }

    @Override // javax.inject.Provider
    public List<ActionHandler> get() {
        return (List) Preconditions.checkNotNull(this.module.providesActionHandlers(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
