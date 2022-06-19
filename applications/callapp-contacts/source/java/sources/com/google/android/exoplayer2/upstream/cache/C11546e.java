package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.AbstractC10926a;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.util.C11593a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.exoplayer2.upstream.cache.e */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/e.class */
public final class C11546e {

    /* renamed from: c */
    private static final String[] f38438c = {"name", "length", "last_touch_timestamp"};

    /* renamed from: a */
    final AbstractC10926a f38439a;

    /* renamed from: b */
    String f38440b;

    public C11546e(AbstractC10926a abstractC10926a) {
        this.f38439a = abstractC10926a;
    }

    /* renamed from: a */
    public final Map<String, C11545d> m20171a() throws DatabaseIOException {
        try {
            C11593a.m20020b(this.f38440b);
            Cursor query = this.f38439a.getReadableDatabase().query(this.f38440b, f38438c, null, null, null, null, null);
            HashMap hashMap = new HashMap(query.getCount());
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), new C11545d(query.getLong(1), query.getLong(2)));
            }
            if (query != null) {
                query.close();
            }
            return hashMap;
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public final void m20170a(String str) throws DatabaseIOException {
        C11593a.m20020b(this.f38440b);
        try {
            this.f38439a.getWritableDatabase().delete(this.f38440b, "name = ?", new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public final void m20169a(String str, long j, long j2) throws DatabaseIOException {
        C11593a.m20020b(this.f38440b);
        try {
            SQLiteDatabase writableDatabase = this.f38439a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j));
            contentValues.put("last_touch_timestamp", Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.f38440b, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public final void m20168a(Set<String> set) throws DatabaseIOException {
        C11593a.m20020b(this.f38440b);
        try {
            SQLiteDatabase writableDatabase = this.f38439a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            Iterator<String> it2 = set.iterator();
            while (it2.hasNext()) {
                writableDatabase.delete(this.f38440b, "name = ?", new String[]{it2.next()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
