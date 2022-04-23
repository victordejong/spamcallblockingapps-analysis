package com.android.contacts;

import android.content.Context;
import android.content.CursorLoader;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.d;
import com.android.contacts.group.f;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/s.class */
public final class s extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    private final long f2125a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/s$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f2126a = {ContactDetailCallogActivity.EXTRA_CONTACT_ID, PhotoSelectionActivity.PHOTO_URI, "lookup", "display_name", "contact_presence", "contact_status", "starred", "has_phone_number", "photo_id", "data14"};
    }

    private s(Context context, long j, String[] strArr) {
        super(context);
        this.f2125a = j;
        setUri(ContactsContract.Data.CONTENT_URI.buildUpon().appendQueryParameter("directory", "0").build());
        setProjection(strArr);
        setSelection("mimetype=? AND data1=?");
        ArrayList arrayList = new ArrayList();
        arrayList.add("vnd.android.cursor.item/group_membership");
        arrayList.add(String.valueOf(this.f2125a));
        setSelectionArgs((String[]) arrayList.toArray(new String[0]));
        setSortOrder(f.c());
    }

    public static s a(Context context, long j) {
        return new s(context, j, d.c.f799a);
    }

    public static s b(Context context, long j) {
        return new s(context, j, a.f2126a);
    }
}
