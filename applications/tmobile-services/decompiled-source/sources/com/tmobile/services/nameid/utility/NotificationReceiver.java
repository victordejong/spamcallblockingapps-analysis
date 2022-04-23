package com.tmobile.services.nameid.utility;

import android.app.TaskStackBuilder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.Startup.FlowController;
import com.tmobile.services.nameid.Startup.IdentifyingNumbersActivity;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import io.realm.ImportFlag;
import io.realm.OrderedRealmCollectionImpl;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.Sort;
import java.util.ArrayList;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/NotificationReceiver.class */
public class NotificationReceiver extends BroadcastReceiver {
    /* renamed from: a */
    static void m5462a(Context context, String str, String str2) {
        LogUtil.m5643d("NotificationReceiver#goToApp", "Going to app with key: " + str2);
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        Intent intent = new Intent(context, MainActivity.class);
        EventManager.m5725a(context, "App_Opened_From_InApp_Notification");
        PreferenceUtils.m5383n("INTENT_KEY_START_FROM_NOTIFICATION", str2);
        PreferenceUtils.m5383n("INTENT_KEY_E164_NUMBER", str);
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addParentStack(MainActivity.class);
        create.addNextIntent(intent);
        create.startActivities();
    }

    /* renamed from: b */
    private static void m5461b(Context context) {
        Intent intent = new Intent(context, IdentifyingNumbersActivity.class);
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m5460c(CallerSetting callerSetting, CallerSetting.Action action, String str, boolean z, Realm realm) {
        callerSetting.setAction(action.getValue());
        callerSetting.setCallerId(str);
        callerSetting.setPending(z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ void m5459d(CallerSetting callerSetting, Realm realm) {
        CallerSetting callerSetting2 = (CallerSetting) realm.m3045v0(callerSetting, new ImportFlag[0]);
    }

    /* renamed from: e */
    static void m5458e(Context context) {
        FlowController flowController = new FlowController(context);
        context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        Intent intent = new Intent(context, flowController.m7225c());
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addParentStack(flowController.m7225c());
        create.addNextIntent(intent);
        create.startActivities();
    }

    /* renamed from: f */
    static void m5457f(String str, final CallerSetting.Action action) {
        String d = PhoneNumberHelper.m5415d(str);
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(ActivityItem.class);
            Q0.m2882t("e164Number", d);
            Q0.m2898d(Name.MARK, "notification");
            OrderedRealmCollectionImpl s = Q0.m2918E().m3089s("date", Sort.DESCENDING);
            final String str2 = "";
            if (!s.isEmpty()) {
                LogUtil.m5632o("trace", ((ActivityItem) s.get(0)).getCaller().getName());
                Caller caller = ((ActivityItem) s.get(0)).getCaller();
                str2 = "";
                if (caller != null) {
                    str2 = caller.getId();
                }
            }
            RealmQuery Q02 = G0.m3053Q0(CallerSetting.class);
            Q02.m2882t("e164Number", d);
            final CallerSetting callerSetting = (CallerSetting) Q02.m2916G();
            final boolean r = SubscriptionHelper.m5310r(SubscriptionHelper.m5325c());
            if (callerSetting != null) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.b1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        NotificationReceiver.m5460c(CallerSetting.this, action, str2, r, realm);
                    }
                });
                if (r) {
                    if (G0 != null) {
                        G0.close();
                        return;
                    }
                    return;
                } else if (action == CallerSetting.Action.NONE) {
                    AnalyticsWrapper.m5885C("Notifications", callerSetting.getAction());
                    ApiWrapper.m6775h(callerSetting, null);
                } else if (callerSetting.getPreferenceId() == null || callerSetting.getPreferenceId().isEmpty()) {
                    AnalyticsWrapper.m5881G("Notifications", action.getValue());
                    ApiWrapper.m6785c(callerSetting, null);
                } else {
                    AnalyticsWrapper.m5854z("Notifications", callerSetting.getAction(), action.getValue());
                    ApiWrapper.m6766l0(callerSetting, null);
                }
            } else {
                final CallerSetting callerSetting2 = new CallerSetting();
                callerSetting2.setE164Number(d);
                callerSetting2.setAction(action.getValue());
                callerSetting2.setPending(r);
                if (str2.isEmpty()) {
                    callerSetting2.addCallerForSetting(d, null);
                } else {
                    callerSetting2.setCallerId(str2);
                }
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.c1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        NotificationReceiver.m5459d(CallerSetting.this, realm);
                    }
                });
                if (action != CallerSetting.Action.NONE && !r) {
                    AnalyticsWrapper.m5881G("Notifications", action.getValue());
                    ApiWrapper.m6785c(callerSetting2, null);
                }
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("NOTIFICATION_INTENT_KEY_EXTRA");
        String stringExtra2 = intent.getStringExtra("E164_NUMBER_KEY");
        char c = 65535;
        int intExtra = intent.getIntExtra("ID_KEY", -1);
        LogUtil.m5632o("NotificationReceiver#onReceive", stringExtra);
        PreferenceUtils.m5385l("PREF_NUMBER_NOTIFICATIONS", PreferenceUtils.m5394c("PREF_NUMBER_NOTIFICATIONS", 0) - 1);
        NotificationUtil.m5444m(context);
        switch (stringExtra.hashCode()) {
            case -1880161737:
                if (stringExtra.equals("UNBLOCK_PRESSED_KEY")) {
                    c = '\n';
                    break;
                }
                break;
            case -1314346907:
                if (stringExtra.equals("MANAGE_KEY")) {
                    c = 5;
                    break;
                }
                break;
            case -1135067095:
                if (stringExtra.equals("ALLOW_KEY")) {
                    c = 2;
                    break;
                }
                break;
            case -1111492276:
                if (stringExtra.equals("STOP_VOICEMAIL_KEY")) {
                    c = '\t';
                    break;
                }
                break;
            case -838291796:
                if (stringExtra.equals("STARTUP_KEY_BASIC")) {
                    c = '\r';
                    break;
                }
                break;
            case -809242349:
                if (stringExtra.equals("MANAGE_BLOCK_KEY")) {
                    c = 11;
                    break;
                }
                break;
            case 148132553:
                if (stringExtra.equals("VOICEMAIL_KEY")) {
                    c = 0;
                    break;
                }
                break;
            case 150203931:
                if (stringExtra.equals("ONBOARDING_KEY")) {
                    c = '\f';
                    break;
                }
                break;
            case 775473849:
                if (stringExtra.equals("MAIN_KEY")) {
                    c = 7;
                    break;
                }
                break;
            case 1004830510:
                if (stringExtra.equals("NOTIFICATION_PRESSED_KEY")) {
                    c = 6;
                    break;
                }
                break;
            case 1036085497:
                if (stringExtra.equals("DELETED_KEY")) {
                    c = 3;
                    break;
                }
                break;
            case 1642702768:
                if (stringExtra.equals("BLOCK_PRESSED_KEY")) {
                    c = 1;
                    break;
                }
                break;
            case 1764364118:
                if (stringExtra.equals("API24_GROUP_DELETED_KEY")) {
                    c = 4;
                    break;
                }
                break;
            case 1781980922:
                if (stringExtra.equals("MY_ACCOUNT_KEY")) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                m5457f(stringExtra2, CallerSetting.Action.VOICEMAIL);
                NotificationUtil.m5443n(context, intExtra);
                return;
            case 1:
                m5457f(stringExtra2, CallerSetting.Action.BLOCKED);
                NotificationUtil.m5443n(context, intExtra);
                return;
            case 2:
                m5457f(stringExtra2, CallerSetting.Action.APPROVED);
                NotificationUtil.m5443n(context, intExtra);
                return;
            case 3:
                LogUtil.m5643d("NotificationReceiver#onReceive", "Received delete notification intent");
                return;
            case 4:
                PreferenceUtils.m5385l("PREF_NUMBER_NOTIFICATIONS", 0);
                PreferenceUtils.m5382o("PREF_API24_NOTIFICATIONS", new ArrayList());
                return;
            case 5:
                AnalyticsWrapper.m5883E("Notifications", "manage_number");
                m5462a(context, stringExtra2, "INTENT_KEY_START_CALLER_DETAILS");
                return;
            case 6:
                AnalyticsWrapper.m5883E("Notifications", "open_call_event");
                m5462a(context, stringExtra2, "INTENT_KEY_START_CALLER_DETAILS");
                return;
            case 7:
                m5462a(context, stringExtra2, "INTENT_KEY_START_ACTIVITY");
                NotificationUtil.m5443n(context, intExtra);
                return;
            case '\b':
                m5462a(context, "", "INTENT_KEY_START_MY_ACCOUNT");
                NotificationUtil.m5443n(context, intExtra);
                return;
            case '\t':
            case '\n':
                m5457f(stringExtra2, CallerSetting.Action.NONE);
                NotificationUtil.m5443n(context, intExtra);
                return;
            case 11:
                m5462a(context, "", "INTENT_KEY_START_MANAGE_BLOCK");
                NotificationUtil.m5443n(context, intExtra);
                return;
            case '\f':
                m5458e(context);
                NotificationUtil.m5443n(context, intExtra);
                return;
            case '\r':
                m5461b(context);
                NotificationUtil.m5443n(context, intExtra);
                return;
            default:
                NotificationUtil.m5443n(context, intExtra);
                return;
        }
    }
}
