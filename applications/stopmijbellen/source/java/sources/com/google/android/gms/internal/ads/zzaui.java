package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaui.class */
public final class zzaui implements zzaum, zzark, zzawg, zzauw {
    private long zzB;
    private int zzD;
    private boolean zzE;
    private boolean zzF;
    private final zzavz zzG;
    private final Uri zza;
    private final zzavw zzb;
    private final int zzc;
    private final Handler zzd;
    private final zzauj zze;
    private final zzaun zzf;
    private final long zzg;
    private final zzaug zzi;
    private zzaul zzo;
    private zzarq zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private int zzu;
    private zzavd zzv;
    private long zzw;
    private boolean[] zzx;
    private boolean[] zzy;
    private boolean zzz;
    private final zzawk zzh = new zzawk("Loader:ExtractorMediaPeriod");
    private final zzawo zzj = new zzawo();
    private final Runnable zzk = new zzaub(this);
    private final Runnable zzl = new zzauc(this);
    private final Handler zzm = new Handler();
    private long zzC = -9223372036854775807L;
    private final SparseArray<zzaux> zzn = new SparseArray<>();
    private long zzA = -1;

    public zzaui(Uri uri, zzavw zzavwVar, zzarj[] zzarjVarArr, int i, Handler handler, zzauj zzaujVar, zzaun zzaunVar, zzavz zzavzVar, String str, int i2, byte[] bArr) {
        this.zza = uri;
        this.zzb = zzavwVar;
        this.zzc = i;
        this.zzd = handler;
        this.zze = zzaujVar;
        this.zzf = zzaunVar;
        this.zzG = zzavzVar;
        this.zzg = i2;
        this.zzi = new zzaug(zzarjVarArr, this);
    }

