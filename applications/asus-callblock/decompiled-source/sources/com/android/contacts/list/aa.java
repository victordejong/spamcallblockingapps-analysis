package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.ezmode.EzContactListItemView;
import com.android.contacts.ezmode.h;
import com.android.contacts.k;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/aa.class */
public final class aa extends g {
    bc R;
    int S = 30;
    private boolean T;

    public aa(Context context, long j) {
        super(context);
        this.R = null;
        this.R = new bc(context, true, j);
        this.R.t = k.a(context);
        this.R.Y = true;
        this.R.X = true;
        this.R.W = 1;
        this.R.x = 0;
        ContactsPreferences contactsPreferences = new ContactsPreferences(context);
        this.R.n = contactsPreferences.getDisplayOrder();
        this.R.o = contactsPreferences.getSortOrder();
        this.T = h.a(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.g, com.android.contacts.list.q, com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        EzContactListItemView ezContactListItemView;
        if (this.T) {
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
        this.R.a(cursorLoader, j);
    }

    @Override // com.android.contacts.list.g
    protected final void a(Cursor cursor, ContactListItemView contactListItemView) {
        this.R.a(contactListItemView, cursor);
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
                if (!this.T) {
                    b(contactListItemView, i, cursor);
                }
                contactListItemView.a(cursor, 7);
                contactListItemView.f();
                if (this.g.get(m) == null) {
                    this.g.put(m, 0);
                    contactListItemView.setCheckBox(false);
                }
                if (this.g.get(m).intValue() != 1) {
                    contactListItemView.setCheckBox(false);
                    break;
                } else {
                    contactListItemView.setCheckBox(true);
                    break;
                }
            case 1:
                Uri b3 = bc.b(cursor);
                contactListItemView.setIsLabelAccount(true);
                contactListItemView.setHighlightedPrefix(this.v);
                a(contactListItemView, i2, cursor);
                if (!this.T) {
                    b(contactListItemView, i, cursor);
                }
                contactListItemView.a(cursor, 7);
                a(cursor, contactListItemView);
                contactListItemView.f();
                if (this.e.contains(b3)) {
                    contactListItemView.setCheckBox(true);
                } else {
                    contactListItemView.setCheckBox(false);
                }
                if (this.e.size() >= this.S && !this.e.contains(b3)) {
                    contactListItemView.f().setEnabled(false);
                    contactListItemView.setClickable(false);
                    contactListItemView.setEnabled(false);
                    contactListItemView.setOnClickListener(null);
                    contactListItemView.f().setOnClickListener(null);
                    break;
                } else {
                    contactListItemView.f().setEnabled(true);
                    contactListItemView.setClickable(true);
                    contactListItemView.setEnabled(true);
                    contactListItemView.setOnClickListener(this.l);
                    contactListItemView.f().setOnClickListener(this.m);
                    break;
                }
                break;
        }
        if (!PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.IsUnbundled() && !cursor.isNull(4)) {
            a(contactListItemView, this.q, cursor.getLong(4));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q
    public final void a(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.a(cursor, 7);
    }

    @Override // com.android.contacts.list.o
    public final void a(String str) {
        super.a(str);
        this.R.a(str);
    }

    @Override // com.android.contacts.list.g, com.android.contacts.list.q
    public final Uri b(int i, Cursor cursor) {
        return bc.b(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.q
    public final void b(ContactListItemView contactListItemView, int i, Cursor cursor) {
        this.R.b(contactListItemView, cursor);
    }

    @Override // com.android.contacts.list.o
    public final void b(boolean z) {
        super.b(z);
        this.R.b(z);
    }
}
