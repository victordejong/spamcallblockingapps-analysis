package p000;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import android.text.TextUtils;
import java.util.ArrayList;
import p000.fa1;
/* renamed from: a81 */
/* loaded from: classes3-dex2jar.jar:a81.class */
public class a81 {

    /* renamed from: k */
    public static final String f178k = "a81";

    /* renamed from: a */
    public long f179a;

    /* renamed from: b */
    public String f180b;

    /* renamed from: c */
    public String f181c;

    /* renamed from: d */
    public boolean f182d;

    /* renamed from: e */
    public boolean f183e;

    /* renamed from: g */
    public Uri f185g;

    /* renamed from: h */
    public C0018a[] f186h;

    /* renamed from: f */
    public Uri f184f = null;

    /* renamed from: i */
    public Integer[] f187i = null;

    /* renamed from: j */
    public Long f188j = null;

    /* renamed from: a81$a */
    /* loaded from: classes3-dex2jar.jar:a81$a.class */
    public static class C0018a {

        /* renamed from: a */
        public long f189a;

        /* renamed from: b */
        public String f190b;

        /* renamed from: c */
        public int f191c;

        /* renamed from: d */
        public i91 f192d = null;

        public C0018a(long j, String str, int i) {
            this.f190b = str;
            this.f191c = i;
            this.f189a = j;
        }

        /* renamed from: a */
        public i91 m7321a() {
            i91 i91Var = this.f192d;
            return i91Var != null ? i91Var : fa1.C1420e.m1800o(this.f190b);
        }

        public String toString() {
            i91 i91Var = this.f192d;
            String i91Var2 = i91Var != null ? i91Var.toString() : this.f190b;
            String str = i91Var2;
            if (TextUtils.isEmpty(i91Var2)) {
                str = "";
            }
            return str;
        }
    }

    public a81(Cursor cursor) {
        this.f185g = null;
        this.f186h = new C0018a[0];
        if (!ta1.GROUP_CONTACTS.m531d()) {
            return;
        }
        if (cursor.getColumnIndex("version") != -1) {
            m7324j(cursor);
        } else {
            m7323k(cursor);
        }
        try {
            this.f185g = m7328f(this.f179a);
        } catch (Throwable th) {
        }
        Cursor query = fa1.m1840j().getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id = ?", new String[]{String.valueOf(this.f179a)}, "data1");
        if (query != null && query.getCount() > 0 && query.moveToFirst()) {
            ArrayList arrayList = new ArrayList();
            do {
                try {
                    arrayList.add(new C0018a(query.getLong(query.getColumnIndex("_id")), query.getString(query.getColumnIndex("data1")), query.getInt(query.getColumnIndex("data2"))));
                    m7329e(query);
                    if (this.f180b == null) {
                        this.f180b = query.getString(query.getColumnIndex("display_name"));
                    }
                } catch (Throwable th2) {
                    j91.m1504l(this, "Unable to get phone number", th2);
                }
            } while (query.moveToNext());
            this.f186h = (C0018a[]) arrayList.toArray(new C0018a[arrayList.size()]);
        }
        if (query == null) {
            return;
        }
        query.close();
    }

