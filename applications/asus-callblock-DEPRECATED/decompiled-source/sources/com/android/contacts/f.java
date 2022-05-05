package com.android.contacts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.util.CoverUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static Uri f1265a;

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<a> f1266b = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        String f1269a;

        /* renamed from: b  reason: collision with root package name */
        int f1270b;

        a(String str, int i) {
            this.f1269a = str;
            this.f1270b = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long a(android.content.Context r7, long r8) {
        /*
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: all -> 0x0054
            r10 = r0
            android.net.Uri r0 = android.provider.ContactsContract.Profile.CONTENT_URI     // Catch: all -> 0x0054
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0054
            r11 = r0
            r0 = r11
            java.lang.String r1 = "_id = "
            r0.<init>(r1)     // Catch: all -> 0x0054
            r0 = r11
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0054
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x0054
            r11 = r0
            r0 = r10
            r1 = r7
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: all -> 0x0054
            r3 = r2
            r4 = 0
            java.lang.String r5 = "name_raw_contact_id"
            r3[r4] = r5     // Catch: all -> 0x0054
            r3 = r11
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: all -> 0x0054
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0067
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0063
            if (r0 == 0) goto L_0x0067
            r0 = r7
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x0063
            r8 = r0
        L_0x0048:
            r0 = r7
            if (r0 == 0) goto L_0x0052
            r0 = r7
            r0.close()
        L_0x0052:
            r0 = r8
            return r0
        L_0x0054:
            r10 = move-exception
            r0 = 0
            r7 = r0
        L_0x0057:
            r0 = r7
            if (r0 == 0) goto L_0x0061
            r0 = r7
            r0.close()
        L_0x0061:
            r0 = r10
            throw r0
        L_0x0063:
            r10 = move-exception
            goto L_0x0057
        L_0x0067:
            r0 = 0
            r8 = r0
            goto L_0x0048
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.f.a(android.content.Context, long):long");
    }

    public static void a(Context context) {
        a(context, d(context));
    }

    public static void a(Context context, Uri uri) {
        synchronized (f.class) {
            try {
                f1265a = uri;
                if (uri != null) {
                    if (a(b(context), c(context))) {
                        context.getContentResolver().delete(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), "mimetype=?", new String[]{"vnd.android.cursor.item/email_v2"});
                        if (f1266b.size() > 0) {
                            Iterator<a> it = f1266b.iterator();
                            while (it.hasNext()) {
                                a next = it.next();
                                ContentValues contentValues = new ContentValues();
                                if (f1265a != null) {
                                    long a2 = a(context, ContentUris.parseId(f1265a));
                                    Log.d("AsusProfileAddEmail", "addEmailToProfile()  type=" + next.f1270b);
                                    contentValues.clear();
                                    contentValues.put("raw_contact_id", Long.valueOf(a2));
                                    contentValues.put("mimetype", "vnd.android.cursor.item/email_v2");
                                    contentValues.put(CoverUtils.CoverData.COVER_URI, next.f1269a);
                                    contentValues.put(CoverUtils.CoverData.COVER_TYPE, Integer.valueOf(next.f1270b));
                                    context.getContentResolver().insert(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), contentValues);
                                }
                            }
                        }
                    }
                    f1266b.clear();
                } else {
                    Log.d("AsusProfileAddEmail", "No profile, do not need to insert email");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static boolean a(Set<String> set, ArrayList<a> arrayList) {
        boolean z;
        f1266b.clear();
        if (set.size() > 0) {
            Iterator<String> it = set.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                a aVar = null;
                a aVar2 = new a(it.next(), 5);
                synchronized (arrayList) {
                    Iterator<a> it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        a next = it2.next();
                        if (next.f1269a.equals(aVar2.f1269a) && next.f1270b == 5) {
                            aVar = next;
                        }
                    }
                }
                f1266b.add(aVar2);
                if (aVar == null) {
                    z2 = true;
                } else {
                    synchronized (arrayList) {
                        arrayList.remove(aVar);
                    }
                }
            }
        } else {
            z = false;
        }
        boolean z3 = z;
        if (arrayList.size() > 0) {
            Iterator<a> it3 = arrayList.iterator();
            while (true) {
                z3 = z;
                if (!it3.hasNext()) {
                    break;
                }
                a next2 = it3.next();
                if (next2.f1270b == 5) {
                    z = true;
                } else {
                    f1266b.add(next2);
                }
            }
        }
        return z3;
    }

    public static Set<String> b(Context context) {
        Account[] accounts;
        HashSet hashSet = new HashSet();
        for (Account account : AccountManager.get(context.getApplicationContext()).getAccounts()) {
            if (account.name.contains("@")) {
                hashSet.add(account.name);
            }
        }
        return hashSet;
    }

    private static ArrayList<a> c(Context context) {
        ArrayList<a> arrayList = new ArrayList<>();
        Cursor query = context.getContentResolver().query(Uri.withAppendedPath(ContactsContract.Profile.CONTENT_URI, "data"), new String[]{CoverUtils.CoverData.COVER_URI, CoverUtils.CoverData.COVER_TYPE}, "mimetype=? AND contact_id=?", new String[]{"vnd.android.cursor.item/email_v2", String.valueOf(ContentUris.parseId(f1265a))}, null);
        while (query != null) {
            try {
                if (!query.moveToNext()) {
                    break;
                }
                arrayList.add(new a(query.getString(0), query.getInt(1)));
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.net.Uri d(android.content.Context r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x0055, all -> 0x006d
            android.net.Uri r1 = android.provider.ContactsContract.Profile.CONTENT_URI     // Catch: Exception -> 0x0055, all -> 0x006d
            r2 = 2
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: Exception -> 0x0055, all -> 0x006d
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_id"
            r3[r4] = r5     // Catch: Exception -> 0x0055, all -> 0x006d
            r3 = r2
            r4 = 1
            java.lang.String r5 = "lookup"
            r3[r4] = r5     // Catch: Exception -> 0x0055, all -> 0x006d
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x0055, all -> 0x006d
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0087
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x007a, Exception -> 0x007e
            if (r0 == 0) goto L_0x0087
            r0 = r7
            r8 = r0
            r0 = r7
            r1 = 0
            long r0 = r0.getLong(r1)     // Catch: all -> 0x007a, Exception -> 0x007e
            r1 = r7
            r2 = 1
            java.lang.String r1 = r1.getString(r2)     // Catch: all -> 0x007a, Exception -> 0x007e
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.getLookupUri(r0, r1)     // Catch: all -> 0x007a, Exception -> 0x007e
            r9 = r0
            r0 = r9
            r8 = r0
        L_0x0045:
            r0 = r8
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0053
            r0 = r7
            r0.close()
            r0 = r8
            r9 = r0
        L_0x0053:
            r0 = r9
            return r0
        L_0x0055:
            r9 = move-exception
            r0 = 0
            r7 = r0
        L_0x0058:
            r0 = r7
            r8 = r0
            r0 = r9
            r0.printStackTrace()     // Catch: all -> 0x007a
            r0 = r7
            if (r0 == 0) goto L_0x0082
            r0 = r7
            r0.close()
            r0 = 0
            r9 = r0
            goto L_0x0053
        L_0x006d:
            r7 = move-exception
        L_0x006e:
            r0 = r8
            if (r0 == 0) goto L_0x0078
            r0 = r8
            r0.close()
        L_0x0078:
            r0 = r7
            throw r0
        L_0x007a:
            r7 = move-exception
            goto L_0x006e
        L_0x007e:
            r9 = move-exception
            goto L_0x0058
        L_0x0082:
            r0 = 0
            r9 = r0
            goto L_0x0053
        L_0x0087:
            r0 = 0
            r8 = r0
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.f.d(android.content.Context):android.net.Uri");
    }
}
