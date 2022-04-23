package com.android.contacts.list;

import android.content.ContentUris;
import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.activities.MultiSelecetDialogContactActivity;
import com.android.contacts.b;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ap.class */
public final class ap extends q {
    String d = "FavoriteListAdapter";
    public Map<Uri, Integer> e = new HashMap();
    private Context f;

    public ap(Context context) {
        super(context);
        this.f = null;
        this.f = context;
    }

    private void a(CursorLoader cursorLoader, long j, ContactListFilter contactListFilter) {
        if (contactListFilter != null && j == 0) {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = new ArrayList();
            switch (contactListFilter.f1712a) {
                case -7:
                    if (PhoneCapabilityTester.IsAsusDevice()) {
                        sb.append("isSim = 0");
                        break;
                    } else {
                        sb.append("(_id NOT IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL  AND contact_id IS NOT NULL ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "')) ");
                        break;
                    }
            }
            if (((MultiSelecetDialogContactActivity) this.f).isFromFavoriteEditActivity()) {
                long[] favoriteListToDisplay = ((MultiSelecetDialogContactActivity) this.f).getFavoriteListToDisplay();
                for (int i = 0; i < favoriteListToDisplay.length; i++) {
                    if (sb.length() > 0) {
                        sb.append(" AND _id != " + favoriteListToDisplay[i]);
                    } else {
                        sb.append("_id != " + favoriteListToDisplay[i]);
                    }
                }
                if (favoriteListToDisplay.length == 0 && !PhoneCapabilityTester.IsAsusDevice()) {
                    if (sb.length() > 0) {
                        sb.append(" AND starred != 1 ");
                    } else {
                        sb.append("starred != 1 ");
                    }
                }
            } else if (sb.length() > 0) {
                sb.append(" AND starred != 1 ");
            } else {
                sb.append("starred != 1 ");
            }
            cursorLoader.setSelection(sb.toString());
            cursorLoader.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
        }
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        String str;
        if (cursorLoader instanceof bg) {
            ((bg) cursorLoader).f1802a = this.r;
        }
        ContactListFilter contactListFilter = this.B;
        if (this.w) {
            String str2 = this.u;
            String str3 = str2;
            if (str2 == null) {
                str3 = BuildConfig.FLAVOR;
            }
            String trim = str3.trim();
            if (TextUtils.isEmpty(trim)) {
                cursorLoader.setUri(ContactsContract.Contacts.CONTENT_URI);
                cursorLoader.setProjection(d(false));
                str = BuildConfig.FLAVOR;
            } else {
                Uri.Builder buildUpon = ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon();
                buildUpon.appendPath(trim);
                buildUpon.appendQueryParameter("directory", String.valueOf(j));
                if (!(j == 0 || j == 1)) {
                    buildUpon.appendQueryParameter("limit", String.valueOf(this.y));
                }
                buildUpon.appendQueryParameter("deferred_snippeting", "1");
                cursorLoader.setUri(buildUpon.build());
                cursorLoader.setProjection(d(true));
                str = BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(trim) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(trim) + "%' DESC, times_contacted DESC, phonebook_bucket, ";
            }
        } else {
            Uri uri = ContactsContract.Contacts.CONTENT_URI;
            Uri uri2 = uri;
            if (contactListFilter != null) {
                uri2 = uri;
                if (contactListFilter.f1712a == -6) {
                    String str4 = this.P;
                    uri2 = str4 != null ? Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, str4) : ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, this.Q);
                }
            }
            Uri uri3 = uri2;
            if (j == 0) {
                uri3 = uri2;
                if (this.X) {
                    uri3 = a(uri2);
                }
            }
            Uri uri4 = uri3;
            if (contactListFilter != null) {
                uri4 = uri3;
                if (contactListFilter.f1712a != -3) {
                    uri4 = uri3;
                    if (contactListFilter.f1712a != -6) {
                        Uri.Builder buildUpon2 = uri3.buildUpon();
                        buildUpon2.appendQueryParameter("directory", "0");
                        if (contactListFilter.f1712a == 0) {
                            contactListFilter.a(buildUpon2);
                        }
                        uri4 = buildUpon2.build();
                    }
                }
            }
            cursorLoader.setUri(uri4);
            cursorLoader.setProjection(d(false));
            str = BuildConfig.FLAVOR;
        }
        a(cursorLoader, j, contactListFilter);
        cursorLoader.setSortOrder(this.o == 1 ? str + "sort_key" : str + "sort_key_alt");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final void a(View view, int i, Cursor cursor) {
        super.a(view, i, cursor);
        ((TextView) view.findViewById(2131296982)).setText(2131756081);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.setHighlightedPrefix(this.w ? this.v : null);
        if (this.A) {
            contactListItemView.setActivated(c(i, cursor));
        }
        a(contactListItemView, i2, cursor);
        if (this.q) {
            a(contactListItemView, i, cursor, 2, 3, 0, 4, 1);
        } else if (this.p) {
            b(contactListItemView, i, cursor);
        }
        a(contactListItemView, cursor);
        if (this.w) {
            b(contactListItemView, cursor);
        } else {
            contactListItemView.setSnippet(null);
        }
        cursor.moveToPosition(i2);
        contactListItemView.f();
        Uri withAppendedId = ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, cursor.getLong(0));
        if (this.e.get(withAppendedId) == null || this.e.get(withAppendedId).intValue() != 1) {
            contactListItemView.setCheckBox(false);
        } else {
            contactListItemView.setCheckBox(true);
        }
    }
}
