package com.android.contacts;

import android.app.Activity;
import android.app.IntentService;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.NecessaryPermissionDenyActivity;
import com.android.contacts.b;
import com.android.contacts.editor.AsusDisplayNamePhotoData;
import com.android.contacts.group.GroupEditorFragment;
import com.android.contacts.group.f;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.RawContactDeltaList;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.simcardmanage.SimCardContact;
import com.android.contacts.simcardmanage.e;
import com.android.contacts.util.ContactPhotoUtils;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.NameSplitter;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
import com.asus.contacts.b.h;
import com.asus.prefersim.c;
import com.asus.updatesdk.BuildConfig;
import com.google.a.b.aa;
import com.google.a.b.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ContactSaveService.class */
public class ContactSaveService extends IntentService {
    private static Context h;

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f475b = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups");
    private static final Uri c = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups_data");

    /* renamed from: a  reason: collision with root package name */
    public static String f474a = "default_group";
    private static final HashSet<String> d = aa.a("mimetype", "is_primary", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, "data4", "data5", "data6", "data7", "data8", "data9", "data10", "data11", "data12", "data13", "data14", "data15");
    private static TelephonyManager e = null;
    private static final CopyOnWriteArrayList<b> f = new CopyOnWriteArrayList<>();
    private final String[] i = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, SelectAccountActivity.ACCOUNT_TYPE};
    private Handler g = new Handler(Looper.getMainLooper());

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/ContactSaveService$a.class */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f482a = {"_id", ContactDetailCallogActivity.EXTRA_CONTACT_ID, "name_verified", "display_name_source"};
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/ContactSaveService$b.class */
    public interface b {
        void onServiceCompleted(Intent intent);
    }

    public ContactSaveService() {
        super("ContactSaveService");
        setIntentRedelivery(true);
    }

    private static int a(long j, ArrayList<GroupEditorFragment.Member> arrayList) {
        int i;
        Iterator<GroupEditorFragment.Member> it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            GroupEditorFragment.Member next = it.next();
            if (j == next.f1354a) {
                i = next.e;
                break;
            }
        }
        return i;
    }

    private static long a(RawContactDeltaList rawContactDeltaList, ArrayList<ContentProviderOperation> arrayList, ContentProviderResult[] contentProviderResultArr) {
        long b2 = rawContactDeltaList.b();
        if (b2 == -1) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    b2 = -1;
                    break;
                }
                ContentProviderOperation contentProviderOperation = arrayList.get(i);
                if (contentProviderOperation.getType() == 1 && contentProviderOperation.getUri().getEncodedPath().contains(ContactsContract.RawContacts.CONTENT_URI.getEncodedPath()) && contentProviderResultArr != null && contentProviderResultArr.length > i) {
                    b2 = ContentUris.parseId(contentProviderResultArr[i].uri);
                    break;
                }
                i++;
            }
        }
        return b2;
    }

    public static Intent a(Context context, long j) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("deleteGroup");
        intent.putExtra("groupId", j);
        return intent;
    }

    public static Intent a(Context context, long j, long j2, boolean z, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("joinContacts");
        intent.putExtra("contactId1", j);
        intent.putExtra("contactId2", j2);
        intent.putExtra("contactWritable", z);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, long j, String str, long[] jArr, long[] jArr2, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("updateGroup");
        intent.putExtra("groupId", j);
        intent.putExtra("groupLabel", str);
        intent.putExtra("rawContactsToAdd", jArr);
        intent.putExtra("rawContactsToRemove", jArr2);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, Uri uri) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("delete");
        intent.putExtra("contactUri", uri);
        return intent;
    }

    public static Intent a(Context context, Uri uri, Uri uri2, boolean z) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("ez_delete");
        intent.putExtra("dataUri", uri2);
        intent.putExtra("contactUri", uri);
        intent.putExtra("ez_multiple_phone", z);
        return intent;
    }

    public static Intent a(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("setRingtone");
        intent.putExtra("contactUri", uri);
        intent.putExtra("customRingtone", str);
        return intent;
    }

    public static Intent a(Context context, Uri uri, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, Class<?> cls, String str3, Bundle bundle, boolean z2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("ez_saveContact");
        intent.putExtra("ez_edit_name", str);
        intent.putExtra("ez_edit_phone", str2);
        intent.putExtra("ez_edit_name_id", j);
        intent.putExtra("ez_edit_phone_id", j2);
        intent.putExtra("ez_edit_name_raw_id", j3);
        intent.putExtra("ez_edit_phone_raw_id", j4);
        intent.putExtra("ez_edit_photo_raw_id", j5);
        intent.putExtra("ez_edit_is_sim", i);
        intent.putExtra("ez_edit_contact_uri", uri);
        intent.putExtra("ez_edit_photo_remove", z2);
        if (bundle != null) {
            intent.putExtra("updatedPhotos", (Parcelable) bundle);
        }
        intent.putExtra("ez_edit_is_new", z);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str3);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, Uri uri, boolean z) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("setStarred");
        intent.putExtra("contactUri", uri);
        intent.putExtra("starred", z);
        return intent;
    }

    public static Intent a(Context context, RawContactDeltaList rawContactDeltaList, String str, boolean z, long j, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(String.valueOf(j), str2);
        return a(context, rawContactDeltaList, str, z, (Class<? extends Activity>) null, (String) null, bundle);
    }

    public static Intent a(Context context, RawContactDeltaList rawContactDeltaList, String str, boolean z, Class<? extends Activity> cls, String str2, Bundle bundle) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("saveContact");
        intent.putExtra("state", (Parcelable) rawContactDeltaList);
        intent.putExtra("saveIsProfile", z);
        if (bundle != null) {
            intent.putExtra("updatedPhotos", (Parcelable) bundle);
        }
        if (cls != null) {
            Intent intent2 = new Intent(context, cls);
            intent2.putExtra(str, 0);
            intent2.setAction(str2);
            if (bundle != null) {
                intent2.putExtra("updatedPhotos", (Parcelable) bundle);
            }
            intent.putExtra("callbackIntent", intent2);
        }
        return intent;
    }

    public static Intent a(Context context, RawContactDeltaList rawContactDeltaList, boolean z, AsusDisplayNamePhotoData asusDisplayNamePhotoData, String str, int i, boolean z2, Class<?> cls, String str2, Bundle bundle, boolean z3) {
        h = context;
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("saveContact");
        intent.putExtra("state", (Parcelable) rawContactDeltaList);
        intent.putExtra("saveIsProfile", z2);
        if (bundle != null) {
            intent.putExtra("updatedPhotos", (Parcelable) bundle);
        }
        intent.putExtra("NewContactMark", z);
        intent.putExtra("DisplayNamePhotoState", asusDisplayNamePhotoData);
        intent.putExtra("copyToSim", z3);
        Intent intent2 = new Intent(context, cls);
        intent2.putExtra(str, i);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, AccountWithDataSet accountWithDataSet, String str, long[] jArr, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("createGroup");
        intent.putExtra("accountType", accountWithDataSet.type);
        intent.putExtra("accountName", accountWithDataSet.name);
        intent.putExtra("dataSet", accountWithDataSet.f1998a);
        intent.putExtra("groupLabel", str);
        intent.putExtra("rawContactsToAdd", jArr);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, SimCardContact simCardContact, SimCardContact simCardContact2, String str, int i, Class<?> cls, String str2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("saveSimContact");
        intent.putExtra("newsimcardinfo", simCardContact);
        intent.putExtra("oldsimcardinfo", simCardContact2);
        Intent intent2 = new Intent(context, cls);
        intent2.putExtra(str, i);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, String str, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("newRawContact");
        if (accountWithDataSet != null) {
            intent.putExtra("accountName", accountWithDataSet.name);
            intent.putExtra("accountType", accountWithDataSet.type);
            intent.putExtra("dataSet", accountWithDataSet.f1998a);
        }
        NameSplitter nameSplitter = new NameSplitter(context.getString(Resources.getSystem().getIdentifier("common_name_prefixes", "string", "android")), context.getString(Resources.getSystem().getIdentifier("common_last_name_prefixes", "string", "android")), context.getString(Resources.getSystem().getIdentifier("common_name_suffixes", "string", "android")), context.getString(Resources.getSystem().getIdentifier("common_name_conjunctions", "string", "android")), Locale.getDefault());
        NameSplitter.Name name = new NameSplitter.Name();
        nameSplitter.split(name, str);
        Iterator<ContentValues> it = arrayList.iterator();
        while (it.hasNext()) {
            ContentValues next = it.next();
            if (next.getAsString("mimetype").equals("vnd.android.cursor.item/name")) {
                next.put(CoverUtils.CoverData.COVER_TYPE, name.givenNames);
                next.put(CoverUtils.CoverData.USER_SET, name.familyName);
                next.put("data4", name.prefix);
                next.put("data5", name.middleName);
                next.put("data6", name.suffix);
            }
        }
        intent.putParcelableArrayListExtra("contentValues", arrayList);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, String str, long[] jArr, Class<? extends Activity> cls, String str2) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("createGroup");
        intent.putExtra("groupLabel", str);
        intent.putExtra("rawContactsToAdd", jArr);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str2);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static Intent a(Context context, ArrayList<ContentValues> arrayList, AccountWithDataSet accountWithDataSet, Class<? extends Activity> cls, String str) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("newRawContact");
        if (accountWithDataSet != null) {
            intent.putExtra("accountName", accountWithDataSet.name);
            intent.putExtra("accountType", accountWithDataSet.type);
            intent.putExtra("dataSet", accountWithDataSet.f1998a);
        }
        intent.putParcelableArrayListExtra("contentValues", arrayList);
        Intent intent2 = new Intent(context, cls);
        intent2.setAction(str);
        intent.putExtra("callbackIntent", intent2);
        return intent;
    }

    public static void a() {
        f.clear();
    }

    private void a(final int i) {
        this.g.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.2
            @Override // java.lang.Runnable
            public final void run() {
                Toast.makeText(ContactSaveService.this, i, 1).show();
            }
        });
    }

    private void a(ContentResolver contentResolver, ArrayList<GroupEditorFragment.Member> arrayList, long j) {
        Cursor cursor = null;
        String str = BuildConfig.FLAVOR;
        String str2 = str;
        if (arrayList != null) {
            int i = 0;
            while (true) {
                str2 = str;
                if (i >= arrayList.size()) {
                    break;
                }
                str = i == 0 ? str + "contact_id=" + arrayList.get(i).f1354a : str + " OR contact_id=" + arrayList.get(i).f1354a;
                i++;
            }
        }
        if (!str2.equals(BuildConfig.FLAVOR)) {
            cursor = contentResolver.query(ContactsContract.RawContacts.CONTENT_URI, this.i, str2, null, null);
        }
        String str3 = PhoneCapabilityTester.IsAsusDevice() ? CoverUtils.CoverData.COVER_TYPE : CoverUtils.CoverData.COVER_URI;
        try {
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        do {
                            long j2 = cursor.getLong(0);
                            long j3 = cursor.getLong(1);
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("data14", Integer.valueOf(a(j3, arrayList)));
                            if (contentResolver.update(ContactsContract.Data.CONTENT_URI, contentValues, "raw_contact_id=" + j2 + " AND mimetype='vnd.android.cursor.item/group_membership' AND " + str3 + "=" + j, null) == 0) {
                                Log.d("ContactSaveService", "No data were changed for raw contact ID: " + j2);
                            }
                        } while (cursor.moveToNext());
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
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
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private static void a(ContentResolver contentResolver, long[] jArr, long j) {
        if (jArr != null) {
            for (long j2 : jArr) {
                try {
                    ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                    ContentProviderOperation.Builder newAssertQuery = ContentProviderOperation.newAssertQuery(ContactsContract.Data.CONTENT_URI);
                    newAssertQuery.withSelection("raw_contact_id=? AND mimetype=? AND data1=?", new String[]{String.valueOf(j2), "vnd.android.cursor.item/group_membership", String.valueOf(j)});
                    newAssertQuery.withExpectedCount(0);
                    arrayList.add(newAssertQuery.build());
                    ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
                    newInsert.withValue("raw_contact_id", Long.valueOf(j2));
                    newInsert.withValue("mimetype", "vnd.android.cursor.item/group_membership");
                    newInsert.withValue(CoverUtils.CoverData.COVER_URI, Long.valueOf(j));
                    arrayList.add(newInsert.build());
                    if (!arrayList.isEmpty()) {
                        contentResolver.applyBatch("com.android.contacts", arrayList);
                    }
                } catch (OperationApplicationException e2) {
                    Log.w("ContactSaveService", "Assert failed in adding raw contact ID " + String.valueOf(j2) + ". Already exists in group " + String.valueOf(j), e2);
                } catch (RemoteException e3) {
                    Log.e("ContactSaveService", "Problem persisting user edits for raw contact ID " + String.valueOf(j2), e3);
                }
            }
        }
    }

    private static void a(ContentResolver contentResolver, long[] jArr, long j, String str) {
        if (jArr != null) {
            if (f.b(str)) {
                for (long j2 : jArr) {
                    contentResolver.delete(Uri.withAppendedPath(ContactsContract.DataUsageFeedback.DELETE_USAGE_URI, Long.toString(j2)), null, null);
                }
                return;
            }
            for (long j3 : jArr) {
                contentResolver.delete(ContactsContract.Data.CONTENT_URI, "raw_contact_id=? AND mimetype=? AND data2=?", new String[]{String.valueOf(j3), "vnd.android.cursor.item/group_membership", String.valueOf(j)});
            }
        }
    }

    static void a(Intent intent) {
        Iterator<b> it = f.iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (intent.getComponent().equals(((Activity) next).getIntent().getComponent())) {
                next.onServiceCompleted(intent);
                return;
            }
        }
    }

    public static void a(b bVar) {
        if (!(bVar instanceof Activity)) {
            throw new ClassCastException("Only activities can be registered to receive callback from " + ContactSaveService.class.getName());
        }
        f.add(0, bVar);
    }

    private void a(RawContactDeltaList rawContactDeltaList) {
        boolean z;
        Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            if ("AT&T Address Book".equals(next.b())) {
                ArrayList<RawContactDelta.ValuesDelta> a2 = next.a("vnd.android.cursor.item/name", false);
                if (a2 != null && a2.size() > 0) {
                    Iterator<RawContactDelta.ValuesDelta> it2 = a2.iterator();
                    boolean z2 = false;
                    while (true) {
                        z = z2;
                        if (!it2.hasNext()) {
                            break;
                        }
                        RawContactDelta.ValuesDelta next2 = it2.next();
                        if (next2.j() || next2.l() || next2.n()) {
                            Log.d("ContactSaveService", "name change");
                            z2 = true;
                        }
                    }
                } else {
                    z = false;
                }
                ArrayList<RawContactDelta.ValuesDelta> a3 = next.a("vnd.android.cursor.item/nickname", false);
                boolean z3 = z;
                if (a3 != null) {
                    z3 = z;
                    if (a3.size() > 0) {
                        Iterator<RawContactDelta.ValuesDelta> it3 = a3.iterator();
                        while (true) {
                            z3 = z;
                            if (!it3.hasNext()) {
                                break;
                            }
                            RawContactDelta.ValuesDelta next3 = it3.next();
                            if (next3.j() || next3.l() || next3.n()) {
                                Log.d("ContactSaveService", "nickname change");
                                z = true;
                            }
                        }
                    }
                }
                ArrayList<RawContactDelta.ValuesDelta> a4 = next.a("vnd.android.cursor.item/organization", false);
                boolean z4 = z3;
                if (a4 != null) {
                    z4 = z3;
                    if (a4.size() > 0) {
                        Iterator<RawContactDelta.ValuesDelta> it4 = a4.iterator();
                        while (true) {
                            z4 = z3;
                            if (!it4.hasNext()) {
                                break;
                            }
                            RawContactDelta.ValuesDelta next4 = it4.next();
                            if (next4.j() || next4.l() || next4.n()) {
                                Log.d("ContactSaveService", "organization change");
                                z3 = true;
                            }
                        }
                    }
                }
                if (z4 && !next.f1987a.n()) {
                    long longValue = next.a().longValue();
                    if (longValue > 0) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.putNull("sync4");
                        getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI, contentValues, "_id = " + longValue, null);
                        Log.d("ContactSaveService", "update sync4");
                    }
                }
            }
        }
    }

    private boolean a(long j, long j2, boolean z) {
        boolean z2;
        ContentResolver contentResolver = getContentResolver();
        Uri uri = ContactsContract.RawContacts.CONTENT_URI;
        if (z) {
            uri = ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI;
        }
        Cursor query = contentResolver.query(uri, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "_id=" + j, null, null);
        try {
            if (query.getCount() > 0) {
                query.moveToFirst();
                if (j2 == query.getLong(0)) {
                    if (query != null) {
                        query.close();
                    }
                    z2 = true;
                    return z2;
                }
            }
            if (query != null) {
                query.close();
            }
            z2 = false;
            return z2;
        } catch (Throwable th) {
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private boolean a(long j, Uri uri) {
        return ContactPhotoUtils.savePhotoFromUriToUri(this, uri, Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j), "display_photo"), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x04bf  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04e2 A[Catch: UnsupportedOperationException -> 0x0569, TRY_ENTER, TryCatch #4 {UnsupportedOperationException -> 0x0569, blocks: (B:114:0x04e2, B:130:0x055a), top: B:143:0x04df }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0546  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0550  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x055a A[Catch: UnsupportedOperationException -> 0x0569, TRY_ENTER, TRY_LEAVE, TryCatch #4 {UnsupportedOperationException -> 0x0569, blocks: (B:114:0x04e2, B:130:0x055a), top: B:143:0x04df }] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(android.net.Uri r8, long r9, android.content.Intent r11, boolean r12, java.util.ArrayList<java.lang.Long> r13) {
        /*
            Method dump skipped, instructions count: 1412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.a(android.net.Uri, long, android.content.Intent, boolean, java.util.ArrayList):boolean");
    }

    public static Intent b(Context context, long j) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("setSuperPrimary");
        intent.putExtra("dataId", j);
        return intent;
    }

    public static Intent b(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("setSmsSound");
        intent.putExtra("contactUri", uri);
        intent.putExtra("message_ringtone", str);
        return intent;
    }

    public static Intent b(Context context, Uri uri, boolean z) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("sendToVoicemail");
        intent.putExtra("contactUri", uri);
        intent.putExtra("sendToVoicemailFlag", z);
        return intent;
    }

    private static void b(ContentResolver contentResolver, long[] jArr, long j) {
        if (jArr != null) {
            for (long j2 : jArr) {
                contentResolver.delete(ContactsContract.Data.CONTENT_URI, "raw_contact_id=? AND mimetype=? AND data1=?", new String[]{String.valueOf(j2), "vnd.android.cursor.item/group_membership", String.valueOf(j)});
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0b0c  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0b90  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0c5b  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0cd0  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x00f8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0dc9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0b01 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v582, types: [long] */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v10 */
    /* JADX WARN: Type inference failed for: r25v11 */
    /* JADX WARN: Type inference failed for: r25v12 */
    /* JADX WARN: Type inference failed for: r25v13 */
    /* JADX WARN: Type inference failed for: r25v14 */
    /* JADX WARN: Type inference failed for: r25v18 */
    /* JADX WARN: Type inference failed for: r25v19 */
    /* JADX WARN: Type inference failed for: r25v2 */
    /* JADX WARN: Type inference failed for: r25v20 */
    /* JADX WARN: Type inference failed for: r25v21 */
    /* JADX WARN: Type inference failed for: r25v3 */
    /* JADX WARN: Type inference failed for: r25v4 */
    /* JADX WARN: Type inference failed for: r25v5 */
    /* JADX WARN: Type inference failed for: r25v6 */
    /* JADX WARN: Type inference failed for: r25v7 */
    /* JADX WARN: Type inference failed for: r25v8 */
    /* JADX WARN: Type inference failed for: r25v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [android.content.Context, com.android.contacts.ContactSaveService] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 3541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.b(android.content.Intent):void");
    }

    public static void b(b bVar) {
        f.remove(bVar);
    }

    private void b(RawContactDeltaList rawContactDeltaList) {
        ContentResolver contentResolver = getContentResolver();
        StringBuilder sb = new StringBuilder("_id IN(");
        boolean z = true;
        int size = rawContactDeltaList.size();
        for (int i = 0; i < size; i++) {
            Long a2 = rawContactDeltaList.a(i);
            z = z;
            if (a2 != null) {
                z = z;
                if (a2.longValue() != -1) {
                    if (!z) {
                        sb.append(',');
                    }
                    sb.append(a2);
                    z = false;
                }
            }
        }
        sb.append(")");
        if (z) {
            Log.e("ContactSaveService", "Version consistency failed for a new contact");
        }
        RawContactDeltaList.a(RawContactDeltaList.a(ContactsContract.RawContactsEntity.CONTENT_URI, contentResolver, sb.toString(), null), rawContactDeltaList);
    }

    private boolean b() {
        Throwable th;
        Cursor cursor;
        boolean z;
        try {
            cursor = getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, null, "account_name = 'AT&T Address Book' AND deleted != 1", null, null);
            if (cursor != null) {
                try {
                    Log.i("ContactSaveService", "Att contacts number is " + cursor.getCount());
                    boolean z2 = cursor.getCount() >= 5000;
                    z = z2;
                    if (cursor != null) {
                        cursor.close();
                        z = z2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                if (cursor != null) {
                    cursor.close();
                }
                z = false;
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public static Intent c(Context context, long j) {
        Intent intent = new Intent(context, ContactSaveService.class);
        intent.setAction("clearPrimary");
        intent.putExtra("dataId", j);
        return intent;
    }

    private static void c(ContentResolver contentResolver, long[] jArr, long j) {
        if (jArr != null) {
            for (long j2 : jArr) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("raw_contact_id", Long.valueOf(j2));
                contentValues.put("mimetype", "vnd.android.cursor.item/group_membership");
                contentValues.put(CoverUtils.CoverData.COVER_TYPE, Long.valueOf(j));
                contentResolver.insert(c, contentValues);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.c(android.content.Intent):void");
    }

    private void c(RawContactDeltaList rawContactDeltaList) {
        Iterator<RawContactDelta> it = rawContactDeltaList.iterator();
        while (it.hasNext()) {
            RawContactDelta next = it.next();
            ArrayList<RawContactDelta.ValuesDelta> a2 = next.a("vnd.android.cursor.item/phone_v2", false);
            if (a2 != null && a2.size() > 0) {
                Iterator<RawContactDelta.ValuesDelta> it2 = a2.iterator();
                while (it2.hasNext()) {
                    RawContactDelta.ValuesDelta next2 = it2.next();
                    if (next2.n()) {
                        c.a(getBaseContext(), String.valueOf(next.a()), next2.a(CoverUtils.CoverData.COVER_URI));
                    } else if (next2.j()) {
                        c.b(getBaseContext(), String.valueOf(next2.a()));
                    } else if (next2.l()) {
                        c.b(getBaseContext(), String.valueOf(next2.a()), next2.a(CoverUtils.CoverData.COVER_URI));
                    }
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x010c, code lost:
        if (r0.getInt(2) != 0) goto L_0x010f;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v3, types: [long] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(android.content.Intent r11) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.d(android.content.Intent):void");
    }

    private void e(final Intent intent) {
        this.g.post(new Runnable() { // from class: com.android.contacts.ContactSaveService.3
            @Override // java.lang.Runnable
            public final void run() {
                ContactSaveService.a(intent);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r7v0, types: [android.content.Context, com.android.contacts.ContactSaveService] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void f(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.ContactSaveService.f(android.content.Intent):void");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        Object systemService = super.getSystemService(str);
        return systemService != null ? systemService : getApplicationContext().getSystemService(str);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:167:0x0ade -> B:141:0x09ef). Please submit an issue!!! */
    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        Uri uri;
        long j;
        int i;
        long j2 = -1;
        Cursor cursor = null;
        String action = intent.getAction();
        Log.d("ContactSaveService", "Contacts save service onHandleIntent");
        if (NecessaryPermissionDenyActivity.startPermissionActivity(this)) {
            Log.d("ContactSaveService", "Contacts save service permission deny");
        } else if ("newRawContact".equals(action)) {
            String stringExtra = intent.getStringExtra("accountName");
            String stringExtra2 = intent.getStringExtra("accountType");
            String stringExtra3 = intent.getStringExtra("dataSet");
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("contentValues");
            Intent intent2 = (Intent) intent.getParcelableExtra("callbackIntent");
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue(SelectAccountActivity.ACCOUNT_NAME, stringExtra).withValue(SelectAccountActivity.ACCOUNT_TYPE, stringExtra2).withValue(SelectAccountActivity.DATA_SET, stringExtra3).build());
            int size = parcelableArrayListExtra.size();
            for (int i2 = 0; i2 < size; i2++) {
                ContentValues contentValues = (ContentValues) parcelableArrayListExtra.get(i2);
                contentValues.keySet().retainAll(d);
                arrayList.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValues(contentValues).build());
            }
            ContentResolver contentResolver = getContentResolver();
            try {
                intent2.setData(ContactsContract.RawContacts.getContactLookupUri(contentResolver, contentResolver.applyBatch("com.android.contacts", arrayList)[0].uri));
                e(intent2);
            } catch (Exception e2) {
                throw new RuntimeException("Failed to store new contact", e2);
            }
        } else if ("saveContact".equals(action)) {
            try {
                b(intent);
            } catch (IllegalStateException e3) {
                Log.e("ContactSaveService", e3.getMessage());
                Intent intent3 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent3.setData(null);
                e(intent3);
            }
        } else if ("saveSimContact".equals(action)) {
            try {
                Intent intent4 = (Intent) intent.getParcelableExtra("callbackIntent");
                SimCardContact simCardContact = (SimCardContact) intent.getParcelableExtra("newsimcardinfo");
                SimCardContact simCardContact2 = (SimCardContact) intent.getParcelableExtra("oldsimcardinfo");
                ContentResolver contentResolver2 = getContentResolver();
                e a2 = e.a(getApplicationContext());
                if (simCardContact2 == null || simCardContact.d < 0) {
                    Uri a3 = a2.a(simCardContact);
                    if (a3 != null) {
                        j2 = ContentUris.parseId(a3);
                        uri = ContactsContract.RawContacts.getContactLookupUri(contentResolver2, a3);
                        intent4.putExtra("saveSucceeded", true);
                    } else {
                        j2 = -1;
                        uri = null;
                    }
                } else if (a2.a(simCardContact, simCardContact2) > 0) {
                    j2 = simCardContact2.d;
                    uri = ContactsContract.RawContacts.getContactLookupUri(contentResolver2, ContentUris.withAppendedId(ContactsContract.RawContacts.CONTENT_URI, j2));
                    intent4.putExtra("saveSucceeded", true);
                } else {
                    uri = null;
                }
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("aggregation_mode", (Integer) 3);
                getContentResolver().update(ContactsContract.RawContacts.CONTENT_URI, contentValues2, "_id=" + j2, null);
                intent4.setData(uri);
                e(intent4);
            } catch (IllegalStateException e4) {
                Log.e("ContactSaveService", e4.getMessage());
                Intent intent5 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent5.setData(null);
                e(intent5);
            }
        } else if ("createGroup".equals(action)) {
            if (PhoneCapabilityTester.IsAsusDevice()) {
                String stringExtra4 = intent.getStringExtra("groupLabel");
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra4);
                long[] longArrayExtra = intent.getLongArrayExtra("rawContactsToAdd");
                ContentResolver contentResolver3 = getContentResolver();
                Uri insert = contentResolver3.insert(f475b, contentValues3);
                if (insert == null) {
                    Log.e("ContactSaveService", "Couldn't create group with label " + stringExtra4);
                    return;
                }
                long parseId = ContentUris.parseId(insert);
                c(contentResolver3, longArrayExtra, parseId);
                a(contentResolver3, intent.getExtras().getParcelableArrayList("savingMembers"), parseId);
                contentValues3.clear();
                contentValues3.put("mimetype", "vnd.android.cursor.item/group_membership");
                contentValues3.put(CoverUtils.CoverData.COVER_URI, Long.valueOf(ContentUris.parseId(insert)));
                Intent intent6 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent6.setData(insert);
                if (parseId == -2) {
                    intent6.putExtra("duplicate_group_name", -2);
                }
                intent6.putExtra("data", r.a(contentValues3));
                e(intent6);
                return;
            }
            String stringExtra5 = intent.getStringExtra("accountType");
            String stringExtra6 = intent.getStringExtra("accountName");
            String stringExtra7 = intent.getStringExtra("dataSet");
            String stringExtra8 = intent.getStringExtra("groupLabel");
            long[] longArrayExtra2 = intent.getLongArrayExtra("rawContactsToAdd");
            ContentValues contentValues4 = new ContentValues();
            contentValues4.put(SelectAccountActivity.ACCOUNT_TYPE, stringExtra5);
            contentValues4.put(SelectAccountActivity.ACCOUNT_NAME, stringExtra6);
            contentValues4.put(SelectAccountActivity.DATA_SET, stringExtra7);
            contentValues4.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra8);
            contentValues4.put("group_visible", (Integer) 1);
            ContentResolver contentResolver4 = getContentResolver();
            Uri insert2 = contentResolver4.insert(ContactsContract.Groups.CONTENT_URI, contentValues4);
            if (insert2 == null) {
                Log.e("ContactSaveService", "Couldn't create group with label " + stringExtra8);
                return;
            }
            a(contentResolver4, longArrayExtra2, ContentUris.parseId(insert2));
            a(contentResolver4, intent.getExtras().getParcelableArrayList("savingMembers"), ContentUris.parseId(insert2));
            contentValues4.clear();
            contentValues4.put("mimetype", "vnd.android.cursor.item/group_membership");
            contentValues4.put(CoverUtils.CoverData.COVER_URI, Long.valueOf(ContentUris.parseId(insert2)));
            Intent intent7 = (Intent) intent.getParcelableExtra("callbackIntent");
            intent7.setData(insert2);
            intent7.putExtra("data", r.a(contentValues4));
            e(intent7);
        } else if ("renameGroup".equals(action)) {
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                long longExtra = intent.getLongExtra("groupId", -1L);
                String stringExtra9 = intent.getStringExtra("groupLabel");
                if (longExtra == -1) {
                    Log.e("ContactSaveService", "Invalid arguments for renameGroup request");
                    return;
                }
                ContentValues contentValues5 = new ContentValues();
                contentValues5.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra9);
                Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra);
                getContentResolver().update(withAppendedId, contentValues5, null, null);
                Intent intent8 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent8.setData(withAppendedId);
                e(intent8);
                return;
            }
            long longExtra2 = intent.getLongExtra("groupId", -1L);
            String stringExtra10 = intent.getStringExtra("groupLabel");
            if (longExtra2 == -1) {
                Log.e("ContactSaveService", "Invalid arguments for renameGroup request");
                return;
            }
            ContentValues contentValues6 = new ContentValues();
            contentValues6.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra10);
            Uri withAppendedId2 = ContentUris.withAppendedId(f475b, longExtra2);
            getContentResolver().update(withAppendedId2, contentValues6, null, null);
            Intent intent9 = (Intent) intent.getParcelableExtra("callbackIntent");
            intent9.setData(withAppendedId2);
            e(intent9);
        } else if ("deleteGroup".equals(action)) {
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                long longExtra3 = intent.getLongExtra("groupId", -1L);
                if (longExtra3 == -1) {
                    Log.e("ContactSaveService", "Invalid arguments for deleteGroup request");
                } else {
                    getContentResolver().delete(ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra3), null, null);
                }
            } else {
                long longExtra4 = intent.getLongExtra("groupId", -1L);
                if (longExtra4 == -1) {
                    Log.e("ContactSaveService", "Invalid arguments for deleteGroup request");
                } else {
                    getContentResolver().delete(ContentUris.withAppendedId(f475b, longExtra4), null, null);
                }
            }
        } else if ("updateGroup".equals(action)) {
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                long longExtra5 = intent.getLongExtra("groupId", -1L);
                String stringExtra11 = intent.getStringExtra("groupLabel");
                long[] longArrayExtra3 = intent.getLongArrayExtra("rawContactsToAdd");
                long[] longArrayExtra4 = intent.getLongArrayExtra("rawContactsToRemove");
                if (longExtra5 == -1) {
                    Log.e("ContactSaveService", "Invalid arguments for updateGroup request");
                    return;
                }
                ContentResolver contentResolver5 = getContentResolver();
                Uri withAppendedId3 = ContentUris.withAppendedId(ContactsContract.Groups.CONTENT_URI, longExtra5);
                if (stringExtra11 != null) {
                    ContentValues contentValues7 = new ContentValues();
                    contentValues7.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra11);
                    contentResolver5.update(withAppendedId3, contentValues7, null, null);
                }
                a(contentResolver5, longArrayExtra3, longExtra5);
                b(contentResolver5, longArrayExtra4, longExtra5);
                a(contentResolver5, intent.getExtras().getParcelableArrayList("savingMembers"), longExtra5);
                Intent intent10 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent10.setData(withAppendedId3);
                e(intent10);
                return;
            }
            long longExtra6 = intent.getLongExtra("groupId", -1L);
            String stringExtra12 = intent.getStringExtra("groupLabel");
            long[] longArrayExtra5 = intent.getLongArrayExtra("rawContactsToAdd");
            long[] longArrayExtra6 = intent.getLongArrayExtra("rawContactsToRemove");
            if (longExtra6 == -1) {
                Log.e("ContactSaveService", "Invalid arguments for updateGroup request");
                return;
            }
            ContentResolver contentResolver6 = getContentResolver();
            Uri withAppendedId4 = ContentUris.withAppendedId(f475b, longExtra6);
            if (stringExtra12 != null) {
                ContentValues contentValues8 = new ContentValues();
                if (!f.b(stringExtra12)) {
                    contentValues8.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, stringExtra12);
                } else {
                    contentValues8.put(AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, (String) null);
                }
                i = contentResolver6.update(f475b, contentValues8, "_id = " + String.valueOf(longExtra6), null);
            } else {
                i = 0;
            }
            c(contentResolver6, longArrayExtra5, longExtra6);
            a(contentResolver6, longArrayExtra6, longExtra6, stringExtra12);
            a(contentResolver6, intent.getExtras().getParcelableArrayList("savingMembers"), longExtra6);
            Intent intent11 = (Intent) intent.getParcelableExtra("callbackIntent");
            intent11.setData(withAppendedId4);
            if (i == -2) {
                intent11.putExtra("duplicate_group_name", -2);
            }
            e(intent11);
        } else if ("setStarred".equals(action)) {
            Uri uri2 = (Uri) intent.getParcelableExtra("contactUri");
            final boolean booleanExtra = intent.getBooleanExtra("starred", false);
            final String stringExtra13 = intent.getStringExtra("contact_name");
            if (uri2 == null) {
                Log.e("ContactSaveService", "Invalid arguments for setStarred request");
                return;
            }
            ContentValues contentValues9 = new ContentValues(1);
            contentValues9.put("starred", Boolean.valueOf(booleanExtra));
            if (getContentResolver().update(uri2, contentValues9, null, null) <= 0) {
                Log.d("ContactSaveService", "Update Favorite Contact Failed");
            } else if (stringExtra13 != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.android.contacts.ContactSaveService.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (booleanExtra) {
                            Toast.makeText(ContactSaveService.this.getApplicationContext(), ContactSaveService.this.getResources().getString(2131755043, stringExtra13), 0).show();
                        } else {
                            Toast.makeText(ContactSaveService.this.getApplicationContext(), ContactSaveService.this.getResources().getString(2131756060, stringExtra13), 0).show();
                        }
                    }
                });
            }
        } else if ("setSuperPrimary".equals(action)) {
            long longExtra7 = intent.getLongExtra("dataId", -1L);
            if (longExtra7 == -1) {
                Log.e("ContactSaveService", "Invalid arguments for setSuperPrimary request");
                return;
            }
            ContentValues contentValues10 = new ContentValues(1);
            contentValues10.put("is_super_primary", (Integer) 1);
            contentValues10.put("is_primary", (Integer) 1);
            getContentResolver().update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, longExtra7), contentValues10, null, null);
        } else if ("clearPrimary".equals(action)) {
            long longExtra8 = intent.getLongExtra("dataId", -1L);
            if (longExtra8 == -1) {
                Log.e("ContactSaveService", "Invalid arguments for clearPrimary request");
                return;
            }
            ContentValues contentValues11 = new ContentValues(1);
            contentValues11.put("is_super_primary", (Integer) 0);
            contentValues11.put("is_primary", (Integer) 0);
            getContentResolver().update(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, longExtra8), contentValues11, null, null);
        } else if ("delete".equals(action)) {
            Uri uri3 = (Uri) intent.getParcelableExtra("contactUri");
            if (uri3 == null) {
                Log.e("ContactSaveService", "Invalid arguments for deleteContact request");
                return;
            }
            e a4 = e.a(getBaseContext());
            SimCardContact a5 = a4.a(uri3);
            Log.d("ContactSaveService", "delete single contacts contact.getSimId():" + a5.h + " contact.getSimIndex():" + a5.i);
            if (a5.h > 0) {
                String lastPathSegment = uri3.getLastPathSegment();
                Uri build = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
                build.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, b.a.c).build();
                build.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, b.a.d).build();
                getContentResolver().delete(build, "contact_id = " + lastPathSegment, null);
                a4.c(a5.i, a5.h);
            } else if (a5.i == -1) {
                getContentResolver().delete(uri3, null, null);
            } else {
                Log.d("ContactSaveService", "Sim contacts, but contact.getSimId() <= 0");
            }
            if (PhoneCapabilityTester.isATTSku()) {
                if (ContactsContract.isProfileId(Long.valueOf(uri3.getLastPathSegment()).longValue())) {
                    Uri withAppendedPath = Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data");
                    ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                    arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Profile.CONTENT_RAW_CONTACTS_URI).withValue(SelectAccountActivity.ACCOUNT_TYPE, b.a.f612b).withValue(SelectAccountActivity.ACCOUNT_NAME, b.a.f611a).build());
                    arrayList2.add(ContentProviderOperation.newInsert(withAppendedPath).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue(CoverUtils.CoverData.COVER_URI, "My Info").withValue(CoverUtils.CoverData.COVER_TYPE, "My Info").build());
                    try {
                        getContentResolver().applyBatch("com.android.contacts", arrayList2);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                }
                if (e == null) {
                    e = (TelephonyManager) getApplicationContext().getSystemService("phone");
                }
                String line1Number = e.getLine1Number();
                if (line1Number != null) {
                    try {
                        Cursor query = getContentResolver().query(ContactsContract.Profile.CONTENT_URI, new String[]{"_id", "name_raw_contact_id"}, null, null, null);
                        if (query == null || !query.moveToFirst()) {
                            j = 0;
                        } else {
                            cursor = query;
                            j = query.getLong(1);
                        }
                        if (query != null) {
                            query.close();
                        }
                        ArrayList<ContentProviderOperation> arrayList3 = new ArrayList<>();
                        arrayList3.add(ContentProviderOperation.newInsert(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data")).withValue("raw_contact_id", Long.valueOf(j)).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue(CoverUtils.CoverData.COVER_URI, line1Number).withValue(CoverUtils.CoverData.COVER_TYPE, 0).withValue(CoverUtils.CoverData.USER_SET, "Mobile").build());
                        try {
                            getContentResolver().applyBatch("com.android.contacts", arrayList3);
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
        } else if ("joinContacts".equals(action)) {
            d(intent);
        } else if ("sendToVoicemail".equals(action)) {
            Uri uri4 = (Uri) intent.getParcelableExtra("contactUri");
            boolean booleanExtra2 = intent.getBooleanExtra("sendToVoicemailFlag", false);
            if (uri4 == null) {
                Log.e("ContactSaveService", "Invalid arguments for setRedirectToVoicemail");
                return;
            }
            ContentValues contentValues12 = new ContentValues(1);
            contentValues12.put("send_to_voicemail", Boolean.valueOf(booleanExtra2));
            getContentResolver().update(uri4, contentValues12, null, null);
        } else if ("setRingtone".equals(action)) {
            Uri uri5 = (Uri) intent.getParcelableExtra("contactUri");
            String stringExtra14 = intent.getStringExtra("customRingtone");
            if (uri5 == null) {
                Log.e("ContactSaveService", "Invalid arguments for setRingtone");
                return;
            }
            ContentValues contentValues13 = new ContentValues(2);
            contentValues13.put("custom_ringtone", stringExtra14);
            contentValues13.put("ringtone_type", (Integer) 0);
            getContentResolver().update(uri5, contentValues13, null, null);
        } else if ("setSmsSound".equals(action)) {
            Uri uri6 = (Uri) intent.getParcelableExtra("contactUri");
            String stringExtra15 = intent.getStringExtra("message_ringtone");
            if (uri6 == null) {
                Log.e("ContactSaveService", "Invalid arguments for setRingtone");
            } else {
                ContentValues contentValues14 = new ContentValues(2);
                contentValues14.put("message_ringtone", stringExtra15);
                contentValues14.put("message_ringtone_type", (Integer) 0);
                Log.i("ContactSaveService", "Sms ringtone: " + stringExtra15 + " (" + uri6 + ")");
                getContentResolver().update(uri6, contentValues14, null, null);
            }
            h.b(this);
        } else if ("setVip".equals(action)) {
            c(intent);
        } else if ("ez_delete".equals(action)) {
            Uri uri7 = (Uri) intent.getParcelableExtra("contactUri");
            Uri uri8 = (Uri) intent.getParcelableExtra("dataUri");
            boolean booleanExtra3 = intent.getBooleanExtra("ez_multiple_phone", false);
            if (uri8 == null || uri7 == null) {
                Log.e("ContactSaveService", "Invalid arguments for deleteContact request");
                return;
            }
            Log.d("ContactSaveService", "hasMultiplePhone = " + booleanExtra3 + (booleanExtra3 ? " dataUri = " + uri8 : " contactUri = " + uri7));
            e a6 = e.a(getBaseContext());
            SimCardContact a7 = a6.a(uri7);
            if (a7.h > 0) {
                if (!booleanExtra3) {
                    String lastPathSegment2 = uri7.getLastPathSegment();
                    Uri build2 = ContactsContract.RawContacts.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").build();
                    build2.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_NAME, b.a.c).build();
                    build2.buildUpon().appendQueryParameter(SelectAccountActivity.ACCOUNT_TYPE, b.a.d).build();
                    getContentResolver().delete(build2, "contact_id = " + lastPathSegment2, null);
                    a6.c(a7.i, a7.h);
                    return;
                }
                String lastPathSegment3 = uri7.getLastPathSegment();
                getContentResolver().delete(uri8, null, null);
                a6.b(a6.a(lastPathSegment3));
            } else if (!booleanExtra3) {
                getContentResolver().delete(uri7, null, null);
            } else {
                getContentResolver().delete(uri8, null, null);
            }
        } else if ("ez_saveContact".equals(action)) {
            try {
                f(intent);
            } catch (IllegalStateException e7) {
                Log.e("ContactSaveService", e7.getMessage());
                Intent intent12 = (Intent) intent.getParcelableExtra("callbackIntent");
                intent12.setData(null);
                e(intent12);
            }
        }
    }
}
