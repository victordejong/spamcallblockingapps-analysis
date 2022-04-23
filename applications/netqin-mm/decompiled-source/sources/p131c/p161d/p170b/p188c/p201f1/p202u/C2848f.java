package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p207t0.AbstractC3007a;
import p131c.p161d.p170b.p188c.p207t0.C3008b;
/* renamed from: c.d.b.c.f1.u.f */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/f.class */
public final class C2848f {

    /* renamed from: c */
    public static final String[] f10366c = {"name", "length", "last_touch_timestamp"};

    /* renamed from: a */
    public final AbstractC3007a f10367a;

    /* renamed from: b */
    public String f10368b;

    public C2848f(AbstractC3007a aVar) {
        this.f10367a = aVar;
    }

    /* renamed from: a */
    public static void m28869a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    /* renamed from: b */
    public static String m28864b(String str) {
        return "ExoPlayerCacheFileMetadata" + str;
    }

    /* renamed from: a */
    public Map<String, C2847e> m28871a() throws DatabaseIOException {
        try {
            Cursor b = m28865b();
            HashMap hashMap = new HashMap(b.getCount());
            while (b.moveToNext()) {
                hashMap.put(b.getString(0), new C2847e(b.getLong(1), b.getLong(2)));
            }
            if (b != null) {
                b.close();
            }
            return hashMap;
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public void m28870a(long j) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j);
            this.f10368b = m28864b(hexString);
            if (C3008b.m28167a(this.f10367a.m28170a(), 2, hexString) != 1) {
                SQLiteDatabase b = this.f10367a.m28169b();
                b.beginTransactionNonExclusive();
                C3008b.m28166a(b, 2, hexString, 1);
                m28869a(b, this.f10368b);
                b.execSQL("CREATE TABLE " + this.f10368b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                b.setTransactionSuccessful();
                b.endTransaction();
            }
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public void m28868a(String str) throws DatabaseIOException {
        C2877e.m28737a(this.f10368b);
        try {
            this.f10367a.m28169b().delete(this.f10368b, "name = ?", new String[]{str});
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public void m28867a(String str, long j, long j2) throws DatabaseIOException {
        C2877e.m28737a(this.f10368b);
        try {
            SQLiteDatabase b = this.f10367a.m28169b();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j));
            contentValues.put("last_touch_timestamp", Long.valueOf(j2));
            b.replaceOrThrow(this.f10368b, null, contentValues);
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: a */
    public void m28866a(Set<String> set) throws DatabaseIOException {
        C2877e.m28737a(this.f10368b);
        try {
            SQLiteDatabase b = this.f10367a.m28169b();
            b.beginTransactionNonExclusive();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                b.delete(this.f10368b, "name = ?", new String[]{it.next()});
            }
            b.setTransactionSuccessful();
            b.endTransaction();
        } catch (SQLException e) {
            throw new DatabaseIOException(e);
        }
    }

    /* renamed from: b */
    public final Cursor m28865b() {
        C2877e.m28737a(this.f10368b);
        return this.f10367a.m28170a().query(this.f10368b, f10366c, null, null, null, null, null);
    }
}
