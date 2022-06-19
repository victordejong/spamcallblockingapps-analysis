package com.callapp.contacts.model;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.framework.event.FieldListenerRegistry;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/SelfContactData.class */
public class SelfContactData extends ContactData {
    public SelfContactData(Phone phone, Set<ContactField> set, FieldListenerRegistry fieldListenerRegistry, boolean z) {
        super(phone, 0L, set, fieldListenerRegistry, z, null);
    }

    @Override // com.callapp.contacts.model.contact.ContactData
    public JSONAddress getAddress() {
        if (this.address == null) {
            Iterator<JSONAddress> it2 = getAddresses().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                JSONAddress next = it2.next();
                if (next.isFromUserProfile()) {
                    this.address = next;
                    break;
                }
            }
            if (this.address == null || StringUtils.m26059a((CharSequence) this.address.getFullAddress())) {
                return super.getAddress();
            }
        }
        return this.address;
    }

    @Override // com.callapp.contacts.model.contact.ContactData
    public Collection<JSONEmail> getVisibleEmails() {
        HashSet hashSet = new HashSet();
        Collection<JSONEmail> visibleEmails = super.getVisibleEmails();
        if (CollectionUtils.m26068b(visibleEmails)) {
            for (JSONEmail jSONEmail : visibleEmails) {
                UserProfileManager.get();
                if (!UserProfileManager.m28456b(jSONEmail.getEmail())) {
                    hashSet.add(jSONEmail);
                }
            }
        }
        synchronized (this.emails) {
            for (Map.Entry<JSONEmail, DataSource> entry : this.emails.entrySet()) {
                JSONEmail key = entry.getKey();
                if (entry.getValue() == DataSource.userProfile) {
                    visibleEmails.add(key);
                }
            }
        }
        return hashSet;
    }

    @Override // com.callapp.contacts.model.contact.ContactData
    public Collection<JSONWebsite> getWebsites() {
        ArrayList arrayList = new ArrayList();
        for (JSONWebsite jSONWebsite : super.getWebsites()) {
            if (!jSONWebsite.isFromUserProfile()) {
                UserProfileManager.get();
                if (!UserProfileManager.m28454c(jSONWebsite.getWebsiteUrl())) {
                }
            }
            arrayList.add(jSONWebsite);
        }
        return arrayList;
    }

    @Override // com.callapp.contacts.model.contact.ContactData
    public void resetSocialNetworks(List<DataSource> list) {
        if (CollectionUtils.m26073a(list, DataSource.facebook)) {
            getUserProfileData().setFacebookId(null);
        }
        if (CollectionUtils.m26073a(list, DataSource.twitter)) {
            getUserProfileData().setTwitterScreenName(null);
        }
        if (CollectionUtils.m26073a(list, DataSource.foursquare)) {
            getUserProfileData().setFoursquareId(null);
        }
        if (CollectionUtils.m26073a(list, DataSource.instagram)) {
            getUserProfileData().setInstagramId(null);
        }
        if (CollectionUtils.m26073a(list, DataSource.pinterest)) {
            getUserProfileData().setPinterestId(null);
        }
        super.resetSocialNetworks(list);
    }
}
