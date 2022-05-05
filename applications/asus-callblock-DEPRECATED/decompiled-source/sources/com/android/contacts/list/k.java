package com.android.contacts.list;

import android.content.Context;
import android.content.CursorLoader;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.provider.ContactsContract;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.b;
import com.android.contacts.util.PhoneCapabilityTester;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/k.class */
public final class k extends CursorLoader {
    private static final String[] g = {"_id", "display_name"};

    /* renamed from: a  reason: collision with root package name */
    Uri f1844a;

    /* renamed from: b  reason: collision with root package name */
    MatrixCursor f1845b;
    long[] c;
    long[] d;
    boolean e = false;
    private String[] f;

    public k(Context context) {
        super(context, null, null, null, null, null);
    }

    private MatrixCursor a() {
        HashSet hashSet;
        Cursor query;
        MatrixCursor matrixCursor = new MatrixCursor(this.f);
        Object[] objArr = new Object[this.f.length];
        if (!this.e) {
            if (!PhoneCapabilityTester.IsAsusDevice()) {
                query = getContext().getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{ContactDetailCallogActivity.EXTRA_CONTACT_ID}, "account_type='" + b.a.d + "'", null, null);
                hashSet = new HashSet();
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            do {
                                hashSet.add(Long.valueOf(query.getLong(0)));
                            } while (query.moveToNext());
                        }
                    } catch (Throwable th) {
                        if (query != null) {
                        }
                        throw th;
                    }
                }
                if (query != null) {
                    query.close();
                }
            } else {
                hashSet = null;
            }
            query = getContext().getContentResolver().query(this.f1844a, this.f, null, null, null);
            while (query.moveToNext()) {
                try {
                    for (int i = 0; i < objArr.length; i++) {
                        objArr[i] = query.getString(i);
                    }
                    if (!a((String) objArr[0])) {
                        if (PhoneCapabilityTester.IsAsusDevice()) {
                            matrixCursor.addRow(objArr);
                        } else if (!hashSet.contains(Long.valueOf(Long.parseLong((String) objArr[0])))) {
                            matrixCursor.addRow(objArr);
                        }
                    }
                } finally {
                }
            }
            query.close();
            String str = this.f1844a.getPathSegments().get(1);
            if (this.c != null && this.c[0] > 0) {
                query = getContext().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, this.f, "_id = " + str, null, null);
                try {
                    if (query.moveToFirst()) {
                        for (int i2 = 0; i2 < objArr.length; i2++) {
                            objArr[i2] = query.getString(i2);
                        }
                    }
                    query.close();
                    long[] jArr = this.c;
                    int length = jArr.length;
                    for (int i3 = 0; i3 < length; i3++) {
                        query = getContext().getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, g, "contact_id = " + str + " AND _id = " + jArr[i3], null, null);
                        try {
                            if (query.moveToFirst()) {
                                long j = query.getLong(0);
                                String string = query.getString(1);
                                Cursor query2 = getContext().getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[]{"_id"}, "raw_contact_id=" + j + " AND mimetype='vnd.android.cursor.item/photo'", null, null);
                                if (query2 != null) {
                                    long j2 = query2.moveToFirst() ? query2.getLong(0) : 0L;
                                    query2.close();
                                    objArr[9] = Long.valueOf(j);
                                    objArr[1] = string;
                                    objArr[4] = Long.valueOf(j2);
                                    matrixCursor.addRow(objArr);
                                }
                            }
                            query.close();
                        } finally {
                        }
                    }
                } finally {
                }
            }
        }
        return matrixCursor;
    }

    private boolean a(String str) {
        boolean z = false;
        if (this.d != null) {
            if (this.d[0] == 0) {
                z = false;
            } else {
                long[] jArr = this.d;
                int length = jArr.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (str.equals(String.valueOf(jArr[i]))) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.content.CursorLoader, android.content.AsyncTaskLoader
    public final Cursor loadInBackground() {
        this.f1845b = a();
        return super.loadInBackground();
    }

    @Override // android.content.CursorLoader
    public final void setProjection(String[] strArr) {
        super.setProjection(strArr);
        this.f = strArr;
    }
}
