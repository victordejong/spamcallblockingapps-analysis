package com.android.contacts.list;

import android.content.Context;
import com.android.contacts.util.AccountFilterUtil;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/r.class */
public abstract class r {

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/r$a.class */
    public interface a {
        void onContactListFilterChanged();
    }

    public static r a(Context context) {
        return (r) context.getApplicationContext().getSystemService(AccountFilterUtil.KEY_EXTRA_CONTACT_LIST_FILTER);
    }

    public abstract ContactListFilter a();

    public abstract void a(ContactListFilter contactListFilter);

    public abstract void a(a aVar);

    public abstract void b();

    public abstract void b(a aVar);

    public abstract void c();
}
