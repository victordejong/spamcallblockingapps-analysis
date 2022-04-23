package com.privacystar.core.receiver;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.p001v4.app.TaskStackBuilder;
import com.privacystar.core.application.Constants;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.caller_details.CallerDetailsFragment;
import com.privacystar.core.p011ui.detail_view.campaign.CampaignFragment;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.network.handler.LookupHandler;
import com.privacystar.core.service.network.model.request.LookupRequest;
import com.privacystar.core.util.CampaignUtil;
import com.privacystar.core.util.FeatureUtil;
import com.privacystar.core.util.NavigationUtil;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.PermissionUtils;
import com.privacystar.core.util.SystemUtil;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/receiver/NotificationReceiver.class */
public class NotificationReceiver extends BroadcastReceiver {
    private void cancelNotification(Context context, int i) {
        NotificationManager notificationManager = getNotificationManager(context);
        if (notificationManager != null) {
            notificationManager.cancel(i);
        }
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    private NotificationManager getNotificationManager(Context context) {
        return (NotificationManager) context.getSystemService("notification");
    }

    private void processCallerDetailIntent(Context context, Realm realm, String str) {
        Intent intent;
        AnalyticsManager.INSTANCE.fire(Event.OpenedFromAppNotifEvent.INSTANCE);
        Caller populatedCaller = CallerFactory.getInstance().getPopulatedCaller(str);
        Intent intent2 = new Intent(context, HomeActivity.class);
        if (populatedCaller.getNumber() == null) {
            Timber.m31i("Call had no parsable number, cannot launch CallerDetails from notification.", new Object[0]);
            intent = intent2;
        } else {
            intent = DetailActivity.detailIntent(context, CallerDetailsFragment.class, populatedCaller);
            LookupHandler.getInstance().lookupUncachedCaller(realm, str, LookupRequest.LookupType.CALLER_ID);
        }
        if (intent == null) {
            Timber.m31i("Could not create intent to launch CallerDetails from notification.", new Object[0]);
            return;
        }
        try {
            TaskStackBuilder create = TaskStackBuilder.create(context);
            create.addParentStack(DetailActivity.class);
            create.addNextIntent(intent);
            create.startActivities();
        } catch (NullPointerException e) {
            Timber.m23w(e, "Internal error starting caller detail intent.", new Object[0]);
            context.startActivity(intent2);
        }
    }

    private void processDashboardIntent(Context context) {
        Intent detailIntent = DetailActivity.detailIntent(context, AdvancedDashboardFragment.class);
        if (detailIntent == null) {
            Timber.m37d("Intent is null", new Object[0]);
            return;
        }
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addParentStack(DetailActivity.class);
        create.addNextIntent(detailIntent);
        create.startActivities();
    }

    private void processMessageIntent(Context context, Realm realm, String str) {
        AnalyticsManager.INSTANCE.fire(Event.OpenedFromCampaignNotifEvent.INSTANCE);
        Message message = MessageRealm.getMessage(realm, str);
        if (message != null) {
            CampaignUtil.CampaignTemplate messageToTemplate = CampaignUtil.INSTANCE.messageToTemplate(message);
            PreferenceUtil.putIsCampaignFromNotification(true);
            Intent detailIntent = DetailActivity.detailIntent(context, CampaignFragment.class, messageToTemplate);
            if (detailIntent == null) {
                Timber.m37d("Intent is null", new Object[0]);
                return;
            }
            TaskStackBuilder create = TaskStackBuilder.create(context);
            create.addParentStack(HomeActivity.class);
            create.addNextIntent(detailIntent);
            create.startActivities();
        }
    }

    private void processNotRegisteredIntent(Context context) {
        cancelNotification(context, 1000);
        AnalyticsUtil.INSTANCE.trackNotRegisteredNotificationOpened();
        SystemUtil.INSTANCE.internallyRestartApp();
    }

    private void processShouldBlock(Context context, Realm realm, String str) {
        AnalyticsManager.INSTANCE.fire(Event.OpenedFromAppNotifEvent.INSTANCE);
        boolean couldBlockAsScam = FeatureUtil.couldBlockAsScam(realm, str);
        boolean isFeatureAvailable = LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING);
        if (couldBlockAsScam || isFeatureAvailable) {
            BlockListRealm.setBlockEnabled(realm, CallerFactory.getInstance().getCaller(str));
            processCallerDetailIntent(context, realm, str);
            return;
        }
        processSubscriptionIntent(context);
    }

