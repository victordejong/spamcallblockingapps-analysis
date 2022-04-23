package com.callapp.contacts.loader.external;

import com.callapp.common.model.json.JSONCHLocal;
import com.callapp.common.model.json.JSONCHLocalPhone;
import com.callapp.common.model.json.JSONCHLocalResult;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.CHLocalData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.serializer.string.ClassParserHttpResponseHandler;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/CHLocalLoader.class */
public class CHLocalLoader extends ExternalSourcesLoader<CHLocalData> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14641a = new String(Base64.a("aHR0cDovL2V4dGFwaS5sb2NhbC5jaC9lbi92NS9lbnRyaWVzLmpzb24/bnM9MCZndWlkYW5jZT10cnVlJnE9JXMmc3RhcnQ9MCZleGFjdHNlYXJjaD10cnVlJnBsYXRmb3JtPWFuZHJvaWQmbWV0ZW89dHJ1ZSZrZXk9MTU4RDQ4MzA2N0FDMTFERThBMzkwODAwMjAwQzlBNjY="));

    /* renamed from: b  reason: collision with root package name */
    private static final String f14642b = new String(Base64.a("ZXh0YXBpLmxvY2FsLmNo"));

    static {
        Base64Utils.getInstance();
        Base64Utils.getInstance();
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ JSONExternalSourceContact a(CHLocalData cHLocalData) {
        CHLocalData cHLocalData2 = cHLocalData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        if (cHLocalData2 == null) {
            return jSONExternalSourceContact;
        }
        if (StringUtils.b((CharSequence) cHLocalData2.getFullName())) {
            jSONExternalSourceContact.setName(cHLocalData2.getFullName());
        }
        if (!Double.isNaN(cHLocalData2.getLat())) {
            jSONExternalSourceContact.setLat(cHLocalData2.getLat());
        }
        if (!Double.isNaN(cHLocalData2.getLng())) {
            jSONExternalSourceContact.setLng(cHLocalData2.getLng());
        }
        if (CollectionUtils.b(cHLocalData2.getAddresses())) {
            jSONExternalSourceContact.setAddresses(cHLocalData2.getAddresses());
        }
        if (CollectionUtils.b(cHLocalData2.getCategories())) {
            jSONExternalSourceContact.setCategories(new ArrayList(cHLocalData2.getCategories()));
        }
        if (StringUtils.b((CharSequence) cHLocalData2.getDescription())) {
            jSONExternalSourceContact.setDescription(cHLocalData2.getDescription());
        }
        if (cHLocalData2.getOpeningHours() != null && !cHLocalData2.getOpeningHours().isEmpty()) {
            jSONExternalSourceContact.setOpeningHours(cHLocalData2.getOpeningHours());
        }
        if (StringUtils.b((CharSequence) cHLocalData2.getPhotoUrl())) {
            jSONExternalSourceContact.setPhotoUrl(cHLocalData2.getPhotoUrl());
        }
        if (CollectionUtils.b(cHLocalData2.getWebsites())) {
            jSONExternalSourceContact.setWebsites(new ArrayList(cHLocalData2.getWebsites()));
        }
        if (CollectionUtils.b(cHLocalData2.getPhones())) {
            jSONExternalSourceContact.setPhoneNumbers(new ArrayList(cHLocalData2.getPhones()));
        }
        if (CollectionUtils.b(cHLocalData2.getEmails())) {
            jSONExternalSourceContact.setEmails(new ArrayList(cHLocalData2.getEmails()));
        }
        if (cHLocalData2.getVenueFoursquareID() != null && StringUtils.b((CharSequence) cHLocalData2.getVenueFoursquareID().getId())) {
            jSONExternalSourceContact.setVenueFoursquareID(cHLocalData2.getVenueFoursquareID());
        }
        if (StringUtils.b((CharSequence) cHLocalData2.getUrl())) {
            jSONExternalSourceContact.setUrl(cHLocalData2.getUrl());
        }
        jSONExternalSourceContact.setType(cHLocalData2.isBusiness() ? 2 : 1);
        return jSONExternalSourceContact;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ void a(LoadContext loadContext, CHLocalData cHLocalData) {
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        contactData.setChLocalData(cHLocalData);
        MultiTaskRunner b2 = loadContext.b();
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhoto();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        if (set.contains(ContactField.webVideos)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebVideos();
                }
            });
        }
        if (set.contains(ContactField.latLng)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateLatLng();
                }
            });
        }
        if (set.contains(ContactField.phones)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.6
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhones();
                }
            });
        }
        if (set.contains(ContactField.emails)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.7
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateEmails();
                }
            });
        }
        if (set.contains(ContactField.websites)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.8
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebsites();
                }
            });
        }
        if (set.contains(ContactField.venueFoursquareId)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.9
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateVenueFoursquareId();
                }
            });
        }
        if (set.contains(ContactField.categories)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.10
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateCategories();
                }
            });
        }
        if (set.contains(ContactField.openingHours)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.CHLocalLoader.11
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOpeningHours();
                }
            });
        }
        if (set.contains(ContactField.description)) {
            contactData.updateDescription();
        }
        loadContext.a(b2, this.f14493d);
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final List<CHLocalData> c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Phone phone = contactData.getPhone();
        synchronized (contactData.getLock(CHLocalLoader.class)) {
            if (phone != null) {
                if (!contactData.isContactInDevice() && "CH".equals(phone.getRegionCode())) {
                    CHLocalData chLocalData = contactData.getChLocalData();
                    if (!(chLocalData == null || chLocalData.isExpired(2131427334))) {
                        return null;
                    }
                    if (HttpUtils.a() && phone.isValidForSearch()) {
                        ClassParserHttpResponseHandler classParserHttpResponseHandler = new ClassParserHttpResponseHandler(JSONCHLocal.class);
                        if (HttpUtils.c()) {
                            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(String.format(f14641a, UrlUtils.a(phone.a())));
                            httpRequestParamsBuilder.f16228c = classParserHttpResponseHandler;
                            HttpUtils.b(httpRequestParamsBuilder.a());
                        }
                        JSONCHLocal jSONCHLocal = (JSONCHLocal) classParserHttpResponseHandler.getResult();
                        JSONCHLocalResult jSONCHLocalResult = null;
                        if (jSONCHLocal != null) {
                            if (!CollectionUtils.a(jSONCHLocal.getResults())) {
                                Iterator<JSONCHLocalResult> it2 = jSONCHLocal.getResults().iterator();
                                loop0: while (true) {
                                    jSONCHLocalResult = null;
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    jSONCHLocalResult = it2.next();
                                    if (!CollectionUtils.a(jSONCHLocalResult.getContacts())) {
                                        for (JSONCHLocalPhone jSONCHLocalPhone : jSONCHLocalResult.getContacts()) {
                                            if (jSONCHLocalPhone.isPhoneType() && PhoneManager.get().a(jSONCHLocalPhone.getContact_value()).equals(phone)) {
                                                break loop0;
                                            }
                                        }
                                        continue;
                                    }
                                }
                            } else {
                                jSONCHLocalResult = null;
                            }
                        }
                        return Collections.singletonList(new CHLocalData(jSONCHLocalResult, phone));
                    }
                    return null;
                }
            }
            return null;
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected Class<CHLocalData> getDataClass() {
        return CHLocalData.class;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected int getExernalSourceId() {
        return 1016;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
