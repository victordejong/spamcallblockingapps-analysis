package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzqu.class */
public final class zzqu implements zztz, zzpp {
    public final /* synthetic */ zzqz zza;
    private final Uri zzc;
    private final zzul zzd;
    private final zzqq zze;
    private final zzws zzf;
    private final zzeb zzg;
    private volatile boolean zzi;
    private long zzk;
    private zzxt zzn;
    private boolean zzo;
    private final zzxm zzh = new zzxm();
    private boolean zzj = true;
    private long zzm = -1;
    private final long zzb = zzpr.zza();
    private zzdm zzl = zzj(0);

    public zzqu(zzqz zzqzVar, Uri uri, zzdi zzdiVar, zzqq zzqqVar, zzws zzwsVar, zzeb zzebVar) {
        this.zza = zzqzVar;
        this.zzc = uri;
        this.zzd = new zzul(zzdiVar);
        this.zze = zzqqVar;
        this.zzf = zzwsVar;
        this.zzg = zzebVar;
    }

    public static /* bridge */ /* synthetic */ long zzb(zzqu zzquVar) {
        return zzquVar.zzm;
    }

    public static /* bridge */ /* synthetic */ long zzc(zzqu zzquVar) {
        return zzquVar.zzb;
    }

    public static /* bridge */ /* synthetic */ long zzd(zzqu zzquVar) {
        return zzquVar.zzk;
    }

    public static /* bridge */ /* synthetic */ zzdm zze(zzqu zzquVar) {
        return zzquVar.zzl;
    }

    public static /* bridge */ /* synthetic */ zzul zzf(zzqu zzquVar) {
        return zzquVar.zzd;
    }

    public static /* bridge */ /* synthetic */ void zzg(zzqu zzquVar, long j, long j2) {
        zzquVar.zzh.zza = j;
        zzquVar.zzk = j2;
        zzquVar.zzj = true;
        zzquVar.zzo = false;
    }

    private final zzdm zzj(long j) {
        Map<String, String> map;
        zzdk zzdkVar = new zzdk();
        zzdkVar.zzd(this.zzc);
        zzdkVar.zzc(j);
        zzdkVar.zza(6);
        map = zzqz.zzb;
        zzdkVar.zzb(map);
        return zzdkVar.zze();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzpp
    public final void zza(zzfd zzfdVar) {
        char c;
        long zzO;
        if (!this.zzo) {
            c = this.zzk;
        } else {
            zzO = this.zza.zzO();
            c = Math.max(zzO, this.zzk);
        }
        int zza = zzfdVar.zza();
        zzxt zzxtVar = this.zzn;
        Objects.requireNonNull(zzxtVar);
        zzxr.zzb(zzxtVar, zzfdVar, zza);
        zzxtVar.zzs(c, 1, zza, 0, null);
        this.zzo = true;
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final void zzh() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x030b A[Catch: all -> 0x040e, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0443 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03d3 A[EDGE_INSN: B:172:0x03d3->B:135:0x03d3 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011f A[Catch: all -> 0x040e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0148 A[Catch: all -> 0x040e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0171 A[Catch: all -> 0x040e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019a A[Catch: all -> 0x040e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8 A[Catch: all -> 0x040e, TRY_ENTER, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x025d A[Catch: all -> 0x040e, TRY_ENTER, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02fb A[Catch: all -> 0x040e, TryCatch #6 {all -> 0x040e, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0284, B:90:0x0292, B:92:0x02a0, B:94:0x02d3, B:96:0x02fb, B:98:0x0305, B:100:0x030b), top: B:168:0x000b }] */
    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.zztz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1106
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqu.zzi():void");
    }
}
