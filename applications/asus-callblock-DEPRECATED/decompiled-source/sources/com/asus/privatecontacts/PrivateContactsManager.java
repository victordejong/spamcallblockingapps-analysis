package com.asus.privatecontacts;

import android.app.Activity;
import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.provider.CallLog;
import android.provider.ContactsContract;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.ContactDetailActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.asus.privatecontacts.a.f;
import com.asus.privatecontacts.b.c;
import com.asus.privatecontacts.b.e;
import com.asus.privatecontacts.provider.a;
import com.asus.snapcall.SnapCallContentProvider;
import com.asus.updatesdk.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsManager.class */
public class PrivateContactsManager extends IntentService {

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap<String, Integer> f2975b;
    private static final UriMatcher e;
    private Handler d = new Handler();
    private AccountWithDataSet f;

    /* renamed from: a  reason: collision with root package name */
    public static final String f2974a = PrivateContactsManager.class.getSimpleName();
    private static final CopyOnWriteArrayList<a> c = new CopyOnWriteArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsManager$a.class */
    public interface a {
        void a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivateContactsManager$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        String f2978a;

        /* renamed from: b  reason: collision with root package name */
        int f2979b;

        public b(String str, int i) {
            this.f2978a = str;
            this.f2979b = i;
        }
    }

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        f2975b = hashMap;
        hashMap.put("new_private_contacts", 1);
        f2975b.put("delete_private_contacts", 2);
        f2975b.put("new_private_call_logs", 3);
        UriMatcher uriMatcher = new UriMatcher(-1);
        e = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 10000);
        e.addURI("com.android.contacts", "display_photo/#", 10001);
    }

    public PrivateContactsManager() {
        super(f2974a);
        setIntentRedelivery(true);
    }

    public static Intent a(Context context, ArrayList<String> arrayList, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, PrivateContactsManager.class);
        intent.setAction("new_private_contacts");
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra("callbackIntent", intent2);
        intent.putStringArrayListExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI, arrayList);
        return intent;
    }

    public static Intent a(Context context, long[] jArr, boolean z, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, PrivateContactsManager.class);
        intent.setAction("delete_private_contacts");
        intent.setData(Uri.withAppendedPath(a.d.f3064a, "delete"));
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra("callbackIntent", intent2);
        intent.putExtra("delete_contacts_id", jArr);
        intent.putExtra("restore", z);
        return intent;
    }

    private Uri a(Cursor cursor, String str) {
        int columnIndex;
        String string;
        String lastPathSegment;
        Uri uri = null;
        if (cursor != null) {
            try {
                columnIndex = cursor.getColumnIndex(str);
            } catch (Exception e2) {
                Log.d(f2974a, "Failed to transform photo uri from Contacts database to private database! [createNewPhotoUri]");
                e2.printStackTrace();
            }
            if (!(columnIndex == -1 || (string = cursor.getString(columnIndex)) == null)) {
                Uri parse = Uri.parse(string);
                switch (e.match(parse)) {
                    case 10000:
                        List<String> pathSegments = parse.getPathSegments();
                        lastPathSegment = pathSegments.get(pathSegments.size() - 2);
                        break;
                    case 10001:
                        lastPathSegment = parse.getLastPathSegment();
                        break;
                    default:
                        lastPathSegment = new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss").format(new Date(System.currentTimeMillis()));
                        break;
                }
                String str2 = com.asus.privatecontacts.b.b.b(getApplicationContext()).toString() + File.separator + lastPathSegment;
                if (com.asus.privatecontacts.b.b.a(getContentResolver(), parse, str2)) {
                    uri = Uri.fromFile(new File(str2));
                    return uri;
                }
            }
        }
        uri = null;
        return uri;
    }

    private static String a(ArrayList<b> arrayList) {
        String str = null;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            str = null;
            while (i < size) {
                int i2 = arrayList.get(i).f2979b;
                String str2 = arrayList.get(i).f2978a;
                String a2 = i2 == 0 ? e.a(str2) : "'" + str2 + "'";
                str = i > 0 ? str + " OR PHONE_NUMBERS_EQUAL(number, " + a2 + ", 0 )" : BuildConfig.FLAVOR + "PHONE_NUMBERS_EQUAL(number, " + a2 + ", 0 )";
                i++;
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.ArrayList<com.asus.privatecontacts.PrivateContactsManager.b> a(java.util.ArrayList<android.content.ContentProviderOperation> r8, long r9, int r11) {
        /*
            Method dump skipped, instructions count: 406
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsManager.a(java.util.ArrayList, long, int):java.util.ArrayList");
    }

    private ArrayList<ContentProviderOperation> a(ArrayList<b> arrayList, boolean z) {
        Cursor cursor;
        Cursor cursor2;
        Uri uri = z ? a.AbstractC0087a.f3061a : CallLog.Calls.CONTENT_URI;
        Uri uri2 = !z ? a.AbstractC0087a.f3061a : CallLog.Calls.CONTENT_URI;
        ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
        if (arrayList != null) {
            try {
                cursor2 = getContentResolver().query(uri, null, a(arrayList), null, null);
            } catch (Exception e2) {
                e2.printStackTrace();
                cursor2 = null;
            }
            cursor = cursor2;
            if (cursor2 != null) {
                cursor = cursor2;
                if (cursor2.moveToFirst()) {
                    do {
                        com.asus.privatecontacts.a.a aVar = (cursor2 == null || cursor2.getCount() == 0) ? null : new com.asus.privatecontacts.a.a(cursor2);
                        if (aVar != null) {
                            if (z) {
                                aVar.f2989a.remove(PhotoSelectionActivity.LOOKUP_URI);
                                aVar.f2989a.remove("matched_number");
                                aVar.f2989a.remove("photo_id");
                                aVar.f2989a.remove(ContactDetailCallogActivity.EXTRA_CONTACT_ID);
                                aVar.f2989a.remove("_data");
                                aVar.f2989a.remove("has_content");
                                aVar.f2989a.remove("mime_type");
                                aVar.f2989a.remove("source_data");
                                aVar.f2989a.remove("source_package");
                                aVar.f2989a.remove("state");
                                aVar.f2989a.remove(SpeedDialList.Columns.ISSIM);
                                aVar.f2989a.remove("city_id");
                                if (!PhoneCapabilityTester.IsAsusDevice()) {
                                    aVar.f2989a.remove("sim_index");
                                }
                                a(uri2, arrayList2, aVar.f2989a);
                            } else {
                                a(uri2, arrayList2, aVar.f2989a);
                            }
                        }
                    } while (cursor2.moveToNext());
                    cursor = cursor2;
                }
            }
        } else {
            cursor = null;
        }
        if (cursor != null) {
            cursor.close();
        }
        b(uri, arrayList);
        return arrayList2;
    }

    static void a(Intent intent) {
        Iterator<a> it = c.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (intent.getComponent().equals(((Activity) next).getIntent().getComponent())) {
                next.a(intent);
                return;
            }
        }
    }

    private void a(Uri uri, ArrayList<String> arrayList) {
        Throwable th;
        Cursor cursor;
        ArrayList<ContentProviderOperation> arrayList2 = null;
        ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
        int size = arrayList3.size();
        try {
            if (uri != null) {
                try {
                    cursor = getContentResolver().query(uri, null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                while (true) {
                                    if (cursor.getLong(cursor.getColumnIndex("raw_contact_id")) != cursor.getLong(cursor.getColumnIndex("name_raw_contact_id"))) {
                                        if (!cursor.moveToNext()) {
                                            break;
                                        }
                                    } else {
                                        f fVar = (cursor == null || cursor.getCount() == 0) ? null : new f(cursor, false);
                                        Uri a2 = a(cursor, "photo_thumb_uri");
                                        Uri a3 = a(cursor, PhotoSelectionActivity.PHOTO_URI);
                                        if (!(a3 == null || a3 == null)) {
                                            c.a(fVar.f2998a, PhotoSelectionActivity.PHOTO_URI, a3.toString());
                                        }
                                        if (!(a2 == null || a2 == null)) {
                                            c.a(fVar.f2998a, "photo_thumb_uri", a2.toString());
                                        }
                                        a(arrayList3, a.d.f3064a, fVar.f2998a, (String[]) null, new int[]{0});
                                        Log.d(f2974a, "rawContact name: " + fVar.f2998a.getAsString("display_name"));
                                    }
                                }
                                cursor.moveToFirst();
                                ArrayList<b> arrayList4 = new ArrayList<>();
                                do {
                                    if (!cursor.isNull(cursor.getColumnIndex("data_id"))) {
                                        com.asus.privatecontacts.a.c cVar = (cursor == null || cursor.getCount() == 0) ? null : new com.asus.privatecontacts.a.c(cursor, false);
                                        String asString = cVar.f2994a.getAsString("mimetype");
                                        if (!"vnd.android.cursor.item/group_membership".equals(asString)) {
                                            a(arrayList3, a.b.f3062a, cVar.f2994a, new String[]{"raw_contact_id"}, new int[]{size});
                                            int size2 = arrayList3.size() - 1;
                                            Log.d(f2974a, "DataIdBackReference: " + size2 + ", operations.size: " + arrayList3.size());
                                            if ("vnd.android.cursor.item/phone_v2".equals(asString)) {
                                                String asString2 = cVar.f2994a.getAsString(CoverUtils.CoverData.COVER_URI);
                                                String str = asString2;
                                                if (asString2 == null) {
                                                    str = cVar.f2994a.getAsString("data4");
                                                }
                                                if (str != null) {
                                                    arrayList4.add(new b(str, 0));
                                                    arrayList.add(str);
                                                    if (str != null) {
                                                        String a4 = e.a(str);
                                                        if (!TextUtils.isEmpty(a4)) {
                                                            try {
                                                                getApplicationContext();
                                                                String a5 = e.a(str, ((TelephonyManager) getSystemService("phone")).getNetworkCountryIso());
                                                                com.asus.privatecontacts.a.e eVar = new com.asus.privatecontacts.a.e();
                                                                eVar.a(a4);
                                                                eVar.b(PhoneNumberUtils.toCallerIDMinMatch(a4));
                                                                a(arrayList3, eVar.f2997a, size2, size);
                                                                Log.d(f2974a, "normalizedNumber: " + a4 + ", numberE164: " + a5);
                                                                if (a5 != null && !a5.equals(a4)) {
                                                                    com.asus.privatecontacts.a.e eVar2 = new com.asus.privatecontacts.a.e();
                                                                    eVar2.a(a5);
                                                                    eVar2.b(PhoneNumberUtils.toCallerIDMinMatch(a5));
                                                                    a(arrayList3, eVar2.f2997a, size2, size);
                                                                }
                                                            } catch (Exception e2) {
                                                                Log.d(f2974a, "Failed when trying to call formatNumberToE164...");
                                                                e2.printStackTrace();
                                                            }
                                                        }
                                                    }
                                                    Log.d(f2974a, "createFromContactsProviderEntity, total " + getContentResolver().delete(SnapCallContentProvider.f3084a, "phone = ?", new String[]{com.asus.snapcall.c.a(getApplicationContext(), str)}) + " snap records are deleted!!!");
                                                }
                                            } else if ("vnd.android.cursor.item/sip_address".equals(asString)) {
                                                arrayList4.add(new b(cVar.f2994a.getAsString(CoverUtils.CoverData.COVER_URI), 1));
                                            }
                                        }
                                    }
                                } while (cursor.moveToNext());
                                if (arrayList4.size() != 0) {
                                    arrayList2 = a(arrayList4, false);
                                }
                                try {
                                    if (arrayList3.size() > 0) {
                                        getContentResolver().applyBatch("com.asus.privatecontacts.provider", arrayList3);
                                    }
                                    if (arrayList2 != null && arrayList2.size() > 0) {
                                        getContentResolver().applyBatch("com.asus.privatecontacts.provider", arrayList2);
                                    }
                                } catch (OperationApplicationException e3) {
                                    e3.printStackTrace();
                                } catch (RemoteException e4) {
                                    e4.printStackTrace();
                                }
                            }
                        } catch (Exception e5) {
                            e = e5;
                            e.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Exception e6) {
                    e = e6;
                    cursor = null;
                } catch (Throwable th2) {
                    th = th2;
                    Cursor cursor2 = null;
                    if (0 != 0) {
                        cursor2.close();
                    }
                    throw th;
                }
            } else {
                Log.d(f2974a, "Error! EntityUri is null!");
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static void a(Uri uri, ArrayList<ContentProviderOperation> arrayList, ContentValues contentValues) {
        a(arrayList, uri, contentValues, (String[]) null, (int[]) null);
    }

    public static void a(a aVar) {
        if (!(aVar instanceof Activity)) {
            throw new ClassCastException("Only activities can be registered to receive callback from " + PrivateContactsManager.class.getName());
        }
        c.add(0, aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0374  */
    /* JADX WARN: Removed duplicated region for block: B:182:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 938
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsManager.a(java.lang.String):void");
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, ContentValues contentValues) {
        a(arrayList, ContactsContract.RawContacts.CONTENT_URI, contentValues, (String[]) null, new int[]{0});
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, ContentValues contentValues, int i) {
        a(arrayList, ContactsContract.Data.CONTENT_URI, contentValues, new String[]{"raw_contact_id"}, new int[]{i});
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, ContentValues contentValues, int i, int i2) {
        a(arrayList, a.c.f3063a, contentValues, new String[]{"data_id", "raw_contact_id"}, new int[]{i, i2});
    }

    private static void a(ArrayList<ContentProviderOperation> arrayList, Uri uri, ContentValues contentValues, String[] strArr, int[] iArr) {
        ArrayList<ContentProviderOperation> arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList<>();
        }
        if (strArr != null) {
            ContentProviderOperation.Builder withValues = ContentProviderOperation.newInsert(uri).withValues(contentValues);
            for (int i = 0; i < strArr.length; i++) {
                withValues.withValueBackReference(strArr[i], iArr[i]);
            }
            arrayList2.add(withValues.build());
            return;
        }
        arrayList2.add(ContentProviderOperation.newInsert(uri).withValues(contentValues).build());
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(android.net.Uri r6) {
        /*
            r5 = this;
            r0 = 0
            r7 = r0
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x004b
            r1 = r6
            r2 = 0
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)     // Catch: Exception -> 0x004b
            r8 = r0
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0055
            r9 = r0
            android.net.Uri r0 = android.provider.ContactsContract.Data.CONTENT_URI     // Catch: Exception -> 0x0055
            r10 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: Exception -> 0x0055
            r11 = r0
            r0 = r11
            java.lang.String r1 = "contact_id="
            r0.<init>(r1)     // Catch: Exception -> 0x0055
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r6
            java.lang.String r3 = r3.getLastPathSegment()     // Catch: Exception -> 0x0055
            java.lang.String r3 = java.lang.String.valueOf(r3)     // Catch: Exception -> 0x0055
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: Exception -> 0x0055
            java.lang.String r2 = r2.toString()     // Catch: Exception -> 0x0055
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)     // Catch: Exception -> 0x0055
            r12 = r0
            r0 = r8
            r1 = r12
            int r0 = r0 + r1
            r8 = r0
        L_0x0043:
            r0 = r8
            if (r0 <= 0) goto L_0x0049
            r0 = 1
            r7 = r0
        L_0x0049:
            r0 = r7
            return r0
        L_0x004b:
            r6 = move-exception
            r0 = 0
            r8 = r0
        L_0x004e:
            r0 = r6
            r0.printStackTrace()
            goto L_0x0043
        L_0x0055:
            r6 = move-exception
            goto L_0x004e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsManager.a(android.net.Uri):boolean");
    }

    private boolean a(ArrayList<ContentProviderOperation> arrayList, int i, String str) {
        boolean z = true;
        if (str != null) {
            ByteArrayOutputStream a2 = com.asus.privatecontacts.b.b.a(getContentResolver(), Uri.parse(str));
            if (a2 != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("is_primary", (Integer) 1);
                contentValues.put("is_super_primary", (Integer) 1);
                contentValues.put("data_version", (Integer) 2);
                contentValues.put("mimetype", "vnd.android.cursor.item/photo");
                contentValues.put("data15", a2.toByteArray());
                a(arrayList, contentValues, i);
                try {
                    a2.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return z;
            }
        } else {
            Log.d(f2974a, "photoUriStr is null >>> buildWriteBackPhotoOperation");
        }
        z = false;
        return z;
    }

    private void b(Intent intent) {
        if (intent == null) {
            Log.e(f2974a, "Trying to delete private contacts with a null intent !");
            return;
        }
        Uri data = intent.getData();
        boolean booleanExtra = intent.getBooleanExtra("restore", false);
        long[] longArrayExtra = intent.getLongArrayExtra("delete_contacts_id");
        if (data == null || longArrayExtra == null) {
            Log.d(f2974a, "Deletion was not completed due to contentUri is null or ids is null");
            return;
        }
        String str = BuildConfig.FLAVOR;
        int i = 0;
        while (i < longArrayExtra.length) {
            try {
                str = i == longArrayExtra.length - 1 ? str + String.valueOf(longArrayExtra[i]) : str + String.valueOf(longArrayExtra[i]) + ", ";
                i++;
            } catch (Exception e2) {
                Log.d(f2974a, "Failed to delete private contacts...");
                e2.printStackTrace();
            }
        }
        if (!b(str)) {
            Log.e(f2974a, "Notification to SMS was failed !");
        }
        if (booleanExtra) {
            this.f = (AccountWithDataSet) intent.getParcelableExtra("com.android.contacts.extra.ACCOUNT");
            a(str);
        }
        Log.d(f2974a, getContentResolver().delete(data, "_id IN (" + str + ")", null) + " contat(s) were deleted successfully!");
        d((Intent) intent.getParcelableExtra("callbackIntent"));
    }

    public static void b(a aVar) {
        c.remove(aVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(android.net.Uri r6, java.util.ArrayList<com.asus.privatecontacts.PrivateContactsManager.b> r7) {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0025
            r0 = r7
            java.lang.String r0 = a(r0)
            r7 = r0
            r0 = r5
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0020
            r1 = r6
            r2 = r7
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)     // Catch: Exception -> 0x0020
            r9 = r0
        L_0x0017:
            r0 = r9
            if (r0 <= 0) goto L_0x001e
            r0 = 1
            r8 = r0
        L_0x001e:
            r0 = r8
            return r0
        L_0x0020:
            r6 = move-exception
            r0 = r6
            r0.printStackTrace()
        L_0x0025:
            r0 = 0
            r9 = r0
            goto L_0x0017
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsManager.b(android.net.Uri, java.util.ArrayList):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013d  */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.privatecontacts.PrivateContactsManager.b(java.lang.String):boolean");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00cf -> B:26:0x00b4). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00d7 -> B:26:0x00b4). Please submit an issue!!! */
    private void c(Intent intent) {
        if (intent != null) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("phone_numbers");
            ArrayList<String> stringArrayListExtra2 = intent.getStringArrayListExtra("sip_numbers");
            if ((stringArrayListExtra == null || stringArrayListExtra.size() == 0) && (stringArrayListExtra2 == null || stringArrayListExtra2.size() == 0)) {
                Log.e(f2974a, "Got an empty number from intent >>> moveCallogsToPrivateDataBase");
                return;
            }
            ArrayList<b> arrayList = new ArrayList<>();
            Iterator<String> it = stringArrayListExtra.iterator();
            while (it.hasNext()) {
                arrayList.add(new b(it.next(), 0));
            }
            Iterator<String> it2 = stringArrayListExtra2.iterator();
            while (it2.hasNext()) {
                arrayList.add(new b(it2.next(), 1));
            }
            ArrayList<ContentProviderOperation> a2 = a(arrayList, false);
            try {
                if (a2.size() > 0) {
                    getContentResolver().applyBatch("com.asus.privatecontacts.provider", a2);
                    Log.d(f2974a, "Successfully copied call logs to private database!");
                } else {
                    Log.d(f2974a, "operationCalls is empty!");
                }
            } catch (OperationApplicationException e2) {
                e2.printStackTrace();
            } catch (RemoteException e3) {
                e3.printStackTrace();
            }
            Log.d(f2974a, "<<< moveCallogsToPrivateDataBase");
        }
    }

    private void d(final Intent intent) {
        this.d.post(new Runnable() { // from class: com.asus.privatecontacts.PrivateContactsManager.1
            @Override // java.lang.Runnable
            public final void run() {
                PrivateContactsManager.a(intent);
            }
        });
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (!NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Integer num = f2975b.get(intent.getAction());
            Integer num2 = num;
            if (num == null) {
                num2 = -1;
            }
            switch (num2.intValue()) {
                case 1:
                    if (intent != null) {
                        ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra(ContactDetailActivity.ChangeLinkPhotoReceiver.CONTACT_URI);
                        ArrayList<String> arrayList = new ArrayList<>();
                        Iterator<String> it = stringArrayListExtra.iterator();
                        while (it.hasNext()) {
                            String next = it.next();
                            a(Uri.withAppendedPath(Uri.parse(next), "entities"), arrayList);
                            a(Uri.parse(next));
                        }
                        if (arrayList.size() > 0) {
                            Intent intent2 = new Intent();
                            intent2.setAction("asus_private_contacts");
                            intent2.putExtra("type", 1);
                            intent2.putStringArrayListExtra("phone_numbers", arrayList);
                            sendBroadcast(intent2);
                        }
                        d((Intent) intent.getParcelableExtra("callbackIntent"));
                        return;
                    }
                    return;
                case 2:
                    b(intent);
                    return;
                case 3:
                    c(intent);
                    return;
                default:
                    Log.e(f2974a, "No matched code for intent action!");
                    return;
            }
        }
    }
}
