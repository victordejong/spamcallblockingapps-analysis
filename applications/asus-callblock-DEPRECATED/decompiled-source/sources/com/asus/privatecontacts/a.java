package com.asus.privatecontacts;

import android.content.Context;
import android.content.CursorLoader;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.asus.privatecontacts.b.b;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/a.class */
public class a extends CursorLoader {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2987a = a.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private Context f2988b;

    public a(Context context, String str) {
        super(context);
        Uri uri;
        String str2;
        this.f2988b = context;
        if (str == null || TextUtils.isEmpty(str)) {
            uri = ContactsContract.Contacts.CONTENT_URI;
            str2 = "display_name ASC";
        } else {
            uri = ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon().appendEncodedPath(Uri.encode(str)).build();
            str2 = "display_name LIKE '" + b.a(str) + "%' ASC, display_name_alt LIKE '" + b.a(str) + "%' ASC, times_contacted ASC, phonebook_bucket";
        }
        setUri(uri);
        setProjection(null);
        setSelection("(_id IN ( SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id WHERE accounts._id IS NOT NULL ) AS combineTable WHERE combineTable.account_type IN (" + a(context) + ")) AND has_phone_number=1)");
        setSelectionArgs(null);
        setSortOrder(str2);
    }

    private static String a(Context context) {
        String str = BuildConfig.FLAVOR;
        List<AccountWithDataSet> a2 = com.android.contacts.model.a.a(context).a(true);
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            if (!b.a.c.equals(a2.get(i).name)) {
                str = str + "'" + a2.get(i).type + "', ";
            }
        }
        String substring = str.substring(0, str.lastIndexOf(", "));
        Log.d(f2987a, ">>> [ContactsToPrivateListLoader.getWritableAccountTypeStrings] accountTypes: " + substring);
        return substring;
    }
}
