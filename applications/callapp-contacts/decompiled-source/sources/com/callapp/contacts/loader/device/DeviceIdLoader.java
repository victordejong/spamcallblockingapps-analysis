package com.callapp.contacts.loader.device;

import android.provider.ContactsContract;
import androidx.b.e;
import com.callapp.contacts.framework.dao.ContentQuery;
import com.callapp.contacts.framework.dao.RowCallback;
import com.callapp.contacts.framework.dao.RowContext;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.loader.SimpleContactLoader;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.framework.util.StringUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader.class */
public class DeviceIdLoader extends SimpleContactLoader {

    /* renamed from: a  reason: collision with root package name */
    private static e<String, DeviceDataResult> f14599a = new e<>(500);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult.class */
    public static class DeviceDataResult {

        /* renamed from: a  reason: collision with root package name */
        Long f14604a = null;

        /* renamed from: b  reason: collision with root package name */
        String f14605b = null;

        /* renamed from: c  reason: collision with root package name */
        Boolean f14606c = null;
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException.class */
    public static class OperationFailedException extends Exception {
        OperationFailedException(Throwable th) {
            super(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(com.callapp.framework.phone.Phone r5, int r6) throws com.callapp.contacts.loader.device.DeviceIdLoader.OperationFailedException {
        /*
            r0 = r5
            if (r0 == 0) goto L_0x009d
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x000e
            goto L_0x009d
        L_0x000e:
            androidx.b.e<java.lang.String, com.callapp.contacts.loader.device.DeviceIdLoader$DeviceDataResult> r0 = com.callapp.contacts.loader.device.DeviceIdLoader.f14599a
            r1 = r5
            java.lang.String r1 = r1.a()
            java.lang.Object r0 = r0.get(r1)
            com.callapp.contacts.loader.device.DeviceIdLoader$DeviceDataResult r0 = (com.callapp.contacts.loader.device.DeviceIdLoader.DeviceDataResult) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x002f
            r0 = r7
            java.lang.Long r0 = r0.f14604a
            if (r0 == 0) goto L_0x002f
            r0 = r7
            java.lang.Long r0 = r0.f14604a
            long r0 = r0.longValue()
            return r0
        L_0x002f:
            r0 = 0
            r7 = r0
            r0 = r5
            java.lang.String r0 = r0.getRawNumber()     // Catch: OperationFailedException -> 0x003d
            r1 = r6
            long r0 = a(r0, r1)     // Catch: OperationFailedException -> 0x003d
            r8 = r0
            goto L_0x0040
        L_0x003d:
            r7 = move-exception
            r0 = 0
            r8 = r0
        L_0x0040:
            r0 = r8
            r10 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0064
            r0 = r8
            r10 = r0
            r0 = r5
            java.lang.String r0 = r0.getRawNumber()
            r1 = r5
            java.lang.String r1 = r1.a()
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0, r1)
            if (r0 != 0) goto L_0x0064
            r0 = r5
            java.lang.String r0 = r0.a()
            r1 = r6
            long r0 = a(r0, r1)
            r10 = r0
        L_0x0064:
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0074
            r0 = r7
            if (r0 != 0) goto L_0x0072
            goto L_0x0074
        L_0x0072:
            r0 = r7
            throw r0
        L_0x0074:
            com.callapp.contacts.loader.device.DeviceIdLoader$DeviceDataResult r0 = new com.callapp.contacts.loader.device.DeviceIdLoader$DeviceDataResult
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            r0.f14604a = r1
            r0 = r5
            java.lang.String r0 = r0.a()
            r5 = r0
            r0 = r5
            boolean r0 = com.callapp.framework.util.StringUtils.b(r0)
            if (r0 == 0) goto L_0x009a
            androidx.b.e<java.lang.String, com.callapp.contacts.loader.device.DeviceIdLoader$DeviceDataResult> r0 = com.callapp.contacts.loader.device.DeviceIdLoader.f14599a
            r1 = r5
            r2 = r7
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x009a:
            r0 = r10
            return r0
        L_0x009d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.device.DeviceIdLoader.a(com.callapp.framework.phone.Phone, int):long");
    }

    private static long a(String str, int i) throws OperationFailedException {
        try {
            ContentQuery a2 = new ContentQuery(ContactsContract.PhoneLookup.CONTENT_FILTER_URI).b(str).a(Constants.ID_COLUMN);
            a2.f14389b = i;
            return ((Long) a2.a((RowCallback<RowCallback<Long>>) new RowCallback<Long>() { // from class: com.callapp.contacts.loader.device.DeviceIdLoader.2
                @Override // com.callapp.contacts.framework.dao.RowCallback
                public final /* synthetic */ Long onRow(RowContext rowContext) {
                    return (Long) rowContext.a(Constants.ID_COLUMN);
                }
            }, (RowCallback<Long>) 0L)).longValue();
        } catch (RuntimeException e) {
            throw new OperationFailedException(e);
        }
    }

    public static DeviceDataResult a(String str, final long j, final boolean z, final boolean z2, final boolean z3) {
        ContentQuery contentQuery;
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i != 0) {
            contentQuery = new ContentQuery(ContactsContract.Contacts.CONTENT_URI);
            contentQuery.b((Column<String>) Constants.ID_COLUMN, "=", (String) Long.valueOf(j));
        } else {
            ContentQuery contentQuery2 = new ContentQuery(ContactsContract.PhoneLookup.CONTENT_FILTER_URI);
            contentQuery2.b(str);
            contentQuery = contentQuery2;
        }
        if (z) {
            contentQuery.a(Constants.ID_COLUMN);
        }
        if (z2) {
            contentQuery.a(Constants.DISPLAY_NAME_COLUMN);
            if (i != 0) {
                contentQuery.c("display_name_source");
            }
        }
        if (z3) {
            contentQuery.a(Constants.STARRED_COLUMN);
        }
        return (DeviceDataResult) contentQuery.a((RowCallback<RowCallback<DeviceDataResult>>) new RowCallback<DeviceDataResult>() { // from class: com.callapp.contacts.loader.device.DeviceIdLoader.1
            @Override // com.callapp.contacts.framework.dao.RowCallback
            public final /* synthetic */ DeviceDataResult onRow(RowContext rowContext) {
                DeviceDataResult deviceDataResult = new DeviceDataResult();
                if (z) {
                    deviceDataResult.f14604a = (Long) rowContext.a(Constants.ID_COLUMN);
                }
                if (z2) {
                    String str2 = (String) rowContext.a(Constants.DISPLAY_NAME_COLUMN);
                    if (StringUtils.b((CharSequence) str2) && (j == 0 || rowContext.d("display_name_source") != 20)) {
                        deviceDataResult.f14605b = str2;
                    }
                }
                if (z3) {
                    deviceDataResult.f14606c = (Boolean) rowContext.a(Constants.STARRED_COLUMN);
                }
                return deviceDataResult;
            }
        }, (RowCallback<DeviceDataResult>) null);
    }

    public static void a() {
        f14599a.evictAll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a5, code lost:
        if (r16 != false) goto L_0x00a8;
     */
    @Override // com.callapp.contacts.loader.SimpleContactLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.callapp.contacts.loader.api.LoadContext r8) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.loader.device.DeviceIdLoader.a(com.callapp.contacts.loader.api.LoadContext):void");
    }

    @Override // com.callapp.contacts.loader.api.ContactDataLoader
    public Set<ContactField> getListenFields() {
        return ContactFieldEnumSets.NONE;
    }
}
