package com.callapp.contacts.model.contact;

import com.callapp.framework.phone.Phone;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/AuPersonLookupData.class */
public class AuPersonLookupData extends PersonLookupData {
    private static final long serialVersionUID = -801067815706351863L;

    public AuPersonLookupData(Phone phone, String str, String str2) {
        super(phone, str, str2);
    }

    @Override // com.callapp.contacts.model.contact.PersonLookupData
    protected String getCountryName() {
        return "Australia";
    }
}
