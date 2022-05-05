package com.asus.prefersim;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.util.Log;
import com.asus.contacts.a.a;
/* loaded from: classes-dex2jar.jar:com/asus/prefersim/PreferSimContentProvider.class */
public class PreferSimContentProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static String f2939a = "PreferSimProvider";

    /* renamed from: b  reason: collision with root package name */
    private static final UriMatcher f2940b;
    private a c;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f2940b = uriMatcher;
        uriMatcher.addURI("com.asus.prefersim.provider", "prefersim_number", 1);
        f2940b.addURI("com.asus.prefersim.provider", "prefersim_number/#", 2);
        f2940b.addURI("com.asus.prefersim.provider", "prefersim_contact", 3);
        f2940b.addURI("com.asus.prefersim.provider", "prefersim_contact/#", 4);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        int i = 0;
        switch (f2940b.match(uri)) {
            case 1:
            case 2:
                i = writableDatabase.delete("prefersim_number", str, strArr);
                break;
            case 3:
            case 4:
                i = writableDatabase.delete("prefersim_contact", str, strArr);
                break;
            default:
                Log.d(f2939a, "delete uri:" + uri.toString() + " not match");
                break;
        }
        if (!(i <= 0 || getContext() == null || getContext().getContentResolver() == null)) {
            getContext().getContentResolver().notifyChange(uri, null);
        }
        writableDatabase.close();
        return i;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009a  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.net.Uri insert(android.net.Uri r6, android.content.ContentValues r7) {
        /*
            r5 = this;
            r0 = r5
            com.asus.contacts.a.a r0 = r0.c
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()
            r8 = r0
            android.content.UriMatcher r0 = com.asus.prefersim.PreferSimContentProvider.f2940b
            r1 = r6
            int r0 = r0.match(r1)
            switch(r0) {
                case 1: goto L_0x008d;
                case 2: goto L_0x0028;
                case 3: goto L_0x004b;
                default: goto L_0x0028;
            }
        L_0x0028:
            java.lang.String r0 = com.asus.prefersim.PreferSimContentProvider.f2939a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "Insert uri: "
            r2.<init>(r3)
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " not match"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = 0
            r6 = r0
        L_0x0049:
            r0 = r6
            return r0
        L_0x004b:
            r0 = r8
            java.lang.String r1 = "prefersim_contact"
            r2 = 0
            r3 = r7
            long r0 = r0.insert(r1, r2, r3)
            r9 = r0
        L_0x0055:
            r0 = r8
            r0.close()
            r0 = r9
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x009a
            r0 = r6
            r1 = r9
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r0, r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            android.content.Context r0 = r0.getContext()
            if (r0 == 0) goto L_0x0049
            r0 = r7
            r6 = r0
            r0 = r5
            android.content.Context r0 = r0.getContext()
            android.content.ContentResolver r0 = r0.getContentResolver()
            if (r0 == 0) goto L_0x0049
            r0 = r5
            android.content.Context r0 = r0.getContext()
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = r7
            r2 = 0
            r0.notifyChange(r1, r2)
            r0 = r7
            r6 = r0
            goto L_0x0049
        L_0x008d:
            r0 = r8
            java.lang.String r1 = "prefersim_number"
            r2 = 0
            r3 = r7
            long r0 = r0.insert(r1, r2, r3)
            r9 = r0
            goto L_0x0055
        L_0x009a:
            java.lang.String r0 = com.asus.prefersim.PreferSimContentProvider.f2939a
            java.lang.String r1 = "Insert fail!"
            int r0 = android.util.Log.d(r0, r1)
            r0 = 0
            r6 = r0
            goto L_0x0049
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.prefersim.PreferSimContentProvider.insert(android.net.Uri, android.content.ContentValues):android.net.Uri");
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.c = a.a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query = null;
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        switch (f2940b.match(uri)) {
            case 1:
            case 2:
                sQLiteQueryBuilder.setTables("prefersim_number");
                query = sQLiteQueryBuilder.query(writableDatabase, strArr, str, strArr2, null, null, str2);
                break;
            case 3:
            case 4:
                sQLiteQueryBuilder.setTables("prefersim_contact");
                query = sQLiteQueryBuilder.query(writableDatabase, strArr, str, strArr2, null, null, str2);
                break;
            default:
                Log.d(f2939a, "query uri:" + uri.toString() + " not match");
                break;
        }
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.c.getWritableDatabase();
        int i = 0;
        switch (f2940b.match(uri)) {
            case 1:
                i = writableDatabase.update("prefersim_number", contentValues, str, strArr);
                break;
            case 2:
            default:
                Log.d(f2939a, "Update uri " + uri.toString() + " not match");
                break;
            case 3:
                i = writableDatabase.update("prefersim_contact", contentValues, str, strArr);
                break;
        }
        writableDatabase.close();
        return i;
    }
}
