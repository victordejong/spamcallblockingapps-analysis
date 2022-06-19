package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzig.class */
public final class zzig implements zzhe, zznx, zzkz, zzle, zzis {
    private static final Map<String, String> zzb;
    private static final zzafv zzc;
    private boolean zzA;
    private boolean zzC;
    private boolean zzD;
    private int zzE;
    private long zzG;
    private boolean zzI;
    private int zzJ;
    private boolean zzK;
    private boolean zzL;
    private final zzku zzM;
    private final zzko zzN;
    private final Uri zzd;
    private final zzaj zze;
    private final zzff zzf;
    private final zzho zzg;
    private final zzfa zzh;
    private final zzic zzi;
    private final long zzj;
    private final zzhx zzl;
    private zzhd zzq;
    private zzajg zzr;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private zzif zzx;
    private zzot zzy;
    private final zzlh zzk = new zzlh("ProgressiveMediaPeriod");
    private final zzakw zzm = new zzakw(zzaku.zza);
    private final Runnable zzn = new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzhy
        private final zzig zza;

        {
            this.zza = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.zza.zzM();
        }
    };
    private final Runnable zzo = new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzhz
        private final zzig zza;

        {
            this.zza = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.zza.zzL();
        }
    };
    private final Handler zzp = zzamq.zzh(null);
    private zzie[] zzt = new zzie[0];
    private zzit[] zzs = new zzit[0];
    private long zzH = -9223372036854775807L;
    private long zzF = -1;
    private long zzz = -9223372036854775807L;
    private int zzB = 1;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        zzb = Collections.unmodifiableMap(hashMap);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzD("icy");
        zzaftVar.zzN("application/x-icy");
        zzc = zzaftVar.zzah();
    }

    public zzig(Uri uri, zzaj zzajVar, zzhx zzhxVar, zzff zzffVar, zzfa zzfaVar, zzku zzkuVar, zzho zzhoVar, zzic zzicVar, zzko zzkoVar, String str, int i, byte[] bArr) {
        this.zzd = uri;
        this.zze = zzajVar;
        this.zzf = zzffVar;
        this.zzh = zzfaVar;
        this.zzM = zzkuVar;
        this.zzg = zzhoVar;
        this.zzi = zzicVar;
        this.zzN = zzkoVar;
        this.zzj = i;
        this.zzl = zzhxVar;
    }

    private final void zzN(int i) {
        zzX();
        zzif zzifVar = this.zzx;
        boolean[] zArr = zzifVar.zzd;
        if (!zArr[i]) {
            zzafv zza = zzifVar.zza.zza(i).zza(0);
            this.zzg.zzl(zzalt.zzf(zza.zzl), zza, 0, null, this.zzG);
            zArr[i] = true;
        }
    }

    private final void zzO(int i) {
        zzX();
        boolean[] zArr = this.zzx.zzb;
        if (!this.zzI || !zArr[i] || this.zzs[i].zzk(false)) {
            return;
        }
        this.zzH = 0L;
        this.zzI = false;
        this.zzD = true;
        this.zzG = 0L;
        this.zzJ = 0;
        for (zzit zzitVar : this.zzs) {
            zzitVar.zzb(false);
        }
        zzhd zzhdVar = this.zzq;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzp(this);
    }

    private final boolean zzP() {
        return this.zzD || zzW();
    }

    private final zzox zzQ(zzie zzieVar) {
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            if (zzieVar.equals(this.zzt[i])) {
                return this.zzs[i];
            }
        }
        zzko zzkoVar = this.zzN;
        Looper looper = this.zzp.getLooper();
        zzff zzffVar = this.zzf;
        zzfa zzfaVar = this.zzh;
        Objects.requireNonNull(looper);
        Objects.requireNonNull(zzffVar);
        zzit zzitVar = new zzit(zzkoVar, looper, zzffVar, zzfaVar, null);
        zzitVar.zzr(this);
        int i2 = length + 1;
        zzie[] zzieVarArr = (zzie[]) Arrays.copyOf(this.zzt, i2);
        zzieVarArr[length] = zzieVar;
        this.zzt = (zzie[]) zzamq.zze(zzieVarArr);
        zzit[] zzitVarArr = (zzit[]) Arrays.copyOf(this.zzs, i2);
        zzitVarArr[length] = zzitVar;
        this.zzs = (zzit[]) zzamq.zze(zzitVarArr);
        return zzitVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        if (r11.zzt[r14].zzb != false) goto L32;
     */
    /* renamed from: zzR */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzM() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzig.zzM():void");
    }

    private final void zzS(zzib zzibVar) {
        long j;
        if (this.zzF == -1) {
            j = zzibVar.zzm;
            this.zzF = j;
        }
    }

    private final void zzT() {
        zzan zzanVar;
        long j;
        long j2;
        zzib zzibVar = new zzib(this, this.zzd, this.zze, this.zzl, this, this.zzm);
        if (this.zzv) {
            zzakt.zzd(zzW());
            long j3 = this.zzz;
            if (j3 != -9223372036854775807L && this.zzH > j3) {
                this.zzK = true;
                this.zzH = -9223372036854775807L;
                return;
            }
            zzot zzotVar = this.zzy;
            Objects.requireNonNull(zzotVar);
            zzib.zzi(zzibVar, zzotVar.zzf(this.zzH).zza.zzc, this.zzH);
            for (zzit zzitVar : this.zzs) {
                zzitVar.zzc(this.zzH);
            }
            this.zzH = -9223372036854775807L;
        }
        this.zzJ = zzU();
        long zzh = this.zzk.zzh(zzibVar, this, zzku.zza(this.zzB));
        zzanVar = zzibVar.zzl;
        zzho zzhoVar = this.zzg;
        j = zzibVar.zzb;
        zzgx zzgxVar = new zzgx(j, zzanVar, zzanVar.zza, Collections.emptyMap(), zzh, 0L, 0L);
        j2 = zzibVar.zzk;
        zzhoVar.zzd(zzgxVar, 1, -1, null, 0, null, j2, this.zzz);
    }

    private final int zzU() {
        int i = 0;
        for (zzit zzitVar : this.zzs) {
            i += zzitVar.zzd();
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public final long zzV() {
        char c = 0;
        for (zzit zzitVar : this.zzs) {
            c = Math.max((long) c, zzitVar.zzi());
        }
        return c;
    }

    private final boolean zzW() {
        return this.zzH != -9223372036854775807L;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void zzX() {
        zzakt.zzd(this.zzv);
        Objects.requireNonNull(this.zzx);
        Objects.requireNonNull(this.zzy);
    }

    public final int zzA(int i, long j) {
        if (zzP()) {
            return 0;
        }
        zzN(i);
        zzit zzitVar = this.zzs[i];
        int zzn = zzitVar.zzn(j, this.zzK);
        zzitVar.zzo(zzn);
        if (zzn != 0) {
            return zzn;
        }
        zzO(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final zzox zzB(int i, int i2) {
        return zzQ(new zzie(i, false));
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final void zzC() {
        this.zzu = true;
        this.zzp.post(this.zzn);
    }

    @Override // com.google.android.gms.internal.ads.zznx
    public final void zzD(zzot zzotVar) {
        this.zzp.post(new Runnable(this, zzotVar) { // from class: com.google.android.gms.internal.ads.zzia
            private final zzig zza;
            private final zzot zzb;

            {
                this.zza = this;
                this.zzb = zzotVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzK(this.zzb);
            }
        });
    }

    public final zzox zzE() {
        return zzQ(new zzie(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzis
    public final void zzF(zzafv zzafvVar) {
        this.zzp.post(this.zzn);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0194  */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzkz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ com.google.android.gms.internal.ads.zzla zzH(com.google.android.gms.internal.ads.zzlc r16, long r17, long r19, java.io.IOException r21, int r22) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzig.zzH(com.google.android.gms.internal.ads.zzlc, long, long, java.io.IOException, int):com.google.android.gms.internal.ads.zzla");
    }

    @Override // com.google.android.gms.internal.ads.zzkz
    public final /* bridge */ /* synthetic */ void zzI(zzlc zzlcVar, long j, long j2, boolean z) {
        zzlp zzlpVar;
        long j3;
        zzan zzanVar;
        long j4;
        long unused;
        zzib zzibVar = (zzib) zzlcVar;
        zzlpVar = zzibVar.zzd;
        j3 = zzibVar.zzb;
        zzanVar = zzibVar.zzl;
        zzgx zzgxVar = new zzgx(j3, zzanVar, zzlpVar.zzc(), zzlpVar.zzd(), j, j2, zzlpVar.zzb());
        unused = zzibVar.zzb;
        zzho zzhoVar = this.zzg;
        j4 = zzibVar.zzk;
        zzhoVar.zzh(zzgxVar, 1, -1, null, 0, null, j4, this.zzz);
        if (!z) {
            zzS(zzibVar);
            for (zzit zzitVar : this.zzs) {
                zzitVar.zzb(false);
            }
            if (this.zzE <= 0) {
                return;
            }
            zzhd zzhdVar = this.zzq;
            Objects.requireNonNull(zzhdVar);
            zzhdVar.zzp(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzkz
    public final /* bridge */ /* synthetic */ void zzJ(zzlc zzlcVar, long j, long j2) {
        zzlp zzlpVar;
        long j3;
        zzan zzanVar;
        long j4;
        zzot zzotVar;
        long unused;
        if (this.zzz == -9223372036854775807L && (zzotVar = this.zzy) != null) {
            boolean zze = zzotVar.zze();
            long zzV = zzV();
            char c = zzV == Long.MIN_VALUE ? (char) 0 : zzV + 10000;
            this.zzz = c;
            this.zzi.zzb(c, zze, this.zzA);
        }
        zzib zzibVar = (zzib) zzlcVar;
        zzlpVar = zzibVar.zzd;
        j3 = zzibVar.zzb;
        zzanVar = zzibVar.zzl;
        zzgx zzgxVar = new zzgx(j3, zzanVar, zzlpVar.zzc(), zzlpVar.zzd(), j, j2, zzlpVar.zzb());
        unused = zzibVar.zzb;
        zzho zzhoVar = this.zzg;
        j4 = zzibVar.zzk;
        zzhoVar.zzf(zzgxVar, 1, -1, null, 0, null, j4, this.zzz);
        zzS(zzibVar);
        this.zzK = true;
        zzhd zzhdVar = this.zzq;
        Objects.requireNonNull(zzhdVar);
        zzhdVar.zzp(this);
    }

    public final /* synthetic */ void zzK(zzot zzotVar) {
        this.zzy = this.zzr == null ? zzotVar : new zzos(-9223372036854775807L, 0L);
        this.zzz = zzotVar.zzg();
        int i = 1;
        boolean z = false;
        if (this.zzF == -1) {
            z = false;
            if (zzotVar.zzg() == -9223372036854775807L) {
                z = true;
            }
        }
        this.zzA = z;
        if (true == z) {
            i = 7;
        }
        this.zzB = i;
        this.zzi.zzb(this.zzz, zzotVar.zze(), this.zzA);
        if (!this.zzv) {
            zzM();
        }
    }

    public final /* synthetic */ void zzL() {
        if (!this.zzL) {
            zzhd zzhdVar = this.zzq;
            Objects.requireNonNull(zzhdVar);
            zzhdVar.zzp(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzb(zzhd zzhdVar, long j) {
        this.zzq = zzhdVar;
        this.zzm.zza();
        zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zzc() throws IOException {
        zzy();
        if (!this.zzK || this.zzv) {
            return;
        }
        throw zzaha.zzb("Loading finished before preparation is complete.", null);
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final zzs zzd() {
        zzX();
        return this.zzx.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final void zze(long j, boolean z) {
        zzX();
        if (zzW()) {
            return;
        }
        boolean[] zArr = this.zzx.zzc;
        int length = this.zzs.length;
        for (int i = 0; i < length; i++) {
            this.zzs[i].zzp(j, false, zArr[i]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final void zzf(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzg() {
        if (this.zzD) {
            if (!this.zzK && zzU() <= this.zzJ) {
                return -9223372036854775807L;
            }
            this.zzD = false;
            return this.zzG;
        }
        return -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzh() {
        char c;
        zzX();
        boolean[] zArr = this.zzx.zzb;
        if (this.zzK) {
            return Long.MIN_VALUE;
        }
        if (zzW()) {
            return this.zzH;
        }
        if (this.zzw) {
            int length = this.zzs.length;
            int i = 0;
            ?? r0 = 9223372036854775807;
            while (true) {
                char c2 = r0;
                c = c2;
                if (i >= length) {
                    break;
                }
                char c3 = c2;
                if (zArr[i]) {
                    c3 = c2;
                    if (!this.zzs[i].zzj()) {
                        c3 = Math.min((long) c2, this.zzs[i].zzi());
                    }
                }
                i++;
                r0 = c3;
            }
        } else {
            c = 65535;
        }
        char c4 = c;
        if (c == RecyclerView.FOREVER_NS) {
            c4 = zzV();
        }
        return c4 == Long.MIN_VALUE ? this.zzG : c4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v46, types: [com.google.android.gms.internal.ads.zzit[]] */
    /* JADX WARN: Type inference failed for: r0v47, types: [com.google.android.gms.internal.ads.zzit] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzi(long j) {
        zzX();
        boolean[] zArr = this.zzx.zzb;
        ?? r6 = j;
        if (true != this.zzy.zze()) {
            r6 = 0;
        }
        this.zzD = false;
        this.zzG = r6;
        if (zzW()) {
            this.zzH = r6;
            return r6;
        }
        if (this.zzB != 7) {
            int length = this.zzs.length;
            for (int i = 0; i < length; i++) {
                if (this.zzs[i].zzm(r6, false) || (!zArr[i] && this.zzw)) {
                }
            }
            return r6;
        }
        this.zzI = false;
        this.zzH = r6;
        this.zzK = false;
        if (this.zzk.zzi()) {
            for (zzit zzitVar : this.zzs) {
                zzitVar.zzq();
            }
            this.zzk.zzj();
        } else {
            this.zzk.zzg();
            for (zzit zzitVar2 : this.zzs) {
                zzitVar2.zzb(false);
            }
        }
        return r6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
        if (r10.zzg == 0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v4 */
    @Override // com.google.android.gms.internal.ads.zzhe
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzj(long r8, com.google.android.gms.internal.ads.zzahz r10) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzig.zzj(long, com.google.android.gms.internal.ads.zzahz):long");
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final long zzk() {
        if (this.zzE == 0) {
            return Long.MIN_VALUE;
        }
        return zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzl(long j) {
        if (this.zzK || this.zzk.zzf() || this.zzI) {
            return false;
        }
        if (this.zzv && this.zzE == 0) {
            return false;
        }
        boolean zza = this.zzm.zza();
        if (!this.zzk.zzi()) {
            zzT();
            zza = true;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhe, com.google.android.gms.internal.ads.zziw
    public final boolean zzm() {
        return this.zzk.zzi() && this.zzm.zze();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzhe
    public final long zzq(zzjg[] zzjgVarArr, boolean[] zArr, zziu[] zziuVarArr, boolean[] zArr2, long j) {
        boolean z;
        char c;
        int i;
        zzX();
        zzif zzifVar = this.zzx;
        zzs zzsVar = zzifVar.zza;
        boolean[] zArr3 = zzifVar.zzc;
        int i2 = this.zzE;
        for (int i3 = 0; i3 < zzjgVarArr.length; i3++) {
            zziu zziuVar = zziuVarArr[i3];
            if (zziuVar != null && (zzjgVarArr[i3] == null || !zArr[i3])) {
                i = ((zzid) zziuVar).zzb;
                zzakt.zzd(zArr3[i]);
                this.zzE--;
                zArr3[i] = false;
                zziuVarArr[i3] = null;
            }
        }
        boolean z2 = !this.zzC ? j != 0 : i2 == 0;
        int i4 = 0;
        while (true) {
            z = z2;
            if (i4 >= zzjgVarArr.length) {
                break;
            }
            z2 = z;
            if (zziuVarArr[i4] == null) {
                zzjg zzjgVar = zzjgVarArr[i4];
                z2 = z;
                if (zzjgVar != null) {
                    zzakt.zzd(zzjgVar.zzc() == 1);
                    zzakt.zzd(zzjgVar.zze(0) == 0);
                    int zzb2 = zzsVar.zzb(zzjgVar.zzb());
                    zzakt.zzd(!zArr3[zzb2]);
                    this.zzE++;
                    zArr3[zzb2] = true;
                    zziuVarArr[i4] = new zzid(this, zzb2);
                    zArr2[i4] = true;
                    z2 = z;
                    if (!z) {
                        zzit zzitVar = this.zzs[zzb2];
                        z2 = !zzitVar.zzm(j, true) && zzitVar.zzg() != 0;
                    }
                }
            }
            i4++;
        }
        if (this.zzE == 0) {
            this.zzI = false;
            this.zzD = false;
            if (!this.zzk.zzi()) {
                zzit[] zzitVarArr = this.zzs;
                int length = zzitVarArr.length;
                int i5 = 0;
                while (true) {
                    c = j;
                    if (i5 >= length) {
                        break;
                    }
                    zzitVarArr[i5].zzb(false);
                    i5++;
                }
            } else {
                for (zzit zzitVar2 : this.zzs) {
                    zzitVar2.zzq();
                }
                this.zzk.zzj();
                c = j;
            }
        } else {
            c = j;
            if (z) {
                ?? zzi = zzi(j);
                int i6 = 0;
                while (true) {
                    c = zzi;
                    if (i6 >= zziuVarArr.length) {
                        break;
                    }
                    if (zziuVarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                    i6++;
                }
            }
        }
        this.zzC = true;
        return c;
    }

    public final void zzu() {
        if (this.zzv) {
            for (zzit zzitVar : this.zzs) {
                zzitVar.zze();
            }
        }
        this.zzk.zzk(this);
        this.zzp.removeCallbacksAndMessages(null);
        this.zzq = null;
        this.zzL = true;
    }

    @Override // com.google.android.gms.internal.ads.zzle
    public final void zzv() {
        for (zzit zzitVar : this.zzs) {
            zzitVar.zza();
        }
        this.zzl.zzb();
    }

    public final boolean zzw(int i) {
        return !zzP() && this.zzs[i].zzk(this.zzK);
    }

    public final void zzx(int i) throws IOException {
        this.zzs[i].zzf();
        zzy();
    }

    public final void zzy() throws IOException {
        this.zzk.zzl(zzku.zza(this.zzB));
    }

    public final int zzz(int i, zzafw zzafwVar, zzaf zzafVar, int i2) {
        if (zzP()) {
            return -3;
        }
        zzN(i);
        int zzl = this.zzs[i].zzl(zzafwVar, zzafVar, i2, this.zzK);
        if (zzl == -3) {
            zzO(i);
        }
        return zzl;
    }
}
