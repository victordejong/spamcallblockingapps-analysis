package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqw.class */
public final class zzaqw implements zzapo {
    public static final zzapq zza = new zzaqt();
    private static final int zzb = zzave.zzl("seig");
    private static final byte[] zzc = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    private final SparseArray<zzaqv> zzd;
    private final zzaux zze;
    private final zzaux zzf;
    private final zzaux zzg;
    private final zzaux zzh;
    private final zzaux zzi;
    private final byte[] zzj;
    private final Stack<zzaqi> zzk;
    private final LinkedList<zzaqu> zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private int zzp;
    private zzaux zzq;
    private long zzr;
    private long zzs;
    private zzaqv zzt;
    private int zzu;
    private int zzv;
    private int zzw;
    private zzapp zzx;
    private boolean zzy;

    public zzaqw() {
        this(0, null, null);
    }

    public zzaqw(int i, zzavb zzavbVar, zzarc zzarcVar) {
        this.zzi = new zzaux(16);
        this.zze = new zzaux(zzauv.zza);
        this.zzf = new zzaux(5);
        this.zzg = new zzaux();
        this.zzh = new zzaux(1);
        this.zzj = new byte[16];
        this.zzk = new Stack<>();
        this.zzl = new LinkedList<>();
        this.zzd = new SparseArray<>();
        this.zzs = -9223372036854775807L;
        zza();
    }

