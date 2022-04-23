package com.callapp.contacts.model.contact;

import com.callapp.common.model.json.JSONAddress;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/PersonLookupData.class */
public abstract class PersonLookupData extends ExternalSourceData {
    private final JSONAddress address;
    private final String fullName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PersonLookupData(Phone phone, String str, String str2) {
        this.fullName = str;
        if (StringUtils.b((CharSequence) str2)) {
            JSONAddress jSONAddress = new JSONAddress(str2.trim());
            this.address = jSONAddress;
            String countryName = getCountryName();
            if (StringUtils.b((CharSequence) countryName)) {
                jSONAddress.setCountry(countryName);
            }
        } else {
            this.address = null;
        }
        if (phone != null) {
            setKey(phone.a());
        }
    }

    public JSONAddress getAddress() {
        return this.address;
    }

    abstract String getCountryName();

    @Override // com.callapp.contacts.model.contact.ExternalSourceData
    public String getFullName() {
        return this.fullName;
    }
}
