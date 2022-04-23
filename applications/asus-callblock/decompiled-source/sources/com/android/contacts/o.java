package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f2037a;

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f2038b;
    private static final String[] c;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/o$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f2039a;

        static {
            f2039a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number", SpeedDialList.Columns.ISSIM} : new String[]{"_id", PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number"};
        }
    }

    static {
        f2037a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", "contact_presence", "contact_status", SpeedDialList.Columns.ISSIM, "has_phone_number"} : new String[]{"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", "contact_presence", "contact_status", "has_phone_number"};
        c = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET};
        f2038b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", "contact_presence", "contact_status", "has_phone_number", "data14", SpeedDialList.Columns.ISSIM} : new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID, "display_name", "starred", PhotoSelectionActivity.PHOTO_URI, "lookup", "contact_presence", "contact_status", "has_phone_number", "data14"};
    }

    public static CursorLoader a(Context context) {
        return new CursorLoader(context, ContactsContract.Contacts.CONTENT_STREQUENT_URI, f2037a, null, null, null);
    }

    public static CursorLoader b(Context context) {
        return new CursorLoader(context, ContactsContract.Contacts.CONTENT_STREQUENT_URI.buildUpon().appendQueryParameter("strequent_phone_only", "true").build(), c, null, null, null);
    }

    public static CursorLoader c(Context context) {
        return new CursorLoader(context, ContactsContract.Contacts.CONTENT_URI, f2037a, "starred=?", new String[]{"1"}, " (CASE WHEN order_favorite = 0 THEN 1 ELSE 0 END), order_favorite ASC , display_name ASC");
    }

    public static CursorLoader d(Context context) {
        return new CursorLoader(context, ContactsContract.Contacts.CONTENT_FREQUENT_URI, f2037a, "starred=?", new String[]{"0"}, null);
    }

    public static CursorLoader e(Context context) {
        return new CursorLoader(context, ContactsContract.Contacts.CONTENT_URI, a.f2039a, "starred=?", new String[]{"1"}, " (CASE WHEN order_favorite = 0 THEN 1 ELSE 0 END), order_favorite ASC , display_name ASC");
    }
}
