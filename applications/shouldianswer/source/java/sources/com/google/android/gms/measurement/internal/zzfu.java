package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.p014c.C0374a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzbo;
import com.google.android.gms.internal.measurement.zzfd;
import com.google.android.gms.internal.measurement.zzfo;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfu.class */
public final class zzfu extends zzkb implements zzz {
    private static int zzb = 65535;
    private static int zzc = 2;
    private final Map<String, Map<String, String>> zzd = new C0374a();
    private final Map<String, Map<String, Boolean>> zze = new C0374a();
    private final Map<String, Map<String, Boolean>> zzf = new C0374a();
    private final Map<String, zzbo.zzb> zzg = new C0374a();
    private final Map<String, String> zzi = new C0374a();
    private final Map<String, Map<String, Integer>> zzh = new C0374a();

    public zzfu(zzke zzkeVar) {
        super(zzkeVar);
    }

    private final zzbo.zzb zza(String str, byte[] bArr) {
        if (bArr == null) {
            return zzbo.zzb.zzj();
        }
        try {
            zzbo.zzb zzbVar = (zzbo.zzb) ((zzfd) ((zzbo.zzb.zza) zzki.zza(zzbo.zzb.zzi(), bArr)).zzu());
            zzey zzx = zzr().zzx();
            String str2 = null;
            Long valueOf = zzbVar.zza() ? Long.valueOf(zzbVar.zzb()) : null;
            if (zzbVar.zzc()) {
                str2 = zzbVar.zzd();
            }
            zzx.zza("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzbVar;
        } catch (zzfo e) {
            zzr().zzi().zza("Unable to merge remote config. appId", zzew.zza(str), e);
            return zzbo.zzb.zzj();
        } catch (RuntimeException e2) {
            zzr().zzi().zza("Unable to merge remote config. appId", zzew.zza(str), e2);
            return zzbo.zzb.zzj();
        }
    }

    private static Map<String, String> zza(zzbo.zzb zzbVar) {
        C0374a c0374a = new C0374a();
        if (zzbVar != null) {
            for (zzbo.zzc zzcVar : zzbVar.zze()) {
                c0374a.put(zzcVar.zza(), zzcVar.zzb());
            }
        }
        return c0374a;
    }

    private final void zza(String str, zzbo.zzb.zza zzaVar) {
        C0374a c0374a = new C0374a();
        C0374a c0374a2 = new C0374a();
        C0374a c0374a3 = new C0374a();
        if (zzaVar != null) {
            for (int i = 0; i < zzaVar.zza(); i++) {
                zzbo.zza.C3161zza zzbm = zzaVar.zza(i).zzbm();
                if (TextUtils.isEmpty(zzbm.zza())) {
                    zzr().zzi().zza("EventConfig contained null event name");
                } else {
                    String zzb2 = zzgv.zzb(zzbm.zza());
                    zzbo.zza.C3161zza c3161zza = zzbm;
                    if (!TextUtils.isEmpty(zzb2)) {
                        c3161zza = zzbm.zza(zzb2);
                        zzaVar.zza(i, c3161zza);
                    }
                    c0374a.put(c3161zza.zza(), Boolean.valueOf(c3161zza.zzb()));
                    c0374a2.put(c3161zza.zza(), Boolean.valueOf(c3161zza.zzc()));
                    if (c3161zza.zzd()) {
                        if (c3161zza.zze() < zzc || c3161zza.zze() > zzb) {
                            zzr().zzi().zza("Invalid sampling rate. Event name, sample rate", c3161zza.zza(), Integer.valueOf(c3161zza.zze()));
                        } else {
                            c0374a3.put(c3161zza.zza(), Integer.valueOf(c3161zza.zze()));
                        }
                    }
                }
            }
        }
        this.zze.put(str, c0374a);
        this.zzf.put(str, c0374a2);
        this.zzh.put(str, c0374a3);
    }

    private final void zzi(String str) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        if (this.zzg.get(str) == null) {
            byte[] zzd = zzi().zzd(str);
            if (zzd != null) {
                zzbo.zzb.zza zzbm = zza(str, zzd).zzbm();
                zza(str, zzbm);
                this.zzd.put(str, zza((zzbo.zzb) ((zzfd) zzbm.zzu())));
                this.zzg.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
                this.zzi.put(str, null);
                return;
            }
            this.zzd.put(str, null);
            this.zze.put(str, null);
            this.zzf.put(str, null);
            this.zzg.put(str, null);
            this.zzi.put(str, null);
            this.zzh.put(str, null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    /* renamed from: e_ */
    public final /* bridge */ /* synthetic */ zzn mo3772e_() {
        return super.mo3772e_();
    }

    public final zzbo.zzb zza(String str) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        zzi(str);
        return this.zzg.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzz
    public final String zza(String str, String str2) {
        zzd();
        zzi(str);
        Map<String, String> map = this.zzd.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(String str, byte[] bArr, String str2) {
        zzak();
        zzd();
        Preconditions.checkNotEmpty(str);
        zzbo.zzb.zza zzbm = zza(str, bArr).zzbm();
        if (zzbm == null) {
            return false;
        }
        zza(str, zzbm);
        this.zzg.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
        this.zzi.put(str, str2);
        this.zzd.put(str, zza((zzbo.zzb) ((zzfd) zzbm.zzu())));
        zzi().zzb(str, new ArrayList(zzbm.zzb()));
        try {
            zzbm.zzc();
            bArr = ((zzbo.zzb) ((zzfd) zzbm.zzu())).zzbi();
        } catch (RuntimeException e) {
            zzr().zzi().zza("Unable to serialize reduced-size config. Storing full config instead. appId", zzew.zza(str), e);
        }
        zzac zzi = zzi();
        Preconditions.checkNotEmpty(str);
        zzi.zzd();
        zzi.zzak();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (zzi.m3774c_().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzi.zzr().zzf().zza("Failed to update remote config (got 0). appId", zzew.zza(str));
            }
        } catch (SQLiteException e2) {
            zzi.zzr().zzf().zza("Error storing remote config. appId", zzew.zza(str), e2);
        }
        this.zzg.put(str, (zzbo.zzb) ((zzfd) zzbm.zzu()));
        return true;
    }

    public final String zzb(String str) {
        zzd();
        return this.zzi.get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final boolean zzb(String str, String str2) {
        Boolean bool;
        zzd();
        zzi(str);
        if (!zzg(str) || !zzkm.zze(str2)) {
            if (zzh(str) && zzkm.zza(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.zze.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    public final void zzc(String str) {
        zzd();
        this.zzi.put(str, null);
    }

    public final boolean zzc(String str, String str2) {
        Boolean bool;
        zzd();
        zzi(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzf.get(str);
        if (map != null && (bool = map.get(str2)) != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final int zzd(String str, String str2) {
        Integer num;
        zzd();
        zzi(str);
        Map<String, Integer> map = this.zzh.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final void zzd(String str) {
        zzd();
        this.zzg.remove(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzkb
    protected final boolean zze() {
        return false;
    }

    public final boolean zze(String str) {
        zzd();
        zzbo.zzb zza = zza(str);
        if (zza == null) {
            return false;
        }
        return zza.zzh();
    }

    public final long zzf(String str) {
        String zza = zza(str, "measurement.account.time_zone_offset_minutes");
        if (!TextUtils.isEmpty(zza)) {
            try {
                return Long.parseLong(zza);
            } catch (NumberFormatException e) {
                zzr().zzi().zza("Unable to parse timezone offset. appId", zzew.zza(str), e);
                return 0L;
            }
        }
        return 0L;
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzki zzg() {
        return super.zzg();
    }

    public final boolean zzg(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzh(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzac zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzkc
    public final /* bridge */ /* synthetic */ zzfu zzj() {
        return super.zzj();
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
}
