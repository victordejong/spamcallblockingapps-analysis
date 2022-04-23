package p081h.p160h.p179e.p180a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p190p.C6428a;
import p081h.p160h.p179e.p180a.p190p.C6431d;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.k */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/k.class */
public class C6370k {

    /* renamed from: a */
    public Context f15857a = null;

    /* renamed from: b */
    public C6371a f15858b = null;

    /* renamed from: h.h.e.a.k$a */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/k$a.class */
    public static class C6371a extends SQLiteOpenHelper {
        public C6371a(Context context) {
            super(context, "sdkdata.db", (SQLiteDatabase.CursorFactory) null, 4);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS scheduletask (_id INTEGER PRIMARY KEY,_content TEXT NOT NULL,_intentaction TEXT NOT NULL,_intentextra TEXT NOT NULL,_delayed INTEGER DEFAULT 0)");
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS apiqueue (_id INTEGER PRIMARY KEY,_data BLOB NOT NULL,_mode TINYINT DEFAULT 0,_type TINYINT DEFAULT 0)");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i < 3) {
                try {
                    sQLiteDatabase.execSQL("DROP TABLE queuetask");
                    sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS apiqueue (_id INTEGER PRIMARY KEY,_data BLOB NOT NULL,_mode TINYINT DEFAULT 0,_type TINYINT DEFAULT 0)");
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: h.h.e.a.k$b */
    /* loaded from: classes2-dex2jar.jar:h/h/e/a/k$b.class */
    public static class C6372b {

        /* renamed from: a */
        public static volatile C6370k f15859a = new C6370k();
    }

    /* renamed from: b */
    public static C6370k m22930b(Context context) {
        C6370k kVar = C6372b.f15859a;
        if (kVar.f15857a == null || kVar.f15858b == null) {
            kVar.m22939a(context);
        }
        return kVar;
    }

    /* renamed from: a */
    public int m22936a(String str, ContentValues contentValues, String str2, String[] strArr) {
        int i;
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f15858b.getWritableDatabase();
            i = 0;
            if (writableDatabase != null) {
                i = writableDatabase.update(str, contentValues, str2, strArr);
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m22935a(String str, String str2, String[] strArr) {
        int i;
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f15858b.getWritableDatabase();
            i = 0;
            if (writableDatabase != null) {
                i = writableDatabase.delete(str, str2, strArr);
            }
        }
        return i;
    }

    /* renamed from: a */
    public long m22940a(ContentValues contentValues) {
        return m22937a("scheduletask", contentValues);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m22937a(java.lang.String r6, android.content.ContentValues r7) {
        /*
            r5 = this;
            r0 = r5
            monitor-enter(r0)
            r0 = -1
            r8 = r0
            r0 = r5
            h.h.e.a.k$a r0 = r0.f15858b     // Catch: all -> 0x002b, Exception -> 0x002f
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()     // Catch: all -> 0x002b, Exception -> 0x002f
            r10 = r0
            r0 = r8
            r11 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0045
            r0 = r10
            r1 = r6
            r2 = 0
            r3 = r7
            long r0 = r0.insertOrThrow(r1, r2, r3)     // Catch: SQLException -> 0x0024, all -> 0x002b, Exception -> 0x002f
            r11 = r0
            goto L_0x0045
        L_0x0024:
            r6 = move-exception
            r0 = r5
            monitor-exit(r0)
            r0 = -1
            return r0
        L_0x002b:
            r6 = move-exception
            goto L_0x004a
        L_0x002f:
            r6 = move-exception
            r0 = r6
            p081h.p160h.p179e.p180a.p190p.C6438i.m22583a(r0)     // Catch: all -> 0x002b
            r0 = r6
            java.lang.Class r0 = r0.getClass()     // Catch: all -> 0x002b
            java.lang.String r0 = r0.getName()     // Catch: all -> 0x002b
            r1 = r6
            java.lang.String r1 = r1.getMessage()     // Catch: all -> 0x002b
            p081h.p160h.p179e.p180a.p190p.C6432e.m22605a(r0, r1)     // Catch: all -> 0x002b
            r0 = r8
            r11 = r0
        L_0x0045:
            r0 = r5
            monitor-exit(r0)
            r0 = r11
            return r0
        L_0x004a:
            r0 = r5
            monitor-exit(r0)
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p160h.p179e.p180a.C6370k.m22937a(java.lang.String, android.content.ContentValues):long");
    }

    /* renamed from: a */
    public Cursor m22934a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        synchronized (this) {
            SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
            if (readableDatabase == null) {
                return null;
            }
            return readableDatabase.query(str, strArr, str2, strArr2, null, null, str3);
        }
    }

    /* renamed from: a */
    public String m22942a() {
        return "sdkdata.db";
    }

    /* renamed from: a */
    public JSONObject m22941a(long j) {
        JSONException e;
        synchronized (this) {
            SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
            JSONObject jSONObject = null;
            jSONObject = null;
            if (readableDatabase == null) {
                return null;
            }
            Cursor rawQuery = readableDatabase.rawQuery("SELECT * FROM scheduletask ORDER BY _delayed ASC LIMIT 1", null);
            if (rawQuery != null) {
                try {
                    if (rawQuery.moveToFirst()) {
                        jSONObject = new JSONObject();
                        try {
                            jSONObject.put("_content", rawQuery.getString(rawQuery.getColumnIndex("_content")));
                            jSONObject.put("_intentaction", rawQuery.getString(rawQuery.getColumnIndex("_intentaction")));
                            jSONObject.put("_intentextra", rawQuery.getString(rawQuery.getColumnIndex("_intentextra")));
                        } catch (JSONException e2) {
                            e = e2;
                            C6438i.m22583a(e);
                            rawQuery.close();
                            return jSONObject;
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    jSONObject = null;
                }
                rawQuery.close();
            }
            return jSONObject;
        }
    }

    /* renamed from: a */
    public final void m22939a(Context context) {
        synchronized (this) {
            if (this.f15857a == null) {
                this.f15857a = context;
                this.f15858b = new C6371a(this.f15857a);
            }
        }
    }

    /* renamed from: a */
    public void m22938a(String str) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f15858b.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("scheduletask", "_intentaction = ?", new String[]{String.valueOf(str)});
            }
        }
    }

    /* renamed from: b */
    public long m22931b(ContentValues contentValues) {
        return m22937a("apiqueue", contentValues);
    }

    /* renamed from: b */
    public JSONObject m22933b() {
        JSONException e;
        synchronized (this) {
            SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
            JSONObject jSONObject = null;
            jSONObject = null;
            if (readableDatabase == null) {
                return null;
            }
            Cursor rawQuery = readableDatabase.rawQuery("SELECT * FROM scheduletask ORDER BY _delayed ASC LIMIT 1", null);
            if (rawQuery != null) {
                try {
                    if (rawQuery.moveToFirst()) {
                        jSONObject = new JSONObject();
                        try {
                            jSONObject.put("_id", rawQuery.getLong(rawQuery.getColumnIndex("_id")));
                            jSONObject.put("_delayed", rawQuery.getLong(rawQuery.getColumnIndex("_delayed")));
                        } catch (JSONException e2) {
                            e = e2;
                            C6438i.m22583a(e);
                            rawQuery.close();
                            return jSONObject;
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    jSONObject = null;
                }
                rawQuery.close();
            }
            return jSONObject;
        }
    }

    /* renamed from: b */
    public void m22932b(long j) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f15858b.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("scheduletask", "_id = ?", new String[]{String.valueOf(j)});
            }
        }
    }

    /* renamed from: c */
    public void m22928c(long j) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = this.f15858b.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.delete("apiqueue", "_id = ?", new String[]{String.valueOf(j)});
            }
        }
    }

