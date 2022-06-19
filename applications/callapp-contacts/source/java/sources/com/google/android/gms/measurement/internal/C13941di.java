package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
/* renamed from: com.google.android.gms.measurement.internal.di */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/di.class */
public final class C13941di extends AbstractC13962ec {

    /* renamed from: a */
    private final C13940dh f51377a = new C13940dh(this, this.f51637t.f51523a, "google_app_measurement_local.db");

    /* renamed from: b */
    private boolean f51378b;

    public C13941di(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: g */
    private SQLiteDatabase m12100g() throws SQLiteException {
        if (this.f51378b) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f51377a.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f51378b = true;
        return null;
    }

    /* renamed from: h */
    private boolean m12099h() {
        return this.f51637t.f51523a.getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0260  */
    /* JADX WARN: Type inference failed for: r0v140, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m12106a(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 653
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13941di.m12106a(int, byte[]):boolean");
    }

    /* renamed from: a */
    public final boolean m12105a(zzaa zzaaVar) {
        this.f51637t.m11988g();
        byte[] m11600a = C14116ju.m11600a((Parcelable) zzaaVar);
        if (m11600a.length > 131072) {
            this.f51637t.mo11661c().f51396d.m12092a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return m12106a(2, m11600a);
    }

    /* renamed from: a */
    public final boolean m12104a(zzas zzasVar) {
        Parcel obtain = Parcel.obtain();
        C14140r.m11513a(zzasVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f51637t.mo11661c().f51396d.m12092a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return m12106a(0, marshall);
    }

    /* renamed from: a */
    public final boolean m12103a(zzkl zzklVar) {
        Parcel obtain = Parcel.obtain();
        C14113jr.m11613a(zzklVar, obtain);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f51637t.mo11661c().f51396d.m12092a("User property too long for local database. Sending directly to service");
            return false;
        }
        return m12106a(1, marshall);
    }

    public final void ae_() {
        int delete;
        mo11884S_();
        try {
            SQLiteDatabase m12100g = m12100g();
            if (m12100g == null || (delete = m12100g.delete("messages", null, null)) <= 0) {
                return;
            }
            this.f51637t.mo11661c().f51403k.m12091a("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            this.f51637t.mo11661c().f51395c.m12091a("Error resetting local analytics data. error", e);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13962ec
    /* renamed from: b */
    protected final boolean mo11709b() {
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
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v226, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v15 */
    /* JADX WARN: Type inference failed for: r23v16 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Type inference failed for: r3v14, types: [long] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> m12102e() {
        /*
            Method dump skipped, instructions count: 1299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13941di.m12102e():java.util.List");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    public final boolean m12101f() {
        int i;
        mo11884S_();
        if (!this.f51378b && m12099h()) {
            int i2 = 0;
            int i3 = 5;
            while (true) {
                int i4 = i3;
                if (i2 >= 5) {
                    this.f51637t.mo11661c().f51398f.m12092a("Error deleting app launch break from local database in reasonable time");
                    return false;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                try {
                    try {
                        SQLiteDatabase m12100g = m12100g();
                        if (m12100g == null) {
                            this.f51378b = true;
                            return false;
                        }
                        m12100g.beginTransaction();
                        m12100g.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        m12100g.setTransactionSuccessful();
                        m12100g.endTransaction();
                        m12100g.close();
                        return true;
                    } catch (SQLiteFullException e) {
                        this.f51637t.mo11661c().f51395c.m12091a("Error deleting app launch break from local database", e);
                        this.f51378b = true;
                        i = i4;
                        if (0 != 0) {
                            i = i4;
                            sQLiteDatabase = null;
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteDatabaseLockedException e2) {
                    SystemClock.sleep(i4);
                    int i5 = i4 + 20;
                    i = i5;
                    if (0 != 0) {
                        sQLiteDatabase = null;
                        i = i5;
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
                    this.f51637t.mo11661c().f51395c.m12091a("Error deleting app launch break from local database", e3);
                    this.f51378b = true;
                    i = i4;
                    if (0 != 0) {
                        i = i4;
                        sQLiteDatabase.close();
                    }
                }
                i2++;
                i3 = i;
            }
        } else {
            return false;
        }
    }
}
