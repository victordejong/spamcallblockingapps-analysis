package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzes.class */
public final class zzes extends zze {
    private final zzer zza = new zzer(this, zzn(), "google_app_measurement_local.db");
    private boolean zzb;

    public zzes(zzga zzgaVar) {
        super(zzgaVar);
    }

    private static long zza(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor = null;
        try {
            Cursor query = sQLiteDatabase.query("messages", new String[]{"rowid"}, "type=?", new String[]{"3"}, null, null, "rowid desc", "1");
            if (!query.moveToFirst()) {
                if (query == null) {
                    return -1L;
                }
                query.close();
                return -1L;
            }
            cursor = query;
            long j = query.getLong(0);
            if (query != null) {
                query.close();
            }
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x026a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0188 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0245 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x023e  */
    /* JADX WARN: Type inference failed for: r0v123, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zza(int r10, byte[] r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zza(int, byte[]):boolean");
    }

    private final SQLiteDatabase zzae() {
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

    private final boolean zzaf() {
        return zzn().getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x043a  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0467  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0476  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x04c2  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x04ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x04ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04ca A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v157, types: [long] */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable> zza(int r11) {
        /*
            Method dump skipped, instructions count: 1290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzes.zza(int):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(zzan zzanVar) {
        Parcel obtain = Parcel.obtain();
        zzanVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzr().zzi().zza("Event is too long for local database. Sending event directly to service");
            return false;
        }
        return zza(0, marshall);
    }

    public final boolean zza(zzkl zzklVar) {
        Parcel obtain = Parcel.obtain();
        zzklVar.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        if (marshall.length > 131072) {
            zzr().zzi().zza("User property too long for local database. Sending directly to service");
            return false;
        }
        return zza(1, marshall);
    }

    public final boolean zza(zzv zzvVar) {
        zzp();
        byte[] zza = zzkm.zza((Parcelable) zzvVar);
        if (zza.length > 131072) {
            zzr().zzi().zza("Conditional user property too long for local database. Sending directly to service");
            return false;
        }
        return zza(2, zza);
    }

    public final void zzab() {
        zzb();
        zzd();
        try {
            int delete = zzae().delete("messages", null, null) + 0;
            if (delete <= 0) {
                return;
            }
            zzr().zzx().zza("Reset local analytics data. records", Integer.valueOf(delete));
        } catch (SQLiteException e) {
            zzr().zzf().zza("Error resetting local analytics data. error", e);
        }
    }

    public final boolean zzac() {
        return zza(3, new byte[0]);
    }

    public final boolean zzad() {
        int i;
        zzd();
        zzb();
        if (!this.zzb && zzaf()) {
            int i2 = 5;
            int i3 = 0;
            while (i3 < 5) {
                SQLiteDatabase sQLiteDatabase = null;
                SQLiteDatabase sQLiteDatabase2 = null;
                SQLiteDatabase sQLiteDatabase3 = null;
                SQLiteDatabase sQLiteDatabase4 = null;
                try {
                    try {
                        SQLiteDatabase zzae = zzae();
                        if (zzae == null) {
                            this.zzb = true;
                            if (zzae == null) {
                                return false;
                            }
                            zzae.close();
                            return false;
                        }
                        zzae.beginTransaction();
                        zzae.delete("messages", "type == ?", new String[]{Integer.toString(3)});
                        zzae.setTransactionSuccessful();
                        zzae.endTransaction();
                        if (zzae == null) {
                            return true;
                        }
                        zzae.close();
                        return true;
                    } catch (SQLiteException e) {
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
                        zzr().zzf().zza("Error deleting app launch break from local database", e);
                        this.zzb = true;
                        i = i2;
                        if (0 != 0) {
                            sQLiteDatabase.close();
                            i = i2;
                        }
                        i3++;
                        i2 = i;
                    }
                } catch (SQLiteDatabaseLockedException e2) {
                    SystemClock.sleep(i2);
                    int i4 = i2 + 20;
                    i = i4;
                    if (0 != 0) {
                        sQLiteDatabase2.close();
                        i = i4;
                    }
                    i3++;
                    i2 = i;
                } catch (SQLiteFullException e3) {
                    zzr().zzf().zza("Error deleting app launch break from local database", e3);
                    this.zzb = true;
                    i = i2;
                    if (0 != 0) {
                        sQLiteDatabase3.close();
                        i = i2;
                    }
                    i3++;
                    i2 = i;
                }
            }
            zzr().zzi().zza("Error deleting app launch break from local database in reasonable time");
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }
}
