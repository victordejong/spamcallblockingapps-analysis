package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1789g0.C26232y;
import p193e.p1577m.p1578a.p1596c.p1599d1.AbstractC24250b;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24249a;
/* renamed from: e.m.a.c.p1.h0.j */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/j.class */
public final class C24716j {

    /* renamed from: c */
    public static final String[] f69263c = {AnalyticsConstants.NAME, "length", "last_touch_timestamp"};

    /* renamed from: a */
    public final AbstractC24250b f69264a;

    /* renamed from: b */
    public String f69265b;

    public C24716j(AbstractC24250b abstractC24250b) {
        this.f69264a = abstractC24250b;
    }

    /* renamed from: a */
    public Map<String, C24715i> m4754a() throws C24249a {
        try {
            Objects.requireNonNull(this.f69265b);
            Cursor query = this.f69264a.getReadableDatabase().query(this.f69265b, f69263c, null, null, null, null, null);
            HashMap hashMap = new HashMap(query.getCount());
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), new C24715i(query.getLong(1), query.getLong(2)));
            }
            query.close();
            return hashMap;
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: b */
    public void m4753b(long j) throws C24249a {
        try {
            String hexString = Long.toHexString(j);
            this.f69265b = "ExoPlayerCacheFileMetadata" + hexString;
            if (C26232y.m2451J0(this.f69264a.getReadableDatabase(), 2, hexString) == 1) {
                return;
            }
            SQLiteDatabase writableDatabase = this.f69264a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            C26232y.m2410T1(writableDatabase, 2, hexString, 1);
            String str = this.f69265b;
            writableDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            writableDatabase.execSQL("CREATE TABLE " + this.f69265b + StringConstant.SPACE + "(name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: c */
    public void m4752c(Set<String> set) throws C24249a {
        Objects.requireNonNull(this.f69265b);
        try {
            SQLiteDatabase writableDatabase = this.f69264a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            Iterator<String> it = set.iterator();
            while (it.hasNext()) {
                writableDatabase.delete(this.f69265b, "name = ?", new String[]{it.next()});
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }

    /* renamed from: d */
    public void m4751d(String str, long j, long j2) throws C24249a {
        Objects.requireNonNull(this.f69265b);
        try {
            SQLiteDatabase writableDatabase = this.f69264a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put(AnalyticsConstants.NAME, str);
            contentValues.put("length", Long.valueOf(j));
            contentValues.put("last_touch_timestamp", Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.f69265b, null, contentValues);
        } catch (SQLException e) {
            throw new C24249a(e);
        }
    }
}
