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

    /* renamed from: a */
    private static final String f25457a;

    /* renamed from: b */
    private static final String f25458b;

    /* renamed from: c */
    private static final String f25459c;

    /* renamed from: f */
    private static final String f25460f = new String(Base64.m26006a("aHR0cDovL3d3dy5ncmF2YXRhci5jb20v"));

    /* renamed from: g */
    private static final String f25461g = new String(Base64.m26006a("Z3JhdmF0YXIuY29t"));

    static {
        Base64Utils.getInstance();
        String str = new String(Base64.m26006a("aHR0cDovL3d3dy5ncmF2YXRhci5jb20vYXZhdGFyLyVzP2Q9NDA0JnM9"));
        f25457a = str;
        f25458b = str + 50;
        f25459c = str + 600;
        Base64Utils.getInstance();
        Base64Utils.getInstance();
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0117  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ com.callapp.contacts.model.contact.GravatarData m28824a(com.callapp.contacts.loader.external.GravatarLoader r7, com.callapp.common.model.json.JSONEmail r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.external.GravatarLoader.m28824a(com.callapp.contacts.loader.external.GravatarLoader, com.callapp.common.model.json.JSONEmail, boolean):com.callapp.contacts.model.contact.GravatarData");
    }

    /* renamed from: a */
    private static String m28823a(String str) {
        String str2;
        IOException e;
        HashMap hashMap;
        String sb;
        String str3 = (String) CacheManager.get().m28378b(String.class, "gra_res_json_".concat(String.valueOf(str)), false);
        if (StringUtils.m26045b((CharSequence) str3)) {
            return str3;
        }
        String str4 = str3;
        String str5 = str3;
        String str6 = str3;
        String str7 = str3;
        try {
            hashMap = new HashMap();
            hashMap.put("Accept", "*/*");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(f25460f);
            sb2.append(str);
            sb2.append(".json");
            sb = sb2.toString();
        } catch (SocketTimeoutException e2) {
            e = e2;
            str2 = str7;
            Singletons.get().getExceptionManager().m28679a(GravatarLoader.class, e);
        } catch (UnknownHostException e3) {
            e = e3;
            str2 = str6;
            Singletons.get().getExceptionManager().m28679a(GravatarLoader.class, e);
        } catch (ConnectTimeoutException e4) {
            e = e4;
            str2 = str5;
            Singletons.get().getExceptionManager().m28679a(GravatarLoader.class, e);
        } catch (IOException e5) {
            CLog.m27609a(GravatarLoader.class, e5);
            str2 = str4;
        }
        if (!HttpUtils.m26972b()) {
            return null;
        }
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(sb);
        httpRequestParamsBuilder.f28291a = hashMap;
        String m26983a = HttpUtils.m26983a(httpRequestParamsBuilder.m26994a());
        str4 = m26983a;
        str5 = m26983a;
        str6 = m26983a;
        str7 = m26983a;
        CacheManager.get().m28388a(String.class, "gra_res_json_".concat(String.valueOf(str)), m26983a, 2131427372);
        str2 = m26983a;
        if (!StringUtils.m26045b((CharSequence) str2)) {
            return null;
        }
        return str2;
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    protected final /* synthetic */ JSONExternalSourceContact mo28805a(GravatarData gravatarData) {
        GravatarData gravatarData2 = gravatarData;
        JSONExternalSourceContact jSONExternalSourceContact = new JSONExternalSourceContact();
        jSONExternalSourceContact.setFacebookID(gravatarData2.getFacebookId());
        jSONExternalSourceContact.setName(gravatarData2.getFullName());
        jSONExternalSourceContact.setTwitterScreenName(gravatarData2.getTwitterScreenName());
        jSONExternalSourceContact.setInstagramID(gravatarData2.getInstagramId());
        jSONExternalSourceContact.setFoursquareID(gravatarData2.getFoursquareId());
        jSONExternalSourceContact.setWebsites(CollectionUtils.m26065c(gravatarData2.getWebsites()));
        jSONExternalSourceContact.setIMAddresses(CollectionUtils.m26065c(gravatarData2.getImAddresses()));
        jSONExternalSourceContact.setDescription(gravatarData2.getDescription());
        jSONExternalSourceContact.setEmails(CollectionUtils.m26065c(gravatarData2.getEmails()));
        if (CollectionUtils.m26068b(gravatarData2.getPhones())) {
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
    /* renamed from: a */
    protected final /* synthetic */ GravatarData mo28822a(List<GravatarData> list) {
        GravatarData gravatarData;
        if (!CollectionUtils.m26068b(list)) {
            gravatarData = null;
        } else if (list.size() == 1) {
            gravatarData = list.get(0);
        } else {
            GravatarData gravatarData2 = new GravatarData();
            for (GravatarData gravatarData3 : list) {
                GravatarLoaderHelper.m28821a(gravatarData2, gravatarData3);
                if (CollectionUtils.m26068b(gravatarData3.getWebsites())) {
                    Collection<JSONWebsite> websites = gravatarData2.getWebsites();
                    LinkedHashSet linkedHashSet = websites;
                    if (websites == null) {
                        linkedHashSet = new LinkedHashSet();
                    }
                    linkedHashSet.addAll(gravatarData3.getWebsites());
                    gravatarData2.setWebsites(linkedHashSet);
                }
                if (gravatarData2.getAddress() == null) {
                    gravatarData2.setAddress(gravatarData3.getAddress());
                }
                if (StringUtils.m26059a((CharSequence) gravatarData2.getDescription())) {
                    gravatarData2.setDescription(gravatarData3.getDescription());
                }
                if (CollectionUtils.m26068b(gravatarData3.getEmails())) {
                    Collection<JSONEmail> emails = gravatarData2.getEmails();
                    LinkedHashSet linkedHashSet2 = emails;
                    if (emails == null) {
                        linkedHashSet2 = new LinkedHashSet();
                    }
                    linkedHashSet2.addAll(gravatarData3.getEmails());
                    gravatarData2.setEmails(linkedHashSet2);
                }
                if (StringUtils.m26059a((CharSequence) gravatarData2.getFullName())) {
                    gravatarData2.setFullName(gravatarData3.getFullName());
                }
                if (CollectionUtils.m26068b(gravatarData3.getImAddresses())) {
                    Collection<JSONIMaddress> imAddresses = gravatarData2.getImAddresses();
                    LinkedHashSet linkedHashSet3 = imAddresses;
                    if (imAddresses == null) {
                        linkedHashSet3 = new LinkedHashSet();
                    }
                    linkedHashSet3.addAll(gravatarData3.getImAddresses());
                    gravatarData2.setImAddresses(linkedHashSet3);
                }
                if (CollectionUtils.m26068b(gravatarData3.getPhones())) {
                    Collection<Phone> phones = gravatarData2.getPhones();
                    LinkedHashSet linkedHashSet4 = phones;
                    if (phones == null) {
                        linkedHashSet4 = new LinkedHashSet();
                    }
                    linkedHashSet4.addAll(gravatarData3.getPhones());
                    gravatarData2.setPhones(linkedHashSet4);
                }
                if (StringUtils.m26059a((CharSequence) gravatarData2.getPhotoUrl())) {
                    gravatarData2.setPhotoUrl(gravatarData3.getPhotoUrl());
                    gravatarData2.setPhotoSure(gravatarData3.isPhotoSure());
                }
                if (StringUtils.m26059a((CharSequence) gravatarData2.getThumbnailUrl())) {
                    gravatarData2.setThumbnailUrl(gravatarData3.getThumbnailUrl());
                }
            }
            gravatarData = gravatarData2;
        }
        return gravatarData;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x018d, code lost:
        if (r0.getPinterestId() != null) goto L47;
     */
    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ void mo28808a(com.callapp.contacts.loader.api.LoadContext r7, com.callapp.contacts.model.contact.GravatarData r8) {
        /*
            Method dump skipped, instructions count: 543
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.external.GravatarLoader.mo28808a(com.callapp.contacts.loader.api.LoadContext, com.callapp.contacts.model.contact.ExternalSourceData):void");
    }

    @Override // com.callapp.contacts.loader.external.ExternalSourcesLoader
    /* renamed from: c */
    protected final List<GravatarData> mo28800c(LoadContext loadContext) {
        List<GravatarData> list;
        final ContactData contactData = loadContext.f25322a;
        Collection<JSONEmail> emails = contactData.getEmails();
        if (emails.isEmpty() || !HttpUtils.m26985a()) {
            return null;
        }
        synchronized (loadContext.f25322a.getLock(GravatarLoader.class)) {
            GravatarData gravatarData = contactData.getGravatarData();
            if (gravatarData != null && !gravatarData.isExpired(2131427363)) {
                return null;
            }
            final HashMap hashMap = new HashMap();
            for (final JSONEmail jSONEmail : emails) {
                MultiTaskRunner m28869a = loadContext.m28869a();
                m28869a.m28974a(new Task() { // from class: com.callapp.contacts.loader.external.GravatarLoader.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        GravatarLoader gravatarLoader = GravatarLoader.this;
                        JSONEmail jSONEmail2 = jSONEmail;
                        GravatarData m28824a = GravatarLoader.m28824a(gravatarLoader, jSONEmail2, contactData.isEmailFromDevice(jSONEmail2));
                        if (m28824a != null) {
                            m28824a.setKey(jSONEmail.getEmail());
                            hashMap.put(jSONEmail, m28824a);
                        }
                    }
                });
                loadContext.m28868a(m28869a, true);
            }
            if (hashMap.size() == 0) {
                list = new ArrayList<>();
                if (gravatarData != null) {
                    list.add(gravatarData);
                } else {
                    list.add(new GravatarData());
                }
            } else {
                list = CollectionUtils.m26065c(hashMap.values());
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
