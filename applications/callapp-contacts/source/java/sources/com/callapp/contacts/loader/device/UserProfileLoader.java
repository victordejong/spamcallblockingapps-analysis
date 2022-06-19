package com.callapp.contacts.loader.device;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/UserProfileLoader.class */
public class UserProfileLoader extends SimpleContactLoader {
    /* renamed from: a */
    public static void m28838a(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                List<String> userEmails = UserProfileManager.get().getUserEmails();
                boolean z = false;
                boolean z2 = false;
                if (CollectionUtils.m26068b(userEmails)) {
                    Iterator<String> it2 = userEmails.iterator();
                    while (true) {
                        z = z2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        z2 |= contactData.getUserProfileData().addEmail(new JSONEmail(it2.next(), 3));
                    }
                }
                if (z) {
                    contactData.updateEmails();
                }
            }
        }.execute();
    }

    /* renamed from: a */
    public static void m28837a(final ContactData contactData, final int i) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.8
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                try {
                    JSONSocialNetworkID jSONSocialNetworkID = new JSONSocialNetworkID(Singletons.get().getRemoteAccountHelper(i).getCurrentUserId(), true);
                    int i2 = i;
                    if (i2 == 1) {
                        contactData.getUserProfileData().setFacebookId(jSONSocialNetworkID);
                        contactData.updateFacebookId();
                    } else if (i2 == 4) {
                        contactData.getUserProfileData().setTwitterScreenName(jSONSocialNetworkID);
                        contactData.updateTwitterScreenName();
                    } else if (i2 == 6) {
                        contactData.getUserProfileData().setFoursquareId(jSONSocialNetworkID);
                        contactData.updateFoursquareId();
                    } else if (i2 == 7) {
                        contactData.getUserProfileData().setInstagramId(jSONSocialNetworkID);
                        contactData.updateInstagramId();
                    } else if (i2 == 9) {
                        contactData.getUserProfileData().setPinterestId(jSONSocialNetworkID);
                        contactData.updatePinterestId();
                    } else if (i2 != 10) {
                    } else {
                        contactData.getUserProfileData().setVkId(jSONSocialNetworkID);
                        contactData.updateVKId();
                    }
                } catch (QuotaReachedException e) {
                    CLog.m27609a(UserProfileLoader.class, e);
                }
            }
        }.execute();
    }

    /* renamed from: b */
    public static void m28836b(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.2
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                List<String> userWebsites = UserProfileManager.get().getUserWebsites();
                boolean z = false;
                boolean z2 = false;
                if (CollectionUtils.m26068b(userWebsites)) {
                    Iterator<String> it2 = userWebsites.iterator();
                    while (true) {
                        z = z2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        z2 |= contactData.getUserProfileData().addWebsite(new JSONWebsite(it2.next(), 1, true));
                    }
                }
                if (z) {
                    contactData.updateWebsites();
                }
            }
        }.execute();
    }

    /* renamed from: c */
    public static void m28835c(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.3
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userFullName = UserProfileManager.get().getUserFullName();
                if (StringUtils.m26045b((CharSequence) userFullName)) {
                    contactData.getUserProfileData().setFullName(userFullName);
                    contactData.updateFullName();
                }
            }
        }.execute();
    }

    /* renamed from: d */
    public static void m28834d(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.4
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userDefinition = UserProfileManager.get().getUserDefinition();
                if (StringUtils.m26045b((CharSequence) userDefinition)) {
                    contactData.getUserProfileData().setUserDefinition(userDefinition);
                    contactData.updateUserDefinition();
                }
            }
        }.execute();
    }

    /* renamed from: e */
    public static void m28833e(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.6
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                contactData.getUserProfileData().setBirthday(UserProfileManager.get().getBirthdate());
                contactData.updateBirthDate();
            }
        }.execute();
    }

    /* renamed from: f */
    public static void m28832f(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.7
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userAddress = UserProfileManager.get().getUserAddress();
                contactData.getUserProfileData().setAddress(StringUtils.m26059a((CharSequence) userAddress) ? null : new JSONAddress(userAddress, true));
                contactData.updateAddresses();
            }
        }.execute();
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        final ContactData contactData = loadContext.f25322a;
        m28838a(contactData);
        m28835c(contactData);
        m28834d(contactData);
        m28833e(contactData);
        m28832f(contactData);
        m28836b(contactData);
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.5
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userYoutubeChannel = UserProfileManager.get().getUserYoutubeChannel();
                if (StringUtils.m26045b((CharSequence) userYoutubeChannel)) {
                    contactData.getUserProfileData().addWebsite(new JSONWebsite(userYoutubeChannel));
                    contactData.updateWebsites();
                }
            }
        }.execute();
        Set<ContactField> set = loadContext.f25323b;
        for (DataSource dataSource : DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST) {
            if (set.contains(dataSource.socialIdField)) {
                m28837a(contactData, dataSource.dbCode);
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
