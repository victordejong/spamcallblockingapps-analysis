package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zztw;
import com.google.android.gms.internal.ads.zzug;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcql.class */
public final class zzcql {
    private Context context;
    private final zzdrz zzdic;
    private zzazn zzdtx;
    private final zzf zzeaw = zzr.zzkv().zzxs();
    private zzcpv zzgrg;
    private zztu zzgro;
    private final String zzgrp;

    public zzcql(Context context, zzazn zzaznVar, zztu zztuVar, zzcpv zzcpvVar, String str, zzdrz zzdrzVar) {
        this.context = context;
        this.zzdtx = zzaznVar;
        this.zzgro = zztuVar;
        this.zzgrg = zzcpvVar;
        this.zzgrp = str;
        this.zzdic = zzdrzVar;
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    private static void zza(SQLiteDatabase sQLiteDatabase, ArrayList<zzug.zzo.zza> arrayList) {
        ArrayList<zzug.zzo.zza> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        char c = 0;
        while (i < size) {
            zzug.zzo.zza zzaVar = arrayList2.get(i);
            int i2 = i + 1;
            zzug.zzo.zza zzaVar2 = zzaVar;
            i = i2;
            if (zzaVar2.zzov() == zzuq.ENUM_TRUE) {
                i = i2;
                if (zzaVar2.getTimestamp() > c) {
                    c = zzaVar2.getTimestamp();
                    i = i2;
                }
            }
        }
        if (c != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("value", Long.valueOf(c));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
    }

    public final /* synthetic */ Void zza(SQLiteDatabase sQLiteDatabase) throws Exception {
        int i = 0;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdal)).booleanValue()) {
            this.zzdic.zzb(zzdsa.zzgx("oa_upload").zzu("oa_failed_reqs", String.valueOf(zzcqm.zza(sQLiteDatabase, 0))).zzu("oa_total_reqs", String.valueOf(zzcqm.zza(sQLiteDatabase, 1))).zzu("oa_upload_time", String.valueOf(zzr.zzky().currentTimeMillis())).zzu("oa_last_successful_time", String.valueOf(zzcqm.zzb(sQLiteDatabase, 2))).zzu("oa_session_id", this.zzeaw.zzyu() ? "" : this.zzgrp));
            ArrayList<zzug.zzo.zza> zzb = zzcqm.zzb(sQLiteDatabase);
            zza(sQLiteDatabase, zzb);
            ArrayList<zzug.zzo.zza> arrayList = zzb;
            int size = arrayList.size();
            while (i < size) {
                i++;
                zzug.zzo.zza zzaVar = arrayList.get(i);
                zzdsa zzu = zzdsa.zzgx("oa_signals").zzu("oa_session_id", this.zzeaw.zzyu() ? "" : this.zzgrp);
                zzug.zzm zzoz = zzaVar.zzoz();
                zzu.zzu("oa_sig_ts", String.valueOf(zzaVar.getTimestamp())).zzu("oa_sig_status", String.valueOf(zzaVar.zzov().zzv())).zzu("oa_sig_resp_lat", String.valueOf(zzaVar.zzow())).zzu("oa_sig_render_lat", String.valueOf(zzaVar.zzox())).zzu("oa_sig_formats", zzdxl.zza(zzaVar.zzoy(), zzcqp.zzeaj).toString()).zzu("oa_sig_nw_type", zzoz.zzol() ? String.valueOf(zzoz.zzom().zzv()) : "-1").zzu("oa_sig_wifi", String.valueOf(zzaVar.zzpa().zzv())).zzu("oa_sig_airplane", String.valueOf(zzaVar.zzpb().zzv())).zzu("oa_sig_data", String.valueOf(zzaVar.zzpc().zzv())).zzu("oa_sig_nw_resp", String.valueOf(zzaVar.zzpd())).zzu("oa_sig_offline", String.valueOf(zzaVar.zzpe().zzv())).zzu("oa_sig_nw_state", String.valueOf(zzaVar.zzpf().zzv()));
                if (zzoz.zzon() && zzoz.zzol() && zzoz.zzom().equals(zzug.zzm.zzc.CELL)) {
                    zzu.zzu("oa_sig_cell_type", String.valueOf(zzoz.zzoo().zzv()));
                }
                this.zzdic.zzb(zzu);
            }
        } else {
            ArrayList<zzug.zzo.zza> zzb2 = zzcqm.zzb(sQLiteDatabase);
            zzug.zzo zzoVar = (zzug.zzo) ((zzelb) zzug.zzo.zzot().zzca(this.context.getPackageName()).zzcb(Build.MODEL).zzcj(zzcqm.zza(sQLiteDatabase, 0)).zze(zzb2).zzck(zzcqm.zza(sQLiteDatabase, 1)).zzes(zzr.zzky().currentTimeMillis()).zzet(zzcqm.zzb(sQLiteDatabase, 2)).zzbiw());
            zza(sQLiteDatabase, zzb2);
            this.zzgro.zza(new zztx(zzoVar) { // from class: com.google.android.gms.internal.ads.zzcqn
                private final zzug.zzo zzgrq;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgrq = zzoVar;
                }

                @Override // com.google.android.gms.internal.ads.zztx
                public final void zza(zzug.zzi.zza zzaVar2) {
                    zzaVar2.zzb(this.zzgrq);
                }
            });
            zzug.zzu.zza zzcr = zzug.zzu.zzpn().zzcq(this.zzdtx.zzehy).zzcr(this.zzdtx.zzehz);
            int i2 = 2;
            if (this.zzdtx.zzeia) {
                i2 = 0;
            }
            this.zzgro.zza(new zztx((zzug.zzu) ((zzelb) zzcr.zzcs(i2).zzbiw())) { // from class: com.google.android.gms.internal.ads.zzcqq
                private final zzug.zzu zzgrs;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgrs = zzuVar;
                }

                @Override // com.google.android.gms.internal.ads.zztx
                public final void zza(zzug.zzi.zza zzaVar2) {
                    zzaVar2.zza(zzaVar2.zzod().zzbij().zzb(this.zzgrs));
                }
            });
            this.zzgro.zza(zztw.zza.EnumC2616zza.OFFLINE_UPLOAD);
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

    public final void zzarx() {
        try {
            this.zzgrg.zza(new zzdqu(this) { // from class: com.google.android.gms.internal.ads.zzcqo
                private final zzcql zzgrr;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgrr = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdqu
                public final Object apply(Object obj) {
                    return this.zzgrr.zza((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzd.zzev(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
