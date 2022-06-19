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
import io.objectbox.C17944a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/UserCorrectedInfoUtil.class */
public class UserCorrectedInfoUtil {
    /* renamed from: a */
    public static UserCorrectedData m27346a(long j, Phone phone) {
        return UserCorrectedDataManager.m28898a(j, phone.m26101a(), false);
    }

    /* renamed from: a */
    public static UserSpamData m27342a(Phone phone) {
        if (phone == null || !phone.isNotEmpty()) {
            return null;
        }
        return (UserSpamData) CallAppApplication.get().getObjectBoxStore().m4727d(UserSpamData.class).m4700e().m4611a(UserSpamData_.phone, phone.m26101a()).m4618a().m4641a();
    }

    /* renamed from: a */
    public static String m27341a(String str) {
        if (str == null) {
            return CallAppApplication.get().getString(2131886308);
        }
        String trim = str.trim();
        if (trim.length() < 2) {
            return CallAppApplication.get().getString(2131886311);
        }
        if (RegexUtils.m31903d(trim) < 2) {
            return CallAppApplication.get().getString(2131886312);
        }
        if (RegexUtils.m31901e(trim) > 7) {
            return CallAppApplication.get().getString(2131886310);
        }
        if (!RegexUtils.m31885p(trim)) {
            return null;
        }
        return CallAppApplication.get().getString(2131886309);
    }

    /* renamed from: a */
    public static void m27344a(ContactData contactData, Phone phone, boolean z) {
        UserSpamData userSpamData;
        if (phone == null || !phone.isNotEmpty()) {
            userSpamData = null;
        } else {
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserSpamData.class);
            UserSpamData m27342a = m27342a(phone);
            userSpamData = m27342a;
            if (m27342a == null) {
                AnalyticsDataManager.m31626b();
                userSpamData = new UserSpamData();
                userSpamData.setPhone(phone.m26101a());
            }
            userSpamData.setIsSpam(z);
            m4727d.m4711a((C17944a) userSpamData);
        }
        if (contactData != null) {
            UserSpamLoader.m28876a(contactData, userSpamData);
        }
    }

    /* renamed from: a */
    public static void m27343a(ContactData contactData, String str, Phone phone, int i) {
        UserCorrectedInfoLoader.m28896a(contactData, UserCorrectedDataManager.m28902a(contactData.getDeviceId(), phone, i, str));
        if (Prefs.f26534ft.get().booleanValue()) {
            Prefs.f26534ft.set(Boolean.FALSE);
            AnalyticsManager.get().mo28446a("Corrected info", "correct by user", (String) null, 0.0d);
        }
    }

    /* renamed from: a */
    public static void m27340a(final String str, final String str2, final Context context, String str3, int i, boolean z, final ContactData contactData, final Phone phone, final PopupDoneListener popupDoneListener) {
        PopupManager.get().m28209a(context, new WhoItWasDialog(null, str3, Activities.getString(2131886764), new String[]{Activities.getString(2131886766), Activities.getString(2131886763)}, new int[]{2131231855, 2131231501}, i, z, new DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel() { // from class: com.callapp.contacts.util.UserCorrectedInfoUtil.1
            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final String mo27336a(String str4) {
                return UserCorrectedInfoUtil.m27341a(str4);
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27338a(int i2, String str4, boolean z2) {
                String str5;
                int i3;
                RemoteAccountHelper remoteAccountHelper;
                JSONSocialNetworkID mo29108a;
                PopupDoneListener popupDoneListener2 = popupDoneListener;
                if (popupDoneListener2 != null) {
                    popupDoneListener2.popupDone(true);
                }
                if (i2 == 1) {
                    i3 = 2;
                    str5 = "Business";
                } else {
                    str5 = "Person";
                    i3 = 1;
                }
                UserCorrectedInfoUtil.m27344a(contactData, phone, z2);
                String trim = str4.trim();
                UserCorrectedInfoUtil.m27343a(contactData, trim, phone, i3);
                FastCacheDataManager.m28941c(contactData);
                AnalyticsManager.get().m28449a(str, str2, "contact type: ".concat(str5));
                DataSource dataSource = contactData.getDataSource(ContactField.fullName);
                if (dataSource.socialIdField != null && !UserPositiveNegativeManager.m28888a(contactData.getDeviceId(), contactData.getPhone(), dataSource.dbCode) && (remoteAccountHelper = Singletons.get().getRemoteAccountHelper(dataSource.dbCode)) != null && (mo29108a = remoteAccountHelper.mo29108a(contactData)) != null && StringUtils.m26045b((CharSequence) mo29108a.getId())) {
                    remoteAccountHelper.m29246a(contactData, mo29108a.getId());
                }
                if (StringUtils.m26045b((CharSequence) trim)) {
                    FastCacheDataManager.m28948a(contactData);
                    EventBusManager.f25138a.m29043c(InvalidateDataListener.f23122b, EventBusManager.CallAppDataType.CONTACTS);
                    if (!z2 || BlockManager.m28746b(phone)) {
                        return;
                    }
                    BlockManager.m28748b(context, trim, phone);
                }
            }

            @Override // com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListenerImpel, com.callapp.contacts.popup.contact.DialogWithEditTextDelegate.SingleChoiceWithTextListener
            /* renamed from: a */
            public final void mo27337a(DialogPopup dialogPopup, int i2) {
                boolean z2 = true;
                if (i2 != 1) {
                    z2 = false;
                }
                dialogPopup.showBottomBarCheckBox(z2);
            }
        }));
    }

    /* renamed from: a */
    public static boolean m27345a(ContactData contactData) {
        if (contactData.isVoiceMail()) {
            return false;
        }
        return contactData.isContactInDevice() ? m27339b(contactData.getPhone()) : contactData.isSpammer() || BlockManager.m28744d(contactData.getPhone());
    }

    /* renamed from: b */
    public static boolean m27339b(Phone phone) {
        UserSpamData m27342a = m27342a(phone);
        return m27342a != null && m27342a.isSpam();
    }

    public static List<UserSpamData> getAllUserSpam() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(UserSpamData.class).m4700e().m4618a().m4628c();
    }
}
