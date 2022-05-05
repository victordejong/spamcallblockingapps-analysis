package com.google.android.gms.measurement.internal;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import com.tmobile.services.nameid.model.TmoUserStatus;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzen.class */
public final class zzen extends zzg {

    /* renamed from: c */
    private final zzem f9097c = new zzem(this, mo11075f(), "google_app_measurement_local.db");

    /* renamed from: d */
    private boolean f9098d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzen(zzfv zzfvVar) {
        super(zzfvVar);
    }

    /* renamed from: A */
    private static long m11582A(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            Cursor query = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{TmoUserStatus.CUSTOMER_TYPE_METRO}, null, null, "rowid desc", TmoUserStatus.CUSTOMER_TYPE_POSTPAID);
            if (query.moveToFirst()) {
                cursor = query;
                long j = query.getLong(0);
                if (query != null) {
                    query.close();
                }
                return j;
            } else if (query == null) {
                return -1L;
            } else {
                query.close();
                return -1L;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x025d  */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.WorkerThread
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m11580C(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzen.m11580C(int, byte[]):boolean");
    }

    @VisibleForTesting
    @WorkerThread
    /* renamed from: J */
    private final SQLiteDatabase m11573J() throws SQLiteException {
        if (this.f9098d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f9097c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f9098d = true;
        return null;
    }

    @VisibleForTesting
    /* renamed from: K */
    private final boolean m11572K() {
        return mo11075f().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03c8  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x042b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x042b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x042b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v5 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Type inference failed for: r23v7 */
    /* JADX WARN: Type inference failed for: r23v8 */
    /* JADX WARN: Type inference failed for: r23v9 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> m11581B(int r11) {
        /*
            Method dump skipped, instructions count: 1144
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzen.m11581B(int):java.util.List");
    }

    /* renamed from: D */
    public final boolean m11579D(zzar zzarVar) {
        Parcel obtain = Parcel.obtain();
        zzarVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m11580C(0, marshall);
        }
        mo11081c().m11559E().m11540a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    /* renamed from: E */
    public final boolean m11578E(zzkr zzkrVar) {
        Parcel obtain = Parcel.obtain();
        zzkrVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length <= 131072) {
            return m11580C(1, marshall);
        }
        mo11081c().m11559E().m11540a("User property too long for local database. Sending directly to service");
        return false;
    }

    /* renamed from: F */
    public final boolean m11577F(zzw zzwVar) {
        m11313j();
        byte[] n0 = zzkw.m10951n0(zzwVar);
        if (n0.length <= 131072) {
            return m11580C(2, n0);
        }
        mo11081c().m11559E().m11540a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    @WorkerThread
    /* renamed from: G */
    public final void m11576G() {
        mo11316e();
        try {
            int delete = m11573J().delete("messages", null, null) + 0;
            if (delete > 0) {
                mo11081c().m11552L().m11539b("Reset local analytics data. records", Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            mo11081c().m11560D().m11539b("Error resetting local analytics data. error", e);
        }
    }

    @WorkerThread
    /* renamed from: H */
    public final boolean m11575H() {
        return m11580C(3, new byte[0]);
    }

    @WorkerThread
    /* renamed from: I */
    public final boolean m11574I() {
        mo11316e();
        if (this.f9098d || !m11572K()) {
            return false;
        }
        int i = 5;
        for (int i2 = 0; i2 < 5; i2++) {
            SQLiteDatabase sQLiteDatabase = null;
            SQLiteDatabase sQLiteDatabase2 = null;
            SQLiteDatabase sQLiteDatabase3 = null;
            SQLiteDatabase sQLiteDatabase4 = null;
            try {
                try {
                    SQLiteDatabase J = m11573J();
                    if (J == null) {
                        this.f9098d = true;
                        if (J == null) {
                            return false;
                        }
                        J.close();
                        return false;
                    }
                    J.beginTransaction();
                    J.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                    J.setTransactionSuccessful();
                    J.endTransaction();
                    if (J == null) {
                        return true;
                    }
                    J.close();
                    return true;
                } catch (SQLiteDatabaseLockedException e) {
                    SystemClock.sleep(i);
                    int i3 = i + 20;
                    i = i3;
                    if (0 != 0) {
                        sQLiteDatabase2.close();
                        i = i3;
                    }
                }
            } catch (SQLiteFullException e2) {
                mo11081c().m11560D().m11539b("Error deleting app launch break from local database", e2);
                this.f9098d = true;
                i = i;
                if (0 != 0) {
                    sQLiteDatabase3.close();
                    i = i;
                }
            } catch (SQLiteException e3) {
                if (0 != 0) {
                    sQLiteDatabase4 = null;
                    try {
                        if (sQLiteDatabase.inTransaction()) {
                            sQLiteDatabase.endTransaction();
                        }
                    } catch (Throwable th) {
                        if (sQLiteDatabase4 != null) {
                            sQLiteDatabase4.close();
                        }
                        throw th;
                    }
                }
                mo11081c().m11560D().m11539b("Error deleting app launch break from local database", e3);
                this.f9098d = true;
                i = i;
                if (0 != 0) {
                    sQLiteDatabase.close();
                    i = i;
                }
            }
        }
        mo11081c().m11557G().m11540a("Error deleting app launch break from local database in reasonable time");
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return false;
    }
}
