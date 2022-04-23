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
import com.callapp.contacts.loader.im.YahooLoader;
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

    /* renamed from: a  reason: collision with root package name */
    private final ContactData f14610a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f14611b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f14612c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f14613d;
    private final boolean e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoadContactsContractData(ContactData contactData, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f14610a = contactData;
        this.f14611b = z;
        this.f14612c = z2;
        this.f14613d = z3;
        this.e = z4;
    }

    static /* synthetic */ JSONEvent a(LoadContactsContractData loadContactsContractData, RowContext rowContext) {
        Date a2;
        String a3 = rowContext.a("data1");
        if (StringUtils.a((CharSequence) a3) || (a2 = DateUtils.a(a3)) == null) {
            return null;
        }
        JSONEvent jSONEvent = new JSONEvent();
        jSONEvent.setFromDevice(true);
        int intValue = ((Integer) rowContext.a(Constants.TYPE_COLUMN)).intValue();
        jSONEvent.setType(intValue);
        jSONEvent.setFormattedDate(new JSONDate(a2));
        if (intValue == 0) {
            jSONEvent.setLabel(rowContext.a("data3"));
        } else if (intValue == 3) {
            loadContactsContractData.f14610a.getDeviceData().setBirthday(new JSONDate(a2));
            loadContactsContractData.f14610a.updateBirthDate();
        }
        return jSONEvent;
    }

    static /* synthetic */ JSONOrgData a(RowContext rowContext) {
        JSONOrgData jSONOrgData = new JSONOrgData();
        boolean z = true;
        jSONOrgData.setFromDevice(true);
        String a2 = rowContext.a("data4");
        if (StringUtils.b((CharSequence) a2)) {
            jSONOrgData.setTitle(a2);
            z = true;
        } else {
            z = false;
        }
        String a3 = rowContext.a("data1");
        if (StringUtils.b((CharSequence) a3) && !StringUtils.d(a3.toLowerCase(), new String[]{JsonReaderKt.NULL})) {
            jSONOrgData.setCompany(a3);
        }
        if (z) {
            return jSONOrgData;
        }
        return null;
    }

    private void a(List<JSONEvent> list) {
        if (!CollectionUtils.a(list, this.f14610a.getDeviceData().getEvents())) {
            this.f14610a.getDeviceData().setEvents(list);
            this.f14610a.updateEvents();
        }
        if (!CollectionUtils.a(list)) {
            for (JSONEvent jSONEvent : list) {
                if (jSONEvent.getType() == 3) {
                    return;
                }
            }
            if (!Objects.a(null, this.f14610a.getDeviceData().getBirthday())) {
                this.f14610a.getDeviceData().setBirthday(null);
                this.f14610a.updateBirthDate();
            }
        } else if (!Objects.a(null, this.f14610a.getDeviceData().getBirthday())) {
            this.f14610a.getDeviceData().setBirthday(null);
            this.f14610a.updateBirthDate();
        }
    }

    static /* synthetic */ JSONWebsite b(RowContext rowContext) {
        JSONWebsite jSONWebsite = new JSONWebsite();
        jSONWebsite.setFromDevice(true);
        jSONWebsite.setType(rowContext.d("data2"));
        jSONWebsite.setWebsiteUrl(rowContext.a("data1"));
        return jSONWebsite;
    }

    static /* synthetic */ JSONIMaddress c(RowContext rowContext) {
        String str = (String) rowContext.a(Constants.MIMETYPE_COLUMN);
        int intValue = ((Integer) rowContext.a(Constants.PRESENCE_COLUMN)).intValue();
        if (intValue == 0 && str.equals("vnd.android.cursor.item/email_v2")) {
            return null;
        }
        int intValue2 = ((Integer) rowContext.a(Constants.PROTOCOL_COLUMN)).intValue();
        String str2 = (String) rowContext.a(Constants.DATA_COLUMN);
        r9 = 5;
        int i = intValue2;
        if (intValue2 == 0) {
            if (str2.endsWith("@gmail.com")) {
                i = 5;
            } else {
                i = intValue2;
                if (intValue2 == 0) {
                    String[] strArr = YahooLoader.f14722a;
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
        deviceIMAddress.setDataRowId(((Long) rowContext.a(Constants.ID_COLUMN)).longValue());
        if (i == 0) {
        }
        deviceIMAddress.setProtocol(i);
        deviceIMAddress.setType(((Integer) rowContext.a(Constants.TYPE_COLUMN)).intValue());
        deviceIMAddress.setIMAddress(str2);
        int i3 = intValue;
        if (intValue == 0) {
            i3 = -1;
        }
        deviceIMAddress.setPresence(i3);
        return deviceIMAddress;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void doTask() {
        ContentQuery b2 = new ContentQuery(ContactsContract.Data.CONTENT_URI).b((Column<String>) Constants.CONTACT_ID_COLUMN, "=", (String) Long.valueOf(this.f14610a.getDeviceId()));
        ArrayList arrayList = new ArrayList();
        if (this.f14611b) {
            arrayList.add("vnd.android.cursor.item/organization");
            b2.c("data1").c("data4");
        }
        if (this.f14612c) {
            arrayList.add("vnd.android.cursor.item/website");
            b2.c("data1").c("data2");
        }
        if (this.f14613d) {
            arrayList.add("vnd.android.cursor.item/contact_event");
            b2.c("data1").c("data3").a(Constants.TYPE_COLUMN);
        }
        if (this.e) {
            arrayList.add(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE);
            arrayList.add("vnd.android.cursor.item/im");
            arrayList.add("vnd.android.cursor.item/email_v2");
            b2.c("_id").a(Constants.ID_COLUMN).a(Constants.PROTOCOL_COLUMN).a(Constants.TYPE_COLUMN).a(Constants.DATA_COLUMN).a(Constants.PRESENCE_COLUMN);
        }
        if (CollectionUtils.b(arrayList)) {
            b2.c("mimetype").b("mimetype", (String[]) arrayList.toArray(new String[arrayList.size()]));
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = new ArrayList();
            final ArrayList arrayList4 = new ArrayList();
            final ArrayList arrayList5 = new ArrayList();
            final ArrayList arrayList6 = new ArrayList();
            b2.b(new RowCallback<Object>() { // from class: com.callapp.contacts.loader.device.LoadContactsContractData.1
                @Override // com.callapp.contacts.framework.dao.RowCallback
                public Object onRow(RowContext rowContext) {
                    String a2 = rowContext.a("mimetype");
                    a2.hashCode();
                    char c2 = 65535;
                    switch (a2.hashCode()) {
                        case -1569536764:
                            if (a2.equals("vnd.android.cursor.item/email_v2")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case -1328682538:
                            if (a2.equals("vnd.android.cursor.item/contact_event")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 99266693:
                            if (a2.equals(Constants.GOOGLE_PLUS_HANGOUT_DATA_ITEM_TYPE)) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 456415478:
                            if (a2.equals("vnd.android.cursor.item/website")) {
                                c2 = 3;
                                break;
                            }
                            break;
                        case 689862072:
                            if (a2.equals("vnd.android.cursor.item/organization")) {
                                c2 = 4;
                                break;
                            }
                            break;
                        case 950831081:
                            if (a2.equals("vnd.android.cursor.item/im")) {
                                c2 = 5;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                        case 5:
                            JSONIMaddress c3 = LoadContactsContractData.c(rowContext);
                            if (c3 == null) {
                                return null;
                            }
                            arrayList6.add(c3);
                            return null;
                        case 1:
                            JSONEvent a3 = LoadContactsContractData.a(LoadContactsContractData.this, rowContext);
                            if (a3 == null) {
                                return null;
                            }
                            arrayList2.add(a3);
                            return null;
                        case 2:
                            arrayList5.add(Long.valueOf(rowContext.c("_id")));
                            return null;
                        case 3:
                            arrayList3.add(LoadContactsContractData.b(rowContext));
                            return null;
                        case 4:
                            JSONOrgData a4 = LoadContactsContractData.a(rowContext);
                            if (a4 == null) {
                                return null;
                            }
                            arrayList4.add(a4);
                            return null;
                        default:
                            return null;
                    }
                }
            });
            if (this.f14611b && !CollectionUtils.a(arrayList4, this.f14610a.getDeviceData().getOrganizations())) {
                this.f14610a.getDeviceData().setOrganizations(arrayList4);
                this.f14610a.updateOrganizations();
            }
            if (this.f14612c && !CollectionUtils.a(arrayList3, this.f14610a.getDeviceData().getWebsites())) {
                this.f14610a.getDeviceData().setWebsites(arrayList3);
                this.f14610a.updateWebsites();
            }
            if (this.f14613d) {
                a(arrayList2);
            }
            if (this.e) {
                long longValue = CollectionUtils.b(arrayList5) ? ((Long) arrayList5.get(0)).longValue() : 0L;
                if (longValue != this.f14610a.getDeviceData().getGoogleHangoutDataId()) {
                    this.f14610a.getDeviceData().setGoogleHangoutDataId(longValue);
                    this.f14610a.fireChange(ContactField.googlePlusHangoutDataId);
                }
                if (!CollectionUtils.a(arrayList6, this.f14610a.getDeviceData().getImAddresses())) {
                    this.f14610a.getDeviceData().setImAddresses(arrayList6);
                    this.f14610a.updateImAddresses();
                }
            }
        }
    }
}
