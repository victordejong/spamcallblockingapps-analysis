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

    /* renamed from: b */
    private static final Set<ContactField> f25536b = EnumSet.of(ContactField.facebookId, ContactField.genomeData, ContactField.emails, ContactField.names, ContactField.fullName);

    /* renamed from: c */
    private static final EnumSet<ContactField> f25537c = EnumSet.of(ContactField.facebookId, ContactField.facebookData, ContactField.facebookSearchResults, ContactField.birthday, ContactField.emails, ContactField.mutualFriends, ContactField.fullName, ContactField.names, ContactField.organizations, ContactField.websites, ContactField.photoUrl, ContactField.isFriend, ContactField.uploadedPhotosUrl);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/social/facebook/FacebookLoader$FBPlaceOrPageByPhoneSearcher.class */
    class FBPlaceOrPageByPhoneSearcher extends BaseSocialLoader<FacebookData>.BaseSearcher {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        FBPlaceOrPageByPhoneSearcher() {
            super();
            FacebookLoader.this = r4;
        }

        /* renamed from: a */
        private static String m28775a(Phone phone) {
            if (phone.isValidForSearch()) {
                String m26101a = phone.m26101a();
                if (!StringUtils.m26045b((CharSequence) m26101a)) {
                    return null;
                }
                return m26101a;
            }
            return null;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final SocialSearchResults mo28774a(String str, ContactData contactData, Collection<String> collection, boolean z, List<PersonData> list) {
            if (list.size() == 1) {
                PersonData personData = list.get(0);
                if (StringUtils.m26045b((CharSequence) personData.getPhone())) {
                    if (!PhoneManager.get().m28239a(str).equals(PhoneManager.get().m28239a(personData.getPhone()))) {
                        list.remove(personData);
                    }
                }
            }
            return super.mo28774a(str, contactData, collection, z, list);
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28777a(ContactData contactData) {
            Set<String> negatives = contactData.getNegatives(FacebookLoader.this.getDataSource());
            for (Phone phone : contactData.getPhones()) {
                String m28775a = m28775a(phone);
                if (StringUtils.m26045b((CharSequence) m28775a) && m28782a(m28775a, contactData, (Collection<String>) negatives, true)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.callapp.contacts.loader.social.BaseSocialLoader.BaseSearcher
        /* renamed from: a */
        public final boolean mo28776a(ContactData contactData, String str) {
            for (Phone phone : contactData.getPhones()) {
                String m28775a = m28775a(phone);
                if (StringUtils.m26045b((CharSequence) m28775a) && str.equals(m28775a)) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28778a() {
        this.f25518a.add(new FBPlaceOrPageByPhoneSearcher());
        super.mo28778a();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28773a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        if (contactData.getFacebookData() == null) {
            contactData.setFacebookData(new FacebookData());
        }
        MultiTaskRunner m28869a = loadContext.m28869a();
        if (CollectionUtils.m26070a((Set) set, (Set) LoadFbUserOrPageTask.f25557c)) {
            m28869a.m28974a(new LoadFbUserOrPageTask(this, loadContext, jSONSocialNetworkID));
        }
        if (CollectionUtils.m26073a(set, ContactField.photoUrl)) {
            m28869a.m28974a(new LoadFbPhotoTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.facebookData)) {
            FacebookHelper.get();
            if (FacebookHelper.m29200n("user_posts")) {
                m28869a.m28974a(new LoadFbLastPostTask(this, loadContext, jSONSocialNetworkID));
            }
            m28869a.m28974a(new LoadFbLikesTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.uploadedPhotosUrl)) {
            m28869a.m28974a(new LoadFbLastUploadedPhotos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getFacebookData().isFriend())) {
            m28869a.m28974a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.mutualFriends)) {
            m28869a.m28974a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        loadContext.m28868a(m28869a, true);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final /* synthetic */ void mo28772a(LoadContext loadContext, FacebookData facebookData, FacebookData facebookData2) {
        FacebookData facebookData3 = facebookData;
        FacebookData facebookData4 = facebookData2;
        super.mo28772a(loadContext, facebookData3, facebookData4);
        final ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (set.contains(ContactField.birthday)) {
            if (!Objects.m31915a(facebookData3 == null ? null : facebookData3.getBirthday(), facebookData4 == null ? null : facebookData4.getBirthday())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateBirthDate();
                    }
                });
            }
        }
        if (set.contains(ContactField.emails)) {
            if (!Objects.m31915a(facebookData3 == null ? null : facebookData3.getEmail(), facebookData4 == null ? null : facebookData4.getEmail())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateEmails();
                    }
                });
            }
        }
        if (set.contains(ContactField.organizations)) {
            if (!CollectionUtils.m26074a(facebookData3 == null ? null : facebookData3.getOrganizations(), facebookData4 == null ? null : facebookData4.getOrganizations())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOrganizations();
                    }
                });
            }
        }
        if (set.contains(ContactField.websites)) {
            if (!CollectionUtils.m26074a(facebookData3 == null ? null : facebookData3.getWebsites(), facebookData4 == null ? null : facebookData4.getWebsites())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.addresses)) {
            if (!Objects.m31915a(facebookData3 == null ? null : facebookData3.getAddress(), facebookData4 == null ? null : facebookData4.getAddress())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.latLng)) {
            Double valueOf = facebookData3 == null ? null : Double.valueOf(facebookData3.getLat());
            Double valueOf2 = facebookData4 == null ? null : Double.valueOf(facebookData4.getLat());
            Double valueOf3 = facebookData3 == null ? null : Double.valueOf(facebookData3.getLng());
            Double valueOf4 = facebookData4 == null ? null : Double.valueOf(facebookData4.getLng());
            if (!Objects.m31915a(valueOf, valueOf2) || !Objects.m31915a(valueOf3, valueOf4)) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateLatLng();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.categories)) {
            if (!CollectionUtils.m26074a((Collection) (facebookData3 == null ? null : facebookData3.getCategories()), (Collection) (facebookData4 == null ? null : facebookData4.getCategories()))) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateCategories();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.openingHours)) {
            if (!Objects.m31915a(facebookData3 == null ? null : facebookData3.getOpeningHours(), facebookData4 == null ? null : facebookData4.getOpeningHours())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.8
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOpeningHours();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.uploadedPhotosUrl)) {
            if (!Objects.m31915a(facebookData3 == null ? null : facebookData3.getUploadedPhotosUrl(), facebookData4 == null ? null : facebookData4.getUploadedPhotosUrl())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.social.facebook.FacebookLoader.9
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateUploadedPhotoUrls();
                    }
                });
            }
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28771a(ContactData contactData) {
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
        return f25536b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f25537c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getFacebookHelper();
    }
}