    /* renamed from: c */
    public boolean m22929c() {
        Cursor rawQuery;
        synchronized (this) {
            try {
                new JSONArray();
                SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
                if (!(readableDatabase == null || (rawQuery = readableDatabase.rawQuery("SELECT * FROM scheduletask WHERE _intentaction = \"com.gogolook.whoscallsdk.core.wcsdk_queuetask\" ORDER BY _delayed ASC LIMIT 1", null)) == null)) {
                    if (rawQuery.getCount() > 0) {
                        rawQuery.close();
                        return true;
                    }
                    rawQuery.close();
                }
                return false;
            } catch (Exception e) {
                C6438i.m22583a(e);
                return true;
            }
        }
    }

    /* renamed from: d */
    public C6341b[] m22927d() {
        Cursor rawQuery;
        long j;
        Exception e;
        OutOfMemoryError e2;
        synchronized (this) {
            ArrayList arrayList = new ArrayList();
            SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
            if (!(readableDatabase == null || (rawQuery = readableDatabase.rawQuery("SELECT _id,_data FROM apiqueue ORDER BY _type,_mode,_id ASC LIMIT 10", null)) == null)) {
                if (rawQuery.getCount() > 0) {
                    while (rawQuery.moveToNext()) {
                        try {
                            j = rawQuery.getLong(rawQuery.getColumnIndex("_id"));
                            try {
                                C6341b a = C6341b.m23206a(C6428a.m22653a(C6431d.m22622b(this.f15857a), rawQuery.getBlob(rawQuery.getColumnIndex("_data"))));
                                if (!a.m23199f()) {
                                    a.f15759e = j;
                                    a.f15765k = false;
                                    arrayList.add(a);
                                } else if (j != -1) {
                                    m22928c(j);
                                }
                            } catch (Exception e3) {
                                e = e3;
                                C6438i.m22583a(e);
                                if (j != -1) {
                                    m22928c(j);
                                }
                            } catch (IncompatibleClassChangeError e4) {
                                if (j != -1) {
                                    m22928c(j);
                                    if (this.f15857a != null) {
                                        C6431d.m22621b(this.f15857a, "pref_gga_job_deserialize_error", C6431d.m22628a(this.f15857a, "pref_gga_job_deserialize_error", 0) + 1);
                                    }
                                }
                            } catch (OutOfMemoryError e5) {
                                e2 = e5;
                                C6438i.m22583a(e2);
                                if (j != -1) {
                                    m22928c(j);
                                }
                            }
                        } catch (Exception e6) {
                            e = e6;
                            j = -1;
                        } catch (IncompatibleClassChangeError e7) {
                            j = -1;
                        } catch (OutOfMemoryError e8) {
                            e2 = e8;
                            j = -1;
                        }
                    }
                }
                rawQuery.close();
            }
            if (arrayList.size() > 0) {
                return (C6341b[]) arrayList.toArray(new C6341b[arrayList.size()]);
            }
            return null;
        }
    }

    /* renamed from: e */
    public int m22926e() {
        Cursor rawQuery;
        synchronized (this) {
            try {
                new JSONArray();
                SQLiteDatabase readableDatabase = this.f15858b.getReadableDatabase();
                if (!(readableDatabase == null || (rawQuery = readableDatabase.rawQuery("SELECT * FROM apiqueue", null)) == null)) {
                    if (rawQuery.getCount() > 0) {
                        int count = rawQuery.getCount();
                        rawQuery.close();
                        return count;
                    }
                    rawQuery.close();
                }
            } catch (Exception e) {
            }
            return 0;
        }
    }
}
