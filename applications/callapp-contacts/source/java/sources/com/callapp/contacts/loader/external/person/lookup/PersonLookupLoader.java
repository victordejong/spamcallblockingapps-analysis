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
import org.jsoup.nodes.C20906f;
import org.jsoup.nodes.C20911h;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20781b;
import org.jsoup.select.AbstractC20934d;
import org.jsoup.select.C20927a;
import org.jsoup.select.C20933c;
import org.jsoup.select.C20976h;
import org.jsoup.select.Selector;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/person/lookup/PersonLookupLoader.class */
public abstract class PersonLookupLoader<T extends PersonLookupData> extends ExternalSourcesLoader<T> {

    /* renamed from: a */
    private static final int f25508a = Math.max(1, Math.max(3, 2));

    /* renamed from: a */
    private T m28802a(Phone phone, C20933c c20933c) {
        String str;
        String str2 = null;
        String str3 = null;
        int i = 0;
        while (i < f25508a) {
            if (i == 1) {
                C20911h c20911h = c20933c.get(i);
                C20779c.m505a("a");
                C20933c m202a = C20927a.m202a(new AbstractC20934d.C20945aj(C20781b.m497a("a").trim()), c20911h);
                str = CollectionUtils.m26068b(m202a) ? m28801a(m202a.get(0)) : null;
            } else if (i != 2) {
                str = str2;
            } else {
                str = str2;
                if (getAddress()) {
                    str3 = m28801a(c20933c.get(i));
                    str = str2;
                }
            }
            i++;
            str2 = str;
        }
        if (StringUtils.m26045b((CharSequence) str2) || StringUtils.m26045b((CharSequence) str3)) {
            return mo28803a(phone, str2, str3);
        }
        return null;
    }

    /* renamed from: a */
    private static String m28801a(C20911h c20911h) {
        if (c20911h != null) {
            return c20911h.m260s();
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    public final /* synthetic */ JSONExternalSourceContact mo28805a(ExternalSourceData externalSourceData) {
        PersonLookupData personLookupData = (PersonLookupData) externalSourceData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        if (personLookupData != null) {
            if (StringUtils.m26045b((CharSequence) personLookupData.getFullName())) {
                jSONExternalSourceContact.setName(personLookupData.getFullName());
            }
            if (personLookupData.getAddress() != null) {
                jSONExternalSourceContact.setAddresses(Collections.singletonList(personLookupData.getAddress()));
            }
        }
        return jSONExternalSourceContact;
    }

    /* renamed from: a */
    protected abstract T mo28807a(ContactData contactData);

    /* renamed from: a */
    protected abstract T mo28803a(Phone phone, String str, String str2);

    /* renamed from: a */
    protected String mo28804a(Phone phone) {
        return phone.m26095b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    public final /* synthetic */ void mo28808a(LoadContext loadContext, ExternalSourceData externalSourceData) {
        Set<ContactField> set = loadContext.f25323b;
        final ContactData contactData = loadContext.f25322a;
        mo28806a(contactData, (ContactData) ((PersonLookupData) externalSourceData));
        MultiTaskRunner m28862b = loadContext.m28862b();
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (set.contains(ContactField.addresses)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.external.person.lookup.PersonLookupLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        loadContext.m28868a(m28862b, this.f25279d);
    }

    /* renamed from: a */
    protected abstract void mo28806a(ContactData contactData, T t);

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    public final List<T> mo28800c(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        Phone phone = contactData.getPhone();
        synchronized (contactData.getLock(PersonLookupLoader.class)) {
            if (!contactData.isContactInDevice() && getRegionCode().equals(phone.getRegionCode())) {
                T mo28807a = mo28807a(contactData);
                if (mo28807a != null && !mo28807a.isExpired(2131427384)) {
                    return null;
                }
                getDataUrlHostName();
                if (!HttpUtils.m26967c() || !phone.isValidForSearch()) {
                    return null;
                }
                try {
                    C20906f m27492a = JSoupUtils.m27492a(getDataUrl(), mo28804a(phone));
                    if (m27492a != null) {
                        C20779c.m505a("results-list");
                        C20933c<C20911h> m202a = C20927a.m202a(new AbstractC20934d.C20956k("results-list"), m27492a);
                        C20779c.m505a("div.row");
                        C20779c.m507a(m202a);
                        AbstractC20934d m187a = C20976h.m187a("div.row");
                        ArrayList arrayList = new ArrayList();
                        IdentityHashMap identityHashMap = new IdentityHashMap();
                        for (C20911h c20911h : m202a) {
                            Iterator<C20911h> it2 = Selector.m203a(m187a, c20911h).iterator();
                            while (it2.hasNext()) {
                                C20911h next = it2.next();
                                if (!identityHashMap.containsKey(next)) {
                                    arrayList.add(next);
                                    identityHashMap.put(next, Boolean.TRUE);
                                }
                            }
                        }
                        Iterator<C20911h> it3 = new C20933c((List<C20911h>) arrayList).iterator();
                        while (it3.hasNext()) {
                            C20933c m204a = Selector.m204a("div", it3.next());
                            if (!CollectionUtils.m26076a(m204a)) {
                                if (m204a.size() >= 3) {
                                    String m28801a = m28801a(m204a.get(3));
                                    if (!StringUtils.m26059a((CharSequence) m28801a) && phone.equals(Phone.m26096a(m28801a, getRegionCode()))) {
                                    }
                                }
                                T m28802a = m28802a(phone, m204a);
                                if (m28802a != null) {
                                    return Collections.singletonList(m28802a);
                                }
                            }
                        }
                    }
                } catch (IOException e) {
                    CLog.m27611a(PersonLookupLoader.class, "IOException for phone: " + phone.m26101a());
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
