package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzib.class */
public final class zzib implements zzlc, zzgv {
    public final /* synthetic */ zzig zza;
    private final Uri zzc;
    private final zzlp zzd;
    private final zzhx zze;
    private final zznx zzf;
    private final zzakw zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzox zzn;
    private boolean zzo;
    private final zzoq zzh = new zzoq();
    private boolean zzj = true;
    private long zzm = -1;
    private final long zzb = zzgx.zza();
    private zzan zzl = zzj(0);

    public zzib(zzig zzigVar, Uri uri, zzaj zzajVar, zzhx zzhxVar, zznx zznxVar, zzakw zzakwVar) {
        this.zza = zzigVar;
        this.zzc = uri;
        this.zzd = new zzlp(zzajVar);
        this.zze = zzhxVar;
        this.zzf = zznxVar;
        this.zzg = zzakwVar;
    }

    public static /* synthetic */ long zzb(zzib zzibVar) {
        return zzibVar.zzb;
    }

    public static /* synthetic */ zzlp zzc(zzib zzibVar) {
        return zzibVar.zzd;
    }

    public static /* synthetic */ long zzd(zzib zzibVar) {
        return zzibVar.zzk;
    }

    public static /* synthetic */ zzan zze(zzib zzibVar) {
        return zzibVar.zzl;
    }

    public static /* synthetic */ long zzf(zzib zzibVar) {
        return zzibVar.zzm;
    }

    public static /* synthetic */ void zzi(zzib zzibVar, long j, long j2) {
        zzibVar.zzh.zza = j;
        zzibVar.zzk = j2;
        zzibVar.zzj = true;
        zzibVar.zzo = false;
    }

    private final zzan zzj(long j) {
        Map<String, String> map;
        zzal zzalVar = new zzal();
        zzalVar.zza(this.zzc);
        zzalVar.zzc(j);
        zzalVar.zzd(6);
        map = zzig.zzb;
        zzalVar.zzb(map);
        return zzalVar.zze();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzgv
    public final void zza(zzamf zzamfVar) {
        char c;
        long zzV;
        if (!this.zzo) {
            c = this.zzk;
        } else {
            zzV = this.zza.zzV();
            c = Math.max(zzV, this.zzk);
        }
        int zzd = zzamfVar.zzd();
        zzox zzoxVar = this.zzn;
        Objects.requireNonNull(zzoxVar);
        zzov.zzb(zzoxVar, zzamfVar, zzd);
        zzoxVar.zzv(c, 1, zzd, 0, null);
        this.zzo = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlc
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0414 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03a4 A[EDGE_INSN: B:168:0x03a4->B:130:0x03a4 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0107 A[Catch: all -> 0x03df, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0130 A[Catch: all -> 0x03df, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0159 A[Catch: all -> 0x03df, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0182 A[Catch: all -> 0x03df, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01b0 A[Catch: all -> 0x03df, TRY_ENTER, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x022d A[Catch: all -> 0x03df, TRY_ENTER, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02cc A[Catch: all -> 0x03df, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02dc A[Catch: all -> 0x03df, TryCatch #6 {all -> 0x03df, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a5, B:27:0x00c1, B:29:0x00d0, B:30:0x00db, B:34:0x00f1, B:37:0x0107, B:40:0x011d, B:42:0x0130, B:45:0x0146, B:47:0x0159, B:50:0x016f, B:52:0x0182, B:55:0x019d, B:57:0x01b0, B:59:0x01bf, B:62:0x01cf, B:64:0x01de, B:65:0x01e9, B:70:0x01fe, B:72:0x020d, B:73:0x0218, B:77:0x022d, B:79:0x0245, B:81:0x0255, B:85:0x0263, B:87:0x0271, B:89:0x02a4, B:91:0x02cc, B:93:0x02d6, B:95:0x02dc), top: B:162:0x000b }] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzlc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1055
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzib.zzh():void");
    }
}
