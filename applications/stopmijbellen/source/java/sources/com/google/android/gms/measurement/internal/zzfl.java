package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzc;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.internal.measurement.zzfb;
import com.google.android.gms.internal.measurement.zzfc;
import com.google.android.gms.internal.measurement.zzfe;
import com.google.android.gms.internal.measurement.zzgm;
import com.google.android.gms.internal.measurement.zzgo;
import com.google.android.gms.internal.measurement.zzkn;
import com.google.android.gms.internal.measurement.zzn;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.internal.measurement.zzpt;
import com.google.android.gms.internal.measurement.zzr;
import com.google.android.gms.internal.measurement.zzt;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.Callable;
import p226s.C4251a;
import p226s.C4256e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
public final class zzfl extends zzke implements zzad {
    private final Map<String, Map<String, String>> zzc = new C4251a();
    private final Map<String, Map<String, Boolean>> zzd = new C4251a();
    private final Map<String, Map<String, Boolean>> zze = new C4251a();
    private final Map<String, zzfc> zzg = new C4251a();
    private final Map<String, String> zzi = new C4251a();
    private final Map<String, Map<String, Integer>> zzh = new C4251a();
    @VisibleForTesting
    public final C4256e<String, zzc> zza = new zzfi(this, 20);
    public final zzr zzb = new zzfj(this);

    public zzfl(zzkn zzknVar) {
        super(zzknVar);
    }