    private final void zza() {
        this.zzm = 0;
        this.zzp = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:252:0x0b23, code lost:
        zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0b27, code lost:
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:147:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x06de  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x070a  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0710  */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v331, types: [long] */
    /* JADX WARN: Type inference failed for: r0v333, types: [long] */
    /* JADX WARN: Type inference failed for: r0v452, types: [long] */
    /* JADX WARN: Type inference failed for: r0v480, types: [long] */
    /* JADX WARN: Type inference failed for: r0v490, types: [long] */
    /* JADX WARN: Type inference failed for: r0v537, types: [long] */
    /* JADX WARN: Type inference failed for: r0v539, types: [long] */
    /* JADX WARN: Type inference failed for: r0v96, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(long r10) throws com.google.android.gms.internal.ads.zzanp {
        /*
            Method dump skipped, instructions count: 2856
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqw.zzb(long):void");
    }

    private static void zzc(zzaux zzauxVar, int i, zzare zzareVar) throws zzanp {
        zzauxVar.zzi(i + 8);
        int zzf = zzaqk.zzf(zzauxVar.zzr());
        if ((zzf & 1) == 0) {
            boolean z = (zzf & 2) != 0;
            int zzu = zzauxVar.zzu();
            int i2 = zzareVar.zze;
            if (zzu != i2) {
                throw new zzanp(C22128a.m8683N1(41, "Length mismatch: ", zzu, ", ", i2));
            }
            Arrays.fill(zzareVar.zzm, 0, zzu, z);
            zzareVar.zza(zzauxVar.zzd());
            zzauxVar.zzk(zzareVar.zzp.zza, 0, zzareVar.zzo);
            zzareVar.zzp.zzi(0);
            zzareVar.zzq = false;
            return;
        }
        throw new zzanp("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x011a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzapk zzh(java.util.List<com.google.android.gms.internal.ads.zzaqj> r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqw.zzh(java.util.List):com.google.android.gms.internal.ads.zzapk");
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void zzd(zzapp zzappVar) {
        this.zzx = zzappVar;
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final void zze(long j, long j2) {
        int size = this.zzd.size();
        for (int i = 0; i < size; i++) {
            this.zzd.valueAt(i).zzb();
        }
        this.zzl.clear();
        this.zzk.clear();
        zza();
    }

    @Override // com.google.android.gms.internal.ads.zzapo
    public final boolean zzf(zzapn zzapnVar) throws IOException, InterruptedException {
        return zzarb.zza(zzapnVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e5, code lost:
        r0 = r8.zzt;
        r0 = r0.zza;
        r0 = r0.zzh;
        r0 = r0.zze;
        r11 = r0[r0];
        r8.zzu = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x010e, code lost:
        if (r0.zzl == false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0111, code lost:
        r0 = r0.zzp;
        r0 = r0.zza.zza;
        r10 = r0.zzn;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0128, code lost:
        if (r10 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x012e, code lost:
        r10 = r0.zzc.zzh[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0139, code lost:
        r0 = r10.zza;
        r0 = r0.zzm[r0];
        r0 = r8.zzh;
        r0 = r0.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0158, code lost:
        if (true == r0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x015b, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0160, code lost:
        r11 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0164, code lost:
        r0[0] = (byte) (r11 | r0);
        r0.zzi(0);
        r0 = r0.zzb;
        r0.zzb(r8.zzh, 1);
        r0.zzb(r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0190, code lost:
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0193, code lost:
        r11 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x019b, code lost:
        r0 = r0.zzm();
        r0.zzj(-2);
        r0 = (r0 * 6) + 2;
        r0.zzb(r0, r0);
        r11 = (r0 + 1) + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01bf, code lost:
        r8.zzv = r11;
        r11 = r8.zzu + r11;
        r8.zzu = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01d3, code lost:
        r8.zzv = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01e3, code lost:
        if (r8.zzt.zzc.zzg != 1) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x01e6, code lost:
        r8.zzu = r11 - 8;
        r9.zzd(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01f6, code lost:
        r8.zzm = 4;
        r8.zzw = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0200, code lost:
        r0 = r8.zzt;
        r0 = r0.zza;
        r0 = r0.zzc;
        r0 = r0.zzb;
        r0 = r0.zze;
        r0 = r0.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0226, code lost:
        if (r0 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0229, code lost:
        r0 = r8.zzv;
        r0 = r8.zzu;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0237, code lost:
        if (r0 >= r0) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x023a, code lost:
        r8.zzv += r0.zzd(r9, r0 - r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0255, code lost:
        r0 = r8.zzf.zza;
        r0[0] = (byte) 0;
        r0[1] = (byte) 0;
        r0[2] = (byte) 0;
        r0 = 4 - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0279, code lost:
        if (r8.zzv >= r8.zzu) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x027c, code lost:
        r0 = r8.zzw;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0284, code lost:
        if (r0 != 0) goto L296;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0287, code lost:
        r9.zzb(r0, r0, r0 + 1, false);
        r8.zzf.zzi(0);
        r8.zzw = r8.zzf.zzu() - 1;
        r8.zze.zzi(0);
        r0.zzb(r8.zze, 4);
        r0.zzb(r8.zzf, 1);
        r8.zzv += 5;
        r8.zzu += r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x02df, code lost:
        r0 = r0.zzd(r9, r0, false);
        r8.zzv += r0;
        r8.zzw -= r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0305, code lost:
        r0 = r0.zzj[r0];
        r0 = r0.zzi[r0];
        r0 = r0.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0324, code lost:
        if (true == r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0327, code lost:
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x032c, code lost:
        r11 = 1073741824;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0330, code lost:
        r0 = r0.zzk[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x033c, code lost:
        if (r0 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x033f, code lost:
        r0 = r0.zzn;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0348, code lost:
        if (r0 != null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x034b, code lost:
        r9 = r0.zzh[r0.zza.zza];
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x035a, code lost:
        r0 = r8.zzt;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0364, code lost:
        if (r9 == r0.zzi) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0367, code lost:
        r10 = new com.google.android.gms.internal.ads.zzapw(1, r9.zzb);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0377, code lost:
        r10 = r0.zzh;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x037f, code lost:
        r9 = null;
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0383, code lost:
        r0 = r8.zzt;
        r0.zzh = r10;
        r0.zzi = r9;
        r0.zzc((r0 + r0) * 1000, r11 | (r0 ? 1 : 0), r8.zzu, 0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x03b6, code lost:
        if (r8.zzl.isEmpty() == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03b9, code lost:
        r0 = r8.zzt;
        r0.zze++;
        r0 = r0.zzf + 1;
        r0.zzf = r0;
        r0 = r0.zzg;
        r0 = r0.zzg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x03e6, code lost:
        if (r0 != r0[r0]) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03e9, code lost:
        r0.zzg = r0 + 1;
        r0.zzf = 0;
        r8.zzt = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03fa, code lost:
        r8.zzm = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0400, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0401, code lost:
        r0 = r8.zzl.removeFirst().zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0410, code lost:
        throw null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v232, types: [long] */
    /* JADX WARN: Type inference failed for: r0v273, types: [long] */
    /* JADX WARN: Type inference failed for: r0v315, types: [long] */
    /* JADX WARN: Type inference failed for: r0v317, types: [long] */
    /* JADX WARN: Type inference failed for: r0v352, types: [long] */
    /* JADX WARN: Type inference failed for: r0v354, types: [long] */
    /* JADX WARN: Type inference failed for: r0v358, types: [long] */
    /* JADX WARN: Type inference failed for: r0v360, types: [long] */
    /* JADX WARN: Type inference failed for: r0v362, types: [long] */
    /* JADX WARN: Type inference failed for: r0v364, types: [long] */
    /* JADX WARN: Type inference failed for: r0v366, types: [long] */
    /* JADX WARN: Type inference failed for: r0v374, types: [long] */
    /* JADX WARN: Type inference failed for: r0v475, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzapo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzg(com.google.android.gms.internal.ads.zzapn r9, com.google.android.gms.internal.ads.zzapt r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 2322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqw.zzg(com.google.android.gms.internal.ads.zzapn, com.google.android.gms.internal.ads.zzapt):int");
    }
}
