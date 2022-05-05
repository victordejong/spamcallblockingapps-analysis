package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzag.class */
public final class zzag {
    @WorkerThread
    /* renamed from: a */
    private static Set<String> m11720a(SQLiteDatabase sQLiteDatabase, String str) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m11719b(zzer zzerVar, SQLiteDatabase sQLiteDatabase) {
        if (zzerVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                zzerVar.m11557G().m11540a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzerVar.m11557G().m11540a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzerVar.m11557G().m11540a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                zzerVar.m11557G().m11540a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    /* renamed from: c */
    public static void m11718c(zzer zzerVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        String[] split;
        if (zzerVar != null) {
            if (!m11717d(zzerVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                if (zzerVar != null) {
                    Set<String> a = m11720a(sQLiteDatabase, str);
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
                        zzerVar.m11557G().m11538c("Table has extra columns. table, columns", str, TextUtils.join(", ", a));
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Monitor must not be null");
            } catch (SQLiteException e) {
                zzerVar.m11560D().m11539b("Failed to verify columns on table that was just created", str);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    @WorkerThread
    /* renamed from: d */
    private static boolean m11717d(zzer zzerVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (zzerVar != null) {
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
                    zzerVar.m11557G().m11538c("Error querying for table", str, e);
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
