package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j.class */
public final class j {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Cdo doVar, SQLiteDatabase sQLiteDatabase) {
        if (doVar != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                doVar.f.a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                doVar.f.a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                doVar.f.a("Failed to turn on database read permission for owner");
            }
            if (!file.setWritable(true, true)) {
                doVar.f.a("Failed to turn on database write permission for owner");
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r0 == false) goto L_0x0076;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.gms.measurement.internal.Cdo r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14) throws android.database.sqlite.SQLiteException {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.j.a(com.google.android.gms.measurement.internal.do, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }
}
