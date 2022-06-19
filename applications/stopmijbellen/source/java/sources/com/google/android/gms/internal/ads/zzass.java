package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzass.class */
public final class zzass implements zzarj {
    public static final zzarl zza = new zzasp();
    private static final int zzb = zzaxb.zzg("seig");
    private static final byte[] zzc = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private final SparseArray<zzasr> zzd;
    private final zzawu zze;
    private final zzawu zzf;
    private final zzawu zzg;
    private final zzawu zzh;
    private final zzawu zzi;
    private final byte[] zzj;
    private final Stack<zzase> zzk;
    private final LinkedList<zzasq> zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private int zzp;
    private zzawu zzq;
    private long zzr;
    private long zzs;
    private zzasr zzt;
    private int zzu;
    private int zzv;
    private int zzw;
    private zzark zzx;
    private boolean zzy;

    public zzass() {
        this(0, null, null);
    }

    public zzass(int i, zzawy zzawyVar, zzasy zzasyVar) {
        this.zzi = new zzawu(16);
        this.zze = new zzawu(zzaws.zza);
        this.zzf = new zzawu(5);
        this.zzg = new zzawu();
        this.zzh = new zzawu(1);
        this.zzj = new byte[16];
        this.zzk = new Stack<>();
        this.zzl = new LinkedList<>();
        this.zzd = new SparseArray<>();
        this.zzs = -9223372036854775807L;
        zzb();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzarf zza(java.util.List<com.google.android.gms.internal.ads.zzasf> r8) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzass.zza(java.util.List):com.google.android.gms.internal.ads.zzarf");
    }

    private final void zzb() {
        this.zzm = 0;
        this.zzp = 0;
    }

