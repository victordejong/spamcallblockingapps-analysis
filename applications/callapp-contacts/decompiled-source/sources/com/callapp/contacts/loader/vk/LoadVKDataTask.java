package com.callapp.contacts.loader.vk;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.api.helper.vk.VKUser;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.BaseSocialLoader;
import com.callapp.contacts.loader.social.BaseSocialLoaderTask;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.SocialDataUtils;
import com.callapp.contacts.model.contact.social.VKData;
import com.callapp.contacts.model.contact.social.VKDataUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/vk/LoadVKDataTask.class */
public class LoadVKDataTask extends BaseSocialLoaderTask {

    /* renamed from: c  reason: collision with root package name */
    public static final EnumSet<ContactField> f14770c = EnumSet.of(ContactField.vkData, ContactField.fullName, ContactField.names, ContactField.photoUrl, ContactField.birthday, ContactField.phone, ContactField.phones, ContactField.websites, ContactField.facebookId, ContactField.twitterScreenName, ContactField.imAddresses, ContactField.addresses);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadVKDataTask(BaseSocialLoader baseSocialLoader, LoadContext loadContext, JSONSocialNetworkID jSONSocialNetworkID) {
        super(baseSocialLoader, loadContext, jSONSocialNetworkID);
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        HashSet hashSet;
        ContactData contactData = this.f14431a.f14535a;
        VKData vKData = contactData.getVKData();
        if (vKData != null) {
            VKUser k = VKHelper.get().k(this.f14738b.getId());
            boolean z = false;
            boolean z2 = false;
            HashSet hashSet2 = null;
            if (k != null) {
                Set<ContactField> set = this.f14431a.f14536b;
                if (CollectionUtils.a(set, ContactField.names, ContactField.fullName)) {
                    SocialDataUtils.setFullName(contactData, vKData, k.getFirstName() + StringUtils.SPACE + k.getLastName());
                }
                if (CollectionUtils.a(set, ContactField.photoUrl)) {
                    String photo = k.getPhoto();
                    String thumbnail = k.getThumbnail();
                    boolean a2 = VKHelper.get().a(photo);
                    boolean a3 = VKHelper.get().a(thumbnail);
                    if (!(!a2)) {
                        photo = null;
                    }
                    if (!(!a3)) {
                        thumbnail = null;
                    }
                    SocialDataUtils.setPhotoUrl(contactData, vKData, photo, thumbnail);
                }
                if (CollectionUtils.a(set, ContactField.birthday)) {
                    VKDataUtils.setBirthDate(contactData, vKData, VKDataUtils.getVKBirthDate(k.getBirthDate()));
                }
                if (CollectionUtils.a(set, ContactField.phone, ContactField.phones)) {
                    ArrayList arrayList = new ArrayList();
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) k.getMobilePhone())) {
                        Phone b2 = Phone.b(k.getMobilePhone());
                        if (PhoneNumberUtils.b(b2)) {
                            arrayList.add(b2);
                        }
                    }
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) k.getHomePhone())) {
                        Phone b3 = Phone.b(k.getHomePhone());
                        if (PhoneNumberUtils.b(b3)) {
                            arrayList.add(b3);
                        }
                    }
                    VKDataUtils.setPhones(contactData, vKData, arrayList);
                }
                if (CollectionUtils.a(set, ContactField.websites)) {
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) k.getSite())) {
                        hashSet = new HashSet();
                        hashSet.add(new JSONWebsite(k.getSite()));
                    } else {
                        hashSet = null;
                    }
                    VKDataUtils.setWebsites(contactData, vKData, hashSet);
                }
                if (CollectionUtils.a(set, ContactField.facebookId)) {
                    VKDataUtils.setFacebookId(contactData, vKData, new JSONSocialNetworkID(k.getFacebook(), true));
                }
                if (CollectionUtils.a(set, ContactField.twitterScreenName)) {
                    VKDataUtils.setTwitterScreenName(contactData, vKData, new JSONSocialNetworkID(k.getTwitter(), true));
                }
                if (CollectionUtils.a(set, ContactField.imAddresses)) {
                    if (com.callapp.framework.util.StringUtils.b((CharSequence) k.getSkype())) {
                        hashSet2 = new HashSet();
                        hashSet2.add(new JSONIMaddress(k.getSkype(), 3, 3));
                    }
                    VKDataUtils.setImAddresses(contactData, vKData, hashSet2);
                }
                if (CollectionUtils.a(set, ContactField.addresses)) {
                    JSONAddress jSONAddress = new JSONAddress();
                    if (k.getCity() != null && com.callapp.framework.util.StringUtils.b((CharSequence) k.getCity().title)) {
                        jSONAddress.setCity(k.getCity().toString());
                    }
                    if (k.getCountry() != null && com.callapp.framework.util.StringUtils.b((CharSequence) k.getCountry().title)) {
                        jSONAddress.setCountry(k.getCountry().title);
                    }
                    VKDataUtils.setAddress(contactData, vKData, jSONAddress);
                }
                if (set.contains(ContactField.vkData)) {
                    boolean about = VKDataUtils.setAbout(contactData, vKData, k.getAbout());
                    if (VKDataUtils.setPubProfileUrl(contactData, vKData, VKHelper.l(k.getScreenName())) || about) {
                        z2 = true;
                    }
                    if (z2) {
                        contactData.fireChange(ContactField.vkData);
                        return;
                    }
                    return;
                }
                return;
            }
            SocialDataUtils.setFullName(contactData, vKData, null);
            SocialDataUtils.setPhotoUrl(contactData, vKData, null, null);
            VKDataUtils.setBirthDate(contactData, vKData, null);
            VKDataUtils.setPhones(contactData, vKData, null);
            VKDataUtils.setWebsites(contactData, vKData, null);
            VKDataUtils.setFacebookId(contactData, vKData, null);
            VKDataUtils.setTwitterScreenName(contactData, vKData, null);
            VKDataUtils.setImAddresses(contactData, vKData, null);
            VKDataUtils.setAddress(contactData, vKData, null);
            boolean about2 = VKDataUtils.setAbout(contactData, vKData, null);
            if (VKDataUtils.setPubProfileUrl(contactData, vKData, null) || about2) {
                z = true;
            }
            if (z) {
                contactData.fireChange(ContactField.vkData);
            }
        }
    }
}
