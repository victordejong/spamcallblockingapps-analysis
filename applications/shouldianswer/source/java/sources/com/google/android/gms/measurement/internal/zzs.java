package com.google.android.gms.measurement.internal;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzfd;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzs.class */
public final class zzs {
    private zzbr.zzc zza;
    private Long zzb;
    private long zzc;
    private final /* synthetic */ zzn zzd;

    private zzs(zzn zznVar) {
        this.zzd = zznVar;
    }

    public /* synthetic */ zzs(zzn zznVar, zzq zzqVar) {
        this(zznVar);
    }

    public final zzbr.zzc zza(String str, zzbr.zzc zzcVar) {
        ArrayList arrayList;
        String str2;
        String zzc = zzcVar.zzc();
        List<zzbr.zze> zza = zzcVar.zza();
        this.zzd.zzg();
        Long l = (Long) zzki.zzb(zzcVar, "_eid");
        boolean z = l != null;
        if (z && zzc.equals("_ep")) {
            this.zzd.zzg();
            str2 = (String) zzki.zzb(zzcVar, "_en");
            if (TextUtils.isEmpty(str2)) {
                this.zzd.zzr().zzf().zza("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.zza == null || this.zzb == null || l.longValue() != this.zzb.longValue()) {
                Pair<zzbr.zzc, Long> zza2 = this.zzd.zzi().zza(str, l);
                if (zza2 == null || zza2.first == null) {
                    this.zzd.zzr().zzf().zza("Extra parameter without existing main event. eventName, eventId", str2, l);
                    return null;
                }
                this.zza = (zzbr.zzc) zza2.first;
                this.zzc = ((Long) zza2.second).longValue();
                this.zzd.zzg();
                this.zzb = (Long) zzki.zzb(this.zza, "_eid");
            }
            this.zzc--;
            if (this.zzc <= 0) {
                zzac zzi = this.zzd.zzi();
                zzi.zzd();
                zzi.zzr().zzx().zza("Clearing complex main event info. appId", str);
                try {
                    zzi.m3774c_().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    zzi.zzr().zzf().zza("Error clearing complex main event", e);
                }
            } else {
                this.zzd.zzi().zza(str, l, this.zzc, this.zza);
            }
            ArrayList arrayList2 = new ArrayList();
            for (zzbr.zze zzeVar : this.zza.zza()) {
                this.zzd.zzg();
                if (zzki.zza(zzcVar, zzeVar.zza()) == null) {
                    arrayList2.add(zzeVar);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList2.addAll(zza);
                arrayList = arrayList2;
            } else {
                this.zzd.zzr().zzi().zza("No unique parameters in main event. eventName", str2);
                arrayList = zza;
            }
        } else {
            str2 = zzc;
            arrayList = zza;
            if (z) {
                this.zzb = l;
                this.zza = zzcVar;
                this.zzd.zzg();
                Object zzb = zzki.zzb(zzcVar, "_epc");
                if (zzb == null) {
                    zzb = 0L;
                }
                this.zzc = ((Long) zzb).longValue();
                if (this.zzc <= 0) {
                    this.zzd.zzr().zzi().zza("Complex event with zero extra param count. eventName", zzc);
                    str2 = zzc;
                    arrayList = zza;
                } else {
                    this.zzd.zzi().zza(str, l, this.zzc, zzcVar);
                    arrayList = zza;
                    str2 = zzc;
                }
            }
        }
        return (zzbr.zzc) ((zzfd) zzcVar.zzbm().zza(str2).zzc().zza(arrayList).zzu());
    }
}
