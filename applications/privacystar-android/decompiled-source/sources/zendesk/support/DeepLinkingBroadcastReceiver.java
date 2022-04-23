package zendesk.support;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.RestrictTo;
import com.zendesk.logger.Logger;
import javax.inject.Inject;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3-dex2jar.jar:zendesk/support/DeepLinkingBroadcastReceiver.class */
public class DeepLinkingBroadcastReceiver extends BroadcastReceiver {
    public static final String EXTRA_BACK_STACK_ACTIVITIES = "extra_follow_up_activities";
    public static final String EXTRA_REQUEST_INTENT = "extra_request_intent";
    private static final String LOG_TAG = "DeepLinkingBroadcastReceiver";
    @Inject
    ZendeskDeepLinkHelper deepLinkHelper;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!SdkDependencyProvider.INSTANCE.isInitialized()) {
            Logger.m295e(LOG_TAG, "Cannot use Support SDK without initializing Zendesk. Call Zendesk.INSTANCE.init(...) and Support.INSTANCE.init(Zendesk)", new Object[0]);
            return;
        }
        SdkDependencyProvider.INSTANCE.provideSupportSdkComponent().inject(this);
        this.deepLinkHelper.deepLinkToRequest((Intent) intent.getParcelableExtra(EXTRA_REQUEST_INTENT), context, intent.getParcelableArrayListExtra(EXTRA_BACK_STACK_ACTIVITIES));
    }
}
