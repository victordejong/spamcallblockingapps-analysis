package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.google.android.gms.measurement.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g.class */
public final class C4319g {
    /* renamed from: a */
    private static Set<String> m4441a(SQLiteDatabase sQLiteDatabase, String str) {
        HashSet hashSet = new HashSet();
        Cursor rawQuery = sQLiteDatabase.rawQuery(new StringBuilder(String.valueOf(str).length() + 22).append("SELECT * FROM ").append(str).append(" LIMIT 0").toString(), null);
        try {
            Collections.addAll(hashSet, rawQuery.getColumnNames());
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    /* renamed from: a */
    public static void m4440a(C4263dy c4263dy, SQLiteDatabase sQLiteDatabase) {
        if (c4263dy == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            c4263dy.m4662e().m4654a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            c4263dy.m4662e().m4654a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            c4263dy.m4662e().m4654a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        c4263dy.m4662e().m4654a("Failed to turn on database write permission for owner");
    }

    /* renamed from: a */
    public static void m4438a(C4263dy c4263dy, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) {
        String[] split;
        if (c4263dy == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        if (!m4439a(c4263dy, sQLiteDatabase, str)) {
            sQLiteDatabase.execSQL(str2);
        }
        try {
            if (c4263dy == null) {
                throw new IllegalArgumentException("Monitor must not be null");
            }
            Set<String> m4441a = m4441a(sQLiteDatabase, str);
            for (String str4 : str3.split(",")) {
                if (!m4441a.remove(str4)) {
                    throw new SQLiteException(new StringBuilder(String.valueOf(str).length() + 35 + String.valueOf(str4).length()).append("Table ").append(str).append(" is missing required column: ").append(str4).toString());
                }
            }
            if (strArr != null) {
                for (int i = 0; i < strArr.length; i += 2) {
                    if (!m4441a.remove(strArr[i])) {
                        sQLiteDatabase.execSQL(strArr[i + 1]);
                    }
                }
            }
            if (m4441a.isEmpty()) {
                return;
            }
            c4263dy.m4662e().m4652a("Table has extra columns. table, columns", str, TextUtils.join(", ", m4441a));
        } catch (SQLiteException e) {
            c4263dy.m4655x_().m4653a("Failed to verify columns on table that was just created", str);
            throw e;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0077  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m4439a(com.google.android.gms.measurement.internal.C4263dy r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11) {
        /*
            r0 = 0
            r12 = r0
            r0 = r9
            if (r0 != 0) goto L10
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Monitor must not be null"
            r1.<init>(r2)
            throw r0
        L10:
            r0 = r10
            java.lang.String r1 = "SQLITE_MASTER"
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: android.database.sqlite.SQLiteException -> L4e java.lang.Throwable -> L70
            r3 = r2
            r4 = 0
            java.lang.String r5 = "name"
            r3[r4] = r5     // Catch: android.database.sqlite.SQLiteException -> L4e java.lang.Throwable -> L70
            java.lang.String r3 = "name=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: android.database.sqlite.SQLiteException -> L4e java.lang.Throwable -> L70
            r5 = r4
            r6 = 0
            r7 = r11
            r5[r6] = r7     // Catch: android.database.sqlite.SQLiteException -> L4e java.lang.Throwable -> L70
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L4e java.lang.Throwable -> L70
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r12
            r10 = r0
            r0 = r12
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L7f android.database.sqlite.SQLiteException -> L83
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r12
            if (r0 == 0) goto L4b
            r0 = r12
            r0.close()
            r0 = r13
            r14 = r0
        L4b:
            r0 = r14
            return r0
        L4e:
            r15 = move-exception
            r0 = 0
            r12 = r0
        L52:
            r0 = r12
            r10 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.ea r0 = r0.m4662e()     // Catch: java.lang.Throwable -> L7f
            java.lang.String r1 = "Error querying for table"
            r2 = r11
            r3 = r15
            r0.m4652a(r1, r2, r3)     // Catch: java.lang.Throwable -> L7f
            r0 = r12
            if (r0 == 0) goto L6a
            r0 = r12
            r0.close()
        L6a:
            r0 = 0
            r14 = r0
            goto L4b
        L70:
            r9 = move-exception
            r0 = r12
            r10 = r0
        L73:
            r0 = r10
            if (r0 == 0) goto L7d
            r0 = r10
            r0.close()
        L7d:
            r0 = r9
            throw r0
        L7f:
            r9 = move-exception
            goto L73
        L83:
            r15 = move-exception
            goto L52
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C4319g.m4439a(com.google.android.gms.measurement.internal.dy, android.database.sqlite.SQLiteDatabase, java.lang.String):boolean");
    }
}
