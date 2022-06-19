package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzmu;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzep.class */
public final class zzep extends zze {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private long zzg;
    private List<String> zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;

    public zzep(zzga zzgaVar, long j) {
        super(zzgaVar);
        this.zzg = j;
    }

    private final String zzai() {
        if (zzmu.zzb() && zzt().zza(zzap.zzcf)) {
            zzr().zzx().zza("Disabled IID for tests.");
            return null;
        }
        try {
            Class<?> loadClass = zzn().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zzn());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception e) {
                    zzr().zzk().zza("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception e2) {
                zzr().zzj().zza("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    public final zzm zza(String str) {
        Boolean zzb;
        zzd();
        zzb();
        String zzab = zzab();
        String zzac = zzac();
        zzw();
        String str2 = this.zzb;
        long zzaf = zzaf();
        zzw();
        String str3 = this.zzd;
        long zze = zzt().zze();
        zzw();
        zzd();
        if (this.zzf == 0) {
            this.zzf = this.zzx.zzi().zza(zzn(), zzn().getPackageName());
        }
        long j = this.zzf;
        boolean zzab2 = this.zzx.zzab();
        boolean z = !zzs().zzs;
        zzd();
        zzb();
        String zzai = !this.zzx.zzab() ? null : zzai();
        long zzac2 = this.zzx.zzac();
        int zzag = zzag();
        boolean booleanValue = zzt().zzi().booleanValue();
        zzx zzt = zzt();
        zzt.zzb();
        Boolean zzb2 = zzt.zzb("google_analytics_ssaid_collection_enabled");
        boolean booleanValue2 = Boolean.valueOf(zzb2 == null || zzb2.booleanValue()).booleanValue();
        zzff zzs = zzs();
        zzs.zzd();
        return new zzm(zzab, zzac, str2, zzaf, str3, zze, j, str, zzab2, z, zzai, 0L, zzac2, zzag, booleanValue, booleanValue2, zzs.zzg().getBoolean("deferred_analytics_collection", false), zzad(), (!zzt().zza(zzap.zzba) || (zzb = zzt().zzb("google_analytics_default_allow_ad_personalization_signals")) == null) ? null : Boolean.valueOf(!zzb.booleanValue()), this.zzg, zzt().zza(zzap.zzbk) ? this.zzh : null, (!zzle.zzb() || !zzt().zza(zzap.zzcc)) ? null : zzae());
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:2|(1:4)(9:134|6|7|10|(1:12)(2:13|(1:15))|132|16|17|(31:19|(1:21)(1:22)|136|23|24|25|26|32|(1:37)(1:36)|38|(1:43)(1:42)|44|(2:46|(1:48)(1:49))|50|(2:52|(2:54|(1:56))(2:57|(2:64|(14:69|71|(1:75)|130|76|(2:78|79)(1:80)|81|(2:96|(1:98))(4:85|(2:87|88)(1:89)|90|(2:94|95))|99|(1:101)|104|(4:106|(3:108|(1:110)(3:112|(2:113|(1:115)(1:139))|138)|111)(0)|117|(1:119))|120|(2:122|(2:124|125)(2:126|127))(2:128|129))(1:68))(2:61|(1:63))))|70|71|(2:73|75)|130|76|(0)(0)|81|(1:83)|96|(0)|99|(0)|104|(0)|120|(0)(0)))|5|32|(1:34)|37|38|(1:40)|43|44|(0)|50|(0)|70|71|(0)|130|76|(0)(0)|81|(0)|96|(0)|99|(0)|104|(0)|120|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x033e, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0340, code lost:
        zzr().zzf().zza("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.measurement.internal.zzew.zza(r0), r13);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0326 A[Catch: IllegalStateException -> 0x033e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x033e, blocks: (B:76:0x027e, B:81:0x0296, B:83:0x02a6, B:85:0x02b3, B:90:0x02db, B:92:0x02e9, B:95:0x02f1, B:96:0x02ff, B:98:0x0307, B:101:0x0326), top: B:130:0x027e }] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a6 A[Catch: IllegalStateException -> 0x033e, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x033e, blocks: (B:76:0x027e, B:81:0x0296, B:83:0x02a6, B:85:0x02b3, B:90:0x02db, B:92:0x02e9, B:95:0x02f1, B:96:0x02ff, B:98:0x0307, B:101:0x0326), top: B:130:0x027e }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0307 A[Catch: IllegalStateException -> 0x033e, TryCatch #0 {IllegalStateException -> 0x033e, blocks: (B:76:0x027e, B:81:0x0296, B:83:0x02a6, B:85:0x02b3, B:90:0x02db, B:92:0x02e9, B:95:0x02f1, B:96:0x02ff, B:98:0x0307, B:101:0x0326), top: B:130:0x027e }] */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v68 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v97 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r1v15 */
    @Override // com.google.android.gms.measurement.internal.zze
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzaa() {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzep.zzaa():void");
    }

    public final String zzab() {
        zzw();
        return this.zza;
    }

    public final String zzac() {
        zzw();
        return this.zzj;
    }

    public final String zzad() {
        zzw();
        return this.zzk;
    }

    public final String zzae() {
        zzw();
        return this.zzl;
    }

    public final int zzaf() {
        zzw();
        return this.zzc;
    }

    public final int zzag() {
        zzw();
        return this.zzi;
    }

    public final List<String> zzah() {
        return this.zzh;
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
        return true;
    }
}
