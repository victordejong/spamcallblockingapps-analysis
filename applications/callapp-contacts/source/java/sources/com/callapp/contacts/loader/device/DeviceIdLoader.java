package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import androidx.p023b.C0434e;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader.class */
public class DeviceIdLoader extends SimpleContactLoader {

    /* renamed from: a */
    private static C0434e<String, DeviceDataResult> f25388a = new C0434e<>(500);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult.class */
    public static class DeviceDataResult {

        /* renamed from: a */
        Long f25393a = null;

        /* renamed from: b */
        String f25394b = null;

        /* renamed from: c */
        Boolean f25395c = null;
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException.class */
    public static class OperationFailedException extends Exception {
        OperationFailedException(Throwable th) {
            super(th);
        }
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* renamed from: a */
    public static long m28854a(Phone phone, int i) throws OperationFailedException {
        char c;
        if (phone == null || phone.isEmpty()) {
            return 0L;
        }
        DeviceDataResult deviceDataResult = f25388a.get(phone.m26101a());
        if (deviceDataResult != null && deviceDataResult.f25393a != null) {
            return deviceDataResult.f25393a.longValue();
        }
        OperationFailedException e = null;
        try {
            c = m28853a(phone.getRawNumber(), i);
        } catch (OperationFailedException e2) {
            e = e2;
            c = 0;
        }
        char c2 = c;
        if (c == 0) {
            c2 = c;
            if (!StringUtils.m26042b(phone.getRawNumber(), phone.m26101a())) {
                c2 = m28853a(phone.m26101a(), i);
            }
        }
        if (c2 == 0 && e != null) {
            throw e;
        }
        DeviceDataResult deviceDataResult2 = new DeviceDataResult();
        deviceDataResult2.f25393a = Long.valueOf(c2);
        String m26101a = phone.m26101a();
        if (StringUtils.m26045b((CharSequence) m26101a)) {
            f25388a.put(m26101a, deviceDataResult2);
        }
        return c2;
    }

    /* renamed from: a */
    private static long m28853a(String str, int i) throws OperationFailedException {
        try {
            ContentQuery m29023a = new ContentQuery(ContactsContract.PhoneLookup.CONTENT_FILTER_URI).m29013b(str).m29023a(Constants.ID_COLUMN);
            m29023a.f25159b = i;
            return ((Long) m29023a.m29025a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.loader.device.DeviceIdLoader.2
                @Override // com.callapp.contacts.framework.dao.RowCallback
                public final /* synthetic */ Long onRow(RowContext rowContext) {
                    return (Long) rowContext.m29003a(Constants.ID_COLUMN);
                }
            }, (RowCallback<Long>) 0L)).longValue();
        } catch (RuntimeException e) {
            throw new OperationFailedException(e);
        }
    }

    /* renamed from: a */
    public static DeviceDataResult m28852a(String str, final long j, final boolean z, final boolean z2, final boolean z3) {
        ContentQuery contentQuery;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i != 0) {
            contentQuery = new ContentQuery(ContactsContract.Contacts.CONTENT_URI);
            contentQuery.m29014b((Column<String>) Constants.ID_COLUMN, "=", (String) Long.valueOf(j));
        } else {
            ContentQuery contentQuery2 = new ContentQuery(ContactsContract.PhoneLookup.CONTENT_FILTER_URI);
            contentQuery2.m29013b(str);
            contentQuery = contentQuery2;
        }
        if (z) {
            contentQuery.m29023a(Constants.ID_COLUMN);
        }
        if (z2) {
            contentQuery.m29023a(Constants.DISPLAY_NAME_COLUMN);
            if (i != 0) {
                contentQuery.m29008c("display_name_source");
            }
        }
        if (z3) {
            contentQuery.m29023a(Constants.STARRED_COLUMN);
        }
        return (DeviceDataResult) contentQuery.m29025a((RowCallback<RowCallback<DeviceDataResult>>) new RowCallback<DeviceDataResult>() { // from class: com.callapp.contacts.loader.device.DeviceIdLoader.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ DeviceDataResult onRow(RowContext rowContext) {
                DeviceDataResult deviceDataResult = new DeviceDataResult();
                if (z) {
                    deviceDataResult.f25393a = (Long) rowContext.m29003a(Constants.ID_COLUMN);
                }
                if (z2) {
                    String str2 = (String) rowContext.m29003a(Constants.DISPLAY_NAME_COLUMN);
                    if (StringUtils.m26045b((CharSequence) str2) && (j == 0 || rowContext.m28999d("display_name_source") != 20)) {
                        deviceDataResult.f25394b = str2;
                    }
                }
                if (z3) {
                    deviceDataResult.f25395c = (Boolean) rowContext.m29003a(Constants.STARRED_COLUMN);
                }
                return deviceDataResult;
            }
        }, (RowCallback<DeviceDataResult>) null);
    }

    /* renamed from: a */
    public static void m28855a() {
        f25388a.evictAll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
        if (r16 != false) goto L107;
     */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo27726a(com.callapp.contacts.loader.api.LoadContext r8) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.device.DeviceIdLoader.mo27726a(com.callapp.contacts.loader.api.LoadContext):void");
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
