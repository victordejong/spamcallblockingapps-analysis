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
    public static void a(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                List<String> userEmails = UserProfileManager.get().getUserEmails();
                boolean z = false;
                boolean z2 = false;
                if (CollectionUtils.b(userEmails)) {
                    Iterator<String> it2 = userEmails.iterator();
                    while (true) {
                        z = z2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        z2 |= ContactData.this.getUserProfileData().addEmail(new JSONEmail(it2.next(), 3));
                    }
                }
                if (z) {
                    ContactData.this.updateEmails();
                }
            }
        }.execute();
    }

    public static void a(final ContactData contactData, final int i) {
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
                    } else if (i2 == 10) {
                        contactData.getUserProfileData().setVkId(jSONSocialNetworkID);
                        contactData.updateVKId();
                    }
                } catch (QuotaReachedException e) {
                    CLog.a(UserProfileLoader.class, e);
                }
            }
        }.execute();
    }

    public static void b(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.2
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                List<String> userWebsites = UserProfileManager.get().getUserWebsites();
                boolean z = false;
                boolean z2 = false;
                if (CollectionUtils.b(userWebsites)) {
                    Iterator<String> it2 = userWebsites.iterator();
                    while (true) {
                        z = z2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        z2 |= ContactData.this.getUserProfileData().addWebsite(new JSONWebsite(it2.next(), 1, true));
                    }
                }
                if (z) {
                    ContactData.this.updateWebsites();
                }
            }
        }.execute();
    }

    public static void c(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.3
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userFullName = UserProfileManager.get().getUserFullName();
                if (StringUtils.b((CharSequence) userFullName)) {
                    ContactData.this.getUserProfileData().setFullName(userFullName);
                    ContactData.this.updateFullName();
                }
            }
        }.execute();
    }

    public static void d(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.4
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userDefinition = UserProfileManager.get().getUserDefinition();
                if (StringUtils.b((CharSequence) userDefinition)) {
                    ContactData.this.getUserProfileData().setUserDefinition(userDefinition);
                    ContactData.this.updateUserDefinition();
                }
            }
        }.execute();
    }

    public static void e(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.6
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                ContactData.this.getUserProfileData().setBirthday(UserProfileManager.get().getBirthdate());
                ContactData.this.updateBirthDate();
            }
        }.execute();
    }

    public static void f(final ContactData contactData) {
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.7
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userAddress = UserProfileManager.get().getUserAddress();
                ContactData.this.getUserProfileData().setAddress(StringUtils.a((CharSequence) userAddress) ? null : new JSONAddress(userAddress, true));
                ContactData.this.updateAddresses();
            }
        }.execute();
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        final ContactData contactData = loadContext.f14535a;
        a(contactData);
        c(contactData);
        d(contactData);
        e(contactData);
        f(contactData);
        b(contactData);
        new Task() { // from class: com.callapp.contacts.loader.device.UserProfileLoader.5
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                String userYoutubeChannel = UserProfileManager.get().getUserYoutubeChannel();
                if (StringUtils.b((CharSequence) userYoutubeChannel)) {
                    ContactData.this.getUserProfileData().addWebsite(new JSONWebsite(userYoutubeChannel));
                    ContactData.this.updateWebsites();
                }
            }
        }.execute();
        Set<ContactField> set = loadContext.f14536b;
        for (DataSource dataSource : DataSource.ACTIVE_SOCIAL_DATA_SOURCES_LIST) {
            if (set.contains(dataSource.socialIdField)) {
                a(contactData, dataSource.dbCode);
            }
        }
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
