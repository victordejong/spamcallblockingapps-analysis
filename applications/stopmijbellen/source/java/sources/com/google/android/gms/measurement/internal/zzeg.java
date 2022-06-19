package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeg.class */
public final class zzeg extends zzf {
    private final zzef zza;
    private boolean zzb;

    public zzeg(zzfu zzfuVar) {
        super(zzfuVar);
        Context zzax = this.zzs.zzax();
        this.zzs.zzc();
        this.zza = new zzef(this, zzax, "google_app_measurement_local.db");
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0257  */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzq(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzeg.zzq(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zze() {
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
            this.zzs.zzau().zzk().zzb("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            this.zzs.zzau().zzb().zzb("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzi(zzas zzasVar) {
        Parcel obtain = Parcel.obtain();
        zzat.zza(zzasVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzau().zzc().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zzq(0, marshall);
    }

    public final boolean zzj(zzkq zzkqVar) {
        Parcel obtain = Parcel.obtain();
        zzkr.zza(zzkqVar, obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            this.zzs.zzau().zzc().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(1, marshall);
    }

    public final boolean zzk(zzaa zzaaVar) {
        byte[] zzX = this.zzs.zzl().zzX(zzaaVar);
        if (zzX.length > 131072) {
            this.zzs.zzau().zzc().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zzq(2, zzX);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x04d7  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x04b3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116 */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v217, types: [long] */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v10 */
    /* JADX WARN: Type inference failed for: r23v11 */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v15 */
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
            Method dump skipped, instructions count: 1284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzeg.zzl(int):java.util.List");
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
                    C1676a.m4786k(this.zzs, "Error deleting app launch break from local database in reasonable time");
                    return false;
                }
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                try {
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
                        } catch (SQLiteDatabaseLockedException e) {
                            SystemClock.sleep(i4);
                            int i5 = i4 + 20;
                            i = i5;
                            if (0 != 0) {
                                i = i5;
                                sQLiteDatabase = null;
                                sQLiteDatabase.close();
                            }
                        }
                    } catch (SQLiteException e2) {
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
                        this.zzs.zzau().zzb().zzb("Error deleting app launch break from local database", e2);
                        this.zzb = true;
                        i = i4;
                        if (0 != 0) {
                            i = i4;
                            sQLiteDatabase.close();
                        }
                    }
                } catch (SQLiteFullException e3) {
                    this.zzs.zzau().zzb().zzb("Error deleting app launch break from local database", e3);
                    this.zzb = true;
                    i = i4;
                    if (0 != 0) {
                        sQLiteDatabase = null;
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

    @VisibleForTesting
    public final SQLiteDatabase zzo() throws SQLiteException {
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

    @VisibleForTesting
    public final boolean zzp() {
        Context zzax = this.zzs.zzax();
        this.zzs.zzc();
        return zzax.getDatabasePath("google_app_measurement_local.db").exists();
    }
}
