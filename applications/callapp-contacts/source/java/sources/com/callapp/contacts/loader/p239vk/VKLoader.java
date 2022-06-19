package com.callapp.contacts.loader.p239vk;

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
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.framework.util.CollectionUtils;
import java.util.EnumSet;
import java.util.Set;
/* renamed from: com.callapp.contacts.loader.vk.VKLoader */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/VKLoader.class */
public class VKLoader extends BaseSocialLoader<VKData> {

    /* renamed from: b */
    private static final Set<ContactField> f25566b = EnumSet.of(ContactField.vkId, ContactField.genomeData, ContactField.names, ContactField.fullName);

    /* renamed from: c */
    private static final EnumSet<ContactField> f25567c = EnumSet.of(ContactField.vkId, ContactField.vkData, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.isFriend, ContactField.uploadedPhotosUrl, ContactField.webVideos);

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final void mo28773a(LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        if (contactData.getVKData() == null) {
            contactData.setVKData(new VKData());
        }
        MultiTaskRunner m28869a = loadContext.m28869a();
        if (CollectionUtils.m26070a((Set) set, (Set) LoadVKDataTask.f25565c)) {
            m28869a.m28974a(new LoadVKDataTask(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.mutualFriends)) {
            m28869a.m28974a(new LoadMutualFriendsTask(this, loadContext, jSONSocialNetworkID, getDataSource().dbCode));
        }
        if (set.contains(ContactField.isFriend) && !Boolean.TRUE.equals(contactData.getVKData().isFriend())) {
            m28869a.m28974a(new LoadIsFriendTask(this, loadContext, jSONSocialNetworkID, 10));
        }
        if (set.contains(ContactField.uploadedPhotosUrl)) {
            m28869a.m28974a(new LoadVKLastUploadedPhotos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.webVideos)) {
            m28869a.m28974a(new LoadVKLastUploadedVideos(this, loadContext, jSONSocialNetworkID));
        }
        if (set.contains(ContactField.vkData)) {
            m28869a.m28974a(new LoadVKLastPostTask(this, loadContext, jSONSocialNetworkID));
        }
        loadContext.m28868a(m28869a, this.f25279d);
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    /* renamed from: a */
    public final /* synthetic */ void mo28772a(LoadContext loadContext, VKData vKData, VKData vKData2) {
        VKData vKData3 = vKData;
        VKData vKData4 = vKData2;
        super.mo28772a(loadContext, vKData3, vKData4);
        final ContactData contactData = loadContext.f25322a;
        Set<ContactField> set = loadContext.f25323b;
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (CollectionUtils.m26073a(set, ContactField.birthday)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getBirthDate(), vKData4 == null ? null : vKData4.getBirthDate())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateBirthDate();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.phones, ContactField.phone)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getPhones(), vKData4 == null ? null : vKData4.getPhones())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhones();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.websites)) {
            if (!CollectionUtils.m26074a(vKData3 == null ? null : vKData3.getWebsites(), vKData4 == null ? null : vKData4.getWebsites())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.facebookId)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getFacebookId(), vKData4 == null ? null : vKData4.getFacebookId())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFacebookId();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.twitterScreenName)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getTwitterScreenName(), vKData4 == null ? null : vKData4.getTwitterScreenName())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateTwitterScreenName();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.addresses)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getAddress(), vKData4 == null ? null : vKData4.getAddress())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.imAddresses)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getImAddresses(), vKData4 == null ? null : vKData4.getImAddresses())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateImAddresses();
                    }
                });
            }
        }
        if (CollectionUtils.m26073a(set, ContactField.uploadedPhotosUrl)) {
            if (!Objects.m31915a(vKData3 == null ? null : vKData3.getUploadedPhotosUrl(), vKData4 == null ? null : vKData4.getUploadedPhotosUrl())) {
                m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.vk.VKLoader.8
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
        return f25566b;
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public EnumSet<ContactField> getLoadedFields() {
        return f25567c;
    }

    @Override // com.callapp.contacts.loader.social.BaseSocialLoader
    public RemoteAccountHelper getSocialHelper() {
        return Singletons.get().getVKHelper();
    }
}
