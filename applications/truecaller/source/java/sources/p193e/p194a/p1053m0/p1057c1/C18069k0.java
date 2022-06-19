package p193e.p194a.p1053m0.p1057c1;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
/* renamed from: e.a.m0.c1.k0 */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/k0.class */
public class C18069k0 implements AbstractC18063h0 {
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{"CREATE TABLE topspammers(_id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT NOT NULL, label TEXT, count INTEGER, spam_categories TEXT, spam_version INTEGER )", "CREATE INDEX idx_topspammers_value ON topspammers (value)"};
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        SQLiteDatabase sQLiteDatabase2;
        Throwable th;
        SQLiteException e;
        SQLiteDatabase sQLiteDatabase3;
        if (i < 12) {
            sQLiteDatabase.execSQL("CREATE TABLE topspammers(_id INTEGER PRIMARY KEY AUTOINCREMENT, value TEXT NOT NULL, label TEXT, count INTEGER, spam_categories TEXT, spam_version INTEGER )");
            sQLiteDatabase.execSQL("CREATE INDEX idx_topspammers_value ON topspammers (value)");
            if (!context.getDatabasePath("filterDatabase").exists()) {
                return;
            }
            SQLiteDatabase sQLiteDatabase4 = null;
            try {
                try {
                    try {
                        sQLiteDatabase3 = context.openOrCreateDatabase("filterDatabase", 0, null);
                    } catch (SQLiteException e2) {
                        e = e2;
                        sQLiteDatabase3 = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteDatabase2 = sQLiteDatabase4;
                }
                try {
                    Cursor rawQuery = sQLiteDatabase3.rawQuery("SELECT _id AS _id, value AS value, label AS label, score AS count FROM filterstable WHERE filter_type = 1", null);
                    if (rawQuery != null) {
                        ContentValues contentValues = new ContentValues();
                        while (rawQuery.moveToNext()) {
                            contentValues.clear();
                            DatabaseUtils.cursorRowToContentValues(rawQuery, contentValues);
                            sQLiteDatabase.insert("topspammers", null, contentValues);
                        }
                        rawQuery.close();
                    }
                    sQLiteDatabase3.close();
                } catch (SQLiteException e3) {
                    e = e3;
                    sQLiteDatabase4 = sQLiteDatabase3;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (sQLiteDatabase3 == null) {
                        return;
                    }
                    sQLiteDatabase3.close();
                } catch (Throwable th3) {
                    sQLiteDatabase2 = sQLiteDatabase3;
                    th = th3;
                    if (sQLiteDatabase2 != null) {
                        try {
                            sQLiteDatabase2.close();
                        } catch (IOException e4) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
            }
        }
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }
}
