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

    /* renamed from: a  reason: collision with root package name */
    private static final Set<Integer> f15829a = new HashSet(Arrays.asList(ApiConstants.f10379c));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$1.class */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15830a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[UPLOAD_TYPE.values().length];
            f15830a = iArr;
            try {
                iArr[UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15830a[UPLOAD_TYPE.ONLY_DATA_NOT_FROM_DEVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15830a[UPLOAD_TYPE.ALL_DATA.ordinal()] = 3;
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

    private int a(ObjectMapper objectMapper, BufferedWriter bufferedWriter, boolean z, ContactData contactData) throws IOException {
        JSONContact a2 = a(contactData, a(contactData));
        if (a2 == null) {
            CLog.a(getClass(), "skipping JSON for contact #%s because it contains no relevant data", Long.valueOf(contactData.getDeviceId()));
            return 0;
        }
        if (!z) {
            bufferedWriter.write(",");
        }
        objectMapper.writeValue(bufferedWriter, a2);
        return 1;
    }

    private JSONContact a(ContactData contactData, UPLOAD_TYPE upload_type) {
        JSONContact jSONContact = new JSONContact();
        boolean z = true;
        jSONContact.setFromDevice(true);
        List<JSONPhoneNumber> a2 = a(contactData.getPhones());
        if (CollectionUtils.a(a2)) {
            return null;
        }
        jSONContact.setPhoneNumbers(a2);
        boolean z2 = false;
        if (a2.size() <= 5) {
            z = false;
        }
        if (!z) {
            z2 = a(contactData, jSONContact, false, upload_type);
        }
        JSONContact jSONContact2 = jSONContact;
        if (!g(contactData, jSONContact, f(contactData, jSONContact, e(contactData, jSONContact, d(contactData, jSONContact, c(contactData, jSONContact, a(contactData, jSONContact, b(contactData, jSONContact, z2, upload_type), z, upload_type), upload_type), upload_type), upload_type), upload_type), upload_type)) {
            jSONContact2 = null;
        }
        return jSONContact2;
    }

    private static List<JSONPhoneNumber> a(Collection<Phone> collection) {
        if (CollectionUtils.a(collection)) {
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
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    private static void a(int i, int i2) {
        NotificationManager.get().a(9);
        NotificationManager.get().a(i, i2, String.format(Activities.getString(2131886931), Integer.valueOf(i2), Integer.valueOf(i)));
    }

    private static boolean a(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        if (upload_type == UPLOAD_TYPE.ONLY_DATA_FROM_DEVICE) {
            return false;
        }
        boolean z2 = true;
        boolean z3 = z;
        if (contactData.getFacebookId() != null) {
            z3 = z;
            if (contactData.getFacebookId().isSure()) {
                z3 = z;
                if (ApiHelper.a(contactData.getDataSource(ContactField.facebookId).dbCode)) {
                    jSONContact.setFacebookID(contactData.getFacebookId());
                    z3 = true;
                }
            }
        }
        boolean z4 = z3;
        if (contactData.getTwitterScreenName() != null) {
            z4 = z3;
            if (contactData.getTwitterScreenName().isSure()) {
                z4 = z3;
                if (ApiHelper.a(contactData.getDataSource(ContactField.twitterScreenName).dbCode)) {
                    jSONContact.setTwitterScreenName(contactData.getTwitterScreenName());
                    z4 = true;
                }
            }
        }
        boolean z5 = z4;
        if (contactData.getFoursquareId() != null) {
            z5 = z4;
            if (contactData.getFoursquareId().isSure()) {
                z5 = z4;
                if (ApiHelper.a(contactData.getDataSource(ContactField.foursquareId).dbCode)) {
                    jSONContact.setFoursquareID(contactData.getFoursquareId());
                    z5 = true;
                }
            }
        }
        boolean z6 = z5;
        if (contactData.getVenueFoursquareId() != null) {
            z6 = z5;
            if (contactData.getVenueFoursquareId().isSure()) {
                z6 = z5;
                if (ApiHelper.a(contactData.getDataSource(ContactField.venueFoursquareId).dbCode)) {
                    jSONContact.setVenueFoursquareID(contactData.getVenueFoursquareId());
                    z6 = true;
                }
            }
        }
        boolean z7 = z6;
        if (contactData.getInstagramId() != null) {
            z7 = z6;
            if (contactData.getInstagramId().isSure()) {
                z7 = z6;
                if (ApiHelper.a(contactData.getDataSource(ContactField.instagramId).dbCode)) {
                    jSONContact.setInstagramID(contactData.getInstagramId());
                    z7 = true;
                }
            }
        }
        z2 = z7;
        if (contactData.getPinterestId() != null) {
            z2 = z7;
            if (contactData.getPinterestId().isSure()) {
                z2 = z7;
                if (ApiHelper.a(contactData.getDataSource(ContactField.pinterestId).dbCode)) {
                    jSONContact.setPinterestID(contactData.getPinterestId());
                    z2 = true;
                }
            }
        }
        if (contactData.getVKId() != null && contactData.getVKId().isSure() && ApiHelper.a(contactData.getDataSource(ContactField.vkId).dbCode)) {
            jSONContact.setVkID(contactData.getVKId());
        }
        return z2;
    }

    private static boolean a(ContactData contactData, JSONContact jSONContact, boolean z, boolean z2, UPLOAD_TYPE upload_type) {
        int src;
        Collection<JSONDataAndSource<String>> namesWithSource = contactData.getNamesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<String> jSONDataAndSource : namesWithSource) {
            if (StringUtils.b((CharSequence) jSONDataAndSource.getData()) && ((src = jSONDataAndSource.getSrc()) == 1000 || !z2)) {
                DataSource convertSrcIntToDataSource = UpdateValueWithSourceBuilder.convertSrcIntToDataSource(src);
                if (contactData.isSure(convertSrcIntToDataSource) && (f15829a.contains(Integer.valueOf(src)) || src == 11 || (src != 1001 && ApiHelper.a(convertSrcIntToDataSource.dbCode)))) {
                    if (a(convertSrcIntToDataSource, upload_type)) {
                        arrayList.add(new JSONDataAndSource<>(jSONDataAndSource.getSrc(), StringUtils.u(jSONDataAndSource.getData())));
                    }
                }
            }
        }
        if (CollectionUtils.b(arrayList)) {
            z = true;
            jSONContact.setName(StringUtils.j(arrayList.get(0).getData()));
            jSONContact.setNames(arrayList);
        }
        return z;
    }

    private static boolean a(ContactData contactData, ContactField contactField, UPLOAD_TYPE upload_type) {
        return a(contactData.getDataSource(contactField), upload_type);
    }

    private static boolean a(DataSource dataSource, UPLOAD_TYPE upload_type) {
        int i = AnonymousClass1.f15830a[upload_type.ordinal()];
        return i != 1 ? i != 2 ? i == 3 : dataSource != DataSource.device : dataSource == DataSource.device;
    }

    private static boolean b(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
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
                z = z;
                if (CollectionUtils.b(set)) {
                    z = z;
                    if (CollectionUtils.b(set)) {
                        List<String> c2 = CollectionUtils.c(set);
                        if (keyAt == 1) {
                            jSONContact.setFacebookNegatives(c2);
                        } else if (keyAt == 4) {
                            jSONContact.setTwitterNegatives(c2);
                        } else if (keyAt == 5) {
                            jSONContact.setGooglePlusNegatives(c2);
                        } else if (keyAt == 6) {
                            jSONContact.setFoursquareNegatives(c2);
                        } else if (keyAt == 7) {
                            jSONContact.setInstagramNegatives(c2);
                        } else if (keyAt == 9) {
                            jSONContact.setPinterestNegatives(c2);
                        } else if (keyAt == 10) {
                            jSONContact.setVkNegatives(c2);
                        }
                        z = true;
                    }
                }
                i++;
            }
        }
        return z2;
    }

    private static boolean c(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Map<JSONEmail, DataSource> emailsMap = contactData.getEmailsMap();
        ArrayList arrayList = new ArrayList();
        for (JSONEmail jSONEmail : emailsMap.keySet()) {
            DataSource dataSource = emailsMap.get(jSONEmail);
            if (contactData.isSure(dataSource) && ApiHelper.a(dataSource.dbCode) && a(dataSource, upload_type)) {
                z = true;
                arrayList.add(jSONEmail);
            }
        }
        jSONContact.setEmails(CollectionUtils.c(arrayList));
        return z;
    }

    private static boolean d(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONWebsite>> websitesWithSource = contactData.getWebsitesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONWebsite> jSONDataAndSource : websitesWithSource) {
            if (jSONDataAndSource.getData() != null && a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.b(arrayList)) {
            z = true;
            jSONContact.setWebsites(arrayList);
        }
        return z;
    }

    private static boolean e(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONOrgData>> organizationsWithSource = contactData.getOrganizationsWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONOrgData> jSONDataAndSource : organizationsWithSource) {
            if (jSONDataAndSource.getData() != null && a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.b(arrayList)) {
            z = true;
            jSONContact.setOrgData(arrayList);
        }
        return z;
    }

    private static boolean f(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        Collection<JSONDataAndSource<JSONIMaddress>> imAddressesWithSource = contactData.getImAddressesWithSource();
        ArrayList arrayList = new ArrayList();
        for (JSONDataAndSource<JSONIMaddress> jSONDataAndSource : imAddressesWithSource) {
            JSONIMaddress data = jSONDataAndSource.getData();
            if (data != null && StringUtils.b((CharSequence) data.getIMAddress()) && a(UpdateValueWithSourceBuilder.convertSrcIntToDataSource(jSONDataAndSource.getSrc()), upload_type)) {
                arrayList.add(jSONDataAndSource.getData());
            }
        }
        if (CollectionUtils.b(arrayList)) {
            z = true;
            jSONContact.setIMAddresses(arrayList);
        }
        return z;
    }

    private boolean g(ContactData contactData, JSONContact jSONContact, boolean z, UPLOAD_TYPE upload_type) {
        ArrayList<JSONEvent> arrayList = new ArrayList(contactData.getEvents());
        JSONDate birthday = contactData.getBirthday();
        boolean isSure = contactData.isSure(ContactField.birthday);
        if (birthday != null && a(contactData, ContactField.birthday, upload_type)) {
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

    abstract UPLOAD_TYPE a(ContactData contactData);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:109:0x042b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.File a(java.util.Collection<com.callapp.contacts.model.contact.ContactData> r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 1106
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.sync.syncer.upload.BaseGenomeUploadSyncer.a(java.util.Collection, boolean):java.io.File");
    }
}
