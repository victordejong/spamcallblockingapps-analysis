package zendesk.core;

import android.content.Context;
import p456i.p457c.AbstractC10866b;
import p456i.p457c.C10867c;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskApplicationModule_ProvideApplicationContextFactory.class */
public final class ZendeskApplicationModule_ProvideApplicationContextFactory implements AbstractC10866b<Context> {
    public final ZendeskApplicationModule module;

    public ZendeskApplicationModule_ProvideApplicationContextFactory(ZendeskApplicationModule zendeskApplicationModule) {
        this.module = zendeskApplicationModule;
    }

    public static ZendeskApplicationModule_ProvideApplicationContextFactory create(ZendeskApplicationModule zendeskApplicationModule) {
        return new ZendeskApplicationModule_ProvideApplicationContextFactory(zendeskApplicationModule);
    }

    public static Context provideApplicationContext(ZendeskApplicationModule zendeskApplicationModule) {
        Context provideApplicationContext = zendeskApplicationModule.provideApplicationContext();
        C10867c.m10383a(provideApplicationContext, "Cannot return null from a non-@Nullable @Provides method");
        return provideApplicationContext;
    }

    @Override // javax.inject.Provider
    public Context get() {
        return provideApplicationContext(this.module);
    }
}
