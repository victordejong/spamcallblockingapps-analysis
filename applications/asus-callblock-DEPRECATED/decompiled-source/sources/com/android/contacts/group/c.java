package com.android.contacts.group;

import android.content.Context;
import android.content.CursorLoader;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.activities.PhotoSelectionActivity;
import com.android.contacts.util.CoverUtils;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/c.class */
public final class c extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1367a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private String f1368b = BuildConfig.FLAVOR;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/group/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final String[] f1369a = {"_id", "raw_contact_id", "display_name", "is_super_primary", "is_primary", CoverUtils.CoverData.COVER_URI, "mimetype", PhotoSelectionActivity.PHOTO_URI, CoverUtils.CoverData.COVER_TYPE, ContactDetailCallogActivity.EXTRA_CONTACT_ID};
    }

    public c(Context context, long[] jArr) {
        super(context);
        for (int i = 0; i < jArr.length; i++) {
            if (i == jArr.length - 1) {
                this.f1368b += String.valueOf(jArr[i]);
            } else {
                this.f1368b += String.valueOf(jArr[i]) + ",";
            }
        }
        setUri(ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
        setProjection(a.f1369a);
        StringBuilder sb = new StringBuilder();
        sb.append("mimetype=? AND contact_id IN (" + this.f1368b + ")");
        setSelection(sb.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add("vnd.android.cursor.item/phone_v2");
        setSelectionArgs((String[]) arrayList.toArray(new String[arrayList.size()]));
    }
}
