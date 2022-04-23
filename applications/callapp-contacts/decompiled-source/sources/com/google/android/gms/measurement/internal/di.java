package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/di.class */
public final class di extends ec {

    /* renamed from: a  reason: collision with root package name */
    private final dh f29490a = new dh(this, this.t.f29583a, "google_app_measurement_local.db");

    /* renamed from: b  reason: collision with root package name */
    private boolean f29491b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(es esVar) {
        super(esVar);
    }

    private SQLiteDatabase g() throws SQLiteException {
        if (this.f29491b) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f29490a.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f29491b = true;
        return null;
    }

    private boolean h() {
        return this.t.f29583a.getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0260  */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.di.a(int, byte[]):boolean");
    }

    public final boolean a(zzaa zzaaVar) {
        this.t.g();
        byte[] a2 = ju.a((Parcelable) zzaaVar);
        if (a2.length <= 131072) {
            return a(2, a2);
        }
        this.t.c().f29507d.a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean a(zzas zzasVar) {
        Parcel obtain = Parcel.obtain();
        r.a(zzasVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return a(0, marshall);
        }
        this.t.c().f29507d.a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean a(zzkl zzklVar) {
        Parcel obtain = Parcel.obtain();
        jr.a(zzklVar, obtain);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return a(1, marshall);
        }
        this.t.c().f29507d.a("User property too long for local database. Sending directly to service");
        return false;
    }

    public final void ae_() {
        int delete;
        S_();
        try {
            SQLiteDatabase g = g();
            if (g != null && (delete = g.delete("messages", null, null)) > 0) {
                this.t.c().k.a("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            this.t.c().f29506c.a("Error resetting local analytics data. error", e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.ec
    protected final boolean b() {
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x042d  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0463  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04e0  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04ec  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04c7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x04c7 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v226, types: [long] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v15 */
    /* JADX WARN: Type inference failed for: r23v16 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> e() {
        /*
            Method dump skipped, instructions count: 1299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.di.e():java.util.List");
    }

    public final boolean f() {
        S_();
        if (this.f29491b || !h()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            try {
                try {
                    SQLiteDatabase g = g();
                    if (g == null) {
                        this.f29491b = true;
                        return false;
                    }
                    g.beginTransaction();
                    g.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    g.setTransactionSuccessful();
                    g.endTransaction();
                    g.close();
                    return true;
                } catch (SQLiteFullException e) {
                    this.t.c().f29506c.a("Error deleting app launch break from local database", e);
                    this.f29491b = true;
                    i = i;
                    if (0 != 0) {
                        i = i;
                        sQLiteDatabase = null;
                        sQLiteDatabase.close();
                    }
                }
            } catch (SQLiteDatabaseLockedException e2) {
                SystemClock.sleep(i);
                int i3 = i + 20;
                i = i3;
                if (0 != 0) {
                    sQLiteDatabase = null;
                    i = i3;
                    sQLiteDatabase.close();
                }
            } catch (SQLiteException e3) {
                if (0 != 0) {
                    sQLiteDatabase2 = null;
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (sQLiteDatabase2 != null) {
                            sQLiteDatabase2.close();
                        }
                        throw th;
                    }
                }
                this.t.c().f29506c.a("Error deleting app launch break from local database", e3);
                this.f29491b = true;
                i = i;
                if (0 != 0) {
                    i = i;
                    sQLiteDatabase.close();
                }
            }
        }
        this.t.c().f.a("Error deleting app launch break from local database in reasonable time");
        return false;
    }
}