    private static void zzc(zzawu zzawuVar, int i, zzata zzataVar) throws zzapj {
        zzawuVar.zzv(i + 8);
        int zze = zzasg.zze(zzawuVar.zze());
        if ((zze & 1) == 0) {
            boolean z = (zze & 2) != 0;
            int zzi = zzawuVar.zzi();
            int i2 = zzataVar.zze;
            if (zzi != i2) {
                throw new zzapj(C0082b.m8757e(41, "Length mismatch: ", zzi, ", ", i2));
            }
            Arrays.fill(zzataVar.zzm, 0, zzi, z);
            zzataVar.zza(zzawuVar.zza());
            zzawuVar.zzq(zzataVar.zzp.zza, 0, zzataVar.zzo);
            zzataVar.zzp.zzv(0);
            zzataVar.zzq = false;
            return;
        }
        throw new zzapj("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Code restructure failed: missing block: B:252:0x0b17, code lost:
        zzb();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0b1b, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:147:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x070c  */
    /* JADX WARN: Type inference failed for: r0v181, types: [long] */
    /* JADX WARN: Type inference failed for: r0v327, types: [long] */
    /* JADX WARN: Type inference failed for: r0v329, types: [long] */
    /* JADX WARN: Type inference failed for: r0v448, types: [long] */
    /* JADX WARN: Type inference failed for: r0v476, types: [long] */
    /* JADX WARN: Type inference failed for: r0v486, types: [long] */
    /* JADX WARN: Type inference failed for: r0v533, types: [long] */
    /* JADX WARN: Type inference failed for: r0v535, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzh(long r10) throws com.google.android.gms.internal.ads.zzapj {
        /*
            Method dump skipped, instructions count: 2844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzass.zzh(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zzd(zzark zzarkVar) {
        this.zzx = zzarkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zze(long j, long j2) {
        int size = this.zzd.size();
        for (int i = 0; i < size; i++) {
            this.zzd.valueAt(i).zzb();
        }
        this.zzl.clear();
        this.zzk.clear();
        zzb();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ee, code lost:
        r0 = r8.zzt;
        r0 = r0.zza;
        r0 = r0.zzh;
        r0 = r0.zze;
        r11 = r0[r0];
        r8.zzu = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0117, code lost:
        if (r0.zzl == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x011a, code lost:
        r0 = r0.zzp;
        r0 = r0.zza.zza;
        r10 = r0.zzn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0131, code lost:
        if (r10 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0137, code lost:
        r10 = r0.zzc.zzh[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0142, code lost:
        r0 = r10.zza;
        r0 = r0.zzm[r0];
        r0 = r8.zzh;
        r0 = r0.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0161, code lost:
        if (true == r0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0164, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0169, code lost:
        r11 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x016d, code lost:
        r0[0] = (byte) (r11 | r0);
        r0.zzv(0);
        r0 = r0.zzb;
        r0.zzb(r8.zzh, 1);
        r0.zzb(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0199, code lost:
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x019c, code lost:
        r11 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01a4, code lost:
        r0 = r0.zzj();
        r0.zzw(-2);
        r0 = (r0 * 6) + 2;
        r0.zzb(r0, r0);
        r11 = (r0 + 1) + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01c8, code lost:
        r8.zzv = r11;
        r11 = r8.zzu + r11;
        r8.zzu = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01dc, code lost:
        r8.zzv = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01ec, code lost:
        if (r8.zzt.zzc.zzg != 1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01ef, code lost:
        r8.zzu = r11 - 8;
        r9.zzi(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01ff, code lost:
        r8.zzm = 4;
        r8.zzw = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0209, code lost:
        r0 = r8.zzt;
        r0 = r0.zza;
        r0 = r0.zzc;
        r0 = r0.zzb;
        r0 = r0.zze;
        r0 = r0.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x022f, code lost:
        if (r0 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0232, code lost:
        r0 = r8.zzv;
        r0 = r8.zzu;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0240, code lost:
        if (r0 >= r0) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0243, code lost:
        r8.zzv += r0.zzd(r9, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x025e, code lost:
        r0 = r8.zzf.zza;
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = 4 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0282, code lost:
        if (r8.zzv >= r8.zzu) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0285, code lost:
        r0 = r8.zzw;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x028d, code lost:
        if (r0 != 0) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0290, code lost:
        r9.zzh(r0, r0, r0 + 1, false);
        r8.zzf.zzv(0);
        r8.zzw = r8.zzf.zzi() - 1;
        r8.zze.zzv(0);
        r0.zzb(r8.zze, 4);
        r0.zzb(r8.zzf, 1);
        r8.zzv += 5;
        r8.zzu += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02e8, code lost:
        r0 = r0.zzd(r9, r0, false);
        r8.zzv += r0;
        r8.zzw -= r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x030e, code lost:
        r0 = r0.zzj[r0];
        r0 = r0.zzi[r0];
        r0 = r0.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x032d, code lost:
        if (true == r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0330, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0335, code lost:
        r11 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0339, code lost:
        r0 = r0.zzk[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0345, code lost:
        if (r0 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0348, code lost:
        r0 = r0.zzn;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0351, code lost:
        if (r0 != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0354, code lost:
        r9 = r0.zzh[r0.zza.zza];
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0363, code lost:
        r0 = r8.zzt;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x036d, code lost:
        if (r9 == r0.zzi) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0370, code lost:
        r10 = new com.google.android.gms.internal.ads.zzarr(1, r9.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0380, code lost:
        r10 = r0.zzh;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0388, code lost:
        r9 = null;
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x038c, code lost:
        r0 = r8.zzt;
        r0.zzh = r10;
        r0.zzi = r9;
        r0.zzc((r0 + r0) * 1000, r11 | (r0 ? 1 : 0), r8.zzu, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03bf, code lost:
        if (r8.zzl.isEmpty() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03c2, code lost:
        r0 = r8.zzt;
        r0.zze++;
        r0 = r0.zzf + 1;
        r0.zzf = r0;
        r0 = r0.zzg;
        r0 = r0.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03ee, code lost:
        if (r0 != r0[r0]) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03f1, code lost:
        r0.zzg = r0 + 1;
        r0.zzf = 0;
        r8.zzt = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0403, code lost:
        r8.zzm = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0409, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x040a, code lost:
        r0 = r8.zzl.removeFirst().zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0419, code lost:
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v234, types: [long] */
    /* JADX WARN: Type inference failed for: r0v276, types: [long] */
    /* JADX WARN: Type inference failed for: r0v318, types: [long] */
    /* JADX WARN: Type inference failed for: r0v320, types: [long] */
    /* JADX WARN: Type inference failed for: r0v355, types: [long] */
    /* JADX WARN: Type inference failed for: r0v357, types: [long] */
    /* JADX WARN: Type inference failed for: r0v361, types: [long] */
    /* JADX WARN: Type inference failed for: r0v363, types: [long] */
    /* JADX WARN: Type inference failed for: r0v365, types: [long] */
    /* JADX WARN: Type inference failed for: r0v367, types: [long] */
    /* JADX WARN: Type inference failed for: r0v369, types: [long] */
    /* JADX WARN: Type inference failed for: r0v377, types: [long] */
    /* JADX WARN: Type inference failed for: r0v478, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzarj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzf(com.google.android.gms.internal.ads.zzari r9, com.google.android.gms.internal.ads.zzaro r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 2335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzass.zzf(com.google.android.gms.internal.ads.zzari, com.google.android.gms.internal.ads.zzaro):int");
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final boolean zzg(zzari zzariVar) throws IOException, InterruptedException {
        return zzasx.zza(zzariVar);
    }
}
