package com.privacystar.core.util;

import android.content.ActivityNotFoundException;
import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.support.annotation.Nullable;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/ContactUtil.class */
public class ContactUtil {
    private ContactUtil() throws InstantiationException {
        throw new InstantiationException("This static utility class can't be instantiated.");
    }

    public static void createContact(JSONObject jSONObject) throws RemoteException, OperationApplicationException, JSONException {
        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
        JSONObject jSONObject2 = jSONObject.getJSONObject("n");
        JSONArray jSONArray = jSONObject.getJSONArray("tel");
        arrayList.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
        ContentProviderOperation.Builder newInsert = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
        newInsert.withValueBackReference("raw_contact_id", 0);
        newInsert.withValue("mimetype", "vnd.android.cursor.item/name");
        newInsert.withValue("data2", jSONObject2.get("given-name"));
        newInsert.withValue("data3", jSONObject2.get("family-name"));
        newInsert.withValue("data1", jSONObject.getString("fn"));
        arrayList.add(newInsert.build());
        ContentProviderOperation.Builder newInsert2 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
        newInsert2.withValueBackReference("raw_contact_id", 0);
        newInsert2.withValue("mimetype", "vnd.android.cursor.item/name");
        newInsert2.withValue("data1", jSONObject.getString("fn"));
        arrayList.add(newInsert2.build());
        for (int i = 0; i < jSONArray.length(); i++) {
            ContentProviderOperation.Builder newInsert3 = ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI);
            newInsert3.withValueBackReference("raw_contact_id", 0);
            newInsert3.withValue("mimetype", "vnd.android.cursor.item/phone_v2");
            JSONObject jSONObject3 = jSONArray.getJSONObject(i);
            newInsert3.withValue("data1", jSONObject3.getString(FirebaseAnalytics.Param.VALUE));
            newInsert3.withValue("data2", Integer.valueOf(jSONObject3.getInt("type")));
            arrayList.add(newInsert3.build());
        }
        PSApplication.contentResolver().applyBatch("com.android.contacts", arrayList);
    }

    public static void createOrEditContact(JSONObject jSONObject) {
        try {
            JSONArray jSONArray = jSONObject.getJSONArray("vcard");
            ContentResolver contentResolver = PSApplication.contentResolver();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                JSONArray jSONArray2 = jSONObject2.getJSONArray("tel");
                boolean z = false;
                for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                    if (!Text.isBlank(getContactIdByNumber(contentResolver, jSONArray2.getJSONObject(i2).getString(FirebaseAnalytics.Param.VALUE)))) {
                        z = true;
                    }
                }
                if (!z) {
                    createContact(jSONObject2);
                }
            }
        } catch (Exception e) {
            Timber.m32e(e, "while adding or editing contact", new Object[0]);
        }
    }

    public static Cursor getAllContactsCursor() {
        return PSApplication.contentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"data1", "display_name"}, null, null, null);
    }

    private static String getContactIdByNumber(ContentResolver contentResolver, String str) {
        Exception e;
        String str2 = "";
        try {
            Cursor query = contentResolver.query(Uri.withAppendedPath(Uri.parse("content://com.android.contacts/phone_lookup"), str), new String[]{"_id"}, null, null, null);
            str2 = "";
            if (query != null) {
                str2 = "";
                if (query.moveToFirst()) {
                    str2 = query.getString(query.getColumnIndex("_id"));
                    if (str2 != null) {
                        try {
                            if (Text.isNull(str2)) {
                            }
                        } catch (Exception e2) {
                            e = e2;
                            str2 = str2;
                            Timber.m32e(e, "Error while retrieving contact for phone number: %s", str);
                            return str2;
                        }
                    }
                    str2 = "";
                }
                str2 = str2;
                query.close();
            }
        } catch (Exception e3) {
            e = e3;
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x023e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String[] getContactNameAndIdByNumber(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.ContactUtil.getContactNameAndIdByNumber(java.lang.String):java.lang.String[]");
    }

    @Nullable
    public static Uri getContactPhoto(String str) {
        if (!Text.isBlank(str)) {
            return getPhotoUri(str);
        }
        return null;
    }

    @Nullable
    public static Uri getPhotoUri(String str) {
        NumberFormatException e;
        Uri uri = null;
        try {
            uri = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(str));
        } catch (NumberFormatException e2) {
            e = e2;
        }
        try {
            uri = Uri.withAppendedPath(uri, "display_photo");
        } catch (NumberFormatException e3) {
            e = e3;
            Timber.m29i(e, "Couldn't parse [%s] as a Long.", str);
            return uri;
        }
        return uri;
    }

    public static boolean isNumberInContacts(String str) {
        Throwable th;
        Exception e;
        ContentResolver contentResolver = PSApplication.contentResolver();
        String str2 = "";
        if (!Text.isBlank(str)) {
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    cursor = contentResolver.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str), new String[]{"lookup"}, null, null, "lookup LIMIT 1");
                    cursor2 = "";
                    if (cursor != null) {
                        cursor2 = "";
                        try {
                            if (cursor.moveToFirst()) {
                                cursor2 = cursor.getString(cursor.getColumnIndex("lookup"));
                                if (cursor2 == null) {
                                    cursor2 = "";
                                }
                            }
                        } catch (Exception e2) {
                            e = e2;
                            cursor2 = cursor;
                            Timber.m32e(e, "Error while checking contacts for phone number: %s", str);
                            str2 = "";
                            if (cursor != null) {
                                cursor.close();
                                str2 = "";
                            }
                            return !Text.isBlank(str2);
                        } catch (Throwable th2) {
                            th = th2;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                    str2 = cursor2;
                    if (cursor != null) {
                        cursor.close();
                        str2 = cursor2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e3) {
                e = e3;
            }
        }
        return !Text.isBlank(str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$openAddContactScreen$0$ContactUtil(String str, String str2, Context context) {
        try {
            Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
            intent.putExtra("name", str);
            intent.putExtra("phone", str2);
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Timber.m25w("Failed to find Activity to launch Contact intent. This device has an irregular ContactsProvider.", new Object[0]);
        }
    }

    public static void openAddContactScreen(final Context context, final String str, final String str2) {
        AnalyticsManager.INSTANCE.fire(Event.OpenedContactsEvent.INSTANCE);
        new Thread(new Runnable(str, str2, context) { // from class: com.privacystar.core.util.ContactUtil$$Lambda$0
            private final String arg$1;
            private final String arg$2;
            private final Context arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = context;
            }

            @Override // java.lang.Runnable
            public void run() {
                ContactUtil.lambda$openAddContactScreen$0$ContactUtil(this.arg$1, this.arg$2, this.arg$3);
            }
        }).start();
    }
}
