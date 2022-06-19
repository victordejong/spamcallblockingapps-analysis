package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.util.SparseArray;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzasl.class */
public final class zzasl implements zzasp, zzapp, zzauj, zzasz {
    private long zzB;
    private int zzD;
    private boolean zzE;
    private boolean zzF;
    private final zzauc zzG;
    private final Uri zza;
    private final zzatz zzb;
    private final int zzc;
    private final Handler zzd;
    private final zzasm zze;
    private final zzasq zzf;
    private final long zzg;
    private final zzasj zzi;
    private zzaso zzo;
    private zzapv zzp;
    private boolean zzq;
    private boolean zzr;
    private boolean zzs;
    private boolean zzt;
    private int zzu;
    private zzatg zzv;
    private long zzw;
    private boolean[] zzx;
    private boolean[] zzy;
    private boolean zzz;
    private final zzaun zzh = new zzaun("Loader:ExtractorMediaPeriod");
    private final zzaur zzj = new zzaur();
    private final Runnable zzk = new zzase(this);
    private final Runnable zzl = new zzasf(this);
    private final Handler zzm = new Handler();
    private long zzC = -9223372036854775807L;
    private final SparseArray<zzata> zzn = new SparseArray<>();
    private long zzA = -1;

    public zzasl(Uri uri, zzatz zzatzVar, zzapo[] zzapoVarArr, int i, Handler handler, zzasm zzasmVar, zzasq zzasqVar, zzauc zzaucVar, String str, int i2, byte[] bArr) {
        this.zza = uri;
        this.zzb = zzatzVar;
        this.zzc = i;
        this.zzd = handler;
        this.zze = zzasmVar;
        this.zzf = zzasqVar;
        this.zzG = zzaucVar;
        this.zzg = i2;
        this.zzi = new zzasj(zzapoVarArr, this);
    }

    private final void zzC(zzasi zzasiVar) {
        long j;
        if (this.zzA == -1) {
            j = zzasiVar.zzj;
            this.zzA = j;
        }
    }

    private final void zzD() {
        zzapv zzapvVar;
        zzasi zzasiVar = new zzasi(this, this.zza, this.zzb, this.zzi, this.zzj);
        if (this.zzr) {
            zzaup.zzd(zzG());
            long j = this.zzw;
            if (j != -9223372036854775807L && this.zzC >= j) {
                this.zzE = true;
                this.zzC = -9223372036854775807L;
                return;
            }
            zzasiVar.zzb(this.zzp.zzc(this.zzC), this.zzC);
            this.zzC = -9223372036854775807L;
        }
        this.zzD = zzE();
        int i = this.zzc;
        int i2 = i;
        if (i == -1) {
            i2 = (this.zzr && this.zzA == -1 && ((zzapvVar = this.zzp) == null || zzapvVar.zzb() == -9223372036854775807L)) ? 6 : 3;
        }
        this.zzh.zze(zzasiVar, this, i2);
    }

