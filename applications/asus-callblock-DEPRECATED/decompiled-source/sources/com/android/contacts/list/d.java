package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/d.class */
public abstract class d extends o {
    private CharSequence d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1819a;

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f1820b;
        private static final String[] c;
        private static final String[] d;

        static {
            f1819a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile"};
            f1820b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile"};
            c = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet"};
            d = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", SpeedDialList.Columns.ISSIM} : new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet"};
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ String[] a() {
            return f1819a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ String[] b() {
            return f1820b;
        }
    }

    public d(Context context) {
        super(context);
        this.d = context.getText(2131755855);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Uri a(Uri uri) {
        return uri.buildUpon().appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.d);
        contactListItemView.setQuickContactEnabled(this.q);
        contactListItemView.setActivatedStateSupported(this.A);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final void a(int i, Cursor cursor) {
        boolean z = true;
        super.a(i, cursor);
        if (cursor != null && cursor.getCount() > 0) {
            cursor.moveToFirst();
            if (cursor.getInt(5) != 1) {
                z = false;
            }
            c(z);
        }
    }

    public Uri b(int i, Cursor cursor) {
        Uri lookupUri = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(4));
        long j = ((am) c(i)).f;
        if (j != 0) {
            lookupUri = lookupUri.buildUpon().appendQueryParameter("directory", String.valueOf(j)).build();
        }
        return lookupUri;
    }

    public final Uri j(int i) {
        int g = g(i);
        Cursor cursor = (Cursor) getItem(i);
        return cursor != null ? b(g, cursor) : null;
    }
}
