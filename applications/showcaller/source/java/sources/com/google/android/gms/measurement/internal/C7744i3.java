package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
/* renamed from: com.google.android.gms.measurement.internal.i3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/i3.class */
public final class C7744i3 extends AbstractC7673c4 {

    /* renamed from: c */
    private final C7732h3 f35332c;

    /* renamed from: d */
    private boolean f35333d;

    public C7744i3(C7858s4 c7858s4) {
        super(c7858s4);
        Context mo6030a = this.f35460a.mo6030a();
        this.f35460a.m6006y();
        this.f35332c = new C7732h3(this, mo6030a, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0268  */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m6354v(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7744i3.m6354v(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7673c4
    /* renamed from: k */
    protected final boolean mo5876k() {
        return false;
    }

    /* renamed from: m */
    public final void m6363m() {
        int delete;
        mo6113f();
        try {
            SQLiteDatabase m6356t = m6356t();
            if (m6356t == null || (delete = m6356t.delete("messages", null, null)) <= 0) {
                return;
            }
            this.f35460a.mo6047C().m6187u().m6215b("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            this.f35460a.mo6047C().m6195m().m6215b("Error resetting local analytics data. error", e);
        }
    }

    /* renamed from: n */
    public final boolean m6362n(zzas zzasVar) {
        Parcel obtain = Parcel.obtain();
        C7842r.m6052a(zzasVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f35460a.mo6047C().m6194n().m6216a("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return m6354v(0, marshall);
    }

    /* renamed from: o */
    public final boolean m6361o(zzkl zzklVar) {
        Parcel obtain = Parcel.obtain();
        C7852r9.m6050a(zzklVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.f35460a.mo6047C().m6194n().m6216a("User property too long for local database. Sending directly to service");
            return false;
        }
        return m6354v(1, marshall);
    }

    /* renamed from: p */
    public final boolean m6360p(zzaa zzaaVar) {
        byte[] m5990L = this.f35460a.m6043G().m5990L(zzaaVar);
        if (m5990L.length > 131072) {
            this.f35460a.mo6047C().m6194n().m6216a("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return m6354v(2, m5990L);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x04ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x04ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04ae A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v124, types: [long] */
    /* JADX WARN: Type inference failed for: r0v211, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v11 */
    /* JADX WARN: Type inference failed for: r22v12 */
    /* JADX WARN: Type inference failed for: r22v13 */
    /* JADX WARN: Type inference failed for: r22v14 */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r3v14, types: [long] */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> m6359q(int r11) {
        /*
            Method dump skipped, instructions count: 1273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7744i3.m6359q(int):java.util.List");
    }

    /* renamed from: r */
    public final boolean m6358r() {
        return m6354v(3, new byte[0]);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final boolean m6357s() {
        int i;
        mo6113f();
        if (!this.f35333d && m6355u()) {
            int i2 = 0;
            int i3 = 5;
            while (true) {
                int i4 = i3;
                if (i2 >= 5) {
                    this.f35460a.mo6047C().m6192p().m6216a("Error deleting app launch break from local database in reasonable time");
                    return false;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                try {
                    try {
                        SQLiteDatabase m6356t = m6356t();
                        if (m6356t == null) {
                            this.f35333d = true;
                            return false;
                        }
                        m6356t.beginTransaction();
                        m6356t.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        m6356t.setTransactionSuccessful();
                        m6356t.endTransaction();
                        m6356t.close();
                        return true;
                    } catch (SQLiteFullException e) {
                        this.f35460a.mo6047C().m6195m().m6215b("Error deleting app launch break from local database", e);
                        this.f35333d = true;
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
                    this.f35460a.mo6047C().m6195m().m6215b("Error deleting app launch break from local database", e3);
                    this.f35333d = true;
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

    /* renamed from: t */
    final SQLiteDatabase m6356t() {
        if (this.f35333d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f35332c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f35333d = true;
        return null;
    }

    /* renamed from: u */
    final boolean m6355u() {
        Context mo6030a = this.f35460a.mo6030a();
        this.f35460a.m6006y();
        return mo6030a.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