    private final int zzC() {
        int size = this.zzn.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.zzn.valueAt(i2).zze();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    private final long zzD() {
        int size = this.zzn.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.zzn.valueAt(i).zzg());
        }
        return c;
    }

    private final void zzE(zzauf zzaufVar) {
        long j;
        if (this.zzA == -1) {
            j = zzaufVar.zzj;
            this.zzA = j;
        }
    }

    private final void zzF() {
        zzarq zzarqVar;
        zzauf zzaufVar = new zzauf(this, this.zza, this.zzb, this.zzi, this.zzj);
        if (this.zzr) {
            zzawm.zze(zzG());
            long j = this.zzw;
            if (j != -9223372036854775807L && this.zzC >= j) {
                this.zzE = true;
                this.zzC = -9223372036854775807L;
                return;
            }
            zzaufVar.zzd(this.zzp.zzb(this.zzC), this.zzC);
            this.zzC = -9223372036854775807L;
        }
        this.zzD = zzC();
        int i = this.zzc;
        int i2 = i;
        if (i == -1) {
            i2 = (this.zzr && this.zzA == -1 && ((zzarqVar = this.zzp) == null || zzarqVar.zza() == -9223372036854775807L)) ? 6 : 3;
        }
        this.zzh.zza(zzaufVar, this, i2);
    }

    private final boolean zzG() {
        return this.zzC != -9223372036854775807L;
    }

    public static /* bridge */ /* synthetic */ void zzp(zzaui zzauiVar) {
        if (zzauiVar.zzF || zzauiVar.zzr || zzauiVar.zzp == null || !zzauiVar.zzq) {
            return;
        }
        int size = zzauiVar.zzn.size();
        for (int i = 0; i < size; i++) {
            if (zzauiVar.zzn.valueAt(i).zzh() == null) {
                return;
            }
        }
        zzauiVar.zzj.zzb();
        zzavc[] zzavcVarArr = new zzavc[size];
        zzauiVar.zzy = new boolean[size];
        zzauiVar.zzx = new boolean[size];
        zzauiVar.zzw = zzauiVar.zzp.zza();
        for (int i2 = 0; i2 < size; i2++) {
            zzapg zzh = zzauiVar.zzn.valueAt(i2).zzh();
            zzavcVarArr[i2] = new zzavc(zzh);
            String str = zzh.zzf;
            boolean z = true;
            if (!zzawr.zzb(str)) {
                z = zzawr.zza(str);
            }
            zzauiVar.zzy[i2] = z;
            zzauiVar.zzz = z | zzauiVar.zzz;
        }
        zzauiVar.zzv = new zzavd(zzavcVarArr);
        zzauiVar.zzr = true;
        zzauiVar.zzf.zze(new zzavb(zzauiVar.zzw, zzauiVar.zzp.zzc()), null);
        zzauiVar.zzo.zzd(zzauiVar);
    }

    public final boolean zzA(int i) {
        boolean z = false;
        if (!this.zzE) {
            if (!zzG()) {
                if (!this.zzn.valueAt(i).zzm()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0167, code lost:
        if (r15 != false) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaum
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzB(com.google.android.gms.internal.ads.zzavh[] r8, boolean[] r9, com.google.android.gms.internal.ads.zzauy[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaui.zzB(com.google.android.gms.internal.ads.zzavh[], boolean[], com.google.android.gms.internal.ads.zzauy[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaum, com.google.android.gms.internal.ads.zzava
    public final long zza() {
        if (this.zzu == 0) {
            return Long.MIN_VALUE;
        }
        return zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final void zzb() {
        this.zzq = true;
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final zzars zzbq(int i, int i2) {
        zzaux zzauxVar = this.zzn.get(i);
        zzaux zzauxVar2 = zzauxVar;
        if (zzauxVar == null) {
            zzauxVar2 = new zzaux(this.zzG, null);
            zzauxVar2.zzk(this);
            this.zzn.put(i, zzauxVar2);
        }
        return zzauxVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzaum, com.google.android.gms.internal.ads.zzava
    public final boolean zzbr(long j) {
        if (!this.zzE) {
            if (this.zzr && this.zzu == 0) {
                return false;
            }
            boolean zzc = this.zzj.zzc();
            if (!this.zzh.zzi()) {
                zzF();
                zzc = true;
            }
            return zzc;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final void zzc(zzarq zzarqVar) {
        this.zzp = zzarqVar;
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzawg
    public final /* bridge */ /* synthetic */ int zzd(zzawi zzawiVar, long j, long j2, IOException iOException) {
        int i;
        zzarq zzarqVar;
        zzauf zzaufVar = (zzauf) zzawiVar;
        zzE(zzaufVar);
        Handler handler = this.zzd;
        if (handler != null) {
            handler.post(new zzaue(this, iOException));
        }
        if (iOException instanceof zzave) {
            i = 3;
        } else {
            int zzC = zzC();
            int i2 = this.zzD;
            if (this.zzA == -1 && ((zzarqVar = this.zzp) == null || zzarqVar.zza() == -9223372036854775807L)) {
                this.zzB = 0L;
                this.zzt = this.zzr;
                int size = this.zzn.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.zzn.valueAt(i3).zzj(!this.zzr || this.zzx[i3]);
                }
                zzaufVar.zzd(0L, 0L);
            }
            this.zzD = zzC();
            if (zzC > i2) {
                return 1;
            }
            i = 0;
        }
        return i;
    }

    public final int zze(int i, zzaph zzaphVar, zzarb zzarbVar, boolean z) {
        if (this.zzt || zzG()) {
            return -3;
        }
        return this.zzn.valueAt(i).zzf(zzaphVar, zzarbVar, z, this.zzE, this.zzB);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzg() {
        char c;
        if (this.zzE) {
            return Long.MIN_VALUE;
        }
        if (zzG()) {
            return this.zzC;
        }
        if (this.zzz) {
            int size = this.zzn.size();
            char c2 = 65535;
            int i = 0;
            while (true) {
                c = c2;
                if (i >= size) {
                    break;
                }
                char c3 = c2;
                if (this.zzy[i]) {
                    c3 = Math.min((long) c2, this.zzn.valueAt(i).zzg());
                }
                i++;
                c2 = c3;
            }
        } else {
            c = zzD();
        }
        return c == Long.MIN_VALUE ? this.zzB : c;
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzh() {
        if (this.zzt) {
            this.zzt = false;
            return this.zzB;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.zzaux] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zzaum
    public final long zzi(long j) {
        ?? r6 = j;
        if (true != this.zzp.zzc()) {
            r6 = 0;
        }
        this.zzB = r6;
        int size = this.zzn.size();
        boolean zzG = true ^ zzG();
        int i = 0;
        while (true) {
            if (!zzG) {
                this.zzC = r6;
                this.zzE = false;
                if (this.zzh.zzi()) {
                    this.zzh.zzf();
                } else {
                    for (int i2 = 0; i2 < size; i2++) {
                        this.zzn.valueAt(i2).zzj(this.zzx[i2]);
                    }
                }
            } else if (i >= size) {
                break;
            } else {
                if (this.zzx[i]) {
                    zzG = this.zzn.valueAt(i).zzn(r6, false);
                }
                i++;
            }
        }
        this.zzt = false;
        return r6;
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final zzavd zzn() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzq(long j) {
    }

    public final void zzr() throws IOException {
        this.zzh.zzg(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzs() throws IOException {
        this.zzh.zzg(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzawg
    public final /* bridge */ /* synthetic */ void zzt(zzawi zzawiVar, long j, long j2, boolean z) {
        zzE((zzauf) zzawiVar);
        if (z || this.zzu <= 0) {
            return;
        }
        int size = this.zzn.size();
        for (int i = 0; i < size; i++) {
            this.zzn.valueAt(i).zzj(this.zzx[i]);
        }
        this.zzo.zzc(this);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzawg
    public final /* bridge */ /* synthetic */ void zzu(zzawi zzawiVar, long j, long j2) {
        zzE((zzauf) zzawiVar);
        this.zzE = true;
        if (this.zzw == -9223372036854775807L) {
            long zzD = zzD();
            char c = zzD == Long.MIN_VALUE ? (char) 0 : zzD + 10000;
            this.zzw = c;
            this.zzf.zze(new zzavb(c, this.zzp.zzc()), null);
        }
        this.zzo.zzc(this);
    }

    @Override // com.google.android.gms.internal.ads.zzauw
    public final void zzv(zzapg zzapgVar) {
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzaum
    public final void zzw(zzaul zzaulVar, long j) {
        this.zzo = zzaulVar;
        this.zzj.zzc();
        zzF();
    }

    public final void zzx() {
        this.zzh.zzh(new zzaud(this, this.zzi));
        this.zzm.removeCallbacksAndMessages(null);
        this.zzF = true;
    }

    public final void zzy(int i, long j) {
        zzaux valueAt = this.zzn.valueAt(i);
        if (!this.zzE || j <= valueAt.zzg()) {
            valueAt.zzn(j, true);
        } else {
            valueAt.zzl();
        }
    }
}
