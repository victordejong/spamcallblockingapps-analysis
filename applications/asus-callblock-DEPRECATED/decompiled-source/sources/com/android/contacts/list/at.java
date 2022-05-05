package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.provider.Contacts;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.m;
import com.android.contacts.n;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/at.class */
public final class at extends o {
    static final String[] d = {"_id", "display_name", "phonetic_name", "starred", "mode"};
    private CharSequence e;

    public at(Context context) {
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
        cursorLoader.setUri(Contacts.People.CONTENT_URI);
        cursorLoader.setProjection(d);
        cursorLoader.setSortOrder("display_name");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        Drawable drawable;
        String str = null;
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.a(cursor, 1);
        contactListItemView.b(cursor, 2);
        int i3 = 0;
        if (!cursor.isNull(4)) {
            i3 = cursor.getInt(4);
            drawable = m.a(contactListItemView.getContext(), i3);
        } else {
            drawable = null;
        }
        contactListItemView.setPresence(drawable);
        if (i3 != 0) {
            str = n.a(contactListItemView.getContext(), i3);
        }
        contactListItemView.setStatus(str);
    }
}
