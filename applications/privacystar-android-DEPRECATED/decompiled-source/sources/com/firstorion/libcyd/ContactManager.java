package com.firstorion.libcyd;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.p001v4.content.ContextCompat;
import android.util.Base64;
import android.util.Log;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ContactManager.class */
public class ContactManager {
    private ContactManager() {
    }

    private static boolean contactExists(Context context, String str) {
        Cursor queryCursor = getQueryCursor(context, ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str, new String[]{"_id", "number", "display_name", "lookup", "contact_id"});
        try {
            if (queryCursor != null) {
                try {
                    if (queryCursor.moveToFirst()) {
                        if (queryCursor == null) {
                            return true;
                        }
                        queryCursor.close();
                        return true;
                    }
                } catch (Exception e) {
                    Log.e("libcyd.app", "Unable to check if contact exists", e);
                    if (queryCursor == null) {
                        return false;
                    }
                }
            }
            if (queryCursor == null) {
                return false;
            }
            queryCursor.close();
            return false;
        } catch (Throwable th) {
            if (queryCursor != null) {
                queryCursor.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long createContact(Context context, CydContent cydContent, TelemetryHost telemetryHost) {
        if (cydContent == null || cydContent.contact == null || cydContent.aNumbers == null || cydContent.aNumbers.isEmpty()) {
            Log.w("libcyd.app", "CydContent has no contact, or contact has no anumber. ignoring.");
            return -1L;
        } else if (!hasContactPermission(context)) {
            Log.w("libcyd.app", "Bundle exists but cyd does not have contact permission.");
            telemetryHost.putTelemetryEvent(new TelemetryEvent(cydContent.metadata.tid, cydContent.metadata.ctid, 52, 16));
            return -1L;
        } else {
            ArrayList arrayList = new ArrayList();
            CYDContact cYDContact = cydContent.contact;
            String str = cYDContact.givenName;
            String str2 = cYDContact.note;
            String str3 = cYDContact.varMessage;
            byte[] decode = Base64.decode(cYDContact.imageData.getBytes(), 0);
            ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
            arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.RawContacts.CONTENT_URI).withValue("account_type", null).withValue("account_name", null).build());
            arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/name").withValue("data1", str).build());
            for (String str4 : cydContent.aNumbers) {
                if (contactExists(context, str4)) {
                    Log.d("libcyd.app", "Contact already exists for this anumber. ignoring.");
                } else {
                    arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/phone_v2").withValue("data1", str4).withValue("data2", 2).build());
                    arrayList.add(str4);
                }
            }
            arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/note").withValue("data1", str3).build());
            arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data1", str3).withValue("mimetype", "vnd.android.cursor.item/organization").withValue("data2", 0).build());
            arrayList2.add(ContentProviderOperation.newInsert(ContactsContract.Data.CONTENT_URI).withValueBackReference("raw_contact_id", 0).withValue("mimetype", "vnd.android.cursor.item/photo").withValue("data15", decode).build());
            if (arrayList.isEmpty()) {
                Log.i("libcyd.app", "Unable to create contact. reason: contact already exists for all anumbers in bundle");
                telemetryHost.putTelemetryEvent(new TelemetryEvent(cydContent.metadata.tid, cydContent.metadata.ctid, 52, 17));
                return -1L;
            }
            try {
                ContentProviderResult[] applyBatch = context.getApplicationContext().getContentResolver().applyBatch("com.android.contacts", arrayList2);
                telemetryHost.putTelemetryEvent(new TelemetryEvent(cydContent.metadata.tid, cydContent.metadata.ctid, 52, 15));
                return ContentUris.parseId(applyBatch[0].uri);
            } catch (Exception e) {
                Log.e("libcyd.app", "Unable to create contact", e);
                telemetryHost.putTelemetryEvent(new TelemetryEvent(cydContent.metadata.tid, cydContent.metadata.ctid, 52, 18, Globals.convertExceptionToString(e)));
                return -1L;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean deleteContact(Context context, long j) {
        Log.d("libcyd.app", "Deleting contact");
        boolean z = false;
        try {
            if (context.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.RawContacts.CONTENT_URI, String.valueOf(j)), null, null) > 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    static boolean deleteContact(Context context, String str, TelemetryHost telemetryHost, String str2) {
        Throwable th;
        boolean z;
        Exception e;
        if (!hasContactPermission(context)) {
            Log.w("libcyd.app", "Ignore contact removal. Cause: no contact permission.");
            return false;
        } else if (!contactExists(context, str)) {
            Log.i("libcyd.app", "Ignore contact removal. Cause: contact not found.");
            return false;
        } else {
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    cursor2 = getQueryCursor(context, ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str, new String[]{"_id", "number", "display_name", "lookup", "contact_id"});
                    boolean z2 = false;
                    if (cursor2 != null) {
                        z2 = false;
                        try {
                            if (cursor2.moveToFirst()) {
                                do {
                                    context.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, cursor2.getString(cursor2.getColumnIndex("lookup"))), null, null);
                                } while (cursor2.moveToNext());
                                z2 = true;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            cursor = cursor2;
                            cursor2 = cursor;
                            Log.e("libcyd.app", "Unable to delete contact", e);
                            z = false;
                            if (cursor != null) {
                                cursor.close();
                                z = false;
                            }
                            return z;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                    z = z2;
                    if (cursor2 != null) {
                        cursor2.close();
                        z = z2;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
                return z;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private static Cursor getQueryCursor(Context context, Uri uri, String str, String[] strArr) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("number");
        } else {
            return context.getContentResolver().query(Uri.withAppendedPath(uri, Uri.encode(str)), strArr, null, null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean hasContactPermission(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Context applicationContext = context.getApplicationContext();
        boolean z = ContextCompat.checkSelfPermission(applicationContext, "android.permission.READ_CONTACTS") == 0;
        boolean z2 = ContextCompat.checkSelfPermission(applicationContext, "android.permission.WRITE_CONTACTS") == 0;
        boolean z3 = false;
        if (z) {
            z3 = false;
            if (z2) {
                z3 = true;
            }
        }
        return z3;
    }
}
