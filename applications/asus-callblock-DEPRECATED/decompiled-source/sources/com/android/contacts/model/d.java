package com.android.contacts.model;

import android.content.AsyncTaskLoader;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.Loader;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.model.a.k;
import com.android.contacts.model.a.l;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.model.c;
import com.android.contacts.q;
import com.android.contacts.t;
import com.android.contacts.util.ContactLoaderUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.util.StreamItemEntry;
import com.android.contacts.util.StreamItemPhotoEntry;
import com.android.contacts.util.UriUtils;
import com.android.contacts.vcard.SelectAccountActivity;
import com.google.a.b.ae;
import com.google.a.b.m;
import com.google.a.b.s;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/d.class */
public class d extends AsyncTaskLoader<com.android.contacts.model.c> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2026a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f2027b;
    private static com.android.contacts.model.c i = null;
    public Uri c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public boolean h;
    private final Uri j;
    private com.android.contacts.model.c k;
    private Loader<com.android.contacts.model.c>.ForceLoadContentObserver l;
    private final Set<Long> m;
    private boolean n;
    private Context o;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f2028a;

        static {
            f2028a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"name_raw_contact_id", "display_name_source", "lookup", "display_name", "display_name_alt", "phonetic_name", "photo_id", "starred", "contact_presence", "contact_status", "contact_status_ts", "contact_status_res_package", "contact_status_label", ContactDetailCallogActivity.EXTRA_CONTACT_ID, "raw_contact_id", SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "account_type_and_data_set", "dirty", "version", "sourceid", "sync1", "sync2", "sync3", "sync4", "deleted", "is_user_profile", "data_id", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14", "data15", "data_sync1", "data_sync2", "data_sync3", "data_sync4", "data_version", "is_primary", "is_super_primary", "mimetype", "res_package", "group_sourceid", "mode", "chat_capability", "status", "status_res_package", "status_icon", "status_label", "status_ts", PhotoSelectionActivity.PHOTO_URI, "send_to_voicemail", "custom_ringtone", "has_phone_number", "photo_file_id", SpeedDialList.Columns.ISSIM} : new String[]{"name_raw_contact_id", "display_name_source", "lookup", "display_name", "display_name_alt", "phonetic_name", "photo_id", "starred", "contact_presence", "contact_status", "contact_status_ts", "contact_status_res_package", "contact_status_label", ContactDetailCallogActivity.EXTRA_CONTACT_ID, "raw_contact_id", SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "account_type_and_data_set", "dirty", "version", "sourceid", "sync1", "sync2", "sync3", "sync4", "deleted", "is_user_profile", "data_id", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14", "data15", "data_sync1", "data_sync2", "data_sync3", "data_sync4", "data_version", "is_primary", "is_super_primary", "mimetype", "res_package", "group_sourceid", "mode", "chat_capability", "status", "status_res_package", "status_icon", "status_label", "status_ts", PhotoSelectionActivity.PHOTO_URI, "send_to_voicemail", "custom_ringtone", "has_phone_number", "photo_file_id"};
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/d$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f2029a = {"displayName", "packageName", "typeResourceId", "accountType", "accountName", "exportSupport"};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/d$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f2030a = {SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "auto_add", "favorites"};
    }

    static {
        String simpleName = d.class.getSimpleName();
        f2026a = simpleName;
        f2027b = Log.isLoggable(simpleName, 3);
    }

    public d(Context context, Uri uri) {
        this(context, uri, false, false, false, true, false);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Context context, Uri uri, int i2) {
        super(context);
        boolean z = true;
        this.m = new HashSet();
        this.o = context;
        this.c = uri;
        this.j = uri;
        this.d = true;
        this.e = true;
        this.f = true;
        this.g = true;
        this.h = true;
        this.n = i2 != 1 ? false : z;
    }

    public d(Context context, Uri uri, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(context);
        this.m = new HashSet();
        this.o = context;
        this.c = uri;
        this.j = uri;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = z4;
        this.h = z5;
        this.n = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.contacts.model.c a(android.content.ContentResolver r28, android.net.Uri r29) {
        /*
            Method dump skipped, instructions count: 1210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.model.d.a(android.content.ContentResolver, android.net.Uri):com.android.contacts.model.c");
    }

    private static void a(Cursor cursor, ContentValues contentValues, int i2) {
        switch (cursor.getType(i2)) {
            case 0:
                return;
            case 1:
                contentValues.put(a.f2028a[i2], Long.valueOf(cursor.getLong(i2)));
                return;
            case 2:
            default:
                throw new IllegalStateException("Invalid or unhandled data type");
            case 3:
                contentValues.put(a.f2028a[i2], cursor.getString(i2));
                return;
            case 4:
                contentValues.put(a.f2028a[i2], cursor.getBlob(i2));
                return;
        }
    }

    public static String[] a(com.android.contacts.model.c cVar) {
        ArrayList arrayList = new ArrayList();
        if (cVar != null) {
            ae<e> b2 = cVar.o.iterator();
            while (b2.hasNext()) {
                for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                    if (aVar instanceof k) {
                        k kVar = (k) aVar;
                        Log.d(f2026a, "FormattedPhoneNumber: " + kVar.l());
                        Log.d(f2026a, "Number: " + kVar.k());
                        arrayList.add(kVar.k());
                    }
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private void b(com.android.contacts.model.c cVar) {
        String str = cVar.j;
        if (str != null) {
            try {
                AssetFileDescriptor openAssetFileDescriptor = getContext().getContentResolver().openAssetFileDescriptor(Uri.parse(str), "r");
                byte[] bArr = new byte[16384];
                if (openAssetFileDescriptor != null) {
                    FileInputStream createInputStream = openAssetFileDescriptor.createInputStream();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    while (true) {
                        int read = createInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    cVar.y = byteArrayOutputStream.toByteArray();
                    if (createInputStream != null) {
                        createInputStream.close();
                    }
                    if (openAssetFileDescriptor != null) {
                        openAssetFileDescriptor.close();
                    }
                    byteArrayOutputStream.close();
                    return;
                }
            } catch (IOException e) {
            }
        }
        long j = cVar.i;
        if (j > 0) {
            ae<e> b2 = cVar.o.iterator();
            while (b2.hasNext()) {
                Iterator<com.android.contacts.model.a.a> it = b2.next().h().iterator();
                while (true) {
                    if (it.hasNext()) {
                        com.android.contacts.model.a.a next = it.next();
                        if (next.a() == j) {
                            if (next instanceof l) {
                                cVar.y = ((l) next).f1994a.getAsByteArray("data15");
                            }
                        }
                    }
                }
            }
        }
    }

    private void c() {
        Context context = getContext();
        ae<e> b2 = this.k.o.iterator();
        while (b2.hasNext()) {
            e next = b2.next();
            long longValue = next.b().longValue();
            if (!this.m.contains(Long.valueOf(longValue))) {
                this.m.add(Long.valueOf(longValue));
                com.android.contacts.model.account.a g = next.g();
                String h = g.h();
                String i2 = g.i();
                if (!TextUtils.isEmpty(h) && !TextUtils.isEmpty(i2)) {
                    Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, longValue);
                    Intent intent = new Intent();
                    intent.setClassName(i2, h);
                    intent.setAction("android.intent.action.VIEW");
                    intent.setDataAndType(withAppendedId, "vnd.android.cursor.item/raw_contact");
                    try {
                        context.startService(intent);
                    } catch (Exception e) {
                        Log.e(f2026a, "Error sending message to source-app", e);
                    }
                }
            }
        }
    }

    private void c(com.android.contacts.model.c cVar) {
        m.a aVar = new m.a();
        if (!cVar.B) {
            Map<com.android.contacts.model.account.b, com.android.contacts.model.account.a> c2 = com.android.contacts.model.a.a(getContext()).c();
            if (!c2.isEmpty()) {
                HashMap a2 = s.a(c2);
                ae<e> b2 = cVar.o.iterator();
                while (b2.hasNext()) {
                    e next = b2.next();
                    a2.remove(com.android.contacts.model.account.b.a(next.d(), next.e()));
                }
                aVar.a((Iterable) a2.values());
            }
        }
        cVar.r = m.a((Collection) aVar.f3704a);
    }

    private void d() {
        if (this.l != null) {
            getContext().getContentResolver().unregisterContentObserver(this.l);
            this.l = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    private void d(com.android.contacts.model.c cVar) {
        HashSet hashSet = new HashSet();
        hashSet.clear();
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = new ArrayList();
        ae<e> b2 = cVar.o.iterator();
        while (b2.hasNext()) {
            e next = b2.next();
            String c2 = next.c();
            String d = next.d();
            String e = next.e();
            if (!(c2 == null || d == null || !hashSet.add(new AccountWithDataSet(c2, d, e)))) {
                if (sb.length() != 0) {
                    sb.append(" OR ");
                }
                sb.append("(account_name=? AND account_type=?");
                arrayList.add(c2);
                arrayList.add(d);
                if (e != null) {
                    sb.append(" AND data_set=?");
                    arrayList.add(e);
                } else {
                    sb.append(" AND data_set IS NULL");
                }
                sb.append(")");
            }
        }
        m.a aVar = new m.a();
        Cursor query = getContext().getContentResolver().query(ContactsContract.Groups.CONTENT_URI, c.f2030a, sb.toString(), (String[]) arrayList.toArray(new String[0]), null);
        while (query.moveToNext()) {
            try {
                aVar.b((m.a) new t(query.getString(0), query.getString(1), query.getString(2), query.getLong(3), query.getString(4), !query.isNull(5) && query.getInt(5) != 0, !query.isNull(6) && query.getInt(6) != 0));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        cVar.x = m.a((Collection) aVar.f3704a);
    }

    private void e(com.android.contacts.model.c cVar) {
        Cursor query = getContext().getContentResolver().query(ContactsContract.Contacts.CONTENT_LOOKUP_URI.buildUpon().appendPath(cVar.e).appendPath("stream_items").build(), null, null, null, null);
        LongSparseArray longSparseArray = new LongSparseArray();
        ArrayList arrayList = new ArrayList();
        while (query.moveToNext()) {
            try {
                StreamItemEntry streamItemEntry = new StreamItemEntry(query);
                longSparseArray.put(streamItemEntry.getId(), streamItemEntry);
                arrayList.add(streamItemEntry);
            } finally {
            }
        }
        query.close();
        long currentTimeMillis = System.currentTimeMillis();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((StreamItemEntry) it.next()).decodeHtml(getContext());
        }
        long currentTimeMillis2 = System.currentTimeMillis();
        if (f2027b) {
            Log.d(f2026a, "Decoded HTML for " + arrayList.size() + " items, took " + (currentTimeMillis2 - currentTimeMillis) + " ms");
        }
        if (!arrayList.isEmpty()) {
            if (cVar.B) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    StreamItemEntry streamItemEntry2 = (StreamItemEntry) it2.next();
                    query = getContext().getContentResolver().query(Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.StreamItems.CONTENT_URI, streamItemEntry2.getId()), "photo"), null, null, null, null);
                    while (query.moveToNext()) {
                        try {
                            streamItemEntry2.addPhoto(new StreamItemPhotoEntry(query));
                        } finally {
                        }
                    }
                }
            } else {
                String[] strArr = new String[arrayList.size()];
                StringBuilder sb = new StringBuilder();
                sb.append("stream_item_id IN (");
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (i2 > 0) {
                        sb.append(",");
                    }
                    sb.append("?");
                    strArr[i2] = String.valueOf(((StreamItemEntry) arrayList.get(i2)).getId());
                }
                sb.append(")");
                query = getContext().getContentResolver().query(ContactsContract.StreamItems.CONTENT_PHOTO_URI, null, sb.toString(), strArr, "stream_item_id");
                while (query.moveToNext()) {
                    try {
                        ((StreamItemEntry) longSparseArray.get(query.getLong(query.getColumnIndex("stream_item_id")))).addPhoto(new StreamItemPhotoEntry(query));
                    } finally {
                    }
                }
            }
        }
        Collections.sort(arrayList);
        try {
            cVar.p = m.a((Collection) new m.a().b(arrayList.iterator()).f3704a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void f(com.android.contacts.model.c cVar) {
        k kVar;
        String k;
        String a2 = q.a(getContext());
        m<e> mVar = cVar.o;
        int size = mVar.size();
        for (int i2 = 0; i2 < size; i2++) {
            List<com.android.contacts.model.a.a> h = mVar.get(i2).h();
            int size2 = h.size();
            for (int i3 = 0; i3 < size2; i3++) {
                com.android.contacts.model.a.a aVar = h.get(i3);
                if ((aVar instanceof k) && (k = (kVar = (k) aVar).k()) != null) {
                    kVar.f1994a.put("formattedPhoneNumber", PhoneNumberUtils.formatNumber(k, kVar.f1994a.getAsString("data4"), a2));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void deliverResult(com.android.contacts.model.c cVar) {
        d();
        if (!isReset() && cVar != null) {
            this.k = cVar;
            if (cVar.d()) {
                this.c = cVar.f2023b;
                if (!cVar.e()) {
                    Log.i(f2026a, "Registering content observer for " + this.c);
                    if (this.l == null) {
                        this.l = new Loader.ForceLoadContentObserver(this);
                    }
                    getContext().getContentResolver().registerContentObserver(this.c, true, this.l);
                }
                if (this.g) {
                    c();
                }
            }
            super.deliverResult(this.k);
        }
    }

    /* renamed from: a */
    public final com.android.contacts.model.c loadInBackground() {
        com.android.contacts.model.c cVar;
        boolean z;
        if (NecessaryPermissionDenyActivity.startPermissionActivity(this.o)) {
            cVar = null;
        } else {
            try {
                ContentResolver contentResolver = getContext().getContentResolver();
                Uri ensureIsContactUri = ContactLoaderUtils.ensureIsContactUri(contentResolver, this.c);
                if (ensureIsContactUri == null) {
                    cVar = null;
                } else {
                    com.android.contacts.model.c cVar2 = i;
                    i = null;
                    if (cVar2 == null || !UriUtils.areEqual(cVar2.f2023b, this.c)) {
                        cVar = a(contentResolver, ensureIsContactUri);
                        z = false;
                    } else {
                        cVar = new com.android.contacts.model.c(this.j, cVar2);
                        z = true;
                    }
                    if (cVar.d()) {
                        if (cVar.e()) {
                            if (!z) {
                                Cursor query = getContext().getContentResolver().query(ContentUris.withAppendedId(ContactsContract.Directory.CONTENT_URI, cVar.d), b.f2029a, null, null, null);
                                if (query != null) {
                                    if (query.moveToFirst()) {
                                        String string = query.getString(0);
                                        String string2 = query.getString(1);
                                        int i2 = query.getInt(2);
                                        String string3 = query.getString(3);
                                        String string4 = query.getString(4);
                                        int i3 = query.getInt(5);
                                        String str = null;
                                        if (!TextUtils.isEmpty(string2)) {
                                            try {
                                                str = getContext().getPackageManager().getResourcesForApplication(string2).getString(i2);
                                            } catch (PackageManager.NameNotFoundException e) {
                                                Log.w(f2026a, "Contact directory resource not found: " + string2 + "." + i2);
                                                str = null;
                                            }
                                        }
                                        cVar.s = string;
                                        cVar.t = str;
                                        cVar.u = string3;
                                        cVar.v = string4;
                                        cVar.w = i3;
                                    }
                                    query.close();
                                }
                            }
                        } else if (this.d && cVar.x == null) {
                            d(cVar);
                        }
                        if (this.e && cVar.p == null) {
                            e(cVar);
                        }
                        if (this.h) {
                            f(cVar);
                        }
                        if (!z) {
                            b(cVar);
                        }
                        if (this.f && cVar.r == null) {
                            c(cVar);
                        }
                    }
                }
            } catch (Exception e2) {
                Log.e(f2026a, "Error loading the contact: " + this.c, e2);
                cVar = new com.android.contacts.model.c(this.j, c.a.ERROR, e2);
            }
        }
        return cVar;
    }

    public final void b() {
        if (this.k == null || !this.k.d()) {
            i = null;
        } else {
            i = this.k;
        }
    }

    @Override // android.content.Loader
    protected void onReset() {
        super.onReset();
        cancelLoad();
        d();
        this.k = null;
    }

    @Override // android.content.Loader
    protected void onStartLoading() {
        if (this.k != null) {
            deliverResult(this.k);
        }
        if (takeContentChanged() || this.k == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    protected void onStopLoading() {
        cancelLoad();
    }
}
