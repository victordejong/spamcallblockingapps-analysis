package com.android.contacts.list;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.k;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SearchUtil;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.widget.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/q.class */
public abstract class q extends o {
    protected CharSequence N;
    long O;
    String P;
    long Q;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/q$a.class */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1873a;

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f1874b;
        private static final String[] c;
        private static final String[] d;

        static {
            f1873a = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", SpeedDialList.Columns.ISSIM, "starred", "has_phone_number"} : new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "starred", "has_phone_number"};
            f1874b = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", SpeedDialList.Columns.ISSIM, "starred", "has_phone_number"} : new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "starred", "has_phone_number"};
            c = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", SpeedDialList.Columns.ISSIM, "starred", "has_phone_number"} : new String[]{"_id", "display_name", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", "starred", "has_phone_number"};
            d = PhoneCapabilityTester.IsAsusDevice() ? new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", SpeedDialList.Columns.ISSIM, "starred", "has_phone_number"} : new String[]{"_id", "display_name_alt", "photo_id", "photo_thumb_uri", "lookup", "is_user_profile", "snippet", "starred", "has_phone_number"};
        }
    }

    public q(Context context) {
        super(context);
        this.N = context.getText(2131755855);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Uri a(Uri uri) {
        return uri.buildUpon().appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void b(ContactListItemView contactListItemView, Cursor cursor) {
        String str;
        int indexOf;
        if (cursor.getColumnCount() <= 6 || !"snippet".equals(cursor.getColumnName(6))) {
            contactListItemView.setSnippet(null);
            return;
        }
        String string = cursor.getString(6);
        Bundle extras = cursor.getExtras();
        if (extras.getBoolean("deferred_snippeting")) {
            String string2 = extras.getString("deferred_snippeting_query");
            int columnIndex = cursor.getColumnIndex("display_name");
            String string3 = columnIndex >= 0 ? cursor.getString(columnIndex) : null;
            str = null;
            if (!TextUtils.isEmpty(string)) {
                if (TextUtils.isEmpty(string2)) {
                    str = null;
                } else {
                    String cleanStartAndEndOfSearchQuery = SearchUtil.cleanStartAndEndOfSearchQuery(string2.toLowerCase());
                    if (!TextUtils.isEmpty(string3)) {
                        for (String str2 : ContactListItemView.a(string3.toLowerCase())) {
                            str = null;
                            if (str2.startsWith(cleanStartAndEndOfSearchQuery)) {
                                break;
                            }
                        }
                    }
                    SearchUtil.MatchedLine findMatchingLine = SearchUtil.findMatchingLine(string, cleanStartAndEndOfSearchQuery);
                    if (findMatchingLine == null || findMatchingLine.line == null) {
                        SearchUtil.MatchedLine findMatchingLine2 = SearchUtil.findMatchingLine2(string, cleanStartAndEndOfSearchQuery);
                        str = null;
                        if (findMatchingLine2 != null) {
                            str = null;
                            if (findMatchingLine2.line != null) {
                                int integer = contactListItemView.getResources().getInteger(2131361827);
                                str = findMatchingLine2.line.length() > integer ? ContactListItemView.a(findMatchingLine2.line, findMatchingLine2.startIndex, integer) : findMatchingLine2.line;
                            }
                        }
                    } else {
                        int integer2 = contactListItemView.getResources().getInteger(2131361827);
                        str = findMatchingLine.line.length() > integer2 ? ContactListItemView.a(findMatchingLine.line, findMatchingLine.startIndex, integer2) : findMatchingLine.line;
                    }
                }
            }
        } else if (string != null) {
            int i = 0;
            int length = string.length();
            int indexOf2 = string.indexOf(1);
            str = null;
            if (indexOf2 != -1) {
                int lastIndexOf = string.lastIndexOf(10, indexOf2);
                if (lastIndexOf != -1) {
                    i = lastIndexOf + 1;
                }
                int lastIndexOf2 = string.lastIndexOf(1);
                if (!(lastIndexOf2 == -1 || (indexOf = string.indexOf(10, lastIndexOf2)) == -1)) {
                    length = indexOf;
                }
                StringBuilder sb = new StringBuilder();
                while (i < length) {
                    char charAt = string.charAt(i);
                    if (!(charAt == 1 || charAt == 1)) {
                        sb.append(charAt);
                    }
                    i++;
                }
                str = sb.toString();
            }
        } else {
            str = string;
        }
        contactListItemView.setSnippet(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.N);
        contactListItemView.setQuickContactEnabled(this.q);
        contactListItemView.setActivatedStateSupported(this.A);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    public final void a(int i, Cursor cursor) {
        boolean z = true;
        super.a(i, cursor);
        if (cursor != null && cursor.getColumnCount() > 5) {
            if (cursor.moveToFirst()) {
                if (cursor.getInt(5) != 1) {
                    z = false;
                }
                c(z);
                return;
            }
            c(false);
        }
    }

    public final void a(long j, String str, long j2) {
        this.O = j;
        this.P = str;
        this.Q = j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ContactListItemView contactListItemView, int i, Cursor cursor) {
        boolean z = true;
        boolean z2 = true;
        if (this.X) {
            c.a o = o(i);
            contactListItemView.setSectionHeader(o.d);
            int columnIndex = cursor.getColumnIndex("is_user_profile");
            boolean z3 = columnIndex >= 0 ? cursor.getInt(columnIndex) == 1 : false;
            if (i != 0 || !z3) {
                contactListItemView.setCountView(null);
            } else {
                contactListItemView.setCountView(this.C);
            }
            if (o.c) {
                z2 = false;
            }
            contactListItemView.setDividerVisible(z2);
            return;
        }
        contactListItemView.setSectionHeader(null);
        if (i == cursor.getCount() - 1) {
            z = false;
        }
        contactListItemView.setDividerVisible(z);
        contactListItemView.setCountView(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.a(cursor, 1);
    }

    public Uri b(int i, Cursor cursor) {
        Uri uri;
        if (cursor == null || cursor.isClosed()) {
            uri = null;
        } else {
            uri = ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(4));
            long j = ((am) c(i)).f;
            if (j != 0) {
                uri = uri.buildUpon().appendQueryParameter("directory", String.valueOf(j)).build();
            }
        }
        return uri;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(ContactListItemView contactListItemView, int i, Cursor cursor) {
        k.d dVar = null;
        if (!l(i)) {
            contactListItemView.a(false, true);
            return;
        }
        long j = !cursor.isNull(2) ? cursor.getLong(2) : 0L;
        contactListItemView.c().setTag(contactListItemView.getTag());
        if (j != 0) {
            this.t.a(contactListItemView.c(), j, false, (k.d) null);
            return;
        }
        String string = cursor.getString(3);
        Uri parse = string == null ? null : Uri.parse(string);
        boolean isNull = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM) >= 0 ? cursor.isNull(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)) : true;
        Uri uri = parse;
        if (parse == null) {
            uri = parse;
            if (!isNull) {
                int i2 = cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM));
                uri = parse;
                if (i2 > 0) {
                    uri = Uri.parse("content://sim/" + i2);
                }
            }
        }
        if (uri == null) {
            dVar = a(cursor, 1, 4);
        }
        this.t.a(contactListItemView.c(), uri, dVar);
    }

    public final boolean c(int i, Cursor cursor) {
        boolean z;
        long j = ((am) c(i)).f;
        if (this.O != j) {
            z = false;
        } else {
            String str = this.P;
            z = (str == null || !TextUtils.equals(str, cursor.getString(4))) ? (j == 0 || j == 1 || this.Q != cursor.getLong(0)) ? false : true : true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String[] d(boolean z) {
        int i = this.n;
        return z ? i == 1 ? a.c : a.d : i == 1 ? a.f1873a : a.f1874b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean f() {
        return PreferenceManager.getDefaultSharedPreferences(this.f407a).getBoolean(ContactsPreferences.PREF_DISPLAY_ONLY_PHONES, false);
    }

    public final Uri m(int i) {
        int g = g(i);
        Cursor cursor = (Cursor) getItem(i);
        return cursor != null ? b(g, cursor) : null;
    }

    public final long n(int i) {
        Cursor cursor = (Cursor) getItem(i);
        return cursor != null ? cursor.getLong(0) : 0L;
    }
}
