package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/c.class */
public final class c extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f622a = {"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "summ_count", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "global_group_ringtone", "system_id"};

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f623b = {"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "summ_count", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "global_group_ringtone", "system_id", "global_group_message_ringtone"};
    private static final Uri c = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups");

    public c(Context context) {
        super(context, c, f622a, null, null, "title COLLATE LOCALIZED ASC");
    }

    public static Uri a() {
        return c;
    }
}
