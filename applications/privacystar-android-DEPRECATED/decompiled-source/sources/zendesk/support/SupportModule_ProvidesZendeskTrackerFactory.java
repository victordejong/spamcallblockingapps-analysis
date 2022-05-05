package zendesk.support;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportModule_ProvidesZendeskTrackerFactory.class */
public final class SupportModule_ProvidesZendeskTrackerFactory implements Factory<ZendeskTracker> {
    private final SupportModule module;

    public SupportModule_ProvidesZendeskTrackerFactory(SupportModule supportModule) {
        this.module = supportModule;
    }

    public static Factory<ZendeskTracker> create(SupportModule supportModule) {
        return new SupportModule_ProvidesZendeskTrackerFactory(supportModule);
    }

    public static ZendeskTracker proxyProvidesZendeskTracker(SupportModule supportModule) {
        return supportModule.providesZendeskTracker();
    }

    @Override // javax.inject.Provider
    public ZendeskTracker get() {
        return (ZendeskTracker) Preconditions.checkNotNull(this.module.providesZendeskTracker(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
