package zendesk.support;

import android.support.annotation.RestrictTo;
import dagger.Component;
import javax.inject.Singleton;
import zendesk.core.CoreModule;
import zendesk.support.guide.HelpCenterActivity;
import zendesk.support.guide.HelpCenterFragment;
import zendesk.support.guide.ViewArticleActivity;
import zendesk.support.request.RequestComponent;
import zendesk.support.request.RequestModule;
import zendesk.support.requestlist.RequestListComponent;
import zendesk.support.requestlist.RequestListModule;
@Component(modules = {CoreModule.class, SupportModule.class, SupportSdkModule.class})
@Singleton
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/SupportSdkComponent.class */
public interface SupportSdkComponent {
    public static final String SUPPORT_MAIN_THREAD_EXECUTOR = "SUPPORT_MAIN_THREAD_EXECUTOR";

    HelpCenterProvider helpCenterProvider();

    void inject(DeepLinkingBroadcastReceiver deepLinkingBroadcastReceiver);

    void inject(SdkDependencyProvider sdkDependencyProvider);

    void inject(HelpCenterActivity helpCenterActivity);

    void inject(HelpCenterFragment helpCenterFragment);

    void inject(ViewArticleActivity viewArticleActivity);

    RequestComponent plus(RequestModule requestModule);

    RequestListComponent plus(RequestListModule requestListModule);
}
