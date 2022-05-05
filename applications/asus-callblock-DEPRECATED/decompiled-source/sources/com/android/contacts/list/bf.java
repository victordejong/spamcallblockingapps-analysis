package com.android.contacts.list;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bf.class */
public final class bf extends p<o> {

    /* renamed from: a  reason: collision with root package name */
    public bb f1801a;

    public bf() {
        this.n = false;
        x();
        f(true);
        this.q = 3;
    }

    private void a(Uri uri) {
        this.f1801a.onPickPostalAddressAction(uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final View a(LayoutInflater layoutInflater) {
        return layoutInflater.inflate(2131427478, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(int i) {
        if (!this.s) {
            a(ContentUris.withAppendedId(ContactsContract.Data.CONTENT_URI, ((Cursor) ((be) this.t).getItem(i)).getLong(0)));
            return;
        }
        a(ContentUris.withAppendedId(Contacts.ContactMethods.CONTENT_URI, ((Cursor) ((av) this.t).getItem(i)).getLong(0)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final void a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        super.a(layoutInflater, viewGroup);
        g(!this.s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.list.p
    public final o c() {
        o avVar;
        if (!this.s) {
            avVar = new be(getActivity());
            avVar.X = true;
            avVar.p = true;
        } else {
            avVar = new av(getActivity());
            avVar.X = false;
            avVar.p = false;
        }
        return avVar;
    }
}
