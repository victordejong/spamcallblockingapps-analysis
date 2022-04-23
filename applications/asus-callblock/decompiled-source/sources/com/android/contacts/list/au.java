package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/au.class */
public final class au extends o {
    private static final String[] d = {"_id", "type", "label", "number", "display_name", "phonetic_name"};
    private CharSequence e;

    public au(Context context) {
        super(context);
        this.e = context.getText(17039374);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.e);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        cursorLoader.setUri(Contacts.Phones.CONTENT_URI);
        cursorLoader.setProjection(d);
        cursorLoader.setSortOrder("display_name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.a(cursor, 4);
        contactListItemView.b(cursor, 5);
        CharSequence charSequence = null;
        if (!cursor.isNull(1)) {
            charSequence = ContactsContract.CommonDataKinds.Phone.getTypeLabel(this.f407a.getResources(), cursor.getInt(1), cursor.getString(2));
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.a(cursor);
    }
}
