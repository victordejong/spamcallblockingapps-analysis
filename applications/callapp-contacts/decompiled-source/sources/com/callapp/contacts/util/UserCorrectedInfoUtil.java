package com.callapp.contacts.util;

import android.content.Context;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.UserCorrectedDataManager;
import com.callapp.contacts.loader.UserCorrectedInfoLoader;
import com.callapp.contacts.loader.UserPositiveNegativeManager;
import com.callapp.contacts.loader.UserSpamLoader;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupDoneListener;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserSpamData;
import com.callapp.contacts.model.objectbox.UserSpamData_;
import com.callapp.contacts.popup.contact.DialogWithEditTextDelegate;
import com.callapp.contacts.popup.contact.WhoItWasDialog;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/UserCorrectedInfoUtil.class */
public class UserCorrectedInfoUtil {
    public static UserCorrectedData a(long j, Phone phone) {
        return UserCorrectedDataManager.a(j, phone.a(), false);
    }

    public static UserSpamData a(Phone phone) {
        if (phone == null || !phone.isNotEmpty()) {
            return null;
        }
        return (UserSpamData) CallAppApplication.get().getObjectBoxStore().d(UserSpamData.class).e().a(UserSpamData_.phone, phone.a()).a().a();
    }

    public static String a(String str) {
        if (str == null) {
            return CallAppApplication.get().getString(2131886308);
        }
        String trim = str.trim();
        if (trim.length() < 2) {
            return CallAppApplication.get().getString(2131886311);
        }
        if (RegexUtils.d(trim) < 2) {
            return CallAppApplication.get().getString(2131886312);
        }
        if (RegexUtils.e(trim) > 7) {
            return CallAppApplication.get().getString(2131886310);
        }
        if (RegexUtils.p(trim)) {
            return CallAppApplication.get().getString(2131886309);
        }
        return null;
    }

    public static void a(ContactData contactData, Phone phone, boolean z) {
        UserSpamData userSpamData;
        if (phone == null || !phone.isNotEmpty()) {
            userSpamData = null;
        } else {
            a d2 = CallAppApplication.get().getObjectBoxStore().d(UserSpamData.class);
            UserSpamData a2 = a(phone);
            userSpamData = a2;
            if (a2 == null) {
                AnalyticsDataManager.b();
                userSpamData = new UserSpamData();
                userSpamData.setPhone(phone.a());
            }
            userSpamData.setIsSpam(z);
            d2.a((a) userSpamData);
        }
        if (contactData != null) {
            UserSpamLoader.a(contactData, userSpamData);
        }
    }

    public static void a(ContactData contactData, String str, Phone phone, int i) {
        UserCorrectedInfoLoader.a(contactData, UserCorrectedDataManager.a(contactData.getDeviceId(), phone, i, str));
        if (Prefs.ft.get().booleanValue()) {
            Prefs.ft.set(Boolean.FALSE);
            AnalyticsManager.get().a("Corrected info", "correct by user", (String) null, 0.0d);
        }
    }

    public static void a(final String str, final String str2, final Context context, String str3, int i, boolean z, final ContactData contactData, final Phone phone, final PopupDoneListener popupDoneListener) {
        PopupManager.get().a(context, new WhoItWasDialog(null, str3, Activities.getString(2131886764), new String[]{Activities.getString(2131886766), Activities.getString(2131886763)}, new int[]{2131231855, 2131231501}, i, z, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.UserCorrectedInfoUtil.1
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final String a(String str4) {
                return UserCorrectedInfoUtil.a(str4);
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(int i2, String str4, boolean z2) {
                String str5;
                RemoteAccountHelper remoteAccountHelper;
                JSONSocialNetworkID a2;
                PopupDoneListener popupDoneListener2 = PopupDoneListener.this;
                int i3 = 1;
                if (popupDoneListener2 != null) {
                    popupDoneListener2.popupDone(true);
                }
                if (i2 == 1) {
                    i3 = 2;
                    str5 = "Business";
                } else {
                    str5 = "Person";
                }
                UserCorrectedInfoUtil.a(contactData, phone, z2);
                String trim = str4.trim();
                UserCorrectedInfoUtil.a(contactData, trim, phone, i3);
                FastCacheDataManager.c(contactData);
                AnalyticsManager.get().a(str, str2, "contact type: ".concat(str5));
                DataSource dataSource = contactData.getDataSource(ContactField.fullName);
                if (!(dataSource.socialIdField == null || UserPositiveNegativeManager.a(contactData.getDeviceId(), contactData.getPhone(), dataSource.dbCode) || (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode)) == null || (a2 = remoteAccountHelper.a(contactData)) == null || !StringUtils.b((CharSequence) a2.getId()))) {
                    remoteAccountHelper.a(contactData, a2.getId());
                }
                if (StringUtils.b((CharSequence) trim)) {
                    FastCacheDataManager.a(contactData);
                    EventBusManager.f14368a.c(InvalidateDataListener.f12949b, EventBusManager.CallAppDataType.CONTACTS);
                    if (z2 && !BlockManager.b(phone)) {
                        BlockManager.b(context, trim, phone);
                    }
                }
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            public final void a(DialogPopup dialogPopup, int i2) {
                boolean z2 = true;
                if (i2 != 1) {
                    z2 = false;
                }
                dialogPopup.showBottomBarCheckBox(z2);
            }
        }));
    }

    public static boolean a(ContactData contactData) {
        if (contactData.isVoiceMail()) {
            return false;
        }
        return contactData.isContactInDevice() ? b(contactData.getPhone()) : contactData.isSpammer() || BlockManager.d(contactData.getPhone());
    }

    public static boolean b(Phone phone) {
        UserSpamData a2 = a(phone);
        return a2 != null && a2.isSpam();
    }

    public static List<UserSpamData> getAllUserSpam() {
        return CallAppApplication.get().getObjectBoxStore().d(UserSpamData.class).e().a().c();
    }
}
