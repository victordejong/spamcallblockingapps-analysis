package zendesk.support;

import android.content.Context;
import java.util.Locale;
import javax.inject.Singleton;
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportApplicationModule.class */
public class SupportApplicationModule {
    public ApplicationScope applicationScope;

    public SupportApplicationModule(ApplicationScope applicationScope) {
        this.applicationScope = applicationScope;
    }

    @Singleton
    public Locale provideLocale() {
        return this.applicationScope.getLocale();
    }

    @Singleton
    public SupportSdkMetadata provideMetadata(Context context) {
        return new SupportSdkMetadata(context);
    }

    @Singleton
    public ZendeskTracker providesZendeskTracker() {
        return this.applicationScope.getZendeskTracker();
    }
}
