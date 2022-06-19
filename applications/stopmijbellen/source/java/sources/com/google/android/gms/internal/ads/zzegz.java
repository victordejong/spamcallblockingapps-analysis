package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegz.class */
public final class zzegz {
    private final zzbay zza;
    private final Context zzb;
    private final zzegh zzc;
    private final zzcjf zzd;
    private final String zze;
    private final zzfio zzf;
    private final zzg zzg = zzt.zzo().zzh();

    public zzegz(Context context, zzcjf zzcjfVar, zzbay zzbayVar, zzegh zzeghVar, String str, zzfio zzfioVar) {
        this.zzb = context;
        this.zzd = zzcjfVar;
        this.zza = zzbayVar;
        this.zzc = zzeghVar;
        this.zze = str;
        this.zzf = zzfioVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    private static final void zzc(SQLiteDatabase sQLiteDatabase, ArrayList<zzbdf> arrayList) {
        char c;
        int size = arrayList.size();
        int i = 0;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (i >= size) {
                break;
            }
            zzbdf zzbdfVar = arrayList.get(i);
            char c2 = c;
            if (zzbdfVar.zzv() == 2) {
                c2 = c;
                if (zzbdfVar.zze() > c) {
                    c2 = zzbdfVar.zze();
                }
            }
            i++;
            r0 = c2;
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    public final /* synthetic */ Void zza(boolean z, SQLiteDatabase sQLiteDatabase) throws Exception {
        if (z) {
            this.zzb.deleteDatabase("OfflineUpload.db");
            return null;
        }
        int i = 2;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgq)).booleanValue()) {
            zzfin zzb = zzfin.zzb("oa_upload");
            zzb.zza("oa_failed_reqs", String.valueOf(zzegu.zza(sQLiteDatabase, 0)));
            zzb.zza("oa_total_reqs", String.valueOf(zzegu.zza(sQLiteDatabase, 1)));
            zzb.zza("oa_upload_time", String.valueOf(zzt.zzA().currentTimeMillis()));
            zzb.zza("oa_last_successful_time", String.valueOf(zzegu.zzb(sQLiteDatabase, 2)));
            zzb.zza("oa_session_id", this.zzg.zzL() ? "" : this.zze);
            this.zzf.zzb(zzb);
            ArrayList<zzbdf> zzc = zzegu.zzc(sQLiteDatabase);
            zzc(sQLiteDatabase, zzc);
            int size = zzc.size();
            for (int i2 = 0; i2 < size; i2++) {
                zzbdf zzbdfVar = zzc.get(i2);
                zzfin zzb2 = zzfin.zzb("oa_signals");
                zzb2.zza("oa_session_id", this.zzg.zzL() ? "" : this.zze);
                zzbda zzf = zzbdfVar.zzf();
                String valueOf = zzf.zzf() ? String.valueOf(zzf.zzh() - 1) : "-1";
                String obj = zzftk.zzb(zzbdfVar.zzk(), zzegy.zza).toString();
                zzb2.zza("oa_sig_ts", String.valueOf(zzbdfVar.zze()));
                zzb2.zza("oa_sig_status", String.valueOf(zzbdfVar.zzv() - 1));
                zzb2.zza("oa_sig_resp_lat", String.valueOf(zzbdfVar.zzd()));
                zzb2.zza("oa_sig_render_lat", String.valueOf(zzbdfVar.zzc()));
                zzb2.zza("oa_sig_formats", obj);
                zzb2.zza("oa_sig_nw_type", valueOf);
                zzb2.zza("oa_sig_wifi", String.valueOf(zzbdfVar.zzw() - 1));
                zzb2.zza("oa_sig_airplane", String.valueOf(zzbdfVar.zzs() - 1));
                zzb2.zza("oa_sig_data", String.valueOf(zzbdfVar.zzt() - 1));
                zzb2.zza("oa_sig_nw_resp", String.valueOf(zzbdfVar.zza()));
                zzb2.zza("oa_sig_offline", String.valueOf(zzbdfVar.zzu() - 1));
                zzb2.zza("oa_sig_nw_state", String.valueOf(zzbdfVar.zzj().zza()));
                if (zzf.zze() && zzf.zzf() && zzf.zzh() == 2) {
                    zzb2.zza("oa_sig_cell_type", String.valueOf(zzf.zzg() - 1));
                }
                this.zzf.zzb(zzb2);
            }
        } else {
            ArrayList<zzbdf> zzc2 = zzegu.zzc(sQLiteDatabase);
            zzbdg zza = zzbdk.zza();
            zza.zzb(this.zzb.getPackageName());
            zza.zzc(Build.MODEL);
            zza.zzd(zzegu.zza(sQLiteDatabase, 0));
            zza.zza(zzc2);
            zza.zzf(zzegu.zza(sQLiteDatabase, 1));
            zza.zzg(zzt.zzA().currentTimeMillis());
            zza.zze(zzegu.zzb(sQLiteDatabase, 2));
            final zzbdk zzah = zza.zzah();
            zzc(sQLiteDatabase, zzc2);
            this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzegv
                @Override // com.google.android.gms.internal.ads.zzbax
                public final void zza(zzbcl zzbclVar) {
                    zzbclVar.zzi(zzbdk.this);
                }
            });
            zzbdv zza2 = zzbdw.zza();
            zza2.zza(this.zzd.zzb);
            zza2.zzc(this.zzd.zzc);
            if (true == this.zzd.zzd) {
                i = 0;
            }
            zza2.zzb(i);
            final zzbdw zzah2 = zza2.zzah();
            this.zza.zzb(new zzbax() { // from class: com.google.android.gms.internal.ads.zzegw
                @Override // com.google.android.gms.internal.ads.zzbax
                public final void zza(zzbcl zzbclVar) {
                    zzbdw zzbdwVar = zzbdw.this;
                    zzbcd zzau = zzbclVar.zzb().zzau();
                    zzau.zzb(zzbdwVar);
                    zzbclVar.zzg(zzau);
                }
            });
            this.zza.zzc(10004);
        }
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues = new ContentValues();
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }

    public final void zzb(final boolean z) {
        try {
            this.zzc.zza(new zzfhh() { // from class: com.google.android.gms.internal.ads.zzegx
                @Override // com.google.android.gms.internal.ads.zzfhh
                public final Object zza(Object obj) {
                    zzegz.this.zza(z, (SQLiteDatabase) obj);
                    return null;
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzciz.zzg(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
