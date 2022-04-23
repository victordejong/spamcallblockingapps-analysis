package com.callapp.contacts.loader.vk;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.util.Objects;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.LoadIsFriendTask;
import com.callapp.contacts.loader.social.LoadMutualFriendsTask;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.framework.util.CollectionUtils;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/VKLoader.class */
public class VKLoader extends BaseSocialLoader<VKData> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<ContactField> f14771b = EnumSet.of(ContactField.vkId, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<ContactField> f14772c = EnumSet.of(ContactField.vkId, ContactField.vkData, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend, ContactField.uploadedPhotosUrl, ContactField.webVideos);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final void a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        if (contactData.getVKData() == null) {
            contactData.setVKData(new VKData());
        }
        MultiTaskRunner a2 = loadContext.a();
        if (CollectionUtils.a((Set) set, (Set) LoadVKDataTask.f14770c)) {
            a2.a(new LoadVKDataTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.mutualFriends)) {
            a2.a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getVKData().isFriend())) {
            a2.a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, 10));
        }
        if (set.contains(ContactField.uploadedPhotosUrl)) {
            a2.a(new LoadVKLastUploadedPhotos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.webVideos)) {
            a2.a(new LoadVKLastUploadedVideos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.vkData)) {
            a2.a(new LoadVKLastPostTask(this, loadContext, jSONSocialNetworkID));
        }
        loadContext.a(a2, this.f14493d);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public final /* synthetic */ void a(LoadContext loadContext, VKData vKData, VKData vKData2) {
        VKData vKData3 = vKData;
        VKData vKData4 = vKData2;
        super.a(loadContext, vKData3, vKData4);
        final ContactData contactData = loadContext.f14535a;
        Set<ContactField> set = loadContext.f14536b;
        MultiTaskRunner b2 = loadContext.b();
        List<UploadedPhoto> list = null;
        if (CollectionUtils.a(set, ContactField.birthday)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getBirthDate(), vKData4 == null ? null : vKData4.getBirthDate())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateBirthDate();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.phones, ContactField.phone)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getPhones(), vKData4 == null ? null : vKData4.getPhones())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhones();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.websites)) {
            if (!CollectionUtils.a(vKData3 == null ? null : vKData3.getWebsites(), vKData4 == null ? null : vKData4.getWebsites())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.facebookId)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getFacebookId(), vKData4 == null ? null : vKData4.getFacebookId())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFacebookId();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.twitterScreenName)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getTwitterScreenName(), vKData4 == null ? null : vKData4.getTwitterScreenName())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateTwitterScreenName();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.addresses)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getAddress(), vKData4 == null ? null : vKData4.getAddress())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.imAddresses)) {
            if (!Objects.a(vKData3 == null ? null : vKData3.getImAddresses(), vKData4 == null ? null : vKData4.getImAddresses())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateImAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.a(set, ContactField.uploadedPhotosUrl)) {
            List<UploadedPhoto> uploadedPhotosUrl = vKData3 == null ? null : vKData3.getUploadedPhotosUrl();
            if (vKData4 != null) {
                list = vKData4.getUploadedPhotosUrl();
            }
            if (!Objects.a(uploadedPhotosUrl, list)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.8
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
        contactData.updateVKId();
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public Class<VKData> getDataClass() {
        return VKData.class;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public DataSource getDataSource() {
        return DataSource.vk;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return f14771b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f14772c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getVKHelper();
    }
}
