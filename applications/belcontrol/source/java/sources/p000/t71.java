package p000;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* renamed from: t71 */
/* loaded from: classes3-dex2jar.jar:t71.class */
public class t71 extends SQLiteOpenHelper {

    /* renamed from: d */
    public static final Integer f8150d = 39;

    /* renamed from: f */
    public static SQLiteDatabase f8151f = null;

    /* renamed from: a */
    public boolean f8152a = false;

    /* renamed from: b */
    public Class<?>[] f8153b = {x81.class, q81.class, l81.class, s81.class, t81.class, o81.class, p81.class, z81.class, a91.class, u81.class, w81.class, v81.class, j81.class, r81.class, m81.class, n81.class, k81.class, y81.class};

    /* renamed from: c */
    public Class<?>[] f8154c = {x81.class, q81.class, l81.class, s81.class, t81.class, u81.class, w81.class, v81.class, j81.class, r81.class, m81.class, n81.class, k81.class, y81.class};

    public t71(Context context) {
        super(context, "cca", (SQLiteDatabase.CursorFactory) null, f8150d.intValue());
        m549l();
        getReadableDatabase();
    }

    /* renamed from: m */
    public static boolean m548m(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
        if (rawQuery != null) {
            while (rawQuery.moveToNext()) {
                if (str2.equalsIgnoreCase(rawQuery.getString(rawQuery.getColumnIndex("name")))) {
                    rawQuery.close();
                    return true;
                }
            }
            rawQuery.close();
            return false;
        }
        return false;
    }

    /* renamed from: r */
    public static boolean m547r(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("select DISTINCT tbl_name from sqlite_master where tbl_name = '" + str + "'", null);
        if (rawQuery != null) {
            int count = rawQuery.getCount();
            rawQuery.close();
            return count > 0;
        }
        return false;
    }

    /* renamed from: a */
    public void m553a(boolean z) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        if (writableDatabase == null) {
            j91.m1505k(this, "Unable to get writable DB.");
            return;
        }
        for (Class<?> cls : z ? this.f8154c : this.f8153b) {
            try {
                v71 v71Var = (v71) cls.newInstance();
                if (m547r(writableDatabase, v71Var.mo59p())) {
                    writableDatabase.delete(v71Var.mo59p(), null, null);
                }
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to clear table " + cls.getSimpleName(), th);
            }
        }
    }

    /* renamed from: e */
    public final void m552e(SQLiteDatabase sQLiteDatabase, v71 v71Var) {
        if (sQLiteDatabase != null) {
            for (String str : v71Var.mo60o()) {
                sQLiteDatabase.execSQL(str);
            }
            return;
        }
        throw new g91("Unable to get writable DB.");
    }

    /* renamed from: g */
    public final void m551g(SQLiteDatabase sQLiteDatabase, v71 v71Var) {
        if (sQLiteDatabase != null) {
            String mo59p = v71Var.mo59p();
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS '" + mo59p + "'");
            return;
        }
        throw new g91("Unable to get writable DB.");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getReadableDatabase() {
        SQLiteDatabase sQLiteDatabase = f8151f;
        if (sQLiteDatabase == null) {
            sQLiteDatabase = super.getReadableDatabase();
        }
        return sQLiteDatabase;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase sQLiteDatabase = f8151f;
        if (sQLiteDatabase == null) {
            sQLiteDatabase = super.getWritableDatabase();
        }
        return sQLiteDatabase;
    }

    /* renamed from: h */
    public void m550h(Context context) {
        if (context != null) {
            context.deleteDatabase("cca");
        }
    }

    /* renamed from: l */
    public final void m549l() {
        Class<?>[] clsArr;
        if (this.f8152a) {
            return;
        }
        for (Class<?> cls : this.f8153b) {
            String str = "Initializing table: " + cls.getSimpleName();
            try {
                cls.getMethod("init", t71.class).invoke(null, this);
            } catch (Throwable th) {
                j91.m1505k(this, "Unable to init table: " + cls.getSimpleName());
            }
        }
        this.f8152a = true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m549l();
        for (Class<?> cls : this.f8153b) {
            try {
                m552e(sQLiteDatabase, (v71) cls.newInstance());
            } catch (Throwable th) {
                j91.m1504l(this, "Unable to create table: " + cls.getSimpleName(), th);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x0424, code lost:
        continue;
     */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1071
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.t71.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
