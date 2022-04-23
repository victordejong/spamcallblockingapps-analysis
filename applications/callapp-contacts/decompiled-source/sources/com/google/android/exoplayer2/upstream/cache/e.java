package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.database.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/e.class */
public final class e {

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f22152c = {"name", "length", "last_touch_timestamp"};

    /* renamed from: a  reason: collision with root package name */
    final a f22153a;

    /* renamed from: b  reason: collision with root package name */
    String f22154b;

    public e(a aVar) {
        this.f22153a = aVar;
    }

    public final Map<String, d> a() throws DatabaseIOException {
        try {
            com.google.android.exoplayer2.util.a.b(this.f22154b);
            Cursor query = this.f22153a.getReadableDatabase().query(this.f22154b, f22152c, null, null, null, null, null);
            HashMap hashMap = new HashMap(query.getCount());
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), new d(query.getLong(1), query.getLong(2)));
            }
            if (query != null) {
                query.close();
            }
            return hashMap;
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public final void a(String str) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.b(this.f22154b);
        try {
            this.f22153a.getWritableDatabase().delete(this.f22154b, "name = ?", new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public final void a(String str, long j, long j2) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.b(this.f22154b);
        try {
            SQLiteDatabase writableDatabase = this.f22153a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j));
            contentValues.put("last_touch_timestamp", Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.f22154b, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    public final void a(Set<String> set) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.b(this.f22154b);
        try {
            SQLiteDatabase writableDatabase = this.f22153a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            Iterator<String> it2 = set.iterator();
            while (it2.hasNext()) {
                writableDatabase.delete(this.f22154b, "name = ?", new String[]{it2.next()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }
}
