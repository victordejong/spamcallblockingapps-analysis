package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcm;
import com.google.android.gms.internal.measurement.zzco;
import com.google.android.gms.internal.measurement.zzcp;
import com.google.android.gms.internal.measurement.zzcr;
import com.google.android.gms.internal.measurement.zzic;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfc.class */
public final class zzfc extends zzjv implements zzad {
    private final Map<String, Map<String, String>> zzb = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzc = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzd = new ArrayMap();
    private final Map<String, zzcp> zze = new ArrayMap();
    private final Map<String, String> zzg = new ArrayMap();
    private final Map<String, Map<String, Integer>> zzf = new ArrayMap();

    public zzfc(zzkd zzkdVar) {
        super(zzkdVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0061, code lost:
        if (r13 != null) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d4, code lost:
        if (r13 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d7, code lost:
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00de, code lost:
        r12 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x017d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzn(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfc.zzn(java.lang.String):void");
    }

    private final void zzo(String str, zzco zzcoVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzcoVar != null) {
            for (int i = 0; i < zzcoVar.zza(); i++) {
                zzcm zzbu = zzcoVar.zzb(i).zzbu();
                if (TextUtils.isEmpty(zzbu.zza())) {
                    this.zzx.zzat().zze().zza("EventConfig contained null event name");
                } else {
                    String zza = zzbu.zza();
                    String zzb = zzgi.zzb(zzbu.zza());
                    if (!TextUtils.isEmpty(zzb)) {
                        zzbu.zzb(zzb);
                        zzcoVar.zzc(i, zzbu);
                    }
                    arrayMap.put(zza, Boolean.valueOf(zzbu.zzc()));
                    arrayMap2.put(zzbu.zza(), Boolean.valueOf(zzbu.zzd()));
                    if (zzbu.zze()) {
                        if (zzbu.zzf() < 2 || zzbu.zzf() > 65535) {
                            this.zzx.zzat().zze().zzc("Invalid sampling rate. Event name, sample rate", zzbu.zza(), Integer.valueOf(zzbu.zzf()));
                        } else {
                            arrayMap3.put(zzbu.zza(), Integer.valueOf(zzbu.zzf()));
                        }
                    }
                }
            }
        }
        this.zzc.put(str, arrayMap);
        this.zzd.put(str, arrayMap2);
        this.zzf.put(str, arrayMap3);
    }

    private final zzcp zzq(String str, byte[] bArr) {
        if (bArr != null) {
            try {
                zzcp zzaA = ((zzco) zzkf.zzt(zzcp.zzj(), bArr)).zzaA();
                zzeg zzk = this.zzx.zzat().zzk();
                String str2 = null;
                Long valueOf = zzaA.zza() ? Long.valueOf(zzaA.zzb()) : null;
                if (zzaA.zzc()) {
                    str2 = zzaA.zzd();
                }
                zzk.zzc("Parsed config. version, gmp_app_id", valueOf, str2);
                return zzaA;
            } catch (zzic e) {
                this.zzx.zzat().zze().zzc("Unable to merge remote config. appId", zzei.zzl(str), e);
                return zzcp.zzk();
            } catch (RuntimeException e2) {
                this.zzx.zzat().zze().zzc("Unable to merge remote config. appId", zzei.zzl(str), e2);
                return zzcp.zzk();
            }
        }
        return zzcp.zzk();
    }

    private static final Map<String, String> zzr(zzcp zzcpVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzcpVar != null) {
            for (zzcr zzcrVar : zzcpVar.zze()) {
                arrayMap.put(zzcrVar.zza(), zzcrVar.zzb());
            }
        }
        return arrayMap;
    }

    @Override // com.google.android.gms.measurement.internal.zzad
    public final String zza(String str, String str2) {
        zzg();
        zzn(str);
        Map<String, String> map = this.zzb.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzjv
    protected final boolean zzaz() {
        return false;
    }

    public final zzcp zzb(String str) {
        zzX();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzn(str);
        return this.zze.get(str);
    }

    public final String zzc(String str) {
        zzg();
        return this.zzg.get(str);
    }

    public final void zzd(String str) {
        zzg();
        this.zzg.put(str, null);
    }

    public final void zze(String str) {
        zzg();
        this.zze.remove(str);
    }

    public final boolean zzf(String str) {
        zzg();
        zzcp zzb = zzb(str);
        if (zzb == null) {
            return false;
        }
        return zzb.zzi();
    }

    public final boolean zzh(String str, byte[] bArr, String str2) {
        zzX();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzco zzbu = zzq(str, bArr).zzbu();
        if (zzbu == null) {
            return false;
        }
        zzo(str, zzbu);
        this.zze.put(str, zzbu.zzaA());
        this.zzg.put(str, str2);
        this.zzb.put(str, zzr(zzbu.zzaA()));
        this.zza.zzi().zzJ(str, new ArrayList(zzbu.zzd()));
        try {
            zzbu.zze();
            bArr = zzbu.zzaA().zzbp();
        } catch (RuntimeException e) {
            this.zzx.zzat().zze().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzei.zzl(str), e);
        }
        zzai zzi = this.zza.zzi();
        Preconditions.checkNotEmpty(str);
        zzi.zzg();
        zzi.zzX();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        try {
            if (zzi.zze().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzi.zzx.zzat().zzb().zzb("Failed to update remote config (got 0). appId", zzei.zzl(str));
            }
        } catch (SQLiteException e2) {
            zzi.zzx.zzat().zzb().zzc("Error storing remote config. appId", zzei.zzl(str), e2);
        }
        this.zze.put(str, zzbu.zzaA());
        return true;
    }

    public final boolean zzi(String str, String str2) {
        Boolean bool;
        zzg();
        zzn(str);
        if (!zzl(str) || !zzkk.zzR(str2)) {
            if (zzm(str) && zzkk.zzh(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.zzc.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    public final boolean zzj(String str, String str2) {
        Boolean bool;
        zzg();
        zzn(str);
        if (!FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2) && !FirebaseAnalytics.Event.PURCHASE.equals(str2) && !FirebaseAnalytics.Event.REFUND.equals(str2)) {
            Map<String, Boolean> map = this.zzd.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    public final int zzk(String str, String str2) {
        Integer num;
        zzg();
        zzn(str);
        Map<String, Integer> map = this.zzf.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean zzl(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzm(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }
}
