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
    /* renamed from: a */
    private void m27792a() {
        sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    }

    /* renamed from: a */
    private static void m27791a(Intent intent) {
        ContactDataChangeListener contactDataChangeListener;
        int m27789b = m27789b(intent);
        if (m27789b == 50) {
            RecognizedContactNotificationManager recognizedContactNotificationManager = RecognizedContactNotificationManager.get();
            if (recognizedContactNotificationManager.f25765b != null) {
                recognizedContactNotificationManager.f25765b.clear();
            }
            synchronized (recognizedContactNotificationManager.f25764a) {
                Iterator<Map.Entry<String, RecognizedContactNotificationManager.StoredNotificationData>> it2 = recognizedContactNotificationManager.f25764a.entrySet().iterator();
                while (it2.hasNext()) {
                    RecognizedContactNotificationManager.StoredNotificationData value = it2.next().getValue();
                    ContactLoaderManager contactLoaderManager = Singletons.get().getContactLoaderManager();
                    ContactData contactData = value.f25766a;
                    contactDataChangeListener = value.f25768c;
                    contactLoaderManager.unRegisterForContactDetailsStack(contactData, contactDataChangeListener);
                    it2.remove();
                }
            }
            CLog.m27611a(NotificationPendingIntentHandlerService.class, "Our IM ID notification Removed - cleaned after it");
            IMDataExtractionUtils.m28616b();
        }
        if (m27789b != -1) {
            NotificationManager.get().m28578a(m27789b);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    static /* synthetic */ void m27790a(NotificationPendingIntentHandlerService notificationPendingIntentHandlerService, Intent intent) {
        Object[] objArr;
        if (intent == null || intent.getAction() == null) {
            return;
        }
        String action = intent.getAction();
        action.hashCode();
        switch (action.hashCode()) {
            case -2103789264:
                if (action.equals("com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION")) {
                    objArr = null;
                    break;
                }
                objArr = -1;
                break;
            case -1839629790:
                if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_MISSED_CALL_NOTIFICATION")) {
                    objArr = 1;
                    break;
                }
                objArr = -1;
                break;
            case -1818854713:
                if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION")) {
                    objArr = 2;
                    break;
                }
                objArr = -1;
                break;
            case -1513077067:
                if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION")) {
                    objArr = 3;
                    break;
                }
                objArr = -1;
                break;
            case -1382823957:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION")) {
                    objArr = 4;
                    break;
                }
                objArr = -1;
                break;
            case -1169948286:
                if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION")) {
                    objArr = 5;
                    break;
                }
                objArr = -1;
                break;
            case -1104144857:
                if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_NOT_ANSWERED_NOTIFICATION")) {
                    objArr = 6;
                    break;
                }
                objArr = -1;
                break;
            case -1040592391:
                if (action.equals("com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION")) {
                    objArr = 7;
                    break;
                }
                objArr = -1;
                break;
            case -981921123:
                if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_NOTIFICATION")) {
                    objArr = 8;
                    break;
                }
                objArr = -1;
                break;
            case -966416463:
                if (action.equals("com.callapp.contacts.ACTION_TOGGLE_AUDIO")) {
                    objArr = 9;
                    break;
                }
                objArr = -1;
                break;
            case -514121711:
                if (action.equals("com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM")) {
                    objArr = 10;
                    break;
                }
                objArr = -1;
                break;
            case -408651277:
                if (action.equals("com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 11;
                    break;
                }
                objArr = -1;
                break;
            case -260450952:
                if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_DISMISS")) {
                    objArr = 12;
                    break;
                }
                objArr = -1;
                break;
            case -211101122:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 13;
                    break;
                }
                objArr = -1;
                break;
            case -99624575:
                if (action.equals("com.callapp.contacts.ACTION_CALL_SNOOZE")) {
                    objArr = 14;
                    break;
                }
                objArr = -1;
                break;
            case -7543280:
                if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_CALL")) {
                    objArr = 15;
                    break;
                }
                objArr = -1;
                break;
            case 42329543:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION")) {
                    objArr = 16;
                    break;
                }
                objArr = -1;
                break;
            case 104532212:
                if (action.equals("com.callapp.contacts.ACTION_UPGRADE_NOTIFICATION")) {
                    objArr = 17;
                    break;
                }
                objArr = -1;
                break;
            case 104914696:
                if (action.equals("com.callapp.contacts.ACTION_END_CALL")) {
                    objArr = 18;
                    break;
                }
                objArr = -1;
                break;
            case 140404982:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE")) {
                    objArr = 19;
                    break;
                }
                objArr = -1;
                break;
            case 191649471:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION")) {
                    objArr = 20;
                    break;
                }
                objArr = -1;
                break;
            case 220990499:
                if (action.equals("com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM")) {
                    objArr = 21;
                    break;
                }
                objArr = -1;
                break;
            case 330141554:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION")) {
                    objArr = 22;
                    break;
                }
                objArr = -1;
                break;
            case 770993452:
                if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 23;
                    break;
                }
                objArr = -1;
                break;
            case 792851095:
                if (action.equals("com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 24;
                    break;
                }
                objArr = -1;
                break;
            case 1226207038:
                if (action.equals("com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 25;
                    break;
                }
                objArr = -1;
                break;
            case 1245394562:
                if (action.equals("com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION")) {
                    objArr = 26;
                    break;
                }
                objArr = -1;
                break;
            case 1536728658:
                if (action.equals("com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION")) {
                    objArr = 27;
                    break;
                }
                objArr = -1;
                break;
            case 1732128576:
                if (action.equals("com.callapp.contacts.ACTION_END_CALL_TELECOM")) {
                    objArr = 28;
                    break;
                }
                objArr = -1;
                break;
            case 1767622982:
                if (action.equals("com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE")) {
                    objArr = 29;
                    break;
                }
                objArr = -1;
                break;
            case 2026504148:
                if (action.equals("com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION")) {
                    objArr = 30;
                    break;
                }
                objArr = -1;
                break;
            case 2029032418:
                if (action.equals("com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE")) {
                    objArr = 31;
                    break;
                }
                objArr = -1;
                break;
            default:
                objArr = -1;
                break;
        }
        switch (objArr) {
            case null:
                String stringExtra = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                if (StringUtils.m26045b((CharSequence) stringExtra)) {
                    MissedCallManager.m29823a(PhoneManager.get().m28239a(stringExtra), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                }
                notificationPendingIntentHandlerService.m27788c(intent);
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 1:
                m27787d(intent);
                m27791a(intent);
                MissedCallUtils.m27439b(false);
                break;
            case 2:
                notificationPendingIntentHandlerService.m27785f(intent);
                MissedCallUtils.m27440a(false);
                break;
            case 3:
                String stringExtra2 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                if (StringUtils.m26045b((CharSequence) stringExtra2)) {
                    MissedCallManager.m29823a(PhoneManager.get().m28239a(stringExtra2), CallReminderFrequentData.FrequentType.DELETE, 40, 0L);
                }
                notificationPendingIntentHandlerService.m27786e(intent);
                MissedCallUtils.m27440a(false);
                break;
            case 4:
            case 13:
                m27791a(intent);
                break;
            case 5:
                notificationPendingIntentHandlerService.m27785f(intent);
                MissedCallUtils.m27439b(false);
                break;
            case 6:
                m27787d(intent);
                m27791a(intent);
                MissedCallUtils.m27440a(false);
                break;
            case 7:
                String stringExtra3 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                if (StringUtils.m26045b((CharSequence) stringExtra3)) {
                    MissedCallManager.m29823a(PhoneManager.get().m28239a(stringExtra3), CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                }
                notificationPendingIntentHandlerService.m27788c(intent);
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 8:
                int m27789b = m27789b(intent);
                Activities.m27656b(CallAppApplication.get(), ContactDetailsActivity.createIntent(CallAppApplication.get(), intent.getLongExtra(Constants.EXTRA_CONTACT_ID, 0L), intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER), null, true, null, "NotificationCallReminder", ENTRYPOINT.CALL_LOG_CONTACT_LIST));
                CallRemindersManager.m28692b(Long.valueOf(m27789b));
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.REMINDER);
                m27791a(intent);
                break;
            case 9:
                PhoneManager.get().m28236b(notificationPendingIntentHandlerService.getBaseContext());
                if (!PhoneManager.get().isDefaultPhoneApp()) {
                    ProximityManager.get().m28509b();
                    break;
                }
                break;
            case 10:
                if (PhoneManager.get().isDefaultPhoneApp()) {
                    PhoneManager.get();
                    PhoneManager.m28231c();
                    OverlayManager.get().m28527a();
                }
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 11:
                AnalyticsManager.get().mo28444a(Constants.CALLAPP_PLUS, "ClickNotificationCallAppPlus", "firstTimeExperience", (Prefs.f26590gw.get().booleanValue() ? 4607182418800017408 : null) == 1 ? 1.0d : 0.0d, new String[0]);
                Activities.m27656b(CallAppApplication.get(), ContactDetailsActivity.createIntent(CallAppApplication.get(), intent.getLongExtra(Constants.EXTRA_CONTACT_ID, 0L), intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER), null, true, null, "NotificationIM", ENTRYPOINT.CALLAPP_PLUS));
                m27791a(intent);
                break;
            case 12:
                CallRemindersManager.m28692b(Long.valueOf(m27789b(intent)));
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.REMINDER);
                break;
            case 14:
                notificationPendingIntentHandlerService.m27788c(intent);
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 15:
                notificationPendingIntentHandlerService.m27785f(intent);
                CallRemindersManager.m28692b(Long.valueOf(m27789b(intent)));
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.REMINDER);
                break;
            case 16:
                MissedCallUtils.m27440a(true);
                break;
            case 17:
                Uri data = intent.getData();
                if (data != null) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", data);
                    intent2.addFlags(268435456);
                    if (Activities.m27672a(intent2)) {
                        Activities.m27685a(notificationPendingIntentHandlerService.getApplicationContext(), intent2);
                        new Task() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.2
                            @Override // com.callapp.contacts.manager.task.Task
                            public void doTask() {
                                FeedbackManager.get().m28664b(Activities.getString(2131887414), (Integer) 17);
                            }
                        }.schedule(2200);
                        break;
                    }
                }
                break;
            case 18:
                PhoneManager.get().m28250a();
                if (!PhoneManager.get().m28250a()) {
                    PhoneManager.get().m28222h();
                }
                if (PhoneManager.get().isDefaultPhoneApp()) {
                    OverlayManager.get().m28527a();
                }
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 19:
                WhoViewedMyProfileDataManager.m29352d();
                break;
            case 20:
                NotificationManager.m28533d();
                break;
            case 21:
                if (PhoneManager.get().isDefaultPhoneApp()) {
                    PhoneStateManager.get().muteRingerIfNeeded();
                    Phone m28239a = PhoneManager.get().m28239a(intent.getStringExtra(Constants.EXTRA_PHONE_NUMBER));
                    long longExtra = intent.getLongExtra(Constants.EXTRA_CONTACT_ID, -1L);
                    if (m28239a != null && m28239a.isNotEmpty() && !CallLogUtils.m27556b(m28239a.getRawNumber()) && longExtra != -1) {
                        PopupManager.get().m28198b(notificationPendingIntentHandlerService, new QuickResponseDialogPopup(m28239a));
                    }
                    OverlayManager.get().m28527a();
                    notificationPendingIntentHandlerService.m27792a();
                    break;
                }
                break;
            case 22:
                m27791a(intent);
                break;
            case 23:
                String stringExtra4 = intent.getStringExtra("extra_im_package");
                Singletons.SenderType senderType = (Singletons.SenderType) intent.getSerializableExtra("extra_im_type");
                if (senderType != null) {
                    Singletons.get();
                    ImSender m28494a = Singletons.m28494a(senderType);
                    if (m28494a != null) {
                        m28494a.openIm(CallAppApplication.get(), ContactUtils.m28327a(PhoneManager.get().m28239a(intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER"))));
                    } else {
                        Intent launchIntentForPackage = CallAppApplication.get().getPackageManager().getLaunchIntentForPackage(stringExtra4);
                        if (Activities.m27672a(launchIntentForPackage)) {
                            Activities.m27685a(CallAppApplication.get(), launchIntentForPackage);
                        }
                    }
                } else {
                    Intent launchIntentForPackage2 = CallAppApplication.get().getPackageManager().getLaunchIntentForPackage(stringExtra4);
                    if (Activities.m27672a(launchIntentForPackage2)) {
                        Activities.m27685a(CallAppApplication.get(), launchIntentForPackage2);
                    }
                }
                m27791a(intent);
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 24:
                m27787d(intent);
                m27791a(intent);
                break;
            case 25:
                notificationPendingIntentHandlerService.m27785f(intent);
                break;
            case 26:
                MissedCallUtils.m27439b(true);
                break;
            case 27:
                Activities.m27656b(CallAppApplication.get(), new Intent(CallAppApplication.get(), CallAppPlusActivity.class));
                m27791a(intent);
                break;
            case 28:
                if (PhoneManager.get().isDefaultPhoneApp()) {
                    PhoneManager.get();
                    PhoneManager.m28224f();
                    OverlayManager.get().m28527a();
                }
                notificationPendingIntentHandlerService.m27792a();
                break;
            case 29:
                notificationPendingIntentHandlerService.m27786e(intent);
                break;
            case 30:
                String stringExtra5 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
                if (StringUtils.m26045b((CharSequence) stringExtra5)) {
                    MissedCallManager.m29823a(PhoneManager.get().m28239a(stringExtra5), CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                }
                notificationPendingIntentHandlerService.m27786e(intent);
                MissedCallUtils.m27439b(false);
                break;
            case 31:
                notificationPendingIntentHandlerService.m27786e(intent);
                CallRemindersManager.m28692b(Long.valueOf(m27789b(intent)));
                EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.REMINDER);
                break;
        }
        if (!intent.hasExtra("future_target_index_key")) {
            return;
        }
        NotificationManager.get().m28534c(intent.getIntExtra("future_target_index_key", -1));
    }

    /* renamed from: b */
    private static int m27789b(Intent intent) {
        if (intent == null) {
            return -1;
        }
        return intent.getIntExtra("notification_id", -1);
    }

    /* renamed from: c */
    private void m27788c(Intent intent) {
        int m27789b = m27789b(intent);
        long longExtra = intent.getLongExtra("call_reminder_notification_time", 0L);
        String stringExtra = intent.getStringExtra("com.callapp.contacts.EXTRA_FULL_NAME");
        String stringExtra2 = intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER");
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(longExtra);
        CallRemindersAdapter.m31277a(CallAppApplication.get(), calendar, stringExtra, stringExtra2, m27789b, null, false);
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.REMINDER, false);
        m27791a(intent);
    }

    /* renamed from: d */
    private static void m27787d(Intent intent) {
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.INTENT");
        if (intent2 != null) {
            Activities.m27656b(CallAppApplication.get(), intent2);
        }
    }

    /* renamed from: e */
    private void m27786e(Intent intent) {
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:" + intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER")));
        Activities.m27656b(CallAppApplication.get(), intent2);
        m27791a(intent);
    }

    /* renamed from: f */
    private void m27785f(Intent intent) {
        SimManager.SimId m28907a;
        final Intent intent2 = new Intent("android.intent.action.CALL");
        intent2.setData(Uri.parse("tel:" + intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER")));
        final Phone m28239a = PhoneManager.get().m28239a(intent.getStringExtra("com.callapp.contacts.EXTRA_RAW_NUMBER"));
        if (SimManager.get().isDualSimAvailable()) {
            try {
                m28907a = PreferredSimManager.m28907a(DeviceIdLoader.m28854a(m28239a, 500), m28239a);
            } catch (DeviceIdLoader.OperationFailedException e) {
                new StringBuilder("failed to get contact id ").append(e.getMessage());
                CLog.m27606a("NotificationPendingIntentHandlerService");
            }
            SimManager.m28159a(CallAppApplication.get(), Activities.getString(2131888153), m28907a, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.3
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    if (i != SimManager.SimId.ASK.getSimId()) {
                        Singletons.get().getSimManager().m28148a(m28239a, intent2, i);
                    }
                    Activities.m27685a(CallAppApplication.get(), intent2);
                }
            });
            m27791a(intent);
        }
        m28907a = null;
        SimManager.m28159a(CallAppApplication.get(), Activities.getString(2131888153), m28907a, new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.service.NotificationPendingIntentHandlerService.3
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                if (i != SimManager.SimId.ASK.getSimId()) {
                    Singletons.get().getSimManager().m28148a(m28239a, intent2, i);
                }
                Activities.m27685a(CallAppApplication.get(), intent2);
            }
        });
        m27791a(intent);
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
                NotificationPendingIntentHandlerService.m27790a(NotificationPendingIntentHandlerService.this, intent);
            }
        }.execute();
        return 2;
    }
}