    private final int zzE() {
        int size = this.zzn.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.zzn.valueAt(i2).zzf();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    private final long zzF() {
        int size = this.zzn.size();
        char c = 0;
        for (int i = 0; i < size; i++) {
            c = Math.max((long) c, this.zzn.valueAt(i).zzj());
        }
        return c;
    }

    private final boolean zzG() {
        return this.zzC != -9223372036854775807L;
    }

    public static /* synthetic */ void zzx(zzasl zzaslVar) {
        if (zzaslVar.zzF || zzaslVar.zzr || zzaslVar.zzp == null || !zzaslVar.zzq) {
            return;
        }
        int size = zzaslVar.zzn.size();
        for (int i = 0; i < size; i++) {
            if (zzaslVar.zzn.valueAt(i).zzi() == null) {
                return;
            }
        }
        zzaslVar.zzj.zzb();
        zzatf[] zzatfVarArr = new zzatf[size];
        zzaslVar.zzy = new boolean[size];
        zzaslVar.zzx = new boolean[size];
        zzaslVar.zzw = zzaslVar.zzp.zzb();
        for (int i2 = 0; i2 < size; i2++) {
            zzanm zzi = zzaslVar.zzn.valueAt(i2).zzi();
            zzatfVarArr[i2] = new zzatf(zzi);
            String str = zzi.zzf;
            boolean z = true;
            if (!zzauu.zzb(str)) {
                z = zzauu.zza(str);
            }
            zzaslVar.zzy[i2] = z;
            zzaslVar.zzz = z | zzaslVar.zzz;
        }
        zzaslVar.zzv = new zzatg(zzatfVarArr);
        zzaslVar.zzr = true;
        zzaslVar.zzf.zzi(new zzate(zzaslVar.zzw, zzaslVar.zzp.zza()), null);
        zzaslVar.zzo.zzj(zzaslVar);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzauj
    public final /* bridge */ /* synthetic */ void zzA(zzaul zzaulVar, long j, long j2) {
        zzC((zzasi) zzaulVar);
        this.zzE = true;
        if (this.zzw == -9223372036854775807L) {
            long zzF = zzF();
            char c = zzF == Long.MIN_VALUE ? (char) 0 : zzF + 10000;
            this.zzw = c;
            this.zzf.zzi(new zzate(c, this.zzp.zza()), null);
        }
        this.zzo.zzbh(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0168, code lost:
        if (r15 != false) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzasp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzB(com.google.android.gms.internal.ads.zzatk[] r8, boolean[] r9, com.google.android.gms.internal.ads.zzatb[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasl.zzB(com.google.android.gms.internal.ads.zzatk[], boolean[], com.google.android.gms.internal.ads.zzatb[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzasp, com.google.android.gms.internal.ads.zzatd
    public final long zza() {
        if (this.zzu == 0) {
            return Long.MIN_VALUE;
        }
        return zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzasp, com.google.android.gms.internal.ads.zzatd
    public final boolean zzb(long j) {
        if (!this.zzE) {
            if (this.zzr && this.zzu == 0) {
                return false;
            }
            boolean zza = this.zzj.zza();
            if (!this.zzh.zzf()) {
                zzD();
                zza = true;
            }
            return zza;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final zzapx zzbf(int i, int i2) {
        zzata zzataVar = this.zzn.get(i);
        zzata zzataVar2 = zzataVar;
        if (zzataVar == null) {
            zzataVar2 = new zzata(this.zzG, null);
            zzataVar2.zzn(this);
            this.zzn.put(i, zzataVar2);
        }
        return zzataVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzbg() {
        this.zzq = true;
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void zzc(zzapv zzapvVar) {
        this.zzp = zzapvVar;
        this.zzm.post(this.zzk);
    }

    public final void zzk() {
        this.zzh.zzh(new zzasg(this, this.zzi));
        this.zzm.removeCallbacksAndMessages(null);
        this.zzF = true;
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzl(zzaso zzasoVar, long j) {
        this.zzo = zzasoVar;
        this.zzj.zza();
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzm() throws IOException {
        this.zzh.zzi(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final zzatg zzn() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final void zzo(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzp() {
        if (this.zzt) {
            this.zzt = false;
            return this.zzB;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzq() {
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
                    c3 = Math.min((long) c2, this.zzn.valueAt(i).zzj());
                }
                i++;
                c2 = c3;
            }
        } else {
            c = zzF();
        }
        return c == Long.MIN_VALUE ? this.zzB : c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.zzata] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zzasp
    public final long zzr(long j) {
        ?? r6 = j;
        if (true != this.zzp.zza()) {
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
                if (this.zzh.zzf()) {
                    this.zzh.zzg();
                } else {
                    for (int i2 = 0; i2 < size; i2++) {
                        this.zzn.valueAt(i2).zze(this.zzx[i2]);
                    }
                }
            } else if (i >= size) {
                break;
            } else {
                if (this.zzx[i]) {
                    zzG = this.zzn.valueAt(i).zzl(r6, false);
                }
                i++;
            }
        }
        this.zzt = false;
        return r6;
    }

    public final boolean zzs(int i) {
        boolean z = false;
        if (!this.zzE) {
            if (!zzG()) {
                if (!this.zzn.valueAt(i).zzh()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    public final void zzt() throws IOException {
        this.zzh.zzi(Integer.MIN_VALUE);
    }

    public final int zzu(int i, zzann zzannVar, zzapg zzapgVar, boolean z) {
        if (this.zzt || zzG()) {
            return -3;
        }
        return this.zzn.valueAt(i).zzm(zzannVar, zzapgVar, z, this.zzE, this.zzB);
    }

    public final void zzv(int i, long j) {
        zzata valueAt = this.zzn.valueAt(i);
        if (!this.zzE || j <= valueAt.zzj()) {
            valueAt.zzl(j, true);
        } else {
            valueAt.zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzasz
    public final void zzw(zzanm zzanmVar) {
        this.zzm.post(this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzauj
    public final /* bridge */ /* synthetic */ int zzy(zzaul zzaulVar, long j, long j2, IOException iOException) {
        int i;
        zzapv zzapvVar;
        zzasi zzasiVar = (zzasi) zzaulVar;
        zzC(zzasiVar);
        Handler handler = this.zzd;
        if (handler != null) {
            handler.post(new zzash(this, iOException));
        }
        if (iOException instanceof zzath) {
            i = 3;
        } else {
            int zzE = zzE();
            int i2 = this.zzD;
            if (this.zzA == -1 && ((zzapvVar = this.zzp) == null || zzapvVar.zzb() == -9223372036854775807L)) {
                this.zzB = 0L;
                this.zzt = this.zzr;
                int size = this.zzn.size();
                for (int i3 = 0; i3 < size; i3++) {
                    this.zzn.valueAt(i3).zze(!this.zzr || this.zzx[i3]);
                }
                zzasiVar.zzb(0L, 0L);
            }
            this.zzD = zzE();
            if (zzE > i2) {
                return 1;
            }
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzauj
    public final /* bridge */ /* synthetic */ void zzz(zzaul zzaulVar, long j, long j2, boolean z) {
        zzC((zzasi) zzaulVar);
        if (z || this.zzu <= 0) {
            return;
        }
        int size = this.zzn.size();
        for (int i = 0; i < size; i++) {
            this.zzn.valueAt(i).zze(this.zzx[i]);
        }
        this.zzo.zzbh(this);
    }
}
