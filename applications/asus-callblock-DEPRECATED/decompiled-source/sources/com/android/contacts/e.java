package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/e.class */
public final class e extends CursorLoader {

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f1080b = {"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "global_group_ringtone", "system_id"};
    private static final String[] c = {"_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "global_group_ringtone", "system_id", "global_group_message_ringtone"};

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1079a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "asus_global_groups");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, Uri uri, boolean z) {
        super(context, uri, z ? c : f1080b, null, null, null);
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null");
        } else if (!uri.toString().startsWith(f1079a.toString())) {
            throw new IllegalArgumentException("Invalid group Uri: " + uri);
        }
    }
}
