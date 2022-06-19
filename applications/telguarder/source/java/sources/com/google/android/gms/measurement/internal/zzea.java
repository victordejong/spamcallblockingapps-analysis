package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzea.class */
public final class zzea extends zzf {
    private String zza;
    private String zzb;
    private int zzc;
    private String zzd;
    private String zze;
    private long zzf;
    private final long zzg;
    private List<String> zzh;
    private int zzi;
    private String zzj;
    private String zzk;
    private String zzl;

    public zzea(zzfl zzflVar, long j) {
        super(zzflVar);
        this.zzg = j;
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:2|(1:4)(9:139|6|7|10|(1:12)(2:13|(1:15))|137|16|17|(28:19|(1:21)(1:22)|135|23|24|25|26|32|(1:37)(1:36)|38|39|49|(1:51)|133|52|(1:54)(1:55)|56|57|(2:59|60)(1:61)|62|(2:64|(9:66|(1:68)(1:69)|70|71|72|73|(2:75|76)|77|(2:81|82))(6:83|84|85|(2:87|88)|89|(2:93|94)))(2:95|(2:97|(4:99|(1:101)(1:102)|103|104)(1:105)))|106|(4:108|(1:110)(1:111)|112|113)|116|(4:118|(1:120)(3:121|(3:124|(1:141)|122)|142)|127|(2:129|130)(2:131|132))|126|127|(0)(0)))|5|32|(1:34)|37|38|39|49|(0)|133|52|(0)(0)|56|57|(0)(0)|62|(0)(0)|106|(0)|116|(0)|126|127|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0460, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0462, code lost:
        r5.zzx.zzat().zzb().zzc("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.zzei.zzl(r0), r14);
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0428 A[Catch: IllegalStateException -> 0x0460, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x0460, blocks: (B:52:0x0265, B:54:0x027e, B:55:0x0296, B:57:0x02a5, B:62:0x02b8, B:64:0x02d7, B:66:0x02f0, B:69:0x0317, B:71:0x0320, B:73:0x032c, B:77:0x0338, B:79:0x0345, B:82:0x034e, B:83:0x035e, B:85:0x037c, B:89:0x0387, B:91:0x0395, B:94:0x039d, B:95:0x03ab, B:97:0x03b3, B:99:0x03c8, B:102:0x03ef, B:104:0x03f6, B:105:0x0406, B:108:0x0428, B:110:0x0443, B:111:0x044c, B:113:0x0453), top: B:133:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x049c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x04f5  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0504  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x027e A[Catch: IllegalStateException -> 0x0460, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x0460, blocks: (B:52:0x0265, B:54:0x027e, B:55:0x0296, B:57:0x02a5, B:62:0x02b8, B:64:0x02d7, B:66:0x02f0, B:69:0x0317, B:71:0x0320, B:73:0x032c, B:77:0x0338, B:79:0x0345, B:82:0x034e, B:83:0x035e, B:85:0x037c, B:89:0x0387, B:91:0x0395, B:94:0x039d, B:95:0x03ab, B:97:0x03b3, B:99:0x03c8, B:102:0x03ef, B:104:0x03f6, B:105:0x0406, B:108:0x0428, B:110:0x0443, B:111:0x044c, B:113:0x0453), top: B:133:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0296 A[Catch: IllegalStateException -> 0x0460, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x0460, blocks: (B:52:0x0265, B:54:0x027e, B:55:0x0296, B:57:0x02a5, B:62:0x02b8, B:64:0x02d7, B:66:0x02f0, B:69:0x0317, B:71:0x0320, B:73:0x032c, B:77:0x0338, B:79:0x0345, B:82:0x034e, B:83:0x035e, B:85:0x037c, B:89:0x0387, B:91:0x0395, B:94:0x039d, B:95:0x03ab, B:97:0x03b3, B:99:0x03c8, B:102:0x03ef, B:104:0x03f6, B:105:0x0406, B:108:0x0428, B:110:0x0443, B:111:0x044c, B:113:0x0453), top: B:133:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02d7 A[Catch: IllegalStateException -> 0x0460, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x0460, blocks: (B:52:0x0265, B:54:0x027e, B:55:0x0296, B:57:0x02a5, B:62:0x02b8, B:64:0x02d7, B:66:0x02f0, B:69:0x0317, B:71:0x0320, B:73:0x032c, B:77:0x0338, B:79:0x0345, B:82:0x034e, B:83:0x035e, B:85:0x037c, B:89:0x0387, B:91:0x0395, B:94:0x039d, B:95:0x03ab, B:97:0x03b3, B:99:0x03c8, B:102:0x03ef, B:104:0x03f6, B:105:0x0406, B:108:0x0428, B:110:0x0443, B:111:0x044c, B:113:0x0453), top: B:133:0x0265 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03ab A[Catch: IllegalStateException -> 0x0460, TRY_ENTER, TryCatch #0 {IllegalStateException -> 0x0460, blocks: (B:52:0x0265, B:54:0x027e, B:55:0x0296, B:57:0x02a5, B:62:0x02b8, B:64:0x02d7, B:66:0x02f0, B:69:0x0317, B:71:0x0320, B:73:0x032c, B:77:0x0338, B:79:0x0345, B:82:0x034e, B:83:0x035e, B:85:0x037c, B:89:0x0387, B:91:0x0395, B:94:0x039d, B:95:0x03ab, B:97:0x03b3, B:99:0x03c8, B:102:0x03ef, B:104:0x03f6, B:105:0x0406, B:108:0x0428, B:110:0x0443, B:111:0x044c, B:113:0x0453), top: B:133:0x0265 }] */
    @Override // com.google.android.gms.measurement.internal.zzf
    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzf() {
        /*
            Method dump skipped, instructions count: 1290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzea.zzf():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x030a  */
    /* JADX WARN: Type inference failed for: r0v103, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v182, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzp zzh(java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 838
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzea.zzh(java.lang.String):com.google.android.gms.measurement.internal.zzp");
    }

    public final String zzi() {
        zzb();
        Preconditions.checkNotNull(this.zza);
        return this.zza;
    }

    public final String zzj() {
        zzb();
        Preconditions.checkNotNull(this.zzj);
        return this.zzj;
    }

    public final String zzk() {
        zzb();
        return this.zzk;
    }

    public final String zzl() {
        zzb();
        Preconditions.checkNotNull(this.zzl);
        return this.zzl;
    }

    public final int zzm() {
        zzb();
        return this.zzc;
    }

    public final int zzn() {
        zzb();
        return this.zzi;
    }

    public final List<String> zzo() {
        return this.zzh;
    }
}
