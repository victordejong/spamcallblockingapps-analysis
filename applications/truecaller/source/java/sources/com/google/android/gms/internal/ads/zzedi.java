package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzedi.class */
public final class zzedi {
    private final zzazb zza;
    private final Context zzb;
    private final zzecq zzc;
    private final zzcgz zzd;
    private final String zze;
    private final zzffc zzf;
    private final zzg zzg = zzt.zzg().zzp();

    public zzedi(Context context, zzcgz zzcgzVar, zzazb zzazbVar, zzecq zzecqVar, String str, zzffc zzffcVar) {
        this.zzb = context;
        this.zzd = zzcgzVar;
        this.zza = zzazbVar;
        this.zzc = zzecqVar;
        this.zze = str;
        this.zzf = zzffcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    private static final void zzc(SQLiteDatabase sQLiteDatabase, ArrayList<zzbbi> arrayList) {
        char c;
        int size = arrayList.size();
        int i = 0;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (i >= size) {
                break;
            }
            zzbbi zzbbiVar = arrayList.get(i);
            char c2 = c;
            if (zzbbiVar.zzs() == 2) {
                c2 = c;
                if (zzbbiVar.zza() > c) {
                    c2 = zzbbiVar.zza();
                }
            }
            i++;
            r0 = c2;
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    public final void zza(boolean z) {
        try {
            this.zzc.zza(new zzfdw(this, z) { // from class: com.google.android.gms.internal.ads.zzede
                private final zzedi zza;
                private final boolean zzb;

                {
                    this.zza = this;
                    this.zzb = z;
                }

                @Override // com.google.android.gms.internal.ads.zzfdw
                public final Object zza(Object obj) {
                    this.zza.zzb(this.zzb, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzcgt.zzf(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }

    public final /* synthetic */ Void zzb(boolean z, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (z) {
            this.zzb.deleteDatabase("OfflineUpload.db");
            return null;
        }
        int i = 2;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgi)).booleanValue()) {
            zzffb zza = zzffb.zza("oa_upload");
            zza.zzc("oa_failed_reqs", String.valueOf(zzedd.zzb(sQLiteDatabase, 0)));
            zza.zzc("oa_total_reqs", String.valueOf(zzedd.zzb(sQLiteDatabase, 1)));
            zza.zzc("oa_upload_time", String.valueOf(zzt.zzj().mo38787c()));
            zza.zzc("oa_last_successful_time", String.valueOf(zzedd.zzc(sQLiteDatabase, 2)));
            zza.zzc("oa_session_id", this.zzg.zzC() ? "" : this.zze);
            this.zzf.zza(zza);
            ArrayList<zzbbi> zza2 = zzedd.zza(sQLiteDatabase);
            zzc(sQLiteDatabase, zza2);
            int size = zza2.size();
            for (int i2 = 0; i2 < size; i2++) {
                zzbbi zzbbiVar = zza2.get(i2);
                zzffb zza3 = zzffb.zza("oa_signals");
                zza3.zzc("oa_session_id", this.zzg.zzC() ? "" : this.zze);
                zzbbd zzf = zzbbiVar.zzf();
                String valueOf = zzf.zza() ? String.valueOf(zzf.zzg() - 1) : "-1";
                String obj = zzfpb.zzb(zzbbiVar.zze(), zzedh.zza).toString();
                zza3.zzc("oa_sig_ts", String.valueOf(zzbbiVar.zza()));
                zza3.zzc("oa_sig_status", String.valueOf(zzbbiVar.zzs() - 1));
                zza3.zzc("oa_sig_resp_lat", String.valueOf(zzbbiVar.zzc()));
                zza3.zzc("oa_sig_render_lat", String.valueOf(zzbbiVar.zzd()));
                zza3.zzc("oa_sig_formats", obj);
                zza3.zzc("oa_sig_nw_type", valueOf);
                zza3.zzc("oa_sig_wifi", String.valueOf(zzbbiVar.zzt() - 1));
                zza3.zzc("oa_sig_airplane", String.valueOf(zzbbiVar.zzu() - 1));
                zza3.zzc("oa_sig_data", String.valueOf(zzbbiVar.zzv() - 1));
                zza3.zzc("oa_sig_nw_resp", String.valueOf(zzbbiVar.zzg()));
                zza3.zzc("oa_sig_offline", String.valueOf(zzbbiVar.zzw() - 1));
                zza3.zzc("oa_sig_nw_state", String.valueOf(zzbbiVar.zzh().zza()));
                if (zzf.zzc() && zzf.zza() && zzf.zzg() == 2) {
                    zza3.zzc("oa_sig_cell_type", String.valueOf(zzf.zzh() - 1));
                }
                this.zzf.zza(zza3);
            }
        } else {
            ArrayList<zzbbi> zza4 = zzedd.zza(sQLiteDatabase);
            zzbbj zza5 = zzbbn.zza();
            zza5.zze(this.zzb.getPackageName());
            zza5.zzf(Build.MODEL);
            zza5.zzb(zzedd.zzb(sQLiteDatabase, 0));
            zza5.zza(zza4);
            zza5.zzc(zzedd.zzb(sQLiteDatabase, 1));
            zza5.zzd(zzt.zzj().mo38787c());
            zza5.zzg(zzedd.zzc(sQLiteDatabase, 2));
            zzbbn zzah = zza5.zzah();
            zzc(sQLiteDatabase, zza4);
            this.zza.zzb(new zzaza(zzah) { // from class: com.google.android.gms.internal.ads.zzedf
                private final zzbbn zza;

                {
                    this.zza = zzah;
                }

                @Override // com.google.android.gms.internal.ads.zzaza
                public final void zza(zzbao zzbaoVar) {
                    zzbaoVar.zzi(this.zza);
                }
            });
            zzbby zza6 = zzbbz.zza();
            zza6.zza(this.zzd.zzb);
            zza6.zzb(this.zzd.zzc);
            if (true == this.zzd.zzd) {
                i = 0;
            }
            zza6.zzc(i);
            this.zza.zzb(new zzaza(zza6.zzah()) { // from class: com.google.android.gms.internal.ads.zzedg
                private final zzbbz zza;

                {
                    this.zza = zzah2;
                }

                @Override // com.google.android.gms.internal.ads.zzaza
                public final void zza(zzbao zzbaoVar) {
                    zzbbz zzbbzVar = this.zza;
                    zzbag zzau = zzbaoVar.zze().zzau();
                    zzau.zzb(zzbbzVar);
                    zzbaoVar.zzf(zzau);
                }
            });
            this.zza.zzc(10004);
        }
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }
}
