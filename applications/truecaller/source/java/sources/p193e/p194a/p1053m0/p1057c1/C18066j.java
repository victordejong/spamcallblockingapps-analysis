package p193e.p194a.p1053m0.p1057c1;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.truecaller.blocking.FiltersContract;
import com.truecaller.log.AssertionUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p372b0.p413i.p415f.C8469a;
/* renamed from: e.a.m0.c1.j */
/* loaded from: classes8-dex2jar.jar:e/a/m0/c1/j.class */
public class C18066j implements AbstractC18063h0 {

    /* renamed from: a */
    public static final String f50986a;

    static {
        StringBuilder m8728C = C22128a.m8728C("CREATE TABLE filters(_id INTEGER PRIMARY KEY AUTOINCREMENT, server_id TEXT, value TEXT NOT NULL, label TEXT, rule INTEGER NOT NULL, wildcard_type INTEGER DEFAULT(");
        m8728C.append(FiltersContract.Filters.WildCardType.NONE.type);
        m8728C.append("), ");
        m8728C.append("sync_state");
        m8728C.append(" INTEGER DEFAULT(");
        m8728C.append(1);
        m8728C.append("), ");
        m8728C.append("tracking_type");
        m8728C.append(" TEXT, ");
        C22128a.m8666T0(m8728C, "tracking_source", " TEXT, ", "entity_type", " INTEGER DEFAULT(");
        m8728C.append(FiltersContract.Filters.EntityType.UNKNOWN.value);
        m8728C.append("), ");
        m8728C.append("category_id");
        m8728C.append(" INTEGER, ");
        C22128a.m8666T0(m8728C, "history_event_id", " TEXT, ", "spam_version", " INTEGER, UNIQUE (");
        f50986a = C22128a.m8618h(m8728C, "value", ") ON CONFLICT ABORT )");
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: a */
    public String[] mo15498a() {
        return new String[]{f50986a, "CREATE INDEX idx_filters_server_id ON filters (server_id)", "CREATE INDEX idx_filters_value ON filters (value)", "CREATE INDEX idx_filters_label ON filters (label)", "CREATE INDEX idx_filters_rule ON filters (rule)", "CREATE INDEX idx_filters_wildcard_type ON filters (wildcard_type)"};
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: b */
    public void mo15497b(Context context, SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Throwable th;
        SQLiteException e;
        SQLiteDatabase sQLiteDatabase2;
        if (i < 12) {
            sQLiteDatabase.execSQL(f50986a);
            sQLiteDatabase.execSQL("CREATE INDEX idx_filters_server_id ON filters (server_id)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_filters_value ON filters (value)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_filters_label ON filters (label)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_filters_rule ON filters (rule)");
            sQLiteDatabase.execSQL("CREATE INDEX idx_filters_wildcard_type ON filters (wildcard_type)");
            if (context.getDatabasePath("filterDatabase").exists()) {
                SQLiteDatabase sQLiteDatabase3 = null;
                try {
                    try {
                        try {
                            sQLiteDatabase2 = context.openOrCreateDatabase("filterDatabase", 0, null);
                        } catch (SQLiteException e2) {
                            e = e2;
                            sQLiteDatabase2 = null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (IOException e3) {
                }
                try {
                    Cursor rawQuery = sQLiteDatabase2.rawQuery("SELECT _id, server_id, value, CASE WHEN wildcard_type = " + FiltersContract.Filters.WildCardType.NONE.type + " THEN 'OTHER' ELSE 'REG_EXP' END AS tracking_type, label, 0 AS rule, wildcard_type, sync_state FROM filterstable WHERE filter_type = 0", null);
                    if (rawQuery != null) {
                        try {
                            ContentValues contentValues = new ContentValues();
                            while (rawQuery.moveToNext()) {
                                contentValues.clear();
                                DatabaseUtils.cursorRowToContentValues(rawQuery, contentValues);
                                sQLiteDatabase.insert("filters", null, contentValues);
                            }
                            rawQuery.close();
                        } catch (Throwable th3) {
                            rawQuery.close();
                            throw th3;
                        }
                    }
                    m15506d(sQLiteDatabase2, sQLiteDatabase);
                    sQLiteDatabase2.close();
                } catch (SQLiteException e4) {
                    e = e4;
                    sQLiteDatabase3 = sQLiteDatabase2;
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    if (sQLiteDatabase2 != null) {
                        sQLiteDatabase2.close();
                    }
                    if (i < 12) {
                        return;
                    }
                    return;
                } catch (Throwable th4) {
                    sQLiteDatabase3 = sQLiteDatabase2;
                    th = th4;
                    if (sQLiteDatabase3 != null) {
                        try {
                            sQLiteDatabase3.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            }
        }
        if (i < 12 || i >= 43) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("ALTER TABLE filters ADD COLUMN entity_type INTEGER DEFAULT ");
        m8728C.append(FiltersContract.Filters.EntityType.UNKNOWN.value);
        sQLiteDatabase.execSQL(m8728C.toString());
    }

    @Override // p193e.p194a.p1053m0.p1057c1.AbstractC18063h0
    /* renamed from: c */
    public /* synthetic */ String[] mo15496c() {
        return C18061g0.m15509b(this);
    }

    /* renamed from: d */
    public final void m15506d(SQLiteDatabase sQLiteDatabase, SQLiteDatabase sQLiteDatabase2) {
        Cursor query = sQLiteDatabase.query("whitelisttable", new String[]{"value AS value", "snapshot_label AS label", "1 AS rule", FiltersContract.Filters.WildCardType.NONE.type + " AS wildcard_type", "1 AS sync_state", "'OTHER' AS tracking_type"}, null, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    ArrayList arrayList = new ArrayList();
                    C8469a.m28504d(query, arrayList);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        sQLiteDatabase2.insert("filters", null, (ContentValues) it.next());
                    }
                }
            } finally {
                query.close();
            }
        }
        if (query != null) {
        }
    }
}
