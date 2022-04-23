package com.callapp.contacts.loader.external.person.lookup;

import com.callapp.contacts.model.contact.AuPersonLookupData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.framework.phone.Phone;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/person/lookup/AuPersonLookupLoader.class */
public class AuPersonLookupLoader extends PersonLookupLoader<AuPersonLookupData> {
    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected final /* synthetic */ AuPersonLookupData a(ContactData contactData) {
        return contactData.getAuPersonLookupData();
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected final /* synthetic */ AuPersonLookupData a(Phone phone, String str, String str2) {
        return new AuPersonLookupData(phone, str, str2);
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected final String a(Phone phone) {
        return String.format("(0%s)%s", phone.getNDC(), phone.getLocalNumberWithoutAreaCode());
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected final /* synthetic */ void a(ContactData contactData, AuPersonLookupData auPersonLookupData) {
        contactData.setAuPersonLookupAuData(auPersonLookupData);
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected boolean getAddress() {
        return true;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public Class<AuPersonLookupData> getDataClass() {
        return AuPersonLookupData.class;
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected String getDataUrl() {
        Base64Utils.getInstance();
        return new String(Base64.a("aHR0cDovL3BlcnNvbmxvb2t1cC5jb20uQVUvc2VhcmNoP3NlYXJjaD10cnVlJnE9JXM"));
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected String getDataUrlHostName() {
        Base64Utils.getInstance();
        return new String(Base64.a("cGVyc29ubG9va3VwLmNvbS5hdQ=="));
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public int getExernalSourceId() {
        return 1017;
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public /* bridge */ /* synthetic */ Set getListenFields() {
        return super.getListenFields();
    }

    @Override // com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader
    protected String getRegionCode() {
        return "AU";
    }
}
