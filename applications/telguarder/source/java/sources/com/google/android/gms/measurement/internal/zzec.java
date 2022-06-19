package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzec.class */
public final class zzec extends zzf {
    private final zzeb zza;
    private boolean zzb;

    public zzec(zzfl zzflVar) {
        super(zzflVar);
        Context zzaw = this.zzx.zzaw();
        this.zzx.zzc();
        this.zza = new zzeb(this, zzaw, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0268  */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzq(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 661
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzec.zzq(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return false;
    }

    public final void zzh() {
        int delete;
        zzg();
        try {
            SQLiteDatabase zzo = zzo();
            if (zzo == null || (delete = zzo.delete("messages", null, null)) <= 0) {
                return;
            }
            this.zzx.zzat().zzk().zzb("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            this.zzx.zzat().zzb().zzb("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzi(zzas zzasVar) {
        Parcel obtain = Parcel.obtain();
        zzat.zza(zzasVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzx.zzat().zzc().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzq(0, marshall);
    }

    public final boolean zzj(zzkg zzkgVar) {
        Parcel obtain = Parcel.obtain();
        zzkh.zza(zzkgVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzx.zzat().zzc().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(1, marshall);
    }

    public final boolean zzk(zzaa zzaaVar) {
        byte[] zzX = this.zzx.zzl().zzX(zzaaVar);
        if (zzX.length > 131072) {
            this.zzx.zzat().zzc().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(2, zzX);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x04c5 A[SYNTHETIC] */
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zzl(int r11) {
        /*
            Method dump skipped, instructions count: 1296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzec.zzl(int):java.util.List");
    }

    public final boolean zzm() {
        return zzq(3, new byte[0]);
    }

    /* JADX WARN: Finally extract failed */
    public final boolean zzn() {
        int i;
        zzg();
        if (!this.zzb && zzp()) {
            int i2 = 0;
            int i3 = 5;
            while (true) {
                int i4 = i3;
                if (i2 >= 5) {
                    this.zzx.zzat().zze().zza("Error deleting app launch break from local database in reasonable time");
                    return false;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                try {
                    try {
                        SQLiteDatabase zzo = zzo();
                        if (zzo == null) {
                            this.zzb = true;
                            return false;
                        }
                        zzo.beginTransaction();
                        zzo.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        zzo.setTransactionSuccessful();
                        zzo.endTransaction();
                        zzo.close();
                        return true;
                    } catch (SQLiteFullException e) {
                        this.zzx.zzat().zzb().zzb("Error deleting app launch break from local database", e);
                        this.zzb = true;
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
                    this.zzx.zzat().zzb().zzb("Error deleting app launch break from local database", e3);
                    this.zzb = true;
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

    final SQLiteDatabase zzo() throws SQLiteException {
        if (this.zzb) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.zza.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.zzb = true;
        return null;
    }

    final boolean zzp() {
        Context zzaw = this.zzx.zzaw();
        this.zzx.zzc();
        return zzaw.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
