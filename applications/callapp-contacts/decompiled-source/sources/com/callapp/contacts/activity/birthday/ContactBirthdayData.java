package com.callapp.contacts.activity.birthday;

import com.callapp.common.model.json.JSONSocialNetworkID;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.framework.phone.Phone;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/ContactBirthdayData.class */
public class ContactBirthdayData {

    /* renamed from: a  reason: collision with root package name */
    private String f11190a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<String> f11191b;

    /* renamed from: c  reason: collision with root package name */
    private JSONSocialNetworkID f11192c;

    /* renamed from: d  reason: collision with root package name */
    private Phone f11193d;
    private ContactData e;

    public ContactBirthdayData(String str, ArrayList<String> arrayList, JSONSocialNetworkID jSONSocialNetworkID, Phone phone) {
        this(str, arrayList, jSONSocialNetworkID, phone, null);
    }

    public ContactBirthdayData(String str, ArrayList<String> arrayList, JSONSocialNetworkID jSONSocialNetworkID, Phone phone, ContactData contactData) {
        this.f11190a = str;
        this.f11191b = arrayList;
        this.f11192c = jSONSocialNetworkID;
        this.f11193d = phone;
        this.e = contactData;
    }

    public String getDisplayName() {
        return this.f11190a;
    }

    public ArrayList<String> getDisplayPhotoUrls() {
        return this.f11191b;
    }
}
