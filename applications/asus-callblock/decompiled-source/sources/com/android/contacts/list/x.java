package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import com.android.contacts.k;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.widget.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/x.class */
public final class x extends g {
    an R;
    int S = Integer.MAX_VALUE;

    public x(Context context, long j) {
        super(context);
        this.R = null;
        this.R = new an(context, j);
        this.R.t = k.a(context);
        this.R.Y = true;
        this.R.X = true;
        this.R.W = 1;
        this.R.x = 3;
        ContactsPreferences contactsPreferences = new ContactsPreferences(context);
        this.R.n = contactsPreferences.getDisplayOrder();
        this.R.o = contactsPreferences.getSortOrder();
    }

    @Override // com.android.contacts.list.g, com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        this.R.a(cursorLoader, j);
    }

    @Override // com.android.contacts.list.g, com.android.contacts.list.o
    public final void a(Cursor cursor) {
        super.a(cursor);
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
                b(contactListItemView, i, cursor);
                contactListItemView.a(cursor, 5);
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
                Uri b3 = an.b(cursor);
                contactListItemView.setIsLabelAccount(true);
                contactListItemView.setHighlightedPrefix(this.v);
                a(contactListItemView, i2, cursor);
                b(contactListItemView, i, cursor);
                contactListItemView.a(cursor, 5);
                a(cursor, contactListItemView);
                contactListItemView.f();
                if (this.e.contains(b3)) {
                    contactListItemView.setCheckBox(true);
                } else {
                    contactListItemView.setCheckBox(false);
                }
                if (this.e.size() < this.S || this.e.contains(b3)) {
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
    public final void a(ContactListItemView contactListItemView, int i, Cursor cursor) {
        boolean z = true;
        boolean z2 = true;
        if (this.X) {
            c.a o = o(i);
            contactListItemView.setSectionHeader(o.d);
            contactListItemView.setCountView(null);
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
    @Override // com.android.contacts.list.q
    public final void a(ContactListItemView contactListItemView, Cursor cursor) {
        contactListItemView.a(cursor, 5);
    }

    @Override // com.android.contacts.list.o
    public final void a(String str) {
        super.a(str);
        this.R.a(str);
    }

    @Override // com.android.contacts.list.g, com.android.contacts.list.q
    public final Uri b(int i, Cursor cursor) {
        return an.b(cursor);
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
