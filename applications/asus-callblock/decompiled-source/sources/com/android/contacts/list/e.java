package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.b;
import com.android.contacts.group.f;
import com.android.contacts.k;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.d;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.util.AccountFilterUtil;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SpeedDialList;
import com.android.contacts.widget.c;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/e.class */
public final class e extends d {
    String d = null;
    String e = null;
    final List<Long> f = new ArrayList();
    public Map<Uri, Integer> g = new LinkedHashMap();
    String h;
    private Context i;

    public e(Context context) {
        super(context);
        this.Y = true;
        this.X = true;
        this.W = 1;
        this.x = 0;
        this.i = context;
    }

    private String c() {
        int size = this.f.size();
        String str = BuildConfig.FLAVOR;
        if (size != 0) {
            String str2 = "(_id NOT IN (";
            int i = 0;
            while (i < size) {
                str2 = i == size - 1 ? str2.concat(String.valueOf(this.f.get(i) + ") ")) : str2.concat(String.valueOf(this.f.get(i) + ", "));
                i++;
            }
            str = str2.concat(")");
        }
        return str;
    }

    private String f() {
        String str = BuildConfig.FLAVOR;
        List<AccountWithDataSet> a2 = a.a(this.i).a(true);
        boolean IsAsusDevice = PhoneCapabilityTester.IsAsusDevice();
        int size = a2.size();
        for (int i = 0; i < size; i++) {
            if (!(IsAsusDevice ? b.a.c.equals(a2.get(i).name) : b.a.d.equals(a2.get(i).type))) {
                str = str + "'" + a2.get(i).type + "', ";
            }
        }
        return str.substring(0, str.lastIndexOf(", "));
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    protected final View a(Context context, int i, ViewGroup viewGroup) {
        return LayoutInflater.from(this.f407a).inflate(2131427533, viewGroup, false);
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        Uri build;
        String str;
        String str2;
        String str3 = this.u;
        cursorLoader.setProjection(this.n == 1 ? d.a.a() : d.a.b());
        if (!TextUtils.isEmpty(str3)) {
            Uri build2 = !PhoneCapabilityTester.IsAsusDevice() ? ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon().appendEncodedPath(Uri.encode(str3)).appendQueryParameter("directory", "0").build() : a(ContactsContract.Contacts.CONTENT_FILTER_URI).buildUpon().appendEncodedPath(Uri.encode(str3)).appendQueryParameter("directory", "0").build();
            this.X = false;
            build = build2;
            str = BuildConfig.FLAVOR;
            if (PhoneCapabilityTester.IsAsusDevice()) {
                build = build2;
                str = BuildConfig.FLAVOR;
                if (Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
                    str = BuildConfig.FLAVOR + "display_name LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str3) + "%' DESC, display_name_alt LIKE '" + AccountFilterUtil.handleSqliteEscapeForOrderString(str3) + "%' DESC, times_contacted DESC, phonebook_bucket, ";
                    build = build2;
                }
            }
        } else {
            build = a(ContactsContract.Contacts.CONTENT_URI).buildUpon().appendQueryParameter("directory", "0").build();
            this.X = true;
            str = BuildConfig.FLAVOR;
        }
        cursorLoader.setUri(build);
        String c = c();
        String str4 = c;
        if (!c.equals(BuildConfig.FLAVOR)) {
            str4 = c + " AND ";
        }
        String str5 = str4 + "(_id IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL   ) AS combineTable ";
        if (PhoneCapabilityTester.IsAsusDevice()) {
            StringBuilder append = new StringBuilder().append(str5).append("WHERE combineTable.account_type IN (").append(f()).append("))");
            String str6 = this.h;
            String str7 = BuildConfig.FLAVOR;
            if (f.a(str6)) {
                str7 = BuildConfig.FLAVOR + " AND (_id IN (SELECT _id FROM contacts WHERE has_phone_number=1 ))";
            }
            str2 = append.append(str7).append(")").toString();
        } else {
            str2 = str5 + (" WHERE combineTable.account_type ='" + this.e + "' AND combineTable.account_name ='" + this.d + "'))");
        }
        if (!str2.equals(BuildConfig.FLAVOR)) {
            cursorLoader.setSelection(str2);
        }
        cursorLoader.setSortOrder((!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? this.o == 1 ? str + "sort_key" : str + "sort_key_alt" : str + "display_name");
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a
    protected final void a(View view, int i, Cursor cursor) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        int i3;
        int i4 = i2 + 1;
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setPhotoPosition(ContactListItemView.a.LEFT);
        contactListItemView.setHighlightedPrefix(this.v);
        if (this.X) {
            c.a o = o(i2);
            if (i2 == 0 && cursor.getInt(5) == 1) {
                contactListItemView.setCountView(this.C);
            } else {
                contactListItemView.setCountView(null);
            }
            contactListItemView.setSectionHeader(o.d);
            contactListItemView.setDividerVisible(!o.c);
        } else {
            contactListItemView.setSectionHeader(null);
            contactListItemView.setDividerVisible(i2 != cursor.getCount() - 1);
            contactListItemView.setCountView(null);
        }
        if (!l(i)) {
            contactListItemView.a(false, true);
        } else {
            long j = !cursor.isNull(2) ? cursor.getLong(2) : 0L;
            contactListItemView.c().setTag(contactListItemView.getTag());
            if (j != 0) {
                this.t.a(contactListItemView.c(), j, false, (k.d) null);
            } else {
                String string = cursor.getString(3);
                Uri parse = string == null ? null : Uri.parse(string);
                boolean isNull = cursor.getColumnIndex(SpeedDialList.Columns.ISSIM) >= 0 ? cursor.isNull(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM)) : true;
                if (parse == null && !isNull && (i3 = cursor.getInt(cursor.getColumnIndex(SpeedDialList.Columns.ISSIM))) > 0) {
                    parse = Uri.parse("content://sim/" + i3);
                }
                this.t.a(contactListItemView.c(), parse, contactListItemView.c().getWidth(), false, true, parse == null ? d.a(cursor, 1, 4) : null);
            }
        }
        contactListItemView.a(cursor, 1);
        contactListItemView.f();
        if (this.g.get(j(i4)) == null || this.g.get(j(i4)).intValue() != 1) {
            contactListItemView.setCheckBox(false);
        } else {
            contactListItemView.setCheckBox(true);
        }
    }

    @Override // com.android.contacts.list.o
    public final void a(boolean z) {
        super.a(true);
    }

    @Override // com.android.contacts.list.d
    public final Uri b(int i, Cursor cursor) {
        return ContactsContract.Contacts.getLookupUri(cursor.getLong(0), cursor.getString(4));
    }

    @Override // com.android.contacts.list.o
    protected final void b() {
        a(false, true);
        a(d());
    }

    @Override // com.android.contacts.list.o, com.android.a.b.a, android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return super.getViewTypeCount() + 1;
    }
}
