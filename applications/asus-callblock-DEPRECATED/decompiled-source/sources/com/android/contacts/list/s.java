package com.android.contacts.list;

import android.content.Context;
import android.preference.PreferenceManager;
import com.android.contacts.list.r;
import com.android.contacts.model.a;
import com.android.contacts.model.account.AccountWithDataSet;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/s.class */
public final class s extends r {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1875a;

    /* renamed from: b  reason: collision with root package name */
    private final List<r.a> f1876b = new ArrayList();
    private ContactListFilter c;

    public s(Context context) {
        this.f1875a = context;
        this.c = ContactListFilter.a(PreferenceManager.getDefaultSharedPreferences(this.f1875a));
        c();
    }

    private void a(ContactListFilter contactListFilter, boolean z) {
        if (!contactListFilter.equals(this.c)) {
            this.c = contactListFilter;
            if (z) {
                ContactListFilter.a(PreferenceManager.getDefaultSharedPreferences(this.f1875a), this.c);
            }
            if (!this.f1876b.isEmpty()) {
                for (r.a aVar : this.f1876b) {
                    aVar.onContactListFilterChanged();
                }
            }
        }
    }

    @Override // com.android.contacts.list.r
    public final ContactListFilter a() {
        return this.c;
    }

    @Override // com.android.contacts.list.r
    public final void a(ContactListFilter contactListFilter) {
        a(contactListFilter, true);
    }

    @Override // com.android.contacts.list.r
    public final void a(r.a aVar) {
        this.f1876b.add(aVar);
    }

    @Override // com.android.contacts.list.r
    public final void b() {
        a(ContactListFilter.a(-3), true);
    }

    @Override // com.android.contacts.list.r
    public final void b(r.a aVar) {
        this.f1876b.remove(aVar);
    }

    @Override // com.android.contacts.list.r
    public final void c() {
        if (this.c != null) {
            switch (this.c.f1712a) {
                case -6:
                    a(ContactListFilter.a(PreferenceManager.getDefaultSharedPreferences(this.f1875a)), false);
                    return;
                case 0:
                    if (!a.a(this.f1875a).a(new AccountWithDataSet(this.c.c, this.c.f1713b, this.c.d))) {
                        a(ContactListFilter.a(-2), true);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