    private void processShouldReport(Context context, String str) {
        AnalyticsManager.INSTANCE.fire(Event.OpenedFromAppNotifEvent.INSTANCE);
        AnalyticsManager.INSTANCE.fire(Event.ComplaintFromOthersEvent.INSTANCE);
        if (PermissionUtils.hasGeneralPermissions(context)) {
            NavigationUtil.launchReport(context, CallerFactory.getInstance().getCaller(str), true);
            return;
        }
        Timber.m31i("Tried to start report before app first run or permissions have been revoked.", new Object[0]);
        context.startActivity(new Intent(context, IntroActivity.class));
    }

    private void processSubscriptionIntent(Context context) {
        Intent subscriptionIntent = DetailActivity.subscriptionIntent(context);
        try {
            if (subscriptionIntent != null) {
                TaskStackBuilder create = TaskStackBuilder.create(context);
                create.addParentStack(DetailActivity.class);
                create.addNextIntent(subscriptionIntent);
                create.startActivities();
            } else {
                Timber.m31i("Could not create intent to launch target.", new Object[0]);
            }
        } catch (NullPointerException e) {
            Timber.m23w(e, "Internal error starting caller detail intent.", new Object[0]);
            context.startActivity(new Intent(context, IntroActivity.class));
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        char c = 1;
        Timber.m37d("Received notification with action: %s", action);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            NotificationUtil.clearSourceIntent(context, intent);
            switch (action.hashCode()) {
                case -1987073686:
                    if (action.equals(Constants.NOTIFICATION_DELETED_INTENT)) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case -784844109:
                    if (action.equals(Constants.NOTIFICATION_PRESSED_INTENT)) {
                        break;
                    }
                    c = 65535;
                    break;
                case -230933946:
                    if (action.equals(Constants.NOTIFICATION_NOT_REGISTERED_INTENT)) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -132450094:
                    if (action.equals(Constants.NOTIFICATION_SHOULD_REPORT)) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 414014053:
                    if (action.equals(Constants.NOTIFICATION_DASHBOARD_INTENT)) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case 1505178927:
                    if (action.equals(Constants.NOTIFICATION_SHOULD_BLOCK)) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 1577340632:
                    if (action.equals(Constants.NOTIFICATION_MESSAGE_INTENT)) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    break;
                case 1:
                    Timber.m37d("Notification clicked, launching Caller Details page", new Object[0]);
                    AnalyticsManager.INSTANCE.fire(Event.DropdownNotificationClick.INSTANCE);
                    processCallerDetailIntent(context, defaultInstance, intent.getStringExtra(Constants.CALLER_NUMBER));
                    break;
                case 2:
                    Timber.m37d("Block button clicked on notification, blocking the number", new Object[0]);
                    AnalyticsManager.INSTANCE.fire(Event.DropdownNotificationBlock.INSTANCE);
                    processShouldBlock(context, defaultInstance, intent.getStringExtra(Constants.CALLER_NUMBER));
                    break;
                case 3:
                    processShouldReport(context, intent.getStringExtra(Constants.CALLER_NUMBER));
                    break;
                case 4:
                    processMessageIntent(context, defaultInstance, intent.getStringExtra(Constants.MESSAGE_ID));
                    break;
                case 5:
                    processNotRegisteredIntent(context);
                    break;
                case 6:
                    processDashboardIntent(context);
                default:
                    Timber.m25w("Received a notification that can't be handled.", new Object[0]);
                    break;
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
