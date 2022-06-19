package com.callapp.contacts.activity.birthday;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/ContactBirthdayData.class */
public class ContactBirthdayData {

    /* renamed from: a */
    private String f20420a;

    /* renamed from: b */
    private ArrayList<String> f20421b;

    /* renamed from: c */
    private JSONSocialNetworkID f20422c;

    /* renamed from: d */
    private Phone f20423d;

    /* renamed from: e */
    private ContactData f20424e;

    public ContactBirthdayData(String str, ArrayList<String> arrayList, JSONSocialNetworkID jSONSocialNetworkID, Phone phone) {
        this(str, arrayList, jSONSocialNetworkID, phone, null);
    }

    public ContactBirthdayData(String str, ArrayList<String> arrayList, JSONSocialNetworkID jSONSocialNetworkID, Phone phone, ContactData contactData) {
        this.f20420a = str;
        this.f20421b = arrayList;
        this.f20422c = jSONSocialNetworkID;
        this.f20423d = phone;
        this.f20424e = contactData;
    }

    public String getDisplayName() {
        return this.f20420a;
    }

    public ArrayList<String> getDisplayPhotoUrls() {
        return this.f20421b;
    }
}
