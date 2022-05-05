package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.util.CoverUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/be.class */
public final class be extends o {
    private final CharSequence d;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/be$a.class */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f1799a = {"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name"};

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f1800b = {"_id", CoverUtils.CoverData.COVER_TYPE, CoverUtils.CoverData.USER_SET, CoverUtils.CoverData.COVER_URI, "photo_id", "display_name_alt"};
    }

    public be(Context context) {
        super(context);
        this.d = context.getText(17039374);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        ContactListItemView contactListItemView = new ContactListItemView(context, (AttributeSet) null);
        contactListItemView.setUnknownNameText(this.d);
        contactListItemView.setQuickContactEnabled(this.q);
        return contactListItemView;
    }

    @Override // com.android.contacts.list.o
    public final void a(CursorLoader cursorLoader, long j) {
        Uri.Builder appendQueryParameter = ContactsContract.CommonDataKinds.StructuredPostal.CONTENT_URI.buildUpon().appendQueryParameter("remove_duplicate_entries", "true");
        if (this.X) {
            appendQueryParameter.appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true");
        }
        cursorLoader.setUri(appendQueryParameter.build());
        if (this.n == 1) {
            cursorLoader.setProjection(a.f1799a);
        } else {
            cursorLoader.setProjection(a.f1800b);
        }
        if (this.o == 1) {
            cursorLoader.setSortOrder("sort_key");
        } else {
            cursorLoader.setSortOrder("sort_key_alt");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        CharSequence charSequence;
        ContactListItemView contactListItemView = (ContactListItemView) view;
        contactListItemView.setTag(Integer.valueOf(i2 % 2));
        contactListItemView.setPhotoPosition(ContactListItemView.a.LEFT);
        int sectionForPosition = getSectionForPosition(i2);
        if (getPositionForSection(sectionForPosition) == i2) {
            contactListItemView.setSectionHeader((String) getSections()[sectionForPosition]);
        } else {
            contactListItemView.setDividerVisible(false);
            contactListItemView.setSectionHeader(null);
        }
        if (getPositionForSection(sectionForPosition + 1) - 1 == i2) {
            contactListItemView.setDividerVisible(false);
        } else {
            contactListItemView.setDividerVisible(true);
        }
        contactListItemView.a(cursor, 5);
        long j = 0;
        if (!cursor.isNull(4)) {
            j = cursor.getLong(4);
        }
        contactListItemView.c().setTag(contactListItemView.getTag());
        this.t.a(contactListItemView.c(), j, false);
        if (!cursor.isNull(1)) {
            charSequence = ContactsContract.CommonDataKinds.StructuredPostal.getTypeLabel(this.f407a.getResources(), cursor.getInt(1), cursor.getString(2));
        } else {
            charSequence = null;
        }
        contactListItemView.setLabel(charSequence);
        contactListItemView.a(cursor);
    }
}
