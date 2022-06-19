package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* renamed from: com.google.android.gms.measurement.internal.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j.class */
public final class C14095j {
    /* renamed from: a */
    public static void m11706a(C13947do c13947do, SQLiteDatabase sQLiteDatabase) {
        if (c13947do != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                c13947do.f51398f.m12092a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                c13947do.f51398f.m12092a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                c13947do.f51398f.m12092a("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            c13947do.f51398f.m12092a("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0043, code lost:
        if (r0 == false) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m11705a(com.google.android.gms.measurement.internal.C13947do r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14) throws android.database.sqlite.SQLiteException {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14095j.m11705a(com.google.android.gms.measurement.internal.do, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }
}
