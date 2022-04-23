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

    /* renamed from: a  reason: collision with root package name */
    private boolean f14443a;

    /* renamed from: b  reason: collision with root package name */
    private JSONContact f14444b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f14445c;
    private LoadContext f;
    private boolean g = false;
    private String h = null;

    public LocalGenomeLoader(boolean z) {
        this.f14443a = z;
    }

    private Pair<Boolean, JSONContact> a(ContactData contactData) {
        IOException e;
        HttpUtils.getCallAppServerHost();
        if (!HttpUtils.b()) {
            CLog.a(LocalGenomeLoader.class, "No internet - registering for connection changed");
            ConnectionChangedService.a(this);
            return new Pair<>(Boolean.FALSE, null);
        }
        try {
            String a2 = GenomeLoaderHelper.a(Prefs.aR.get(), contactData.getPhonesList(), contactData.getEmails(), this.f14443a, contactData.isContactInDevice(), PhoneManager.get().getCountryIso(), Locale.getDefault().getCountry());
            if (StringUtils.a((CharSequence) a2)) {
                return new Pair<>(Boolean.FALSE, null);
            }
            ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
            CLog.a(LocalGenomeLoader.class, "Sending request to genome: ".concat(String.valueOf(a2)));
            HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(a2);
            httpRequestParamsBuilder.f16228c = validatorHttpResponseHandler;
            HttpUtils.c(httpRequestParamsBuilder.a());
            if (validatorHttpResponseHandler.getResult() != null) {
                CLog.a(LocalGenomeLoader.class, "Received response from genome: ".concat(String.valueOf(a2)));
                JSONContact jSONContact = (JSONContact) Parser.a(validatorHttpResponseHandler.getResult(), JSONContact.class);
                if (jSONContact != null) {
                    a(jSONContact);
                    if (!RegexUtils.c(jSONContact.getName())) {
                        jSONContact.setName(null);
                    }
                }
                return new Pair<>(Boolean.TRUE, jSONContact);
            }
            CLog.a(LocalGenomeLoader.class, "Received empty response from genome: ".concat(String.valueOf(a2)));
            return new Pair<>(Boolean.FALSE, new JSONContact());
        } catch (UnknownHostException e2) {
            e = e2;
            Singletons.get().getExceptionManager().a(getClass(), e);
            return new Pair<>(Boolean.FALSE, null);
        } catch (ConnectTimeoutException e3) {
            e = e3;
            Singletons.get().getExceptionManager().a(getClass(), e);
            return new Pair<>(Boolean.FALSE, null);
        } catch (IOException e4) {
            CLog.b(getClass(), e4);
            return new Pair<>(Boolean.FALSE, null);
        }
    }

    private static void a(JSONContact jSONContact) {
        List<JSONEmail> emails;
        if (jSONContact != null && (emails = jSONContact.getEmails()) != null) {
            ListIterator<JSONEmail> listIterator = emails.listIterator();
            while (listIterator.hasNext()) {
                JSONEmail next = listIterator.next();
                if (next == null || !RegexUtils.j(next.getEmail())) {
                    listIterator.remove();
                }
            }
        }
    }

    private void a(LoadContext loadContext, final ContactData contactData, Set<ContactField> set, JSONContact jSONContact) {
        MultiTaskRunner b2 = loadContext.b();
        contactData.setGenomeData(jSONContact);
        if (jSONContact != null) {
            if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.NAME_FIELDS) && StringUtils.b((CharSequence) jSONContact.getName())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateFullName();
                    }
                });
            }
            if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.PHOTO_FIELDS) && StringUtils.b((CharSequence) jSONContact.getPhotoUrl())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.2
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhoto();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.phones) && CollectionUtils.b(jSONContact.getPhoneNumbers())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.3
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePhones();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.addresses) && CollectionUtils.b(jSONContact.getAddresses())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.4
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateAddresses();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.birthday) && jSONContact.getBirthday() != null) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.5
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateBirthDate();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.imAddresses) && CollectionUtils.b(jSONContact.getIMAddresses())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.6
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateImAddresses();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.emails) && CollectionUtils.b(jSONContact.getEmails())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.7
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateEmails();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.organizations) && CollectionUtils.b(jSONContact.getOrgData())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.8
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOrganizations();
                    }
                });
            }
            if (CollectionUtils.a((Set) set, (Set) ContactFieldEnumSets.SOCIAL_NETWORKS_IDS) && !(jSONContact.getFacebookID() == null && jSONContact.getFoursquareID() == null && jSONContact.getTwitterScreenName() == null && jSONContact.getInstagramID() == null && jSONContact.getVenueFoursquareID() == null && jSONContact.getPinterestID() == null)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.9
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateSocialNetworkIds();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.websites) && CollectionUtils.b(jSONContact.getWebsites())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.10
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateWebsites();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.categories) && CollectionUtils.b(jSONContact.getCategories())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.11
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateCategories();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.reviews) && CollectionUtils.b(jSONContact.getReviews())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.12
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateReviews();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.events) && CollectionUtils.b(jSONContact.getEvents())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.13
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateEvents();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.rating) && jSONContact.getAvgRating() != -1.0d) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.14
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateRating();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.description) && StringUtils.b((CharSequence) jSONContact.getDescription())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.15
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateDescription();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.userDefinition) && StringUtils.b((CharSequence) jSONContact.getUserDefinition())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.16
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateUserDefinition();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.cover) && StringUtils.b((CharSequence) jSONContact.getCover())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.17
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateCover();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.latLng) && !(jSONContact.getLat() == 0.0d && jSONContact.getLng() == 0.0d)) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.18
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateLatLng();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.priceRange) && jSONContact.getPriceRange() != 0) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.19
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updatePriceRange();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.openingHours) && jSONContact.getOpeningHours() != null) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.20
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateOpeningHours();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.menuUrl) && StringUtils.b((CharSequence) jSONContact.getMenuUrl())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.21
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateMenuUrl();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.reserveUrl) && StringUtils.b((CharSequence) jSONContact.getReserveUrl())) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.22
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateReserveUrl();
                    }
                });
            }
            if (CollectionUtils.a(set, ContactField.spamScore) && jSONContact.getSpamScore() != 0) {
                b2.a(new Task() { // from class: com.callapp.contacts.loader.LocalGenomeLoader.23
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        contactData.updateSpamScore();
                    }
                });
            }
            loadContext.a(b2, true);
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public final void a(LoadContext loadContext) {
        this.f = loadContext;
        ContactData contactData = loadContext.f14535a;
        Set<LoaderFlags> flags = loadContext.getFlags();
        synchronized (loadContext.f14535a.getLock(getClass())) {
            if (!RestrictionManager.a(contactData)) {
                AnalyticsManager.get().a(Constants.SEARCH, "country restricted for loading from genome");
                CLog.a(LocalGenomeLoader.class, "country restricted for loading from genome for numbers: " + contactData.getPhone());
                contactData.fireChange(getContactField());
                return;
            }
            if (CollectionUtils.a((Set) loadContext.f14536b, (Set) EnumSet.of(ContactField.phones)) && !StringUtils.b(this.h, GenomeLoaderHelper.a(contactData))) {
                b(loadContext);
            }
            JSONContact jSONContact = this.f14444b;
            if (!flags.contains(LoaderFlags.loadOnlyFromCache) && (jSONContact == null || flags.contains(LoaderFlags.forceRefresh))) {
                if (jSONContact != null && !DateUtils.b(jSONContact.getLastUpdated(), 2131427385)) {
                    return;
                }
                if (!contactData.getPhone().isValidForSearch()) {
                    a(loadContext, contactData, loadContext.f14536b, new JSONContact());
                    contactData.setDataSource(getContactField(), getDataSource());
                    contactData.fireChange(getContactField());
                    return;
                }
                Pair<Boolean, JSONContact> a2 = a(contactData);
                if (!contactData.isContactInDevice()) {
                    boolean booleanValue = ((Boolean) a2.first).booleanValue();
                    JSONContact jSONContact2 = (JSONContact) a2.second;
                    if (!this.f14443a) {
                        AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Contact Details: ".concat(booleanValue ? "Genome had a result " : jSONContact2 != null ? "Genome didn't have a result" : !HttpUtils.a() ? "No internet when trying to access genome" : "Error when trying to access genome"), getClass().getSimpleName());
                    }
                }
                if (!this.f14443a && !((Boolean) a2.first).booleanValue() && a2.second == null && Prefs.n.get().booleanValue()) {
                    FeedbackManager.get().a("Was problem trying reaching genome", 80);
                }
                this.f14445c = (Boolean) a2.first;
                JSONContact jSONContact3 = (JSONContact) a2.second;
                this.f14444b = jSONContact3;
                if (jSONContact3 != null) {
                    if (!(jSONContact3 == null || jSONContact == null)) {
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
                        if (StringUtils.a((CharSequence) jSONContact3.getName()) && !StringUtils.a((CharSequence) jSONContact.getName())) {
                            jSONContact3.setName(jSONContact.getName());
                        }
                    }
                } else if (jSONContact != null) {
                    this.f14444b = jSONContact;
                    jSONContact.setLastUpdated(new Date());
                }
                e(loadContext);
                if (this.f14444b != null) {
                    CacheManager.get().a((Class<String>) JSONContact.class, GenomeLoaderHelper.a(contactData), (String) this.f14444b);
                }
            }
        }
    }

    @Override // com.callapp.contacts.service.jobs.ConnectionChangedService.ConnectionChangedListener
    public final void a(boolean z) {
        CLog.a(LocalGenomeLoader.class, "Connection changed: ".concat(String.valueOf(z)));
        if (z) {
            a(this.f);
        }
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b() {
        CLog.a(LocalGenomeLoader.class, "Unregistering from connection changed");
        ConnectionChangedService.b(this);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader, com.callapp.contacts.loader.api.ContactDataLoader
    public final void b(LoadContext loadContext) {
        ContactData contactData = loadContext.f14535a;
        if (RestrictionManager.a(contactData) && contactData.getPhone().isNotEmpty()) {
            this.h = GenomeLoaderHelper.a(contactData);
            JSONContact jSONContact = (JSONContact) CacheManager.get().b(JSONContact.class, this.h, false);
            this.f14444b = jSONContact;
            if (jSONContact != null) {
                this.f14445c = Boolean.TRUE;
                List<JSONOrgData> orgData = this.f14444b.getOrgData();
                if (CollectionUtils.b(orgData)) {
                    ArrayList arrayList = new ArrayList();
                    for (JSONOrgData jSONOrgData : orgData) {
                        String company = jSONOrgData.getCompany();
                        String title = jSONOrgData.getTitle();
                        if ((StringUtils.b((CharSequence) company) && company.length() < 2) || (StringUtils.b((CharSequence) title) && title.length() < 2)) {
                            arrayList.add(jSONOrgData);
                        }
                    }
                    orgData.removeAll(arrayList);
                }
                e(loadContext);
            }
        }
    }

    @Override // com.callapp.contacts.loader.EagerContactLoader
    public final void e(LoadContext loadContext) {
        if (a() && this.f14445c != null) {
            ContactData contactData = loadContext.f14535a;
            r12 = true;
            boolean z = false;
            if (this.f14445c.booleanValue()) {
                z = false;
                if (!Objects.a(contactData.getGenomeData(), this.f14444b)) {
                    a(loadContext, contactData, loadContext.f14536b, this.f14444b);
                    z = true;
                }
            }
            if (this.f14444b == null && !this.g) {
                this.g = true;
            }
            if (z) {
                contactData.setDataSource(getContactField(), getDataSource());
                contactData.fireChange(getContactField());
            }
        }
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
