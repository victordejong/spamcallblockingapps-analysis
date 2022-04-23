package com.android.contacts.model;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.model.account.AccountWithDataSet;
import com.android.contacts.vcard.SelectAccountActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/model/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final Context f2031a;

    /* renamed from: b  reason: collision with root package name */
    public final ContentValues f2032b;
    private com.android.contacts.model.a c;
    private final ArrayList<a> d;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/model/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f2033a;

        /* renamed from: b  reason: collision with root package name */
        public final com.android.contacts.model.a.a f2034b;

        public a(Uri uri, com.android.contacts.model.a.a aVar) {
            this.f2033a = uri;
            this.f2034b = aVar;
        }
    }

    public e(Context context) {
        this(context, new ContentValues());
    }

    public e(Context context, ContentValues contentValues) {
        this.f2031a = context;
        this.f2032b = contentValues;
        this.d = new ArrayList<>();
    }

    public final com.android.contacts.model.a a() {
        if (this.c == null) {
            this.c = com.android.contacts.model.a.a(this.f2031a);
        }
        return this.c;
    }

    public final a a(Uri uri, ContentValues contentValues) {
        a aVar = new a(uri, com.android.contacts.model.a.a.a(this, contentValues));
        this.d.add(aVar);
        return aVar;
    }

    public final void a(AccountWithDataSet accountWithDataSet) {
        a(accountWithDataSet.name, accountWithDataSet.type, accountWithDataSet.f1998a);
    }

    public final void a(String str, String str2, String str3) {
        ContentValues contentValues = this.f2032b;
        if (str == null) {
            if (str2 == null && str3 == null) {
                contentValues.put(SelectAccountActivity.ACCOUNT_NAME, b.a.f611a);
                contentValues.put(SelectAccountActivity.ACCOUNT_TYPE, b.a.f612b);
                contentValues.putNull(SelectAccountActivity.DATA_SET);
                return;
            }
        } else if (str2 != null) {
            contentValues.put(SelectAccountActivity.ACCOUNT_NAME, str);
            contentValues.put(SelectAccountActivity.ACCOUNT_TYPE, str2);
            if (str3 == null) {
                contentValues.putNull(SelectAccountActivity.DATA_SET);
                return;
            } else {
                contentValues.put(SelectAccountActivity.DATA_SET, str3);
                return;
            }
        }
        throw new IllegalArgumentException("Not a valid combination of account name, type, and data set.");
    }

    public final Long b() {
        return this.f2032b.getAsLong("_id");
    }

    public final String c() {
        return this.f2032b.getAsString(SelectAccountActivity.ACCOUNT_NAME);
    }

    public final String d() {
        return this.f2032b.getAsString(SelectAccountActivity.ACCOUNT_TYPE);
    }

    public final String e() {
        return this.f2032b.getAsString(SelectAccountActivity.DATA_SET);
    }

    public final long f() {
        return this.f2032b.getAsLong(ContactDetailCallogActivity.EXTRA_CONTACT_ID).longValue();
    }

    public final com.android.contacts.model.account.a g() {
        return a().a(d(), e());
    }

    public final List<com.android.contacts.model.a.a> h() {
        ArrayList arrayList = new ArrayList();
        Iterator<a> it = this.d.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (ContactsContract.Data.CONTENT_URI.equals(next.f2033a)) {
                arrayList.add(next.f2034b);
            }
        }
        return arrayList;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("RawContact: ").append(this.f2032b);
        Iterator<a> it = this.d.iterator();
        while (it.hasNext()) {
            a next = it.next();
            sb.append("\n  ").append(next.f2033a);
            sb.append("\n  -> ").append(next.f2034b.f1994a);
        }
        return sb.toString();
    }
}
