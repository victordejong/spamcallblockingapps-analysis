package com.callapp.contacts.service;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.IBinder;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.callappplus.CallAppPlusActivity;
import com.callapp.contacts.activity.callreminder.CallRemindersAdapter;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.details.presenter.QuickResponseDialogPopup;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.api.helper.instantmessaging.basetypes.ImSender;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.loader.PreferredSimManager;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.manager.OverlayManager;
import com.callapp.contacts.manager.ProximityManager;
import com.callapp.contacts.manager.RecognizedContactNotificationManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.MissedCallUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/NotificationPendingIntentHandlerService.class */
public class NotificationPendingIntentHandlerService extends Service {
    private void a() {
        sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    private static void a(Intent intent) {
        ContactDataChangeListener contactDataChangeListener;
        int b2 = b(intent);
        if (b2 == 50) {
            RecognizedContactNotificationManager recognizedContactNotificationManager = RecognizedContactNotificationManager.get();
            if (recognizedContactNotificationManager.f14924b != null) {
                recognizedContactNotificationManager.f14924b.clear();
            }
            synchronized (recognizedContactNotificationManager.f14923a) {
                Iterator<Map.Entry<String, RecognizedContactNotificationManager.StoredNotificationData>> it2 = recognizedContactNotificationManager.f14923a.entrySet().iterator();
                while (it2.hasNext()) {
                    RecognizedContactNotificationManager.StoredNotificationData value = it2.next().getValue();
                    ContactLoaderManager contactLoaderManager = Singletons.get().getContactLoaderManager();
                    ContactData contactData = value.f14925a;
                    contactDataChangeListener = value.f14927c;
                    contactLoaderManager.unRegisterForContactDetailsStack(contactData, contactDataChangeListener);
                    it2.remove();
                }
            }
            CLog.a(NotificationPendingIntentHandlerService.class, "Our IM ID notification Removed - cleaned after it");
            IMDataExtractionUtils.b();
        }
        if (b2 != -1) {
            NotificationManager.get().a(b2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static /* synthetic */ void a(NotificationPendingIntentHandlerService notificationPendingIntentHandlerService, Intent intent) {
        char c2;
        if (intent != null && intent.getAction() != null) {
            String action = intent.getAction();
            action.hashCode();
            switch (action.hashCode()) {
                case -2103789264:
                    if (action.equals("com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1839629790:
                    if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_MISSED_CALL_NOTIFICATION")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1818854713:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1513077067:
                    if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1382823957:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1169948286:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1104144857:
                    if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_NOT_ANSWERED_NOTIFICATION")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1040592391:
                    if (action.equals("com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -981921123:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -966416463:
                    if (action.equals("com.callapp.contacts.ACTION_TOGGLE_AUDIO")) {
                        c2 = '\t';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -514121711:
                    if (action.equals("com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM")) {
                        c2 = '\n';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -408651277:
                    if (action.equals("com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = 11;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -260450952:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS")) {
                        c2 = '\f';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -211101122:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = '\r';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -99624575:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_SNOOZE")) {
                        c2 = 14;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -7543280:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_CALL")) {
                        c2 = 15;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 42329543:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION")) {
                        c2 = 16;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104532212:
                    if (action.equals("com.callapp.contacts.ACTION_UPGRADE_NOTIFICATION")) {
                        c2 = 17;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104914696:
                    if (action.equals("com.callapp.contacts.ACTION_END_CALL")) {
                        c2 = 18;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 140404982:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE")) {
                        c2 = 19;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 191649471:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION")) {
                        c2 = 20;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 220990499:
                    if (action.equals("com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM")) {
                        c2 = 21;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 330141554:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION")) {
                        c2 = 22;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 770993452:
                    if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = 23;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 792851095:
                    if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = 24;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1226207038:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = 25;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1245394562:
                    if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION")) {
                        c2 = 26;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1536728658:
                    if (action.equals("com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                        c2 = 27;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1732128576:
                    if (action.equals("com.callapp.contacts.ACTION_END_CALL_TELECOM")) {
                        c2 = 28;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1767622982:
                    if (action.equals("com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE")) {
                        c2 = 29;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2026504148:
                    if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION")) {
                        c2 = 30;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 2029032418:
                    if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE")) {
                        c2 = 31;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    String stringExtra = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                    if (StringUtils.b((CharSequence) stringExtra)) {
                        MissedCallManager.a(PhoneManager.get().a(stringExtra), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                    }
                    notificationPendingIntentHandlerService.c(intent);
                    notificationPendingIntentHandlerService.a();
                    break;
                case 1:
                    d(intent);
                    a(intent);
                    MissedCallUtils.b(false);
                    break;
                case 2:
                    notificationPendingIntentHandlerService.f(intent);
                    MissedCallUtils.a(false);
                    break;
                case 3:
                    String stringExtra2 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                    if (StringUtils.b((CharSequence) stringExtra2)) {
                        MissedCallManager.a(PhoneManager.get().a(stringExtra2), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                    }
                    notificationPendingIntentHandlerService.e(intent);
                    MissedCallUtils.a(false);
                    break;
                case 4:
                case '\r':
                    a(intent);
                    break;
                case 5:
                    notificationPendingIntentHandlerService.f(intent);
                    MissedCallUtils.b(false);
                    break;
                case 6:
                    d(intent);
                    a(intent);
                    MissedCallUtils.a(false);
                    break;
                case 7:
                    String stringExtra3 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                    if (StringUtils.b((CharSequence) stringExtra3)) {
                        MissedCallManager.a(PhoneManager.get().a(stringExtra3), CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                    }
                    notificationPendingIntentHandlerService.c(intent);
                    notificationPendingIntentHandlerService.a();
                    break;
                case '\b':
                    int b2 = b(intent);
                    Activities.b(CallAppApplication.get(), ContactDetailsActivity.createIntent(CallAppApplication.get(), intent.getLongExtra(Constants.EXTRA_CONTACT_ID, 0L), intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER), null, true, null, "NotificationCallReminder", ENTRYPOINT.CALL_LOG_CONTACT_LIST));
                    CallRemindersManager.b(Long.valueOf(b2));
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.REMINDER);
                    a(intent);
                    break;
                case '\t':
                    PhoneManager.get().b(notificationPendingIntentHandlerService.getBaseContext());
                    if (!PhoneManager.get().isDefaultPhoneApp()) {
                        ProximityManager.get().b();
                        break;
                    }
                    break;
                case '\n':
                    if (PhoneManager.get().isDefaultPhoneApp()) {
                        PhoneManager.get();
                        PhoneManager.c();
                        OverlayManager.get().a();
                    }
                    notificationPendingIntentHandlerService.a();
                    break;
                case 11:
                    AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickNotificationCallAppPlus", "firstTimeExperience", Prefs.gw.get().booleanValue() ? 1.0d : 0.0d, new String[0]);
                    Activities.b(CallAppApplication.get(), ContactDetailsActivity.createIntent(CallAppApplication.get(), intent.getLongExtra(Constants.EXTRA_CONTACT_ID, 0L), intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER), null, true, null, "NotificationIM", ENTRYPOINT.CALLAPP_PLUS));
                    a(intent);
                    break;
                case '\f':
                    CallRemindersManager.b(Long.valueOf(b(intent)));
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.REMINDER);
                    break;
                case 14:
                    notificationPendingIntentHandlerService.c(intent);
                    notificationPendingIntentHandlerService.a();
                    break;
                case 15:
                    notificationPendingIntentHandlerService.f(intent);
                    CallRemindersManager.b(Long.valueOf(b(intent)));
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.REMINDER);
                    break;
                case 16:
                    MissedCallUtils.a(true);
                    break;
                case 17:
                    Uri data = intent.getData();
                    if (data != null) {
                        Intent intent2 = new Intent("android.intent.action.VIEW", data);
                        intent2.addFlags(268435456);
                        if (Activities.a(intent2)) {
                            Activities.a(notificationPendingIntentHandlerService.getApplicationContext(), intent2);
                            new Task() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.2
                                @Override // com.callapp.contacts.manager.task.Task
                                public void doTask() {
                                    FeedbackManager.get().b(Activities.getString(2131887414), (Integer) 17);
                                }
                            }.schedule(2200);
                            break;
                        }
                    }
                    break;
                case 18:
                    PhoneManager.get().a();
                    if (!PhoneManager.get().a()) {
                        PhoneManager.get().h();
                    }
                    if (PhoneManager.get().isDefaultPhoneApp()) {
                        OverlayManager.get().a();
                    }
                    notificationPendingIntentHandlerService.a();
                    break;
                case 19:
                    WhoViewedMyProfileDataManager.d();
                    break;
                case 20:
                    NotificationManager.d();
                    break;
                case 21:
                    if (PhoneManager.get().isDefaultPhoneApp()) {
                        PhoneStateManager.get().muteRingerIfNeeded();
                        Phone a2 = PhoneManager.get().a(intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER));
                        long longExtra = intent.getLongExtra(Constants.EXTRA_CONTACT_ID, -1L);
                        if (a2 != null && a2.isNotEmpty() && !CallLogUtils.b(a2.getRawNumber()) && longExtra != -1) {
                            PopupManager.get().b(notificationPendingIntentHandlerService, new QuickResponseDialogPopup(a2));
                        }
                        OverlayManager.get().a();
                        notificationPendingIntentHandlerService.a();
                        break;
                    }
                    break;
                case 22:
                    a(intent);
                    break;
                case 23:
                    String stringExtra4 = intent.getStringExtra("extra_im_package");
                    Singletons.SenderType senderType = (Singletons.SenderType) intent.getSerializableExtra("extra_im_type");
                    if (senderType != null) {
                        Singletons.get();
                        ImSender a3 = Singletons.a(senderType);
                        if (a3 != null) {
                            a3.openIm(CallAppApplication.get(), ContactUtils.a(PhoneManager.get().a(intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER"))));
                        } else {
                            Intent launchIntentForPackage = CallAppApplication.get().getPackageManager().getLaunchIntentForPackage(stringExtra4);
                            if (Activities.a(launchIntentForPackage)) {
                                Activities.a(CallAppApplication.get(), launchIntentForPackage);
                            }
                        }
                    } else {
                        Intent launchIntentForPackage2 = CallAppApplication.get().getPackageManager().getLaunchIntentForPackage(stringExtra4);
                        if (Activities.a(launchIntentForPackage2)) {
                            Activities.a(CallAppApplication.get(), launchIntentForPackage2);
                        }
                    }
                    a(intent);
                    notificationPendingIntentHandlerService.a();
                    break;
                case 24:
                    d(intent);
                    a(intent);
                    break;
                case 25:
                    notificationPendingIntentHandlerService.f(intent);
                    break;
                case 26:
                    MissedCallUtils.b(true);
                    break;
                case 27:
                    Activities.b(CallAppApplication.get(), new Intent(CallAppApplication.get(), CallAppPlusActivity.class));
                    a(intent);
                    break;
                case 28:
                    if (PhoneManager.get().isDefaultPhoneApp()) {
                        PhoneManager.get();
                        PhoneManager.f();
                        OverlayManager.get().a();
                    }
                    notificationPendingIntentHandlerService.a();
                    break;
                case 29:
                    notificationPendingIntentHandlerService.e(intent);
                    break;
                case 30:
                    String stringExtra5 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                    if (StringUtils.b((CharSequence) stringExtra5)) {
                        MissedCallManager.a(PhoneManager.get().a(stringExtra5), CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                    }
                    notificationPendingIntentHandlerService.e(intent);
                    MissedCallUtils.b(false);
                    break;
                case 31:
                    notificationPendingIntentHandlerService.e(intent);
                    CallRemindersManager.b(Long.valueOf(b(intent)));
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.REMINDER);
                    break;
            }
            if (intent.hasExtra("future_target_index_key")) {
                NotificationManager.get().c(intent.getIntExtra("future_target_index_key", -1));
            }
        }
    }

    private static int b(Intent intent) {
        if (intent == null) {
            return -1;
        }
        return intent.getIntExtra("notification_id", -1);
    }

    private void c(Intent intent) {
        int b2 = b(intent);
        long longExtra = intent.getLongExtra("call_reminder_notification_time", 0L);
        String stringExtra = intent.getStringExtra("com.callapp.contacts.EXTRA_FULL_NAME");
        String stringExtra2 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(longExtra);
        CallRemindersAdapter.a(CallAppApplication.get(), instance, stringExtra, stringExtra2, b2, null, false);
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.REMINDER, false);
        a(intent);
    }

    private static void d(Intent intent) {
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
        if (intent2 != null) {
            Activities.b(CallAppApplication.get(), intent2);
        }
    }

    private void e(Intent intent) {
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:" + intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER")));
        Activities.b(CallAppApplication.get(), intent2);
        a(intent);
    }

    private void f(Intent intent) {
        SimManager.SimId a2;
        final Intent intent2 = new Intent("android.intent.action.CALL");
        intent2.setData(Uri.parse("tel:" + intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER")));
        final Phone a3 = PhoneManager.get().a(intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER"));
        if (SimManager.get().isDualSimAvailable()) {
            try {
                a2 = PreferredSimManager.a(DeviceIdLoader.a(a3, 500), a3);
            } catch (DeviceIdLoader.OperationFailedException e) {
                new StringBuilder("failed to get contact id ").append(e.getMessage());
                CLog.a("NotificationPendingIntentHandlerService");
            }
            SimManager.a(CallAppApplication.get(), Activities.getString(2131888153), a2, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.3
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    if (i != SimManager.SimId.ASK.getSimId()) {
                        Singletons.get().getSimManager().a(a3, intent2, i);
                    }
                    Activities.a(CallAppApplication.get(), intent2);
                }
            });
            a(intent);
        }
        a2 = null;
        SimManager.a(CallAppApplication.get(), Activities.getString(2131888153), a2, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.3
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                if (i != SimManager.SimId.ASK.getSimId()) {
                    Singletons.get().getSimManager().a(a3, intent2, i);
                }
                Activities.a(CallAppApplication.get(), intent2);
            }
        });
        a(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int i, int i2) {
        new Task() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                NotificationPendingIntentHandlerService.a(NotificationPendingIntentHandlerService.this, intent);
            }
        }.execute();
        return 2;
    }
}
