package zendesk.core;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/CoreModule_ActionHandlerRegistryFactory.class */
public final class CoreModule_ActionHandlerRegistryFactory implements AbstractC10866b<ActionHandlerRegistry> {
    public static ActionHandlerRegistry actionHandlerRegistry(CoreModule coreModule) {
        ActionHandlerRegistry actionHandlerRegistry = coreModule.actionHandlerRegistry();
        C10867c.m10383a(actionHandlerRegistry, "Cannot return null from a non-@Nullable @Provides method");
        return actionHandlerRegistry;
    }
}
