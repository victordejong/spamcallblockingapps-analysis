package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* renamed from: com.google.android.gms.measurement.internal.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/j.class */
public final class C7752j {
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0 == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ab  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m6348a(com.google.android.gms.measurement.internal.C7813o3 r9, android.database.sqlite.SQLiteDatabase r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String[] r14) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7752j.m6348a(com.google.android.gms.measurement.internal.o3, android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: b */
    public static void m6347b(C7813o3 c7813o3, SQLiteDatabase sQLiteDatabase) {
        if (c7813o3 != null) {
            File file = new File(sQLiteDatabase.getPath());
            if (!file.setReadable(false, false)) {
                c7813o3.m6192p().m6216a("Failed to turn off database read permission");
            }
            if (!file.setWritable(false, false)) {
                c7813o3.m6192p().m6216a("Failed to turn off database write permission");
            }
            if (!file.setReadable(true, true)) {
                c7813o3.m6192p().m6216a("Failed to turn on database read permission for owner");
            }
            if (file.setWritable(true, true)) {
                return;
            }
            c7813o3.m6192p().m6216a("Failed to turn on database write permission for owner");
            return;
        }
        throw new IllegalArgumentException("Monitor must not be null");
    }
}
