package com.callapp.contacts.sync.syncer.upload;

import android.util.SparseArray;
import com.callapp.common.api.ApiConstants;
import com.callapp.common.api.ApiHelper;
import com.callapp.common.model.json.JSONContact;
import com.callapp.common.model.json.JSONDataAndSource;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEmail;
import com.callapp.common.model.json.JSONEvent;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONPhoneNumber;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.manager.NotificationManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.model.UpdateValueWithSourceBuilder;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer.class */
public abstract class BaseGenomeUploadSyncer extends UploadSyncer {

    /* renamed from: a */
    private static final Set<Integer> f27663a = new HashSet(Arrays.asList(ApiConstants.f19116c));

    /* renamed from: com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$1.class */
    public static /* synthetic */ class C77761 {

        /* renamed from: a */
        static final /* synthetic */ int[] f27664a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[UPLOAD_TYPE.values().length];
            f27664a = iArr;
            try {
                iArr[UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f27664a[UPLOAD_TYPE.ONLY_DATA_NOT_FROM_DEVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f27664a[UPLOAD_TYPE.ALL_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE.class */
    public enum UPLOAD_TYPE {
        ONLY_DATA_FROM_DEVICE,
        ONLY_DATA_NOT_FROM_DEVICE,
        ALL_DATA
    }

    /* renamed from: a */
    private int m27712a(ObjectMapper objectMapper, BufferedWriter bufferedWriter, boolean z, ContactData contactData) throws IOException {
        JSONContact m27714a = m27714a(contactData, mo27702a(contactData));
        if (m27714a == null) {
            CLog.m27610a(getClass(), "skipping JSON for contact #%s because it contains no relevant data", Long.valueOf(contactData.getDeviceId()));
            return 0;
        }
        if (!z) {
            bufferedWriter.write(",");
        }
        objectMapper.writeValue(bufferedWriter, m27714a);
        return 1;
    }

    /* renamed from: a */
    private JSONContact m27714a(ContactData contactData, UPLOAD_TYPE upload_type) {
        JSONContact jSONContact = new JSONContact();
        boolean z = true;
        jSONContact.setFromDevice(true);
        List<JSONPhoneNumber> m27711a = m27711a(contactData.getPhones());
        if (CollectionUtils.m26076a(m27711a)) {
            return null;
        }
        jSONContact.setPhoneNumbers(m27711a);
        boolean z2 = false;
        if (m27711a.size() <= 5) {
            z = false;
        }
        if (!z) {
            z2 = m27717a(contactData, jSONContact, false, upload_type);
        }
        JSONContact jSONContact2 = jSONContact;
        if (!m27704g(contactData, jSONContact, m27705f(contactData, jSONContact, m27706e(contactData, jSONContact, m27707d(contactData, jSONContact, m27708c(contactData, jSONContact, m27716a(contactData, jSONContact, m27709b(contactData, jSONContact, z2, upload_type), z, upload_type), upload_type), upload_type), upload_type), upload_type), upload_type)) {
            jSONContact2 = null;
        }
        return jSONContact2;
    }

    /* renamed from: a */
    private static List<JSONPhoneNumber> m27711a(Collection<Phone> collection) {
        if (CollectionUtils.m26076a(collection)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Phone phone : collection) {
            if (phone.isValid()) {
                JSONPhoneNumber jSONPhoneNumber = new JSONPhoneNumber(phone);
                jSONPhoneNumber.setType(phone.getType().code);
                jSONPhoneNumber.setFromDevice(true);
                arrayList.add(jSONPhoneNumber);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: a */
    private static void m27718a(int i, int i2) {
        NotificationManager.get().m28578a(9);
        NotificationManager.get().m28576a(i, i2, String.format(Activities.getString(2131886931), Integer.valueOf(i2), Integer.valueOf(i)));
    }

    /* renamed from: a */
    private static boolean m27717a(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        if (upload_type == UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE) {
            return false;
        }
        boolean z2 = z;
        if (contactData.getFacebookId() != null) {
            z2 = z;
            if (contactData.getFacebookId().isSure()) {
                z2 = z;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.facebookId).dbCode)) {
                    jSONContact.setFacebookID(contactData.getFacebookId());
                    z2 = true;
                }
            }
        }
        boolean z3 = z2;
        if (contactData.getTwitterScreenName() != null) {
            z3 = z2;
            if (contactData.getTwitterScreenName().isSure()) {
                z3 = z2;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.twitterScreenName).dbCode)) {
                    jSONContact.setTwitterScreenName(contactData.getTwitterScreenName());
                    z3 = true;
                }
            }
        }
        boolean z4 = z3;
        if (contactData.getFoursquareId() != null) {
            z4 = z3;
            if (contactData.getFoursquareId().isSure()) {
                z4 = z3;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.foursquareId).dbCode)) {
                    jSONContact.setFoursquareID(contactData.getFoursquareId());
                    z4 = true;
                }
            }
        }
        boolean z5 = z4;
        if (contactData.getVenueFoursquareId() != null) {
            z5 = z4;
            if (contactData.getVenueFoursquareId().isSure()) {
                z5 = z4;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.venueFoursquareId).dbCode)) {
                    jSONContact.setVenueFoursquareID(contactData.getVenueFoursquareId());
                    z5 = true;
                }
            }
        }
        boolean z6 = z5;
        if (contactData.getInstagramId() != null) {
            z6 = z5;
            if (contactData.getInstagramId().isSure()) {
                z6 = z5;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.instagramId).dbCode)) {
                    jSONContact.setInstagramID(contactData.getInstagramId());
                    z6 = true;
                }
            }
        }
        boolean z7 = z6;
        if (contactData.getPinterestId() != null) {
            z7 = z6;
            if (contactData.getPinterestId().isSure()) {
                z7 = z6;
                if (ApiHelper.m31934a(contactData.getDataSource(ContactField.pinterestId).dbCode)) {
                    jSONContact.setPinterestID(contactData.getPinterestId());
                    z7 = true;
                }
            }
        }
        if (contactData.getVKId() != null && contactData.getVKId().isSure() && ApiHelper.m31934a(contactData.getDataSource(ContactField.vkId).dbCode)) {
            jSONContact.setVkID(contactData.getVKId());
            z7 = true;
        }
        return z7;
    }

    /* renamed from: a */
    private static boolean m27716a(ContactData contactData, JSONContact jSONContact, boolean z, boolean z2, UPLOAD_TYPE upload_type) {
        int src;
        Collection<JSONDataAndSource<String>> namesWithSource = contactData.getNamesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<String> jSONDataAndSource : namesWithSource) {
            if (StringUtils.m26045b((CharSequence) jSONDataAndSource.getData()) && ((src = jSONDataAndSource.getSrc()) == 1000 || !z2)) {
                DataSource convertSrcIntToDataSource = UpdateValueWithSourceBuilder.convertSrcIntToDataSource(src);
                if (contactData.isSure(convertSrcIntToDataSource) && (f27663a.contains(Integer.valueOf(src)) || src == 11 || (src != 1001 && ApiHelper.m31934a(convertSrcIntToDataSource.dbCode)))) {
                    if (m27713a(convertSrcIntToDataSource, upload_type)) {
                        arrayList.add(new JSONDataAndSource<>(jSONDataAndSource.getSrc(), StringUtils.m26007u(jSONDataAndSource.getData())));
                    }
                }
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            z = true;
            jSONContact.setName(StringUtils.m26020j(arrayList.get(0).getData()));
            jSONContact.setNames(arrayList);
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m27715a(ContactData contactData, ContactField contactField, UPLOAD_TYPE upload_type) {
        return m27713a(contactData.getDataSource(contactField), upload_type);
    }

    /* renamed from: a */
    private static boolean m27713a(DataSource dataSource, UPLOAD_TYPE upload_type) {
        int i = C77761.f27664a[upload_type.ordinal()];
        return i != 1 ? i != 2 ? i == 3 : dataSource != DataSource.device : dataSource == DataSource.device;
    }

    /* renamed from: b */
    private static boolean m27709b(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        int i = 0;
        if (upload_type == UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE) {
            return false;
        }
        SparseArray<Set<String>> negativesMap = contactData.getNegativesMap();
        boolean z2 = z;
        if (negativesMap.size() > 0) {
            while (true) {
                z2 = z;
                if (i >= negativesMap.size()) {
                    break;
                }
                int keyAt = negativesMap.keyAt(i);
                Set<String> set = negativesMap.get(keyAt);
                boolean z3 = z;
                if (CollectionUtils.m26068b(set)) {
                    z3 = z;
                    if (CollectionUtils.m26068b(set)) {
                        List<String> m26065c = CollectionUtils.m26065c(set);
                        if (keyAt == 1) {
                            jSONContact.setFacebookNegatives(m26065c);
                        } else if (keyAt == 4) {
                            jSONContact.setTwitterNegatives(m26065c);
                        } else if (keyAt == 5) {
                            jSONContact.setGooglePlusNegatives(m26065c);
                        } else if (keyAt == 6) {
                            jSONContact.setFoursquareNegatives(m26065c);
                        } else if (keyAt == 7) {
                            jSONContact.setInstagramNegatives(m26065c);
                        } else if (keyAt == 9) {
                            jSONContact.setPinterestNegatives(m26065c);
                        } else if (keyAt == 10) {
                            jSONContact.setVkNegatives(m26065c);
                        }
                        z3 = true;
                    }
                }
                i++;
                z = z3;
            }
        }
        return z2;
    }

    /* renamed from: c */
    private static boolean m27708c(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Map<JSONEmail, DataSource> emailsMap = contactData.getEmailsMap();
        ArrayList arrayList = new ArrayList();
        for (JSONEmail jSONEmail : emailsMap.keySet()) {
            DataSource dataSource = emailsMap.get(jSONEmail);
            if (contactData.isSure(dataSource) && ApiHelper.m31934a(dataSource.dbCode) && m27713a(dataSource, upload_type)) {
                z = true;
                arrayList.add(jSONEmail);
            }
        }
        jSONContact.setEmails(CollectionUtils.m26065c(arrayList));
        return z;
    }

    /* renamed from: d */
    private static boolean m27707d(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONWebsite>> websitesWithSource = contactData.getWebsitesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONWebsite> jSONDataAndSource : websitesWithSource) {
            if (jSONDataAndSource.getData() != null && m27713a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            z = true;
            jSONContact.setWebsites(arrayList);
        }
        return z;
    }

    /* renamed from: e */
    private static boolean m27706e(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONOrgData>> organizationsWithSource = contactData.getOrganizationsWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONOrgData> jSONDataAndSource : organizationsWithSource) {
            if (jSONDataAndSource.getData() != null && m27713a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            z = true;
            jSONContact.setOrgData(arrayList);
        }
        return z;
    }

    /* renamed from: f */
    private static boolean m27705f(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONIMaddress>> imAddressesWithSource = contactData.getImAddressesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONIMaddress> jSONDataAndSource : imAddressesWithSource) {
            JSONIMaddress data = jSONDataAndSource.getData();
            if (data != null && StringUtils.m26045b((CharSequence) data.getIMAddress()) && m27713a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.m26068b(arrayList)) {
            z = true;
            jSONContact.setIMAddresses(arrayList);
        }
        return z;
    }

    /* renamed from: g */
    private boolean m27704g(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        ArrayList<JSONEvent> arrayList = new ArrayList(contactData.getEvents());
        JSONDate birthday = contactData.getBirthday();
        boolean isSure = contactData.isSure(ContactField.birthday);
        if (birthday != null && m27715a(contactData, ContactField.birthday, upload_type)) {
            if (isSure) {
                for (JSONEvent jSONEvent : arrayList) {
                    if (jSONEvent.getType() == 3) {
                        jSONContact.setEvents(arrayList);
                        return true;
                    }
                }
                JSONEvent jSONEvent2 = new JSONEvent();
                jSONEvent2.setFromDevice(true);
                jSONEvent2.setFormattedDate(birthday);
                jSONEvent2.setType(3);
                jSONEvent2.setLabel(Constants.BIRTHDAY);
                arrayList.add(jSONEvent2);
                jSONContact.setEvents(arrayList);
                return true;
            }
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    i = -1;
                    break;
                } else if (arrayList.get(i).getType() == 3) {
                    break;
                } else {
                    i++;
                }
            }
            if (i != -1) {
                arrayList.remove(i);
            }
            jSONContact.setEvents(arrayList);
        }
        return z;
    }

    /* renamed from: a */
    abstract UPLOAD_TYPE mo27702a(ContactData contactData);

    /* JADX WARN: Removed duplicated region for block: B:109:0x042b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File m27710a(java.util.Collection<com.callapp.contacts.model.contact.ContactData> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 1106
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer.m27710a(java.util.Collection, boolean):java.io.File");
    }
}
