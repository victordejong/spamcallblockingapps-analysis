package com.callapp.contacts.loader;

import android.util.Pair;
import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.util.Objects;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.api.LoaderFlags;
import com.callapp.contacts.loader.api.NetworkDataLoader;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.RestrictionManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.service.jobs.ConnectionChangedService;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.util.http.ValidatorHttpResponseHandler;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import org.apache.http.conn.ConnectTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/LocalGenomeLoader.class */
public class LocalGenomeLoader extends EagerContactLoader implements NetworkDataLoader, ConnectionChangedService.ConnectionChangedListener {

    /* renamed from: a */
    private boolean f25226a;

    /* renamed from: b */
    private JSONContact f25227b;

    /* renamed from: c */
    private Boolean f25228c;

    /* renamed from: f */
    private LoadContext f25229f;

    /* renamed from: g */
    private boolean f25230g = false;

    /* renamed from: h */
    private String f25231h = null;

    public LocalGenomeLoader(boolean z) {
        this.f25226a = z;
    }

    /* renamed from: a */
    private Pair<Boolean, JSONContact> m28924a(ContactData contactData) {
        IOException e;
        HttpUtils.getCallAppServerHost();
        if (!HttpUtils.m26972b()) {
            CLog.m27611a(LocalGenomeLoader.class, "No internet - registering for connection changed");
            ConnectionChangedService.m27783a(this);
            return new Pair<>(Boolean.FALSE, null);
        }
        try {
            String m28938a = GenomeLoaderHelper.m28938a(Prefs.f26241aR.get(), contactData.getPhonesList(), contactData.getEmails(), this.f25226a, contactData.isContactInDevice(), PhoneManager.get().getCountryIso(), Locale.getDefault().getCountry());
            if (StringUtils.m26059a((CharSequence) m28938a)) {
                return new Pair<>(Boolean.FALSE, null);
            }
            ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
            CLog.m27611a(LocalGenomeLoader.class, "Sending request to genome: ".concat(String.valueOf(m28938a)));
            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(m28938a);
            httpRequestParamsBuilder.f28293c = validatorHttpResponseHandler;
            HttpUtils.m26966c(httpRequestParamsBuilder.m26994a());
            if (validatorHttpResponseHandler.getResult() == null) {
                CLog.m27611a(LocalGenomeLoader.class, "Received empty response from genome: ".concat(String.valueOf(m28938a)));
                return new Pair<>(Boolean.FALSE, new JSONContact());
            }
            CLog.m27611a(LocalGenomeLoader.class, "Received response from genome: ".concat(String.valueOf(m28938a)));
            JSONContact jSONContact = (JSONContact) Parser.m26915a(validatorHttpResponseHandler.getResult(), JSONContact.class);
            if (jSONContact != null) {
                m28926a(jSONContact);
                if (!RegexUtils.m31905c(jSONContact.getName())) {
                    jSONContact.setName(null);
                }
            }
            return new Pair<>(Boolean.TRUE, jSONContact);
        } catch (UnknownHostException e2) {
            e = e2;
            Singletons.get().getExceptionManager().m28679a(getClass(), e);
            return new Pair<>(Boolean.FALSE, null);
        } catch (ConnectTimeoutException e3) {
            e = e3;
            Singletons.get().getExceptionManager().m28679a(getClass(), e);
            return new Pair<>(Boolean.FALSE, null);
        } catch (IOException e4) {
            CLog.m27596b(getClass(), e4);
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    /* renamed from: a */
    private static void m28926a(JSONContact jSONContact) {
        List<JSONEmail> emails;
        if (jSONContact == null || (emails = jSONContact.getEmails()) == null) {
            return;
        }
        ListIterator<JSONEmail> listIterator = emails.listIterator();
        while (listIterator.hasNext()) {
            JSONEmail next = listIterator.next();
            if (next == null || !RegexUtils.m31891j(next.getEmail())) {
                listIterator.remove();
            }
        }
    }

    /* renamed from: a */
    private void m28925a(LoadContext loadContext, final ContactData contactData, Set<ContactField> set, JSONContact jSONContact) {
        MultiTaskRunner m28862b = loadContext.m28862b();
        contactData.setGenomeData(jSONContact);
        if (jSONContact == null) {
            return;
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS) && StringUtils.m26045b((CharSequence) jSONContact.getName())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateFullName();
                }
            });
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS) && StringUtils.m26045b((CharSequence) jSONContact.getPhotoUrl())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.2
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhoto();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.phones) && CollectionUtils.m26068b(jSONContact.getPhoneNumbers())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePhones();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.addresses) && CollectionUtils.m26068b(jSONContact.getAddresses())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.4
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateAddresses();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.birthday) && jSONContact.getBirthday() != null) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.5
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateBirthDate();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.imAddresses) && CollectionUtils.m26068b(jSONContact.getIMAddresses())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.6
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateImAddresses();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.emails) && CollectionUtils.m26068b(jSONContact.getEmails())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.7
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateEmails();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.organizations) && CollectionUtils.m26068b(jSONContact.getOrgData())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.8
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOrganizations();
                }
            });
        }
        if (CollectionUtils.m26070a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS) && (jSONContact.getFacebookID() != null || jSONContact.getFoursquareID() != null || jSONContact.getTwitterScreenName() != null || jSONContact.getInstagramID() != null || jSONContact.getVenueFoursquareID() != null || jSONContact.getPinterestID() != null)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.9
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateSocialNetworkIds();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.websites) && CollectionUtils.m26068b(jSONContact.getWebsites())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.10
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateWebsites();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.categories) && CollectionUtils.m26068b(jSONContact.getCategories())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.11
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateCategories();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.reviews) && CollectionUtils.m26068b(jSONContact.getReviews())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.12
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateReviews();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.events) && CollectionUtils.m26068b(jSONContact.getEvents())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.13
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateEvents();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.rating) && jSONContact.getAvgRating() != -1.0d) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.14
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateRating();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.description) && StringUtils.m26045b((CharSequence) jSONContact.getDescription())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.15
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateDescription();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.userDefinition) && StringUtils.m26045b((CharSequence) jSONContact.getUserDefinition())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.16
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateUserDefinition();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.cover) && StringUtils.m26045b((CharSequence) jSONContact.getCover())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.17
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateCover();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.latLng) && (jSONContact.getLat() != 0.0d || jSONContact.getLng() != 0.0d)) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.18
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateLatLng();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.priceRange) && jSONContact.getPriceRange() != 0) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.19
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updatePriceRange();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.openingHours) && jSONContact.getOpeningHours() != null) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.20
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateOpeningHours();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.menuUrl) && StringUtils.m26045b((CharSequence) jSONContact.getMenuUrl())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.21
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateMenuUrl();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.reserveUrl) && StringUtils.m26045b((CharSequence) jSONContact.getReserveUrl())) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.22
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateReserveUrl();
                }
            });
        }
        if (CollectionUtils.m26073a(set, ContactField.spamScore) && jSONContact.getSpamScore() != 0) {
            m28862b.m28974a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.23
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    contactData.updateSpamScore();
                }
            });
        }
        loadContext.m28868a(m28862b, true);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    public final void mo27726a(LoadContext loadContext) {
        this.f25229f = loadContext;
        ContactData contactData = loadContext.f25322a;
        Set<LoaderFlags> flags = loadContext.getFlags();
        synchronized (loadContext.f25322a.getLock(getClass())) {
            if (!RestrictionManager.m28498a(contactData)) {
                AnalyticsManager.get().m28450a(Constants.SEARCH, "country restricted for loading from genome");
                CLog.m27611a(LocalGenomeLoader.class, "country restricted for loading from genome for numbers: " + contactData.getPhone());
                contactData.fireChange(getContactField());
                return;
            }
            if (CollectionUtils.m26070a((Set) loadContext.f25323b, (Set) EnumSet.of(ContactField.phones)) && !StringUtils.m26042b(this.f25231h, GenomeLoaderHelper.m28939a(contactData))) {
                mo28789b(loadContext);
            }
            JSONContact jSONContact = this.f25227b;
            if (!flags.contains(LoaderFlags.loadOnlyFromCache) && (jSONContact == null || flags.contains(LoaderFlags.forceRefresh))) {
                if (jSONContact != null && !DateUtils.m27119b(jSONContact.getLastUpdated(), 2131427385)) {
                    return;
                }
                if (!contactData.getPhone().isValidForSearch()) {
                    m28925a(loadContext, contactData, loadContext.f25323b, new JSONContact());
                    contactData.setDataSource(getContactField(), getDataSource());
                    contactData.fireChange(getContactField());
                    return;
                }
                Pair<Boolean, JSONContact> m28924a = m28924a(contactData);
                if (!contactData.isContactInDevice()) {
                    boolean booleanValue = ((Boolean) m28924a.first).booleanValue();
                    JSONContact jSONContact2 = (JSONContact) m28924a.second;
                    if (!this.f25226a) {
                        AnalyticsManager.get().m28449a(Constants.CONTACT_DETAILS, "Contact Details: ".concat(booleanValue ? "Genome had a result " : jSONContact2 != null ? "Genome didn't have a result" : !HttpUtils.m26985a() ? "No internet when trying to access genome" : "Error when trying to access genome"), getClass().getSimpleName());
                    }
                }
                if (!this.f25226a && !((Boolean) m28924a.first).booleanValue() && m28924a.second == null && Prefs.f26657n.get().booleanValue()) {
                    FeedbackManager.get().m28670a("Was problem trying reaching genome", 80);
                }
                this.f25228c = (Boolean) m28924a.first;
                JSONContact jSONContact3 = (JSONContact) m28924a.second;
                this.f25227b = jSONContact3;
                if (jSONContact3 != null) {
                    if (jSONContact3 != null && jSONContact != null) {
                        if (jSONContact3.getFacebookID() == null && jSONContact.getFacebookID() != null) {
                            jSONContact3.setFacebookID(jSONContact.getFacebookID());
                        }
                        if (jSONContact3.getVkID() == null && jSONContact.getVkID() != null) {
                            jSONContact3.setVkID(jSONContact.getVkID());
                        }
                        if (jSONContact3.getTwitterScreenName() == null && jSONContact.getTwitterScreenName() != null) {
                            jSONContact3.setTwitterScreenName(jSONContact.getTwitterScreenName());
                        }
                        if (jSONContact3.getFoursquareID() == null && jSONContact.getFoursquareID() != null) {
                            jSONContact3.setFoursquareID(jSONContact.getFoursquareID());
                        }
                        if (jSONContact3.getVenueFoursquareID() == null && jSONContact.getVenueFoursquareID() != null) {
                            jSONContact3.setVenueFoursquareID(jSONContact.getVenueFoursquareID());
                        }
                        if (jSONContact3.getInstagramID() == null && jSONContact.getInstagramID() != null) {
                            jSONContact3.setInstagramID(jSONContact.getInstagramID());
                        }
                        if (jSONContact3.getGooglePlacesId() == null && jSONContact.getGooglePlacesId() != null) {
                            jSONContact3.setGooglePlacesId(jSONContact.getGooglePlacesId());
                        }
                        if (StringUtils.m26059a((CharSequence) jSONContact3.getName()) && !StringUtils.m26059a((CharSequence) jSONContact.getName())) {
                            jSONContact3.setName(jSONContact.getName());
                        }
                    }
                } else if (jSONContact != null) {
                    this.f25227b = jSONContact;
                    jSONContact.setLastUpdated(new Date());
                }
                mo28923e(loadContext);
                if (this.f25227b != null) {
                    CacheManager.get().m28389a((Class<String>) JSONContact.class, GenomeLoaderHelper.m28939a(contactData), (String) this.f25227b);
                }
            }
        }
    }

    @Override // com.callapp.contacts.service.jobs.ConnectionChangedService.ConnectionChangedListener
    /* renamed from: a */
    public final void mo27781a(boolean z) {
        CLog.m27611a(LocalGenomeLoader.class, "Connection changed: ".concat(String.valueOf(z)));
        if (z) {
            mo27726a(this.f25229f);
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28872b() {
        CLog.m27611a(LocalGenomeLoader.class, "Unregistering from connection changed");
        ConnectionChangedService.m27782b(this);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    /* renamed from: b */
    public final void mo28789b(LoadContext loadContext) {
        ContactData contactData = loadContext.f25322a;
        if (!RestrictionManager.m28498a(contactData) || !contactData.getPhone().isNotEmpty()) {
            return;
        }
        this.f25231h = GenomeLoaderHelper.m28939a(contactData);
        JSONContact jSONContact = (JSONContact) CacheManager.get().m28378b(JSONContact.class, this.f25231h, false);
        this.f25227b = jSONContact;
        if (jSONContact == null) {
            return;
        }
        this.f25228c = Boolean.TRUE;
        List<JSONOrgData> orgData = this.f25227b.getOrgData();
        if (CollectionUtils.m26068b(orgData)) {
            ArrayList arrayList = new ArrayList();
            for (JSONOrgData jSONOrgData : orgData) {
                String company = jSONOrgData.getCompany();
                String title = jSONOrgData.getTitle();
                if ((StringUtils.m26045b((CharSequence) company) && company.length() < 2) || (StringUtils.m26045b((CharSequence) title) && title.length() < 2)) {
                    arrayList.add(jSONOrgData);
                }
            }
            orgData.removeAll(arrayList);
        }
        mo28923e(loadContext);
    }

    @Override // com.callapp.contacts.loader.EagerContactLoader
    /* renamed from: e */
    public final void mo28923e(LoadContext loadContext) {
        if (!m28952a() || this.f25228c == null) {
            return;
        }
        ContactData contactData = loadContext.f25322a;
        boolean z = false;
        if (this.f25228c.booleanValue()) {
            z = false;
            if (!Objects.m31915a(contactData.getGenomeData(), this.f25227b)) {
                m28925a(loadContext, contactData, loadContext.f25323b, this.f25227b);
                z = true;
            }
        }
        if (this.f25227b == null && !this.f25230g) {
            this.f25230g = true;
            z = true;
        }
        if (!z) {
            return;
        }
        contactData.setDataSource(getContactField(), getDataSource());
        contactData.fireChange(getContactField());
    }

    protected ContactField getContactField() {
        return ContactField.genomeData;
    }

    protected DataSource getDataSource() {
        return DataSource.genome;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.phones, ContactField.call, ContactField.emails);
    }
}
