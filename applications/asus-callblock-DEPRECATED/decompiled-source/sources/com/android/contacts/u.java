package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.AsusGlobalGroupEditorActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.vcard.SelectAccountActivity;
/* loaded from: classes-dex2jar.jar:com/android/contacts/u.class */
public final class u extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f2174a;

    static {
        f2174a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "auto_add", "favorites", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "deleted", "system_id", "group_ringtone"} : new String[]{SelectAccountActivity.ACCOUNT_NAME, SelectAccountActivity.ACCOUNT_TYPE, SelectAccountActivity.DATA_SET, "_id", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.TITLE, "auto_add", "favorites", AsusGlobalGroupEditorActivity.AsusGlobalGroupsColumns.IS_READ_ONLY, "deleted", "system_id"};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Context context, Uri uri) {
        super(context, uri, f2174a, "account_type NOT NULL AND account_name NOT NULL AND deleted != 1", null, null);
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null");
        } else if (!uri.toString().startsWith(ContactsContract.Groups.CONTENT_URI.toString())) {
            throw new IllegalArgumentException("Invalid group Uri: " + uri);
        }
    }
}
