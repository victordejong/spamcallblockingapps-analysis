package com.telguarder.helpers.contact;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.facebook.internal.AnalyticsEvents;
import com.j256.ormlite.field.FieldType;
import com.telguarder.helpers.log.Logger;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/contact/ContactManager.class */
public class ContactManager {
    private static ContactManager mInstance;

    private ContactManager() {
    }

    private Cursor getContactCursor(Context context, String str) {
        Exception e;
        Cursor cursor = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                if (Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
                    return null;
                }
                cursor = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(ContactUtils.getE164NUmberIfPossible(context, str, null))), getPhoneLookupCursorProjection(), null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() == 0) {
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Logger.error(e.getMessage());
                        return cursor;
                    }
                }
                cursor = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(ContactUtils.getNationalNumberIfPossible(context, str, null))), getPhoneLookupCursorProjection(), null, null, null);
            } catch (Exception e3) {
                e = e3;
                cursor = null;
            }
        }
        return cursor;
    }

    private String[] getContactCursorProjection() {
        return new String[]{"contact_id", "display_name", "data1", "photo_thumb_uri"};
    }

    private String[] getEmailLookupCursorProjection() {
        return new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "display_name", "photo_id", "data1", "contact_id"};
    }

    public static ContactManager getInstance() {
        ContactManager contactManager;
        synchronized (ContactManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new ContactManager();
                }
                contactManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return contactManager;
    }

    private String[] getPhoneLookupCursorProjection() {
        return new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "display_name", "photo_thumb_uri", "number"};
    }

    private Cursor queryForAllContacts(Context context) {
        if (Build.VERSION.SDK_INT < 23 || context.checkSelfPermission("android.permission.READ_CONTACTS") == 0) {
            return context.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, getContactCursorProjection(), null, null, null);
        }
        return null;
    }

    /* JADX WARN: Finally extract failed */
    public boolean contactExists(Context context, String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
            return false;
        }
        Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "number", "display_name"}, null, null, null);
        if (query == null) {
            return false;
        }
        try {
            if (query.moveToFirst()) {
                query.close();
                return true;
            }
            query.close();
            return false;
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    public Contact getContactByEmailAddress(Context context, String str) {
        Contact contact = null;
        if (!TextUtils.isEmpty(str)) {
            if (Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_CONTACTS") != 0) {
                return null;
            }
            Cursor query = context.getContentResolver().query(ContactsContract.CommonDataKinds.Email.CONTENT_URI, getEmailLookupCursorProjection(), "data1 = '" + str + "'", null, null);
            contact = null;
            if (query != null) {
                Contact contact2 = null;
                if (query.getCount() > 0) {
                    query.moveToNext();
                    contact2 = Contact.contactOfEmailLookup(query);
                }
                query.close();
                contact = contact2;
            }
        }
        return contact;
    }

    public Contact getContactByName(Context context, String str) {
        Contact contact;
        Contact contact2 = null;
        try {
        } catch (Exception e) {
            Logger.error(e.getMessage());
            contact = contact2;
        }
        if (Build.VERSION.SDK_INT < 23 || context.checkSelfPermission("android.permission.READ_CONTACTS") == 0) {
            Uri uri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
            ContentResolver contentResolver = context.getContentResolver();
            StringBuilder sb = new StringBuilder();
            sb.append("display_name LIKE '");
            sb.append(str);
            sb.append("'");
            Cursor query = contentResolver.query(uri, new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "display_name", "data1"}, sb.toString(), null, null);
            contact = null;
            if (query != null) {
                contact = null;
                if (query.getCount() > 0) {
                    query.moveToNext();
                    contact = Contact.contactOfDisplayNameLookup(query);
                }
                contact2 = contact;
                query.close();
            }
            return contact;
        }
        return null;
    }

    public Contact getContactByPhoneNumber(Context context, String str) {
        Contact contact = null;
        if (!TextUtils.isEmpty(str)) {
            contact = null;
            try {
                Cursor contactCursor = getContactCursor(context, str);
                contact = null;
                if (contactCursor != null) {
                    Contact contact2 = null;
                    if (contactCursor.getCount() > 0) {
                        contactCursor.moveToNext();
                        contact2 = Contact.contactOfPhoneLookup(contactCursor);
                    }
                    contact = contact2;
                    contactCursor.close();
                    contact = contact2;
                }
            } catch (Exception e) {
                Logger.error(e.getMessage());
            }
        }
        return contact;
    }

    public Uri getThumbnailUriIfContactHasPhoto(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.parseLong(str)), AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO);
    }

    public boolean isPhonenumberInContactList(Context context, String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            boolean z2 = false;
            try {
                Cursor contactCursor = getContactCursor(context, str);
                z = false;
                if (contactCursor != null) {
                    z = false;
                    if (contactCursor.getCount() > 0) {
                        z = true;
                    }
                    z2 = z;
                    contactCursor.close();
                }
            } catch (Exception e) {
                Logger.error(e.getMessage());
                z = z2;
            }
        }
        return z;
    }
}
