package com.callapp.contacts.manager.messaging;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.util.Pair;
import com.appsflyer.AppsFlyerLib;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileDataManager;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactDataChangeListener;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.invites.ReferAndEarnDataManager;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.contact.DialogMessageWithTopImage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AppRater;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.HtmlUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import net.pubnative.lite.sdk.models.APIMeta;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService.class */
public class CallAppFirebaseMessagingService extends FirebaseMessagingService {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/messaging/CallAppFirebaseMessagingService$WhoViewedMyProfileContactDataChangerListener.class */
    static class WhoViewedMyProfileContactDataChangerListener implements ContactDataChangeListener {
        final ENTRYPOINT entrypoint;
        final String fullName;
        final String globalNumber;
        final AtomicBoolean viewMeAdded = new AtomicBoolean(false);
        final AtomicBoolean incognitoLoaded = new AtomicBoolean(false);
        final AtomicBoolean photoLoaded = new AtomicBoolean(false);

        public WhoViewedMyProfileContactDataChangerListener(String str, String str2, ENTRYPOINT entrypoint) {
            this.globalNumber = str;
            this.fullName = str2;
            this.entrypoint = entrypoint;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void addViewMeAndCancelWhoViewedMyContactDataListener(ContactData contactData, ContactDataChangeListener contactDataChangeListener, String str, String str2, ENTRYPOINT entrypoint) {
            ContactLoaderManager.get().unRegisterForContactDetailsStack(contactData, contactDataChangeListener);
            if (!contactData.isIncognito() && !contactData.isSpammer() && !BlockManager.b(contactData.getPhone())) {
                WhoViewedMyProfileDataManager.a(str, str2, entrypoint);
            }
        }

        @Override // com.callapp.contacts.model.contact.ContactDataChangeListener
        public void onContactChanged(final ContactData contactData, Set<ContactField> set) {
            if (CollectionUtils.a(set, ContactField.isIncognito)) {
                this.incognitoLoaded.set(true);
                if (this.photoLoaded.get() && !this.viewMeAdded.getAndSet(true)) {
                    addViewMeAndCancelWhoViewedMyContactDataListener(contactData, this, this.globalNumber, this.fullName, this.entrypoint);
                }
            }
            if (CollectionUtils.a(set, ContactField.photoUrl)) {
                this.photoLoaded.set(true);
                if (this.incognitoLoaded.get() && !this.viewMeAdded.getAndSet(true)) {
                    addViewMeAndCancelWhoViewedMyContactDataListener(contactData, this, this.globalNumber, this.fullName, this.entrypoint);
                }
            }
            if (CollectionUtils.a(set, ContactField.genomeData)) {
                new Task() { // from class: com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService.WhoViewedMyProfileContactDataChangerListener.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        if (!WhoViewedMyProfileContactDataChangerListener.this.viewMeAdded.getAndSet(true)) {
                            WhoViewedMyProfileContactDataChangerListener whoViewedMyProfileContactDataChangerListener = WhoViewedMyProfileContactDataChangerListener.this;
                            whoViewedMyProfileContactDataChangerListener.addViewMeAndCancelWhoViewedMyContactDataListener(contactData, this, whoViewedMyProfileContactDataChangerListener.globalNumber, WhoViewedMyProfileContactDataChangerListener.this.fullName, WhoViewedMyProfileContactDataChangerListener.this.entrypoint);
                        }
                    }
                }.schedule(10000);
            }
        }
    }

    public static void a(String str, Map<String, String> map) {
        boolean booleanValue;
        boolean booleanValue2;
        if (!StringUtils.b(str, "448940416822")) {
            CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to wrong from id: ".concat(String.valueOf(str)));
            return;
        }
        String str2 = map.get("callapp_message_id");
        String str3 = map.get("audience_country_equals");
        String str4 = map.get("audience_version_equals");
        String str5 = map.get("audience_version_equals_or_lower");
        String str6 = map.get("audience_version_equals_or_higher");
        String str7 = map.get("audience_only_premium");
        String str8 = map.get("audience_only_not_premium");
        String str9 = map.get("audience_more_than_days_since_install");
        String str10 = map.get("audience_less_or_equal_days_since_install");
        if (StringUtils.b((CharSequence) str3)) {
            String countryIso = PhoneManager.get().getCountryIso();
            if (!StringUtils.b((Object) str3, (Object) countryIso)) {
                CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience country. User country: " + countryIso + ", Audience country: " + str3);
                return;
            }
        }
        if (StringUtils.b((CharSequence) str4)) {
            try {
                int intValue = Integer.valueOf(str4).intValue();
                int versionCode = CallAppApplication.get().getVersionCode();
                if (intValue != versionCode) {
                    CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience version. User version: " + versionCode + ", audience version equals: " + intValue);
                    return;
                }
            } catch (NumberFormatException e) {
                CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to incorrect audienceVersion format: ".concat(String.valueOf(str4)));
                return;
            }
        }
        if (StringUtils.b((CharSequence) str5)) {
            try {
                int intValue2 = Integer.valueOf(str5).intValue();
                int versionCode2 = CallAppApplication.get().getVersionCode();
                if (versionCode2 > intValue2) {
                    CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience version. User version: " + versionCode2 + ", audience version equals or lower: " + intValue2);
                    return;
                }
            } catch (NumberFormatException e2) {
                CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to incorrect audienceVersion format: ".concat(String.valueOf(str5)));
                return;
            }
        }
        if (StringUtils.b((CharSequence) str6)) {
            try {
                int intValue3 = Integer.valueOf(str6).intValue();
                int versionCode3 = CallAppApplication.get().getVersionCode();
                if (versionCode3 < intValue3) {
                    CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience version. User version: " + versionCode3 + ", audience version equals or higher: " + intValue3);
                    return;
                }
            } catch (NumberFormatException e3) {
                CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to incorrect audienceVersion format: ".concat(String.valueOf(str6)));
                return;
            }
        }
        if (StringUtils.b((CharSequence) str7) && !(booleanValue2 = Prefs.cJ.get().booleanValue())) {
            CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience only premium. User is Premium: " + booleanValue2 + ", audience only premium");
        } else if (!StringUtils.b((CharSequence) str8) || !(booleanValue = Prefs.cJ.get().booleanValue())) {
            if (StringUtils.b((CharSequence) str9)) {
                try {
                    long longValue = Long.valueOf(str9).longValue();
                    long daysSinceInstall = CallAppApplication.get().getDaysSinceInstall();
                    if (daysSinceInstall <= longValue) {
                        CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience more than days since install. User days since install: " + daysSinceInstall + ", audience days since install: " + longValue);
                        return;
                    }
                } catch (NumberFormatException e4) {
                    CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to incorrect audienceVersion format: ".concat(String.valueOf(str4)));
                    return;
                }
            }
            if (StringUtils.b((CharSequence) str10)) {
                try {
                    long longValue2 = Long.valueOf(str10).longValue();
                    long daysSinceInstall2 = CallAppApplication.get().getDaysSinceInstall();
                    if (daysSinceInstall2 > longValue2) {
                        CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience less or equal days since install. User days since install: " + daysSinceInstall2 + ", audience days since install: " + longValue2);
                        return;
                    }
                } catch (NumberFormatException e5) {
                    CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to incorrect audienceVersion format: ".concat(String.valueOf(str4)));
                    return;
                }
            }
            if (StringUtils.b((CharSequence) str2)) {
                str2.hashCode();
                char c2 = 65535;
                switch (str2.hashCode()) {
                    case 587458849:
                        if (str2.equals("callapp_rate_us")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case 1237958818:
                        if (str2.equals("callapp_deeplink")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case 1819869139:
                        if (str2.equals("callapp_fcm_dialog")) {
                            c2 = 2;
                            break;
                        }
                        break;
                }
                switch (c2) {
                    case 0:
                        if (!AppRater.isRatedYet()) {
                            AppRater.a(CallAppApplication.get(), null, true, true);
                            return;
                        } else {
                            CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to user already rated: ".concat(String.valueOf(str2)));
                            return;
                        }
                    case 1:
                        String str11 = map.get("callapp_fcm_dialog_applink");
                        if (StringUtils.b((CharSequence) str11)) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str11));
                            intent.setPackage(CallAppApplication.get().getPackageName());
                            Activities.b(CallAppApplication.get(), intent);
                            return;
                        }
                        return;
                    case 2:
                        final String str12 = map.get("callapp_fcm_dialog_image");
                        final String str13 = map.get("callapp_fcm_dialog_title");
                        final String str14 = map.get("callapp_fcm_dialog_message");
                        final String string = StringUtils.b((CharSequence) map.get("callapp_fcm_dialog_ok_button_text")) ? map.get("callapp_fcm_dialog_ok_button_text") : Activities.getString(2131887338);
                        final String string2 = StringUtils.b((CharSequence) map.get("callapp_fcm_dialog_cancel_button_text")) ? map.get("callapp_fcm_dialog_cancel_button_text") : Activities.getString(2131886505);
                        final String str15 = map.get("callapp_fcm_dialog_applink");
                        final String str16 = map.get("callapp_fcm_dialog_applink_negative");
                        if (!StringUtils.b((CharSequence) str13) || !StringUtils.b((CharSequence) str14)) {
                            CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to empty title or message: " + str13 + ", " + str14 + ", " + str2);
                            return;
                        } else if (StringUtils.b((CharSequence) str12)) {
                            new Task() { // from class: com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService.1
                                @Override // com.callapp.contacts.manager.task.Task
                                public final void doTask() {
                                    CallAppFirebaseMessagingService.b(str12, str13, str14, string, string2, str15, str16);
                                }
                            }.execute();
                            return;
                        } else {
                            b(null, str13, str14, string, string2, str15, str16);
                            return;
                        }
                    default:
                        CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to invalid message id: ".concat(String.valueOf(str2)));
                        return;
                }
            } else {
                CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to empty message id");
            }
        } else {
            CLog.a(CallAppFirebaseMessagingService.class, "Discarding message due to audience only not premium. User is Premium: " + booleanValue + ", audience only not premium");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2, String str3, String str4, String str5, final String str6, final String str7) {
        PopupManager.get().a(CallAppApplication.get(), new DialogMessageWithTopImage(str, 2131232404, str2, HtmlUtils.b(str3), str4, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService.2
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                if (StringUtils.b((CharSequence) str6)) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str6));
                    intent.setPackage("com.callapp.contacts");
                    if (Activities.a(intent)) {
                        Activities.b(CallAppApplication.get(), intent);
                        return;
                    }
                    Activities.b(CallAppApplication.get(), new Intent("android.intent.action.VIEW", Uri.parse(str6)));
                }
            }
        }, str5, ThemeUtils.a(CallAppApplication.get(), 2131099890), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
            public final void onClickListener(Activity activity) {
                if (StringUtils.b((CharSequence) str7)) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str7));
                    intent.setPackage("com.callapp.contacts");
                    if (Activities.a(intent)) {
                        Activities.b(CallAppApplication.get(), intent);
                        return;
                    }
                    Activities.b(CallAppApplication.get(), new Intent("android.intent.action.VIEW", Uri.parse(str7)));
                }
            }
        }) { // from class: com.callapp.contacts.manager.messaging.CallAppFirebaseMessagingService.4
            @Override // com.callapp.contacts.manager.popup.DialogPopup
            public final void onDialogDismissed(DialogInterface dialogInterface) {
                super.onDialogDismissed(dialogInterface);
            }
        });
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        CLog.a(CallAppFirebaseMessagingService.class, "From: " + remoteMessage.getFrom());
        if (remoteMessage.getData().size() > 0) {
            CLog.a(CallAppFirebaseMessagingService.class, "Message data payload: " + remoteMessage.getData());
        }
        if (remoteMessage.getNotification() != null) {
            CLog.a(CallAppFirebaseMessagingService.class, "Message Notification Body: " + remoteMessage.getNotification().f32451a);
        }
        if (remoteMessage.toIntent().hasExtra("key")) {
            ReferAndEarnDataManager.addThePoints(remoteMessage.toIntent().getExtras().getString("key"), remoteMessage.toIntent().getExtras().getString("pn"), ((int) CallAppRemoteConfigManager.get().b("ReferAndEarnPointValue")) * Integer.parseInt(remoteMessage.toIntent().getExtras().getString(APIMeta.POINTS)));
        } else if (remoteMessage.toIntent().hasExtra("myp")) {
            String string = remoteMessage.toIntent().getExtras().getString("myp");
            String string2 = remoteMessage.toIntent().getExtras().getString("vs");
            String string3 = remoteMessage.toIntent().getExtras().getString("nm");
            ENTRYPOINT entrypoint = StringUtils.g(string2) ? ENTRYPOINT.values()[Integer.parseInt(string2)] : null;
            FeedbackManager feedbackManager = FeedbackManager.get();
            feedbackManager.a(string + org.apache.commons.lang3.StringUtils.SPACE + string3 + org.apache.commons.lang3.StringUtils.SPACE + entrypoint, 80);
            if (entrypoint != null && StringUtils.b((CharSequence) string)) {
                WhoViewedMyProfileContactDataChangerListener whoViewedMyProfileContactDataChangerListener = new WhoViewedMyProfileContactDataChangerListener(string, string3, entrypoint);
                Pair<ContactData, Set<ContactField>> registerForContactDetailsStack = ContactLoaderManager.get().registerForContactDetailsStack(Phone.b(string), null, 0L, whoViewedMyProfileContactDataChangerListener, ContactFieldEnumSets.ALL);
                if (((Set) registerForContactDetailsStack.second).size() > 0) {
                    whoViewedMyProfileContactDataChangerListener.onContactChanged((ContactData) registerForContactDetailsStack.first, (Set) registerForContactDetailsStack.second);
                }
            }
        } else {
            a(remoteMessage.getFrom(), remoteMessage.getData());
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        super.onNewToken(str);
        CLog.a(CallAppFirebaseMessagingService.class, "FCM onNewToken: ".concat(String.valueOf(str)));
        FcmManager.get().a();
        try {
            AppsFlyerLib.getInstance().updateServerUninstallToken(CallAppApplication.get(), str);
        } catch (Exception e) {
        }
    }
}
