package p081h.p203i.p204a.p224e.p285m.p287b;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: h.i.a.e.m.b.r4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/r4.class */
public final class C9050r4 {
    @WorkerThread
    /* renamed from: a */
    public static Set<String> m16314a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
        sb.append("SELECT * FROM ");
        sb.append(str);
        sb.append(" LIMIT 0");
        Cursor rawQuery = sQLiteDatabase.rawQuery(sb.toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    /* renamed from: a */
    public static void m16313a(C9027o oVar, SQLiteDatabase sQLiteDatabase) {
        if (oVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                oVar.m16372v().m16338a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                oVar.m16372v().m16338a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                oVar.m16372v().m16338a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                oVar.m16372v().m16338a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    @WorkerThread
    /* renamed from: a */
    public static void m16311a(C9027o oVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        String[] split;
        if (oVar != null) {
            if (!m16312a(oVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                if (oVar != null) {
                    Set<String> a = m16314a(sQLiteDatabase, str);
                    for (String str4 : str3.split(",")) {
                        if (!a.remove(str4)) {
                            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str4).length());
                            sb.append("Table ");
                            sb.append(str);
                            sb.append(" is missing required column: ");
                            sb.append(str4);
                            throw new SQLiteException(sb.toString());
                        }
                    }
                    if (strArr != null) {
                        for (int i = 0; i < strArr.length; i += 2) {
                            if (!a.remove(strArr[i])) {
                                sQLiteDatabase.execSQL(strArr[i + 1]);
                            }
                        }
                    }
                    if (!a.isEmpty()) {
                        oVar.m16372v().m16336a("Table has extra columns. table, columns", str, TextUtils.join(UserProfile.CARD_CATE_SEPARATOR, a));
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Monitor must not be null");
            } catch (SQLiteException e) {
                oVar.m16375s().m16337a("Failed to verify columns on table that was just created", str);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static boolean m16312a(C9027o oVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (oVar != null) {
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    Cursor query = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
                    cursor2 = query;
                    cursor = query;
                    boolean moveToFirst = query.moveToFirst();
                    if (query != null) {
                        query.close();
                    }
                    return moveToFirst;
                } catch (SQLiteException e) {
                    oVar.m16372v().m16336a("Error querying for table", str, e);
                    if (cursor == null) {
                        return false;
                    }
                    cursor.close();
                    return false;
                }
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }
}