    /* renamed from: a */
    public static a81 m7333a(long j) {
        a81 a81Var = null;
        if (!ta1.GROUP_CONTACTS.m531d()) {
            try {
                return new a81(null);
            } catch (Throwable th) {
            }
        }
        Cursor query = fa1.m1840j().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "_id = ?", new String[]{String.valueOf(j)}, null);
        if (query == null || !query.moveToFirst()) {
            if (query == null) {
                return null;
            }
            query.close();
            return null;
        }
        try {
            a81Var = new a81(query);
        } catch (Throwable th2) {
            j91.m1504l(f178k, "Unable to receive android contact by id", th2);
        }
        query.close();
        return a81Var;
    }

    /* renamed from: b */
    public static a81 m7332b(Cursor cursor) {
        try {
            a81 a81Var = new a81(cursor);
            long j = a81Var.f179a;
            if (j <= 0 || a81Var.f180b != null) {
                return a81Var;
            }
            a81 m7333a = m7333a(j);
            if (m7333a == null) {
                return null;
            }
            m7333a.f188j = a81Var.f188j;
            return m7333a;
        } catch (Throwable th) {
            j91.m1516H(f178k, "Unable to create contact from cursor", th);
            return null;
        }
    }

    /* renamed from: c */
    public static a81 m7331c(Cursor cursor) {
        a81 m7332b = m7332b(cursor);
        if (m7332b == null) {
            return null;
        }
        Cursor query = fa1.m1840j().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"data3"}, "contact_id = ? AND mimetype = ?", new String[]{String.valueOf(m7332b.f179a), "vnd.android.cursor.item/name"}, "data_version DESC");
        if (query.moveToFirst()) {
            m7332b.f181c = query.getString(query.getColumnIndex("data3"));
        }
        query.close();
        return m7332b;
    }

    /* renamed from: d */
    public static a81[] m7330d(i91 i91Var) {
        if (TextUtils.isEmpty(i91Var.toString())) {
            return new a81[0];
        }
        if (!ta1.GROUP_CONTACTS.m531d()) {
            return new a81[0];
        }
        Cursor query = fa1.m1840j().getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(i91Var.toString())), null, null, null, null);
        if (query == null) {
            return null;
        }
        if (query.getCount() == 0) {
            query.close();
            return null;
        }
        String str = "Found " + query.getCount() + " contacts with " + i91Var;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (query.moveToFirst()) {
            do {
                String string = query.getString(query.getColumnIndex("lookup"));
                if (!arrayList2.contains(string)) {
                    arrayList2.add(string);
                    try {
                        arrayList.add(new a81(query));
                        String str2 = "Added contact: " + ((a81) arrayList.get(arrayList.size() - 1)).f180b;
                    } catch (Throwable th) {
                    }
                }
            } while (query.moveToNext());
            String str3 = "Initialized " + arrayList.size() + " contacts (" + (query.getCount() - arrayList.size()) + " duplicates found)";
            query.close();
        }
        a81[] a81VarArr = new a81[arrayList.size()];
        arrayList.toArray(a81VarArr);
        return a81VarArr;
    }

    /* renamed from: f */
    public static Uri m7328f(long j) {
        return ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, j);
    }

    /* renamed from: h */
    public static Uri m7326h(long j) {
        return Uri.withAppendedPath(m7328f(j), "photo");
    }

    /* renamed from: e */
    public final void m7329e(Cursor cursor) {
        Uri uri = null;
        this.f184f = null;
        if (Build.VERSION.SDK_INT >= 11 && cursor.getColumnIndex("photo_uri") != -1) {
            String string = cursor.getString(cursor.getColumnIndex("photo_uri"));
            if (!TextUtils.isEmpty(string)) {
                uri = Uri.parse(string);
            }
            this.f184f = uri;
        }
        if (this.f184f != null || TextUtils.isEmpty(cursor.getString(cursor.getColumnIndex("photo_id")))) {
            return;
        }
        this.f184f = m7326h(this.f179a);
    }

    /* renamed from: g */
    public Integer[] m7327g() {
        m7322l();
        return this.f187i;
    }

    /* renamed from: i */
    public Long m7325i() {
        return this.f188j;
    }

    /* renamed from: j */
    public final void m7324j(Cursor cursor) {
        this.f179a = cursor.getLong(cursor.getColumnIndex("contact_id"));
        try {
            this.f182d = cursor.getInt(cursor.getColumnIndex("starred")) == 1;
        } catch (Throwable th) {
        }
        boolean z = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex("send_to_voicemail")) == 1) {
                z = true;
            }
            this.f183e = z;
        } catch (Throwable th2) {
        }
        try {
            this.f188j = Long.valueOf(cursor.getLong(cursor.getColumnIndex("version")));
        } catch (Throwable th3) {
        }
    }

    /* renamed from: k */
    public final void m7323k(Cursor cursor) {
        this.f179a = cursor.getLong(cursor.getColumnIndex("_id"));
        try {
            this.f182d = cursor.getInt(cursor.getColumnIndex("starred")) == 1;
        } catch (Throwable th) {
        }
        boolean z = false;
        try {
            if (cursor.getInt(cursor.getColumnIndex("send_to_voicemail")) == 1) {
                z = true;
            }
            this.f183e = z;
        } catch (Throwable th2) {
        }
        try {
            this.f180b = cursor.getString(cursor.getColumnIndex("display_name"));
        } catch (Throwable th3) {
        }
        try {
            m7329e(cursor);
        } catch (Throwable th4) {
        }
    }

    /* renamed from: l */
    public final void m7322l() {
        if (this.f187i != null) {
            return;
        }
        Cursor query = fa1.m1840j().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"data1"}, "mimetype=? AND contact_id=?", new String[]{"vnd.android.cursor.item/group_membership", String.valueOf(this.f179a)}, null);
        if (query == null || query.getCount() <= 0 || !query.moveToFirst()) {
            if (query == null) {
                j91.m1505k(this, "Groups selection failed for contact");
            }
            this.f187i = new Integer[0];
        } else {
            ArrayList arrayList = new ArrayList();
            do {
                try {
                    int i = query.getInt(query.getColumnIndex("data1"));
                    if (b81.m5748g(i) != null) {
                        arrayList.add(Integer.valueOf(i));
                    }
                } catch (Throwable th) {
                }
            } while (query.moveToNext());
            Integer[] numArr = new Integer[arrayList.size()];
            this.f187i = numArr;
            arrayList.toArray(numArr);
        }
        if (query == null) {
            return;
        }
        query.close();
    }
}
