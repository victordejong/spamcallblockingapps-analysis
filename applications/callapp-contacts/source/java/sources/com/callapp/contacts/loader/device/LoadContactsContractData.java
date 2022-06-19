package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import com.callapp.common.model.json.JSONDate;
import com.callapp.common.model.json.JSONEvent;
import com.callapp.common.model.json.JSONIMaddress;
import com.callapp.common.model.json.JSONOrgData;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.common.util.Objects;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.p238im.YahooLoader;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/LoadContactsContractData.class */
public class LoadContactsContractData extends Task {

    /* renamed from: a */
    private final ContactData f25399a;

    /* renamed from: b */
    private final boolean f25400b;

    /* renamed from: c */
    private final boolean f25401c;

    /* renamed from: d */
    private final boolean f25402d;

    /* renamed from: e */
    private final boolean f25403e;

    public LoadContactsContractData(ContactData contactData, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f25399a = contactData;
        this.f25400b = z;
        this.f25401c = z2;
        this.f25402d = z3;
        this.f25403e = z4;
    }

    /* renamed from: a */
    static /* synthetic */ JSONEvent m28849a(LoadContactsContractData loadContactsContractData, RowContext rowContext) {
        Date m27130a;
        String m29002a = rowContext.m29002a("data1");
        if (!StringUtils.m26059a((CharSequence) m29002a) && (m27130a = DateUtils.m27130a(m29002a)) != null) {
            JSONEvent jSONEvent = new JSONEvent();
            jSONEvent.setFromDevice(true);
            int intValue = ((Integer) rowContext.m29003a(Constants.TYPE_COLUMN)).intValue();
            jSONEvent.setType(intValue);
            jSONEvent.setFormattedDate(new JSONDate(m27130a));
            if (intValue == 0) {
                jSONEvent.setLabel(rowContext.m29002a("data3"));
            } else if (intValue == 3) {
                loadContactsContractData.f25399a.getDeviceData().setBirthday(new JSONDate(m27130a));
                loadContactsContractData.f25399a.updateBirthDate();
            }
            return jSONEvent;
        }
        return null;
    }

    /* renamed from: a */
    static /* synthetic */ JSONOrgData m28850a(RowContext rowContext) {
        boolean z;
        JSONOrgData jSONOrgData = new JSONOrgData();
        jSONOrgData.setFromDevice(true);
        String m29002a = rowContext.m29002a("data4");
        if (StringUtils.m26045b((CharSequence) m29002a)) {
            jSONOrgData.setTitle(m29002a);
            z = true;
        } else {
            z = false;
        }
        String m29002a2 = rowContext.m29002a("data1");
        if (StringUtils.m26045b((CharSequence) m29002a2) && !StringUtils.m26032d(m29002a2.toLowerCase(), new String[]{JsonReaderKt.NULL})) {
            jSONOrgData.setCompany(m29002a2);
            z = true;
        }
        if (z) {
            return jSONOrgData;
        }
        return null;
    }

    /* renamed from: a */
    private void m28848a(List<JSONEvent> list) {
        if (!CollectionUtils.m26074a(list, this.f25399a.getDeviceData().getEvents())) {
            this.f25399a.getDeviceData().setEvents(list);
            this.f25399a.updateEvents();
        }
        if (CollectionUtils.m26076a(list)) {
            if (Objects.m31915a(null, this.f25399a.getDeviceData().getBirthday())) {
                return;
            }
            this.f25399a.getDeviceData().setBirthday(null);
            this.f25399a.updateBirthDate();
            return;
        }
        for (JSONEvent jSONEvent : list) {
            if (jSONEvent.getType() == 3) {
                return;
            }
        }
        if (Objects.m31915a(null, this.f25399a.getDeviceData().getBirthday())) {
            return;
        }
        this.f25399a.getDeviceData().setBirthday(null);
        this.f25399a.updateBirthDate();
    }

    /* renamed from: b */
    static /* synthetic */ JSONWebsite m28847b(RowContext rowContext) {
        JSONWebsite jSONWebsite = new JSONWebsite();
        jSONWebsite.setFromDevice(true);
        jSONWebsite.setType(rowContext.m28999d("data2"));
        jSONWebsite.setWebsiteUrl(rowContext.m29002a("data1"));
        return jSONWebsite;
    }

