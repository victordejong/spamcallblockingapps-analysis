package com.android.contacts.list;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
import com.android.contacts.group.f;
import com.android.contacts.o;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ar.class */
public final class ar extends AsyncQueryHandler {

    /* renamed from: a  reason: collision with root package name */
    a f1789a;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/ar$a.class */
    public interface a {
        void a(Cursor cursor);
    }

    public ar(ContentResolver contentResolver, a aVar) {
        super(contentResolver);
        this.f1789a = aVar;
    }

    public final void a() {
        startQuery(0, null, ContactsContract.Contacts.CONTENT_URI, o.f2037a, "starred=?", new String[]{"1"}, f.d());
    }

    @Override // android.content.AsyncQueryHandler
    protected final void onQueryComplete(int i, Object obj, Cursor cursor) {
        if (this.f1789a != null) {
            this.f1789a.a(cursor);
        } else if (cursor != null) {
            cursor.close();
        }
    }
}
