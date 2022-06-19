package com.danikula.videocache.p229s;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.danikula.videocache.C4437k;
import com.danikula.videocache.C4443o;
/* renamed from: com.danikula.videocache.s.a */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/s/a.class */
class C4457a extends SQLiteOpenHelper implements AbstractC4459c {

    /* renamed from: d */
    private static final String[] f13579d = {"_id", "url", "length", "mime"};

    public C4457a(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        C4437k.m22476d(context);
    }

    /* renamed from: e */
    private ContentValues m22425e(C4443o c4443o) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", c4443o.f13566a);
        contentValues.put("length", Long.valueOf(c4443o.f13567b));
        contentValues.put("mime", c4443o.f13568c);
        return contentValues;
    }

    /* renamed from: f */
    private C4443o m22424f(Cursor cursor) {
        return new C4443o(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow("length")), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    @Override // com.danikula.videocache.p229s.AbstractC4459c
    /* renamed from: a */
    public void mo22423a(String str, C4443o c4443o) {
        C4437k.m22479a(str, c4443o);
        boolean z = get(str) != null;
        ContentValues m22425e = m22425e(c4443o);
        if (z) {
            getWritableDatabase().update("SourceInfo", m22425e, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, m22425e);
        }
    }

    @Override // com.danikula.videocache.p229s.AbstractC4459c
    public C4443o get(String str) {
        Cursor cursor;
        Throwable th;
        C4437k.m22476d(str);
        try {
            cursor = getReadableDatabase().query("SourceInfo", f13579d, "url=?", new String[]{str}, null, null, null);
            C4443o c4443o = null;
            if (cursor != null) {
                try {
                    c4443o = !cursor.moveToFirst() ? null : m22424f(cursor);
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return c4443o;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        C4437k.m22476d(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }
}
