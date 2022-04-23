package com.callapp.contacts.loader.external.person.lookup;

import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.external.ExternalSourcesLoader;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.ExternalSourceData;
import com.callapp.contacts.model.contact.PersonLookupData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.JSoupUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.jsoup.b.b;
import org.jsoup.nodes.f;
import org.jsoup.nodes.h;
import org.jsoup.select.Selector;
import org.jsoup.select.a;
import org.jsoup.select.c;
import org.jsoup.select.d;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/person/lookup/PersonLookupLoader.class */
abstract class PersonLookupLoader<T extends PersonLookupData> extends ExternalSourcesLoader<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final int f14713a = Math.max(1, Math.max(3, 2));

    private T a(Phone phone, c cVar) {
        String str = null;
        String str2 = null;
        for (int i = 0; i < f14713a; i++) {
            if (i == 1) {
                h hVar = cVar.get(i);
                org.jsoup.a.c.a("a");
                c a2 = a.a(new d.aj(b.a("a").trim()), hVar);
                str = CollectionUtils.b(a2) ? a(a2.get(0)) : null;
            } else if (i != 2) {
                str = str;
            } else {
                str = str;
                if (getAddress()) {
                    str2 = a(cVar.get(i));
                    str = str;
                }
            }
        }
        if (StringUtils.b((CharSequence) str) || StringUtils.b((CharSequence) str2)) {
            return a(phone, str, str2);
        }
        return null;
    }

    private static String a(h hVar) {
        if (hVar != null) {
            return hVar.s();
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final /* synthetic */ JSONExternalSourceContact a(ExternalSourceData externalSourceData) {
        PersonLookupData personLookupData = (PersonLookupData) externalSourceData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        if (personLookupData != null) {
            if (StringUtils.b((CharSequence) personLookupData.getFullName())) {
                jSONExternalSourceContact.setName(personLookupData.getFullName());
            }
            if (personLookupData.getAddress() != null) {
                jSONExternalSourceContact.setAddresses(Collections.singletonList(personLookupData.getAddress()));
            }
        }
        return jSONExternalSourceContact;
    }

    protected abstract T a(ContactData contactData);

    protected abstract T a(Phone phone, String str, String str2);

    protected String a(Phone phone) {
        return phone.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final /* synthetic */ void a(LoadContext loadContext, ExternalSourceData externalSourceData) {
        Set<ContactField> set = loadContext.f14536b;
        final ContactData contactData = loadContext.f14535a;
        a(contactData, (ContactData) ((PersonLookupData) externalSourceData));
        MultiTaskRunner b2 = loadContext.b();
        if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            b2.a(new Task() { // from class: com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        loadContext.a(b2, this.f14493d);
    }

    protected abstract void a(ContactData contactData, T t);

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    public final List<T> c(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        Phone phone = contactData.getPhone();
        synchronized (contactData.getLock(PersonLookupLoader.class)) {
            if (!contactData.isContactInDevice() && getRegionCode().equals(phone.getRegionCode())) {
                T a2 = a(contactData);
                if (!(a2 == null || a2.isExpired(2131427384))) {
                    return null;
                }
                getDataUrlHostName();
                if (!HttpUtils.c() || !phone.isValidForSearch()) {
                    return null;
                }
                try {
                    f a3 = JSoupUtils.a(getDataUrl(), a(phone));
                    if (a3 != null) {
                        org.jsoup.a.c.a("results-list");
                        c<h> a4 = a.a(new d.k("results-list"), a3);
                        org.jsoup.a.c.a("div.row");
                        org.jsoup.a.c.a(a4);
                        d a5 = org.jsoup.select.h.a("div.row");
                        ArrayList arrayList = new ArrayList();
                        IdentityHashMap identityHashMap = new IdentityHashMap();
                        for (h hVar : a4) {
                            Iterator<h> it2 = Selector.a(a5, hVar).iterator();
                            while (it2.hasNext()) {
                                h next = it2.next();
                                if (!identityHashMap.containsKey(next)) {
                                    arrayList.add(next);
                                    identityHashMap.put(next, Boolean.TRUE);
                                }
                            }
                        }
                        Iterator<h> it3 = new c((List<h>) arrayList).iterator();
                        while (it3.hasNext()) {
                            c a6 = Selector.a("div", it3.next());
                            if (!CollectionUtils.a(a6)) {
                                if (a6.size() >= 3) {
                                    String a7 = a(a6.get(3));
                                    if (!StringUtils.a((CharSequence) a7) && phone.equals(Phone.a(a7, getRegionCode()))) {
                                    }
                                }
                                T a8 = a(phone, a6);
                                if (a8 != null) {
                                    return Collections.singletonList(a8);
                                }
                            }
                        }
                    }
                } catch (IOException e) {
                    CLog.a(PersonLookupLoader.class, "IOException for phone: " + phone.a());
                }
                return null;
            }
            return null;
        }
    }

    protected abstract boolean getAddress();

    protected abstract String getDataUrl();

    protected abstract String getDataUrlHostName();

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }

    protected abstract String getRegionCode();
}
