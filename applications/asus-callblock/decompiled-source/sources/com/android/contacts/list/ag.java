package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v4.view.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.b;
import com.android.contacts.ezmode.EzContactListItemView;
import com.android.contacts.ezmode.h;
import com.android.contacts.k;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ag.class */
public final class ag extends g {
    long S;
    private g Z;
    private boolean aa;
    private Context ab;
    private boolean ac;
    private int ad;
    private String af;
    int R = 100;
    public int T = 0;
    private ArrayList<String> ae = new ArrayList<>();

    public ag(Context context, boolean z, int i, long j) {
        super(context);
        this.Z = null;
        this.S = v.m;
        this.ac = false;
        this.ad = -1;
        this.Z = new g(context);
        this.Z.t = k.a(context);
        this.Z.Y = true;
        this.Z.X = true;
        this.Z.W = 1;
        this.Z.x = 0;
        ContactsPreferences contactsPreferences = new ContactsPreferences(context);
        this.Z.n = contactsPreferences.getDisplayOrder();
        this.Z.o = contactsPreferences.getSortOrder();
        this.aa = h.a(context);
        this.ab = context;
        this.ac = z;
        this.ad = i;
        this.S = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x025d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a(long r8) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ag.a(long):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x01a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void g() {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.list.ag.g():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.g, com.android.contacts.list.q, com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        EzContactListItemView ezContactListItemView;
        if (this.aa) {
            EzContactListItemView ezContactListItemView2 = new EzContactListItemView(context, false);
            ezContactListItemView2.setUnknownNameText(this.N);
            ezContactListItemView2.setQuickContactEnabled(this.q);
            ezContactListItemView = ezContactListItemView2;
        } else {
            ezContactListItemView = super.a(context, i, cursor, i2, viewGroup);
        }
        return ezContactListItemView;
    }

    @Override // com.android.contacts.list.g, com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        Uri.Builder buildUpon;
        String str = this.u;
        if (!TextUtils.isEmpty(str)) {
            buildUpon = ContactsContract.Contacts.CONTENT_FILTER_URI.buildUpon();
            buildUpon.appendEncodedPath(Uri.encode(str)).appendQueryParameter("directory", "0");
            this.X = false;
        } else {
            buildUpon = a(ContactsContract.Contacts.CONTENT_URI).buildUpon();
            buildUpon.appendQueryParameter("directory", "0");
            this.X = true;
            ContactListFilter contactListFilter = this.B;
            if (contactListFilter != null && j == 0) {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                switch (contactListFilter.f1712a) {
                    case -5:
                    case p.POSITION_NONE /* -2 */:
                    case p.POSITION_UNCHANGED /* -1 */:
                        break;
                    case -4:
                    default:
                        Log.w("ContactsWidgetPickerAdapter", "Unsupported filter type came (type: " + contactListFilter.f1712a + ", toString: " + contactListFilter + ") showing all contacts.");
                        break;
                    case -3:
                        sb.append("in_visible_group=1");
                        sb.append(" AND has_phone_number=1");
                        break;
                    case 0:
                        contactListFilter.a(buildUpon);
                        break;
                }
                cursorLoader.setSelection(sb.toString());
                cursorLoader.setSelectionArgs((String[]) arrayList.toArray(new String[0]));
            }
        }
        cursorLoader.setProjection(d(false));
        cursorLoader.setUri(buildUpon.build());
        cursorLoader.getSelection();
        g();
        String a2 = this.S != ((long) v.m) ? a(this.S) : this.af;
        String str2 = a2;
        if (!PhoneCapabilityTester.IsAsusDevice()) {
            str2 = a2 + (" AND (_id NOT IN (SELECT DISTINCT contact_id FROM ( SELECT * FROM ( SELECT contact_id, account_id FROM raw_contacts ) raw_contacts_table  LEFT JOIN accounts on raw_contacts_table.account_id = accounts._id  WHERE accounts._id IS NOT NULL AND contact_id IS NOT NULL ) AS combineTable WHERE combineTable.account_type ='" + b.a.d + "'))");
        }
        if (str2 != null) {
            cursorLoader.setSelection(str2.toString());
        }
        if (PhoneCapabilityTester.IsAsusDevice() && Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) {
            cursorLoader.setSortOrder("display_name");
        } else if (this.o == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.g, com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        long b2 = b(cursor);
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.a().setTag(Long.valueOf(b2));
        switch (i) {
            case 0:
                Uri m = m(i2);
                contactListItemView.setSectionHeader(null);
                if (!this.aa) {
                    b(contactListItemView, i, cursor);
                }
                a(contactListItemView, cursor);
                contactListItemView.f();
                if (this.g.get(m) == null) {
                    this.g.put(m, 0);
                    contactListItemView.setCheckBox(false);
                }
                if (this.g.get(m).intValue() == 1) {
                    contactListItemView.setCheckBox(true);
                    return;
                } else {
                    contactListItemView.setCheckBox(false);
                    return;
                }
            case 1:
                Uri b3 = b(1, cursor);
                contactListItemView.setLabel(BuildConfig.FLAVOR);
                contactListItemView.setHighlightedPrefix(this.v);
                a(contactListItemView, i2, cursor);
                if (!this.aa) {
                    b(contactListItemView, i, cursor);
                }
                a(contactListItemView, cursor);
                contactListItemView.f();
                if (this.e.contains(b3)) {
                    contactListItemView.setCheckBox(true);
                } else {
                    contactListItemView.setCheckBox(false);
                }
                if (this.e.size() + this.T < this.R || this.e.contains(b3)) {
                    contactListItemView.f().setEnabled(true);
                    contactListItemView.setClickable(true);
                    contactListItemView.setEnabled(true);
                    contactListItemView.setOnClickListener(this.l);
                    contactListItemView.f().setOnClickListener(this.m);
                    return;
                }
                contactListItemView.f().setEnabled(false);
                contactListItemView.setClickable(false);
                contactListItemView.setEnabled(false);
                contactListItemView.setOnClickListener(null);
                contactListItemView.f().setOnClickListener(null);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q
    public final void a(ContactListItemView contactListItemView, Cursor cursor) {
        this.Z.a(contactListItemView, cursor);
    }

    @Override // com.android.contacts.list.o
    public final void a(String str) {
        super.a(str);
        this.Z.a(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q
    public final void b(ContactListItemView contactListItemView, int i, Cursor cursor) {
        this.Z.b(contactListItemView, 1, cursor);
    }

    @Override // com.android.contacts.list.o
    public final void b(boolean z) {
        super.b(z);
        this.Z.b(z);
    }
}
