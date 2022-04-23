package com.callapp.contacts.loader.social.facebook;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.LoadIsFriendTask;
import com.callapp.contacts.loader.social.LoadMutualFriendsTask;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.model.contact.social.FacebookData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/FacebookLoader.class */
public class FacebookLoader extends BaseSocialLoader<FacebookData> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<ContactField> f14741b = EnumSet.of(ContactField.facebookId, ContactField.genomeData, ContactField.emails, ContactField.names, ContactField.fullName);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<ContactField> f14742c = EnumSet.of(ContactField.facebookId, ContactField.facebookData, ContactField.facebookSearchResults, ContactField.birthday, ContactField.emails, ContactField.mutualFriends, ContactField.fullName, ContactField.names, ContactField.organizations, ContactField.websites, ContactField.photoUrl, ContactField.isFriend, ContactField.uploadedPhotosUrl);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher.class */
    class FBPlaceOrPageByPhoneSearcher extends BaseSocialLoader<FacebookData>.BaseSearcher {
        FBPlaceOrPageByPhoneSearcher() {
            super();
        }

        private static String a(Phone phone) {
            if (!phone.isValidForSearch()) {
                return null;
            }
            String a2 = phone.a();
            if (StringUtils.b((CharSequence) a2)) {
                return a2;
            }
            return null;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final SocialSearchResults a(String str, ContactData contactData, Collection<String> collection, boolean z, List<PersonData> list) {
            if (list.size() == 1) {
                PersonData personData = list.get(0);
                if (StringUtils.b((CharSequence) personData.getPhone())) {
                    if (!PhoneManager.get().a(str).equals(PhoneManager.get().a(personData.getPhone()))) {
                        list.remove(personData);
                    }
                }
            }
            return super.a(str, contactData, collection, z, list);
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(FacebookLoader.this.getDataSource());
            for (Phone phone : contactData.getPhones()) {
                String a2 = a(phone);
                if (StringUtils.b((CharSequence) a2) && a(a2, contactData, (Collection<String>) negatives, true)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        public final boolean a(ContactData contactData, String str) {
            for (Phone phone : contactData.getPhones()) {
                String a2 = a(phone);
                if (StringUtils.b((CharSequence) a2) && str.equals(a2)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a() {
        this.f14723a.add(new FBPlaceOrPageByPhoneSearcher());
        super.a();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        if (contactData.getFacebookData() == null) {
            contactData.setFacebookData(new FacebookData());
        }
        MultiTaskRunner a2 = loadContext.a();
        if (CollectionUtils.a((Set) set, (Set) LoadFbUserOrPageTask.f14762c)) {
            a2.a(new LoadFbUserOrPageTask(this, loadContext, jSONSocialNetworkID));
        }
        if (CollectionUtils.a(set, ContactField.photoUrl)) {
            a2.a(new LoadFbPhotoTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.facebookData)) {
            FacebookHelper.get();
            if (FacebookHelper.n("user_posts")) {
                a2.a(new LoadFbLastPostTask(this, loadContext, jSONSocialNetworkID));
            }
            a2.a(new LoadFbLikesTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.uploadedPhotosUrl)) {
            a2.a(new LoadFbLastUploadedPhotos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getFacebookData().isFriend())) {
            a2.a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.mutualFriends)) {
            a2.a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        loadContext.a(a2, true);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final /* synthetic */ void a(LoadContext loadContext, FacebookData facebookData, FacebookData facebookData2) {
        FacebookData facebookData3 = facebookData;
        FacebookData facebookData4 = facebookData2;
        super.a(loadContext, facebookData3, facebookData4);
        final ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        MultiTaskRunner b2 = loadContext.b();
        List<UploadedPhoto> list = null;
        if (set.contains(ContactField.birthday)) {
            if (!Objects.a(facebookData3 == null ? null : facebookData3.getBirthday(), facebookData4 == null ? null : facebookData4.getBirthday())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateBirthDate();
                    }
                });
            }
        }
        if (set.contains(ContactField.emails)) {
            if (!Objects.a(facebookData3 == null ? null : facebookData3.getEmail(), facebookData4 == null ? null : facebookData4.getEmail())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateEmails();
                    }
                });
            }
        }
        if (set.contains(ContactField.organizations)) {
            if (!CollectionUtils.a(facebookData3 == null ? null : facebookData3.getOrganizations(), facebookData4 == null ? null : facebookData4.getOrganizations())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOrganizations();
                    }
                });
            }
        }
        if (set.contains(ContactField.websites)) {
            if (!CollectionUtils.a(facebookData3 == null ? null : facebookData3.getWebsites(), facebookData4 == null ? null : facebookData4.getWebsites())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.addresses)) {
            if (!Objects.a(facebookData3 == null ? null : facebookData3.getAddress(), facebookData4 == null ? null : facebookData4.getAddress())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.latLng)) {
            Double valueOf = facebookData3 == null ? null : Double.valueOf(facebookData3.getLat());
            Double valueOf2 = facebookData4 == null ? null : Double.valueOf(facebookData4.getLat());
            Double valueOf3 = facebookData3 == null ? null : Double.valueOf(facebookData3.getLng());
            Double valueOf4 = facebookData4 == null ? null : Double.valueOf(facebookData4.getLng());
            if (!Objects.a(valueOf, valueOf2) || !Objects.a(valueOf3, valueOf4)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateLatLng();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.categories)) {
            if (!CollectionUtils.a((Collection) (facebookData3 == null ? null : facebookData3.getCategories()), (Collection) (facebookData4 == null ? null : facebookData4.getCategories()))) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateCategories();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.openingHours)) {
            if (!Objects.a(facebookData3 == null ? null : facebookData3.getOpeningHours(), facebookData4 == null ? null : facebookData4.getOpeningHours())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.8
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOpeningHours();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.uploadedPhotosUrl)) {
            List<UploadedPhoto> uploadedPhotosUrl = facebookData3 == null ? null : facebookData3.getUploadedPhotosUrl();
            if (facebookData4 != null) {
                list = facebookData4.getUploadedPhotosUrl();
            }
            if (!Objects.a(uploadedPhotosUrl, list)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.9
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateUploadedPhotoUrls();
                    }
                });
            }
        }
        loadContext.a(b2, this.f14493d);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(ContactData contactData) {
        contactData.updateFacebookId();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public Class<FacebookData> getDataClass() {
        return FacebookData.class;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public DataSource getDataSource() {
        return DataSource.facebook;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return f14741b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f14742c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getFacebookHelper();
    }
}