    /* renamed from: c */
    static /* synthetic */ JSONIMaddress m28846c(RowContext rowContext) {
        String str = (String) rowContext.m29003a(Constants.MIMETYPE_COLUMN);
        int intValue = ((Integer) rowContext.m29003a(Constants.PRESENCE_COLUMN)).intValue();
        if (intValue != 0 || !str.equals("vnd.android.cursor.item/email_v2")) {
            int intValue2 = ((Integer) rowContext.m29003a(Constants.PROTOCOL_COLUMN)).intValue();
            String str2 = (String) rowContext.m29003a(Constants.DATA_COLUMN);
            int i = intValue2;
            if (intValue2 == 0) {
                if (str2.endsWith("@gmail.com")) {
                    i = 5;
                } else {
                    i = intValue2;
                    if (intValue2 == 0) {
                        String[] strArr = YahooLoader.f25517a;
                        int length = strArr.length;
                        int i2 = 0;
                        while (true) {
                            i = intValue2;
                            if (i2 >= length) {
                                break;
                            } else if (str2.endsWith(strArr[i2])) {
                                i = 2;
                                break;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
            DeviceIMAddress deviceIMAddress = new DeviceIMAddress();
            deviceIMAddress.setFromDevice(true);
            deviceIMAddress.setDataRowId(((Long) rowContext.m29003a(Constants.ID_COLUMN)).longValue());
            if (i == 0) {
                i = 5;
            }
            deviceIMAddress.setProtocol(i);
            deviceIMAddress.setType(((Integer) rowContext.m29003a(Constants.TYPE_COLUMN)).intValue());
            deviceIMAddress.setIMAddress(str2);
            int i3 = intValue;
            if (intValue == 0) {
                i3 = -1;
            }
            deviceIMAddress.setPresence(i3);
            return deviceIMAddress;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContentQuery m29014b = new ContentQuery(ContactsContract.Data.CONTENT_URI).m29014b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(this.f25399a.getDeviceId()));
        ArrayList arrayList = new ArrayList();
        if (this.f25400b) {
            arrayList.add("vnd.android.cursor.item/organization");
            m29014b.m29008c("data1").m29008c("data4");
        }
        if (this.f25401c) {
            arrayList.add("vnd.android.cursor.item/website");
            m29014b.m29008c("data1").m29008c("data2");
        }
        if (this.f25402d) {
            arrayList.add("vnd.android.cursor.item/contact_event");
            m29014b.m29008c("data1").m29008c("data3").m29023a(Constants.TYPE_COLUMN);
        }
        if (this.f25403e) {
            arrayList.add(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE);
            arrayList.add("vnd.android.cursor.item/im");
            arrayList.add("vnd.android.cursor.item/email_v2");
            m29014b.m29008c("_id").m29023a(Constants.ID_COLUMN).m29023a(Constants.PROTOCOL_COLUMN).m29023a(Constants.TYPE_COLUMN).m29023a(Constants.DATA_COLUMN).m29023a(Constants.PRESENCE_COLUMN);
        }
        if (CollectionUtils.m26068b(arrayList)) {
            m29014b.m29008c("mimetype").m29033b("mimetype", (String[]) arrayList.toArray(new String[arrayList.size()]));
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            final ArrayList arrayList4 = new ArrayList();
            final ArrayList arrayList5 = new ArrayList();
            final ArrayList arrayList6 = new ArrayList();
            m29014b.m29015b(new RowCallback<Object>() { // from class: com.callapp.contacts.loader.device.LoadContactsContractData.1
                @Override // com.callapp.contacts.framework.dao.RowCallback
                public Object onRow(RowContext rowContext) {
                    String m29002a = rowContext.m29002a("mimetype");
                    m29002a.hashCode();
                    boolean z = true;
                    switch (m29002a.hashCode()) {
                        case -1569536764:
                            if (m29002a.equals("vnd.android.cursor.item/email_v2")) {
                                z = false;
                                break;
                            }
                            break;
                        case -1328682538:
                            if (m29002a.equals("vnd.android.cursor.item/contact_event")) {
                                z = true;
                                break;
                            }
                            break;
                        case 99266693:
                            if (m29002a.equals(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE)) {
                                z = true;
                                break;
                            }
                            break;
                        case 456415478:
                            if (m29002a.equals("vnd.android.cursor.item/website")) {
                                z = true;
                                break;
                            }
                            break;
                        case 689862072:
                            if (m29002a.equals("vnd.android.cursor.item/organization")) {
                                z = true;
                                break;
                            }
                            break;
                        case 950831081:
                            if (m29002a.equals("vnd.android.cursor.item/im")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                        case true:
                            JSONIMaddress m28846c = LoadContactsContractData.m28846c(rowContext);
                            if (m28846c == null) {
                                return null;
                            }
                            arrayList6.add(m28846c);
                            return null;
                        case true:
                            JSONEvent m28849a = LoadContactsContractData.m28849a(LoadContactsContractData.this, rowContext);
                            if (m28849a == null) {
                                return null;
                            }
                            arrayList2.add(m28849a);
                            return null;
                        case true:
                            arrayList5.add(Long.valueOf(rowContext.m29000c("_id")));
                            return null;
                        case true:
                            arrayList3.add(LoadContactsContractData.m28847b(rowContext));
                            return null;
                        case true:
                            JSONOrgData m28850a = LoadContactsContractData.m28850a(rowContext);
                            if (m28850a == null) {
                                return null;
                            }
                            arrayList4.add(m28850a);
                            return null;
                        default:
                            return null;
                    }
                }
            });
            if (this.f25400b && !CollectionUtils.m26074a(arrayList4, this.f25399a.getDeviceData().getOrganizations())) {
                this.f25399a.getDeviceData().setOrganizations(arrayList4);
                this.f25399a.updateOrganizations();
            }
            if (this.f25401c && !CollectionUtils.m26074a(arrayList3, this.f25399a.getDeviceData().getWebsites())) {
                this.f25399a.getDeviceData().setWebsites(arrayList3);
                this.f25399a.updateWebsites();
            }
            if (this.f25402d) {
                m28848a(arrayList2);
            }
            if (!this.f25403e) {
                return;
            }
            char longValue = CollectionUtils.m26068b(arrayList5) ? ((Long) arrayList5.get(0)).longValue() : (char) 0;
            if (longValue != this.f25399a.getDeviceData().getGoogleHangoutDataId()) {
                this.f25399a.getDeviceData().setGoogleHangoutDataId(longValue);
                this.f25399a.fireChange(ContactField.googlePlusHangoutDataId);
            }
            if (CollectionUtils.m26074a(arrayList6, this.f25399a.getDeviceData().getImAddresses())) {
                return;
            }
            this.f25399a.getDeviceData().setImAddresses(arrayList6);
            this.f25399a.updateImAddresses();
        }
    }
}
