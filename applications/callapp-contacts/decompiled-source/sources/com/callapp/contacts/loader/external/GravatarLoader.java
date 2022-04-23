package com.callapp.contacts.loader.external;

import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONExternalSourceContact;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.framework.util.MultiTaskRunner;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.GravatarData;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.util.Base64Utils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.callapp.repackaged.org.apache.commons.codec.binary.Base64;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.conn.ConnectTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/external/GravatarLoader.class */
public class GravatarLoader extends ExternalSourcesLoader<GravatarData> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f14665a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f14666b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f14667c;
    private static final String f = new String(Base64.a("aHR0cDovL3d3dy5ncmF2YXRhci5jb20v"));
    private static final String g = new String(Base64.a("Z3JhdmF0YXIuY29t"));

    static {
        Base64Utils.getInstance();
        String str = new String(Base64.a("aHR0cDovL3d3dy5ncmF2YXRhci5jb20vYXZhdGFyLyVzP2Q9NDA0JnM9"));
        f14665a = str;
        f14666b = str + 50;
        f14667c = str + 600;
        Base64Utils.getInstance();
        Base64Utils.getInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ com.callapp.contacts.model.contact.GravatarData a(com.callapp.contacts.loader.external.GravatarLoader r7, com.callapp.common.model.json.JSONEmail r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.external.GravatarLoader.a(com.callapp.contacts.loader.external.GravatarLoader, com.callapp.common.model.json.JSONEmail, boolean):com.callapp.contacts.model.contact.GravatarData");
    }

    private static String a(String str) {
        IOException e;
        HashMap hashMap;
        String sb;
        String str2 = (String) CacheManager.get().b(String.class, "gra_res_json_".concat(String.valueOf(str)), false);
        if (StringUtils.b((CharSequence) str2)) {
            return str2;
        }
        String str3 = str2;
        str3 = str2;
        str3 = str2;
        str3 = str2;
        try {
            hashMap = new HashMap();
            hashMap.put("Accept", "*/*");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f);
            sb2.append(str);
            sb2.append(".json");
            sb = sb2.toString();
        } catch (SocketTimeoutException e2) {
            e = e2;
            Singletons.get().getExceptionManager().a(GravatarLoader.class, e);
        } catch (UnknownHostException e3) {
            e = e3;
            Singletons.get().getExceptionManager().a(GravatarLoader.class, e);
        } catch (ConnectTimeoutException e4) {
            e = e4;
            Singletons.get().getExceptionManager().a(GravatarLoader.class, e);
        } catch (IOException e5) {
            CLog.a(GravatarLoader.class, e5);
        }
        if (!HttpUtils.b()) {
            return null;
        }
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(sb);
        httpRequestParamsBuilder.f16226a = hashMap;
        String a2 = HttpUtils.a(httpRequestParamsBuilder.a());
        str3 = a2;
        str3 = a2;
        str3 = a2;
        str3 = a2;
        CacheManager.get().a(String.class, "gra_res_json_".concat(String.valueOf(str)), a2, 2131427372);
        str3 = a2;
        if (StringUtils.b((CharSequence) str3)) {
            return str3;
        }
        return null;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ JSONExternalSourceContact a(GravatarData gravatarData) {
        GravatarData gravatarData2 = gravatarData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setFacebookID(gravatarData2.getFacebookId());
        jSONExternalSourceContact.setName(gravatarData2.getFullName());
        jSONExternalSourceContact.setTwitterScreenName(gravatarData2.getTwitterScreenName());
        jSONExternalSourceContact.setInstagramID(gravatarData2.getInstagramId());
        jSONExternalSourceContact.setFoursquareID(gravatarData2.getFoursquareId());
        jSONExternalSourceContact.setWebsites(CollectionUtils.c(gravatarData2.getWebsites()));
        jSONExternalSourceContact.setIMAddresses(CollectionUtils.c(gravatarData2.getImAddresses()));
        jSONExternalSourceContact.setDescription(gravatarData2.getDescription());
        jSONExternalSourceContact.setEmails(CollectionUtils.c(gravatarData2.getEmails()));
        if (CollectionUtils.b(gravatarData2.getPhones())) {
            ArrayList arrayList = new ArrayList();
            for (Phone phone : gravatarData2.getPhones()) {
                arrayList.add(new JSONPhoneNumber(phone));
            }
            jSONExternalSourceContact.setPhoneNumbers(arrayList);
        }
        jSONExternalSourceContact.setAddresses(Collections.singletonList(gravatarData2.getAddress()));
        return jSONExternalSourceContact;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final /* synthetic */ GravatarData a(List<GravatarData> list) {
        GravatarData gravatarData;
        if (!CollectionUtils.b(list)) {
            gravatarData = null;
        } else if (list.size() == 1) {
            gravatarData = list.get(0);
        } else {
            GravatarData gravatarData2 = new GravatarData();
            for (GravatarData gravatarData3 : list) {
                GravatarLoaderHelper.a(gravatarData2, gravatarData3);
                if (CollectionUtils.b(gravatarData3.getWebsites())) {
                    Collection<JSONWebsite> websites = gravatarData2.getWebsites();
                    Collection<JSONWebsite> collection = websites;
                    if (websites == null) {
                        collection = new LinkedHashSet<>();
                    }
                    collection.addAll(gravatarData3.getWebsites());
                    gravatarData2.setWebsites(collection);
                }
                if (gravatarData2.getAddress() == null) {
                    gravatarData2.setAddress(gravatarData3.getAddress());
                }
                if (StringUtils.a((CharSequence) gravatarData2.getDescription())) {
                    gravatarData2.setDescription(gravatarData3.getDescription());
                }
                if (CollectionUtils.b(gravatarData3.getEmails())) {
                    Collection<JSONEmail> emails = gravatarData2.getEmails();
                    Collection<JSONEmail> collection2 = emails;
                    if (emails == null) {
                        collection2 = new LinkedHashSet<>();
                    }
                    collection2.addAll(gravatarData3.getEmails());
                    gravatarData2.setEmails(collection2);
                }
                if (StringUtils.a((CharSequence) gravatarData2.getFullName())) {
                    gravatarData2.setFullName(gravatarData3.getFullName());
                }
                if (CollectionUtils.b(gravatarData3.getImAddresses())) {
                    Collection<JSONIMaddress> imAddresses = gravatarData2.getImAddresses();
                    Collection<JSONIMaddress> collection3 = imAddresses;
                    if (imAddresses == null) {
                        collection3 = new LinkedHashSet<>();
                    }
                    collection3.addAll(gravatarData3.getImAddresses());
                    gravatarData2.setImAddresses(collection3);
                }
                if (CollectionUtils.b(gravatarData3.getPhones())) {
                    Collection<Phone> phones = gravatarData2.getPhones();
                    Collection<Phone> collection4 = phones;
                    if (phones == null) {
                        collection4 = new LinkedHashSet<>();
                    }
                    collection4.addAll(gravatarData3.getPhones());
                    gravatarData2.setPhones(collection4);
                }
                if (StringUtils.a((CharSequence) gravatarData2.getPhotoUrl())) {
                    gravatarData2.setPhotoUrl(gravatarData3.getPhotoUrl());
                    gravatarData2.setPhotoSure(gravatarData3.isPhotoSure());
                }
                if (StringUtils.a((CharSequence) gravatarData2.getThumbnailUrl())) {
                    gravatarData2.setThumbnailUrl(gravatarData3.getThumbnailUrl());
                }
            }
            gravatarData = gravatarData2;
        }
        return gravatarData;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x018d, code lost:
        if (r0.getPinterestId() != null) goto L_0x0190;
     */
    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void a(com.callapp.contacts.loader.api.LoadContext r7, com.callapp.contacts.model.contact.GravatarData r8) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.external.GravatarLoader.a(com.callapp.contacts.loader.api.LoadContext, com.callapp.contacts.model.contact.ExternalSourceData):void");
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected final List<GravatarData> c(LoadContext loadContext) {
        List<GravatarData> list;
        final ContactData contactData = loadContext.f14535a;
        Collection<JSONEmail> emails = contactData.getEmails();
        if (emails.isEmpty() || !HttpUtils.a()) {
            return null;
        }
        synchronized (loadContext.f14535a.getLock(GravatarLoader.class)) {
            GravatarData gravatarData = contactData.getGravatarData();
            if (!(gravatarData == null || gravatarData.isExpired(2131427363))) {
                return null;
            }
            final HashMap hashMap = new HashMap();
            for (final JSONEmail jSONEmail : emails) {
                MultiTaskRunner a2 = loadContext.a();
                a2.a(new Task() { // from class: com.callapp.contacts.loader.external.GravatarLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        GravatarLoader gravatarLoader = GravatarLoader.this;
                        JSONEmail jSONEmail2 = jSONEmail;
                        GravatarData a3 = GravatarLoader.a(gravatarLoader, jSONEmail2, contactData.isEmailFromDevice(jSONEmail2));
                        if (a3 != null) {
                            a3.setKey(jSONEmail.getEmail());
                            hashMap.put(jSONEmail, a3);
                        }
                    }
                });
                loadContext.a(a2, true);
            }
            if (hashMap.size() == 0) {
                list = new ArrayList<>();
                if (gravatarData != null) {
                    list.add(gravatarData);
                } else {
                    list.add(new GravatarData());
                }
            } else {
                list = CollectionUtils.c(hashMap.values());
                Collections.sort(list, new Comparator<GravatarData>() { // from class: com.callapp.contacts.loader.external.GravatarLoader.2
                    @Override // java.util.Comparator
                    public /* synthetic */ int compare(GravatarData gravatarData2, GravatarData gravatarData3) {
                        GravatarData gravatarData4 = gravatarData2;
                        GravatarData gravatarData5 = gravatarData3;
                        if (!gravatarData4.isPhotoSure() || gravatarData5.isPhotoSure()) {
                            return (gravatarData4.isPhotoSure() || !gravatarData5.isPhotoSure()) ? 0 : 1;
                        }
                        return -1;
                    }
                });
            }
            return list;
        }
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected Class<GravatarData> getDataClass() {
        return GravatarData.class;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    protected int getExernalSourceId() {
        return 1009;
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return EnumSet.of(ContactField.emails);
    }

    @Override // com.callapp.contacts.loader.SimpleContactLoader
    public Set<ContactField> getLoadedFields() {
        EnumSet of = EnumSet.of(ContactField.emails, ContactField.description, ContactField.phones, ContactField.websites, ContactField.fullName, ContactField.names, ContactField.imAddresses, ContactField.gTalk, ContactField.yahoo, ContactField.skype);
        of.addAll(ContactFieldEnumSets.SOCIAL_NETWORKS_IDS);
        of.addAll(ContactFieldEnumSets.PHOTO_FIELDS);
        return of;
    }
}
