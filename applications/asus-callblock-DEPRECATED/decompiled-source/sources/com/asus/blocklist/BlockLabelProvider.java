package com.asus.blocklist;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.android.contacts.activities.ContactDetailCallogActivity;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/blocklist/BlockLabelProvider.class */
public class BlockLabelProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (str.equalsIgnoreCase("getBlockLabel")) {
            String string = bundle.getString("number");
            String string2 = bundle.getString("tag_type");
            bundle2.putInt("result", f.a(getContext(), string, bundle.getInt(ContactDetailCallogActivity.EXTRA_CONTACT_ID), string2, bundle.getInt("caller")));
        } else if (str.equalsIgnoreCase("addBlockTag")) {
            f.a(getContext(), bundle.getString("tag_name"));
        } else if (str.equalsIgnoreCase("removeBlockTag")) {
            f.b(getContext(), bundle.getString("tag_name"));
        } else if (str.equalsIgnoreCase("getAllBlockTag")) {
            bundle2.putStringArrayList("result", new ArrayList<>(f.a(getContext())));
        } else if (str.equalsIgnoreCase("isUserTagNumber")) {
            bundle2.putBoolean("result", f.c(getContext(), bundle.getString("number")));
        } else if (str.equalsIgnoreCase("removeFromUserTagList")) {
            f.d(getContext(), bundle.getString("number"));
        } else if (str.equalsIgnoreCase("insertIntoUserTagList")) {
            f.e(getContext(), bundle.getString("number"));
        } else {
            throw new IllegalStateException("Unknown Method: " + str);
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
