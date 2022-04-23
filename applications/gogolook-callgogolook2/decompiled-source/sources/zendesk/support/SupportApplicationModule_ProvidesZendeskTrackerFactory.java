package zendesk.support;

import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule_ProvidesZendeskTrackerFactory.class */
public final class SupportApplicationModule_ProvidesZendeskTrackerFactory implements AbstractC10866b<ZendeskTracker> {
    public final SupportApplicationModule module;

    public SupportApplicationModule_ProvidesZendeskTrackerFactory(SupportApplicationModule supportApplicationModule) {
        this.module = supportApplicationModule;
    }

    public static SupportApplicationModule_ProvidesZendeskTrackerFactory create(SupportApplicationModule supportApplicationModule) {
        return new SupportApplicationModule_ProvidesZendeskTrackerFactory(supportApplicationModule);
    }

    public static ZendeskTracker providesZendeskTracker(SupportApplicationModule supportApplicationModule) {
        ZendeskTracker providesZendeskTracker = supportApplicationModule.providesZendeskTracker();
        C10867c.m10383a(providesZendeskTracker, "Cannot return null from a non-@Nullable @Provides method");
        return providesZendeskTracker;
    }

    @Override // javax.inject.Provider
    public ZendeskTracker get() {
        return providesZendeskTracker(this.module);
    }
}
