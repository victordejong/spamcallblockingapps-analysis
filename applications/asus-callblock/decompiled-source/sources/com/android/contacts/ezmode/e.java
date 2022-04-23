package com.android.contacts.ezmode;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.list.ContactListItemView;
import com.android.contacts.list.bc;
import com.android.contacts.util.PhoneCapabilityTester;
/* loaded from: classes-dex2jar.jar:com/android/contacts/ezmode/e.class */
public final class e extends bc {
    boolean d = true;

    public e(Context context) {
        super(context, false, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.bc, com.android.a.b.a
    public final View a(Context context, int i, Cursor cursor, int i2, ViewGroup viewGroup) {
        EzContactListItemView ezContactListItemView = new EzContactListItemView(context, true);
        ezContactListItemView.setUnknownNameText(this.f);
        ezContactListItemView.setQuickContactEnabled(this.q);
        ezContactListItemView.setPhotoPosition(ContactListItemView.a.LEFT);
        return ezContactListItemView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.bc, com.android.a.b.a
    public final void a(View view, int i, Cursor cursor, int i2) {
        String string;
        CharSequence charSequence = null;
        EzContactListItemView ezContactListItemView = (EzContactListItemView) view;
        ezContactListItemView.setHighlightedPrefix(this.v);
        cursor.moveToPosition(i2);
        long j = cursor.getLong(4);
        boolean z = !cursor.moveToPrevious() || cursor.isBeforeFirst() || j != cursor.getLong(4);
        cursor.moveToPosition(i2);
        boolean z2 = z;
        if (cursor.moveToNext()) {
            z2 = z;
            if (!cursor.isAfterLast()) {
                z2 = z;
                if (j == cursor.getLong(4)) {
                    z2 = false;
                }
            }
        }
        cursor.moveToPosition(i2);
        a((ContactListItemView) ezContactListItemView, i2, false);
        if (!z2) {
            charSequence = !cursor.isNull(1) ? ContactsContract.CommonDataKinds.Phone.getTypeLabel(this.f407a.getResources(), cursor.getInt(1), cursor.getString(2)) : null;
        }
        String string2 = cursor.getString(7);
        if (!TextUtils.isEmpty(charSequence)) {
            string2 = ((Object) string) + charSequence.toString();
        }
        ezContactListItemView.setMarqueeText(ezContactListItemView.d(), !TextUtils.isEmpty(string2) ? ezContactListItemView.j.a(string2, ezContactListItemView.g) : ezContactListItemView.k);
        b(ezContactListItemView, cursor);
        if (!PhoneCapabilityTester.IsAsusDevice() && !PhoneCapabilityTester.IsUnbundled()) {
            a((ContactListItemView) ezContactListItemView, false, j);
        }
        if (this.d && (this.U instanceof MainDialtactsActivity)) {
            ((MainDialtactsActivity) this.U).setContactsListFirstVisibleIndex(ezContactListItemView.g());
        }
    }
}