    public static /* synthetic */ zzc zzo(zzfl zzflVar, String str) {
        zzc zzcVar;
        zzflVar.zzZ();
        Preconditions.checkNotEmpty(str);
        zzpt.zzb();
        if (!zzflVar.zzs.zzc().zzn(null, zzea.zzaD)) {
            zzcVar = null;
        } else if (!zzflVar.zzh(str)) {
            zzcVar = null;
        } else {
            if (!zzflVar.zzg.containsKey(str) || zzflVar.zzg.get(str) == null) {
                zzflVar.zzq(str);
            } else {
                zzflVar.zzs(str, zzflVar.zzg.get(str));
            }
            zzcVar = zzflVar.zza.snapshot().get(str);
        }
        return zzcVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f2, code lost:
        if (r13 == null) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzq(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfl.zzq(java.lang.String):void");
    }

    private final void zzr(String str, zzfb zzfbVar) {
        C4251a c4251a = new C4251a();
        C4251a c4251a2 = new C4251a();
        C4251a c4251a3 = new C4251a();
        if (zzfbVar != null) {
            for (int i = 0; i < zzfbVar.zza(); i++) {
                zzez zzbu = zzfbVar.zzb(i).zzbu();
                if (TextUtils.isEmpty(zzbu.zza())) {
                    C1676a.m4786k(this.zzs, "EventConfig contained null event name");
                } else {
                    String zza = zzbu.zza();
                    String zzb = zzgr.zzb(zzbu.zza());
                    if (!TextUtils.isEmpty(zzb)) {
                        zzbu.zzb(zzb);
                        zzfbVar.zzc(i, zzbu);
                    }
                    c4251a.put(zza, Boolean.valueOf(zzbu.zzc()));
                    c4251a2.put(zzbu.zza(), Boolean.valueOf(zzbu.zzd()));
                    if (zzbu.zze()) {
                        if (zzbu.zzf() < 2 || zzbu.zzf() > 65535) {
                            this.zzs.zzau().zze().zzc("Invalid sampling rate. Event name, sample rate", zzbu.zza(), Integer.valueOf(zzbu.zzf()));
                        } else {
                            c4251a3.put(zzbu.zza(), Integer.valueOf(zzbu.zzf()));
                        }
                    }
                }
            }
        }
        this.zzd.put(str, c4251a);
        this.zze.put(str, c4251a2);
        this.zzh.put(str, c4251a3);
    }

    private final void zzs(String str, zzfc zzfcVar) {
        if (zzfcVar.zzk() == 0) {
            this.zza.remove(str);
            return;
        }
        this.zzs.zzau().zzk().zzb("EES programs found", Integer.valueOf(zzfcVar.zzk()));
        zzgo zzgoVar = zzfcVar.zzj().get(0);
        try {
            zzc zzcVar = new zzc();
            zzcVar.zza("internal.remoteConfig", new Callable(this, str) { // from class: com.google.android.gms.measurement.internal.zzfg
                private final zzfl zza;
                private final String zzb;

                {
                    this.zza = this;
                    this.zzb = str;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzn("internal.remoteConfig", new zzfk(this.zza, this.zzb));
                }
            });
            zzcVar.zza("internal.logger", new Callable(this) { // from class: com.google.android.gms.measurement.internal.zzfh
                private final zzfl zza;

                {
                    this.zza = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new zzt(this.zza.zzb);
                }
            });
            zzcVar.zzf(zzgoVar);
            this.zza.put(str, zzcVar);
            this.zzs.zzau().zzk().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzgoVar.zzb().zzb()));
            for (zzgm zzgmVar : zzgoVar.zzb().zza()) {
                this.zzs.zzau().zzk().zzb("EES program activity", zzgmVar.zza());
            }
        } catch (zzd e) {
            this.zzs.zzau().zzb().zzb("Failed to load EES program. appId", str);
        }
    }

    private final zzfc zzt(String str, byte[] bArr) {
        if (bArr == null) {
            return zzfc.zzn();
        }
        try {
            zzfc zzaA = ((zzfb) zzkp.zzt(zzfc.zzm(), bArr)).zzaA();
            zzek zzk = this.zzs.zzau().zzk();
            String str2 = null;
            Long valueOf = zzaA.zza() ? Long.valueOf(zzaA.zzb()) : null;
            if (zzaA.zzc()) {
                str2 = zzaA.zzd();
            }
            zzk.zzc("Parsed config. version, gmp_app_id", valueOf, str2);
            return zzaA;
        } catch (zzkn e) {
            this.zzs.zzau().zze().zzc("Unable to merge remote config. appId", zzem.zzl(str), e);
            return zzfc.zzn();
        } catch (RuntimeException e2) {
            this.zzs.zzau().zze().zzc("Unable to merge remote config. appId", zzem.zzl(str), e2);
            return zzfc.zzn();
        }
    }

    private static final Map<String, String> zzu(zzfc zzfcVar) {
        C4251a c4251a = new C4251a();
        if (zzfcVar != null) {
            for (zzfe zzfeVar : zzfcVar.zze()) {
                c4251a.put(zzfeVar.zza(), zzfeVar.zzb());
            }
        }
        return c4251a;
    }

    @Override // com.google.android.gms.measurement.internal.zzad
    public final String zza(String str, String str2) {
        zzg();
        zzq(str);
        Map<String, String> map = this.zzc.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzke
    public final boolean zzaA() {
        return false;
    }

    public final zzfc zzb(String str) {
        zzZ();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzq(str);
        return this.zzg.get(str);
    }

    public final String zzc(String str) {
        zzg();
        return this.zzi.get(str);
    }

    public final void zzd(String str) {
        zzg();
        this.zzi.put(str, null);
    }

    public final void zze(String str) {
        zzg();
        this.zzg.remove(str);
    }

    public final boolean zzf(String str) {
        zzg();
        zzfc zzb = zzb(str);
        if (zzb == null) {
            return false;
        }
        return zzb.zzi();
    }

    public final boolean zzh(String str) {
        zzfc zzfcVar;
        zzpt.zzb();
        return this.zzs.zzc().zzn(null, zzea.zzaD) && !TextUtils.isEmpty(str) && (zzfcVar = this.zzg.get(str)) != null && zzfcVar.zzk() != 0;
    }

    public final boolean zzi(String str, byte[] bArr, String str2) {
        zzZ();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzfb zzbu = zzt(str, bArr).zzbu();
        if (zzbu == null) {
            return false;
        }
        zzr(str, zzbu);
        zzpt.zzb();
        if (this.zzs.zzc().zzn(null, zzea.zzaD)) {
            zzs(str, zzbu.zzaA());
        }
        this.zzg.put(str, zzbu.zzaA());
        this.zzi.put(str, str2);
        this.zzc.put(str, zzu(zzbu.zzaA()));
        this.zzf.zzi().zzL(str, new ArrayList(zzbu.zzd()));
        try {
            zzbu.zze();
            bArr = zzbu.zzaA().zzbp();
        } catch (RuntimeException e) {
            this.zzs.zzau().zze().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzem.zzl(str), e);
        }
        zzpn.zzb();
        if (this.zzs.zzc().zzn(null, zzea.zzaB)) {
            this.zzf.zzi().zzw(str, bArr, str2);
        } else {
            this.zzf.zzi().zzw(str, bArr, null);
        }
        this.zzg.put(str, zzbu.zzaA());
        return true;
    }

    public final boolean zzj(String str, String str2) {
        Boolean bool;
        zzg();
        zzq(str);
        if (!zzm(str) || !zzku.zzR(str2)) {
            if (zzn(str) && zzku.zzh(str2)) {
                return true;
            }
            Map<String, Boolean> map = this.zzd.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    public final boolean zzk(String str, String str2) {
        Boolean bool;
        zzg();
        zzq(str);
        if (!"ecommerce_purchase".equals(str2) && !"purchase".equals(str2) && !"refund".equals(str2)) {
            Map<String, Boolean> map = this.zze.get(str);
            if (map != null && (bool = map.get(str2)) != null) {
                return bool.booleanValue();
            }
            return false;
        }
        return true;
    }

    public final int zzl(String str, String str2) {
        Integer num;
        zzg();
        zzq(str);
        Map<String, Integer> map = this.zzh.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean zzm(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean zzn(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }
}
