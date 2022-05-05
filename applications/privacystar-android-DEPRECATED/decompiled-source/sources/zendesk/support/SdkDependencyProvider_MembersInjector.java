package zendesk.support;

import dagger.MembersInjector;
import java.util.List;
import javax.inject.Provider;
import zendesk.core.ActionHandler;
import zendesk.core.ActionHandlerRegistry;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SdkDependencyProvider_MembersInjector.class */
public final class SdkDependencyProvider_MembersInjector implements MembersInjector<SdkDependencyProvider> {
    private final Provider<List<ActionHandler>> actionHandlersProvider;
    private final Provider<ActionHandlerRegistry> registryProvider;

    public SdkDependencyProvider_MembersInjector(Provider<ActionHandlerRegistry> provider, Provider<List<ActionHandler>> provider2) {
        this.registryProvider = provider;
        this.actionHandlersProvider = provider2;
    }

    public static MembersInjector<SdkDependencyProvider> create(Provider<ActionHandlerRegistry> provider, Provider<List<ActionHandler>> provider2) {
        return new SdkDependencyProvider_MembersInjector(provider, provider2);
    }

    public static void injectActionHandlers(SdkDependencyProvider sdkDependencyProvider, List<ActionHandler> list) {
        sdkDependencyProvider.actionHandlers = list;
    }

    public static void injectRegistry(SdkDependencyProvider sdkDependencyProvider, ActionHandlerRegistry actionHandlerRegistry) {
        sdkDependencyProvider.registry = actionHandlerRegistry;
    }

    public void injectMembers(SdkDependencyProvider sdkDependencyProvider) {
        injectRegistry(sdkDependencyProvider, this.registryProvider.get());
        injectActionHandlers(sdkDependencyProvider, this.actionHandlersProvider.get());
    }
}
