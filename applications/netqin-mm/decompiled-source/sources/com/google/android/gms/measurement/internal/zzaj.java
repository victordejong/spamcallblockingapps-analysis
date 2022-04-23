package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaj.class */
public final class zzaj {
    /* renamed from: a */
    public static Set<String> m9305a(SQLiteDatabase sQLiteDatabase, String str) {
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
    public static void m9304a(zzeq zzeqVar, SQLiteDatabase sQLiteDatabase) {
        if (zzeqVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                zzeqVar.m9149t().m9143a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                zzeqVar.m9149t().m9143a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                zzeqVar.m9149t().m9143a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                zzeqVar.m9149t().m9143a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    /* renamed from: a */
    public static void m9302a(zzeq zzeqVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws SQLiteException {
        String[] split;
        if (zzeqVar != null) {
            if (!m9303a(zzeqVar, sQLiteDatabase, str)) {
                sQLiteDatabase.execSQL(str2);
            }
            try {
                if (zzeqVar != null) {
                    Set<String> a = m9305a(sQLiteDatabase, str);
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
                        zzeqVar.m9149t().m9141a("Table has extra columns. table, columns", str, TextUtils.join(", ", a));
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Monitor must not be null");
            } catch (SQLiteException e) {
                zzeqVar.m9152q().m9142a("Failed to verify columns on table that was just created", str);
                throw e;
            }
        } else {
            throw new IllegalArgumentException("Monitor must not be null");
        }
    }

    /* renamed from: a */
    public static boolean m9303a(zzeq zzeqVar, SQLiteDatabase sQLiteDatabase, String str) {
        if (zzeqVar != null) {
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
                    zzeqVar.m9149t().m9141a("Error querying for table", str, e);
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
