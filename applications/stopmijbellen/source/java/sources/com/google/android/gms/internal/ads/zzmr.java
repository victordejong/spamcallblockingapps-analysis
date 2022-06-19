package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmr.class */
public final class zzmr implements zzlz {
    private ByteBuffer zzB;
    private ByteBuffer zzC;
    private byte[] zzD;
    private int zzE;
    private boolean zzG;
    private boolean zzH;
    private boolean zzI;
    private boolean zzJ;
    private long zzM;
    private boolean zzN;
    private boolean zzO;
    private final zzmi zzP;
    private final zzmf zza;
    private final zzna zzb;
    private final zzlh[] zzc;
    private zzmq zzh;
    private zzlw zzk;
    private zzmh zzl;
    private zzmh zzm;
    private AudioTrack zzn;
    private zzmk zzp;
    private zzmk zzq;
    private final zzbn zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private boolean zzv;
    private boolean zzw;
    private long zzx;
    private final ConditionVariable zze = new ConditionVariable(true);
    private final zzmd zzf = new zzmd(new zzmn(this, null));
    private final zzlh[] zzd = {new zzms()};
    private float zzy = 1.0f;
    private zzg zzo = zzg.zza;
    private int zzK = 0;
    private zzh zzL = new zzh(0, 0.0f);
    private int zzF = -1;
    private zzlh[] zzz = new zzlh[0];
    private ByteBuffer[] zzA = new ByteBuffer[0];
    private final ArrayDeque<zzmk> zzg = new ArrayDeque<>();
    private final zzml<zzlv> zzi = new zzml<>(100);
    private final zzml<zzly> zzj = new zzml<>(100);

    public zzmr(zzle zzleVar, zzlh[] zzlhVarArr, boolean z) {
        zzmi zzmiVar = new zzmi(zzlhVarArr);
        this.zzP = zzmiVar;
        int i = zzfn.zza;
        zzmf zzmfVar = new zzmf();
        this.zza = zzmfVar;
        zzna zznaVar = new zzna();
        this.zzb = zznaVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new zzmw(), zzmfVar, zznaVar);
        Collections.addAll(arrayList, zzmiVar.zze());
        this.zzc = (zzlh[]) arrayList.toArray(new zzlh[0]);
        zzbn zzbnVar = zzbn.zza;
        this.zzq = new zzmk(zzbnVar, false, 0L, 0L, null);
        this.zzr = zzbnVar;
    }

    public final long zzD() {
        zzmh zzmhVar = this.zzm;
        int i = zzmhVar.zzc;
        return this.zzs / zzmhVar.zzb;
    }

    public final long zzE() {
        zzmh zzmhVar = this.zzm;
        int i = zzmhVar.zzc;
        return this.zzt / zzmhVar.zzd;
    }

    private final zzmk zzF() {
        zzmk zzmkVar = this.zzp;
        if (zzmkVar == null) {
            zzmkVar = !this.zzg.isEmpty() ? this.zzg.getLast() : this.zzq;
        }
        return zzmkVar;
    }

    private final void zzG(long j) {
        zzbn zzbnVar;
        boolean z;
        zzls zzlsVar;
        if (zzQ()) {
            zzmi zzmiVar = this.zzP;
            zzbnVar = zzF().zza;
            zzmiVar.zzc(zzbnVar);
        } else {
            zzbnVar = zzbn.zza;
        }
        if (zzQ()) {
            zzmi zzmiVar2 = this.zzP;
            z = zzF().zzb;
            zzmiVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzg.add(new zzmk(zzbnVar, z, Math.max(0L, j), this.zzm.zzb(zzE()), null));
        zzlh[] zzlhVarArr = this.zzm.zzi;
        ArrayList arrayList = new ArrayList();
        for (zzlh zzlhVar : zzlhVarArr) {
            if (zzlhVar.zzg()) {
                arrayList.add(zzlhVar);
            } else {
                zzlhVar.zzc();
            }
        }
        int size = arrayList.size();
        this.zzz = (zzlh[]) arrayList.toArray(new zzlh[size]);
        this.zzA = new ByteBuffer[size];
        zzH();
        zzlw zzlwVar = this.zzk;
        if (zzlwVar != null) {
            zzlsVar = ((zzmu) zzlwVar).zza.zzc;
            zzlsVar.zzs(z);
        }
    }

    private final void zzH() {
        int i = 0;
        while (true) {
            zzlh[] zzlhVarArr = this.zzz;
            if (i < zzlhVarArr.length) {
                zzlh zzlhVar = zzlhVarArr[i];
                zzlhVar.zzc();
                this.zzA[i] = zzlhVar.zzb();
                i++;
            } else {
                return;
            }
        }
    }

    private final void zzI() {
        if (!this.zzH) {
            this.zzH = true;
            this.zzf.zzd(zzE());
            this.zzn.stop();
        }
    }

    private final void zzJ(long j) throws zzly {
        ByteBuffer byteBuffer;
        int length = this.zzz.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzA[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.zzB;
                byteBuffer = byteBuffer2;
                if (byteBuffer2 == null) {
                    byteBuffer = zzlh.zza;
                }
            }
            if (i == length) {
                zzM(byteBuffer, j);
            } else {
                zzlh zzlhVar = this.zzz[i];
                if (i > this.zzF) {
                    zzlhVar.zze(byteBuffer);
                }
                ByteBuffer zzb = zzlhVar.zzb();
                this.zzA[i] = zzb;
                if (zzb.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final void zzK(zzbn zzbnVar, boolean z) {
        zzmk zzF = zzF();
        if (!zzbnVar.equals(zzF.zza) || z != zzF.zzb) {
            zzmk zzmkVar = new zzmk(zzbnVar, z, -9223372036854775807L, -9223372036854775807L, null);
            if (zzO()) {
                this.zzp = zzmkVar;
            } else {
                this.zzq = zzmkVar;
            }
        }
    }

    private final void zzL() {
        if (!zzO()) {
            return;
        }
        if (zzfn.zza >= 21) {
            this.zzn.setVolume(this.zzy);
            return;
        }
        AudioTrack audioTrack = this.zzn;
        float f = this.zzy;
        audioTrack.setStereoVolume(f, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x010e, code lost:
        if (r13 != (-6)) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzM(java.nio.ByteBuffer r7, long r8) throws com.google.android.gms.internal.ads.zzly {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmr.zzM(java.nio.ByteBuffer, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0044 -> B:5:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzN() throws com.google.android.gms.internal.ads.zzly {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.zzF
            r1 = -1
            if (r0 != r1) goto L12
            r0 = r5
            r1 = 0
            r0.zzF = r1
        Ld:
            r0 = 1
            r6 = r0
            goto L14
        L12:
            r0 = 0
            r6 = r0
        L14:
            r0 = r5
            int r0 = r0.zzF
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzlh[] r0 = r0.zzz
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L51
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L32
            r0 = r8
            r0.zzd()
        L32:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzJ(r1)
            r0 = r8
            boolean r0 = r0.zzh()
            if (r0 != 0) goto L44
            r0 = 0
            return r0
        L44:
            r0 = r5
            r1 = r5
            int r1 = r1.zzF
            r2 = 1
            int r1 = r1 + r2
            r0.zzF = r1
            goto Ld
        L51:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzC
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzM(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzC
            if (r0 == 0) goto L6b
            r0 = 0
            return r0
        L6b:
            r0 = r5
            r1 = -1
            r0.zzF = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmr.zzN():boolean");
    }

    private final boolean zzO() {
        return this.zzn != null;
    }

    private static boolean zzP(AudioTrack audioTrack) {
        return zzfn.zza >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final boolean zzQ() {
        if ("audio/raw".equals(this.zzm.zza.zzm)) {
            int i = this.zzm.zza.zzB;
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final int zza(zzab zzabVar) {
        if (!"audio/raw".equals(zzabVar.zzm)) {
            int i = zzfn.zza;
            return 0;
        } else if (zzfn.zzR(zzabVar.zzB)) {
            return zzabVar.zzB != 2 ? 1 : 2;
        } else {
            C0028d.m8913g(33, "Invalid PCM encoding: ", zzabVar.zzB, "DefaultAudioSink");
            return 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzb(boolean z) {
        char c;
        if (!zzO() || this.zzw) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.zzf.zzb(z), this.zzm.zzb(zzE()));
        while (!this.zzg.isEmpty() && min >= this.zzg.getFirst().zzd) {
            this.zzq = this.zzg.remove();
        }
        zzmk zzmkVar = this.zzq;
        long j = min - zzmkVar.zzd;
        if (zzmkVar.zza.equals(zzbn.zza)) {
            c = this.zzq.zzc + j;
        } else if (this.zzg.isEmpty()) {
            c = this.zzP.zza(j) + this.zzq.zzc;
        } else {
            zzmk first = this.zzg.getFirst();
            c = first.zzc - zzfn.zzp(first.zzd - min, this.zzq.zza.zzc);
        }
        return c + this.zzm.zzb(this.zzP.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final zzbn zzc() {
        return zzF().zza;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzd(zzab zzabVar, int i, int[] iArr) throws zzlu {
        if (!"audio/raw".equals(zzabVar.zzm)) {
            int i2 = zzfn.zza;
            throw new zzlu("Unable to configure passthrough for: ".concat(String.valueOf(zzabVar)), zzabVar);
        }
        zzdy.zzd(zzfn.zzR(zzabVar.zzB));
        int zzm = zzfn.zzm(zzabVar.zzB, zzabVar.zzz);
        zzlh[] zzlhVarArr = this.zzc;
        this.zzb.zzq(zzabVar.zzC, zzabVar.zzD);
        int[] iArr2 = iArr;
        if (zzfn.zza < 21) {
            iArr2 = iArr;
            if (zzabVar.zzz == 8) {
                iArr2 = iArr;
                if (iArr == null) {
                    int[] iArr3 = new int[6];
                    int i3 = 0;
                    while (true) {
                        iArr2 = iArr3;
                        if (i3 >= 6) {
                            break;
                        }
                        iArr3[i3] = i3;
                        i3++;
                    }
                }
            }
        }
        this.zza.zzo(iArr2);
        zzlf zzlfVar = new zzlf(zzabVar.zzA, zzabVar.zzz, zzabVar.zzB);
        for (zzlh zzlhVar : zzlhVarArr) {
            try {
                zzlf zza = zzlhVar.zza(zzlfVar);
                if (true == zzlhVar.zzg()) {
                    zzlfVar = zza;
                }
            } catch (zzlg e) {
                throw new zzlu(e, zzabVar);
            }
        }
        int i4 = zzlfVar.zzd;
        int i5 = zzlfVar.zzb;
        int zzj = zzfn.zzj(zzlfVar.zzc);
        int zzm2 = zzfn.zzm(i4, zzlfVar.zzc);
        if (i4 == 0) {
            String valueOf = String.valueOf(zzabVar);
            throw new zzlu(C0082b.m8754h(new StringBuilder(valueOf.length() + 48), "Invalid output encoding (mode=0) for: ", valueOf), zzabVar);
        } else if (zzj == 0) {
            String valueOf2 = String.valueOf(zzabVar);
            throw new zzlu(C0082b.m8754h(new StringBuilder(valueOf2.length() + 54), "Invalid output channel config (mode=0) for: ", valueOf2), zzabVar);
        } else {
            this.zzN = false;
            zzmh zzmhVar = new zzmh(zzabVar, zzm, 0, zzm2, i5, zzj, i4, 0, false, zzlhVarArr);
            if (zzO()) {
                this.zzl = zzmhVar;
            } else {
                this.zzm = zzmhVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zze() {
        if (zzO()) {
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzu = 0L;
            this.zzO = false;
            this.zzq = new zzmk(zzF().zza, zzF().zzb, 0L, 0L, null);
            this.zzx = 0L;
            this.zzp = null;
            this.zzg.clear();
            this.zzB = null;
            this.zzC = null;
            this.zzH = false;
            this.zzG = false;
            this.zzF = -1;
            this.zzb.zzp();
            zzH();
            if (this.zzf.zzi()) {
                this.zzn.pause();
            }
            if (zzP(this.zzn)) {
                zzmq zzmqVar = this.zzh;
                Objects.requireNonNull(zzmqVar);
                zzmqVar.zzb(this.zzn);
            }
            AudioTrack audioTrack = this.zzn;
            this.zzn = null;
            if (zzfn.zza < 21 && !this.zzJ) {
                this.zzK = 0;
            }
            zzmh zzmhVar = this.zzl;
            if (zzmhVar != null) {
                this.zzm = zzmhVar;
                this.zzl = null;
            }
            this.zzf.zze();
            this.zze.close();
            new zzmg(this, "ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.zzj.zza();
        this.zzi.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzf() {
        this.zzv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzg() {
        this.zzI = false;
        if (!zzO() || !this.zzf.zzl()) {
            return;
        }
        this.zzn.pause();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzh() {
        this.zzI = true;
        if (zzO()) {
            this.zzf.zzg();
            this.zzn.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzi() throws zzly {
        if (this.zzG || !zzO() || !zzN()) {
            return;
        }
        zzI();
        this.zzG = true;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzj() {
        zze();
        for (zzlh zzlhVar : this.zzc) {
            zzlhVar.zzf();
        }
        zzlh[] zzlhVarArr = this.zzd;
        int length = zzlhVarArr.length;
        for (int i = 0; i <= 0; i++) {
            zzlhVarArr[i].zzf();
        }
        this.zzI = false;
        this.zzN = false;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzk(zzg zzgVar) {
        if (this.zzo.equals(zzgVar)) {
            return;
        }
        this.zzo = zzgVar;
        zze();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzl(int i) {
        if (this.zzK != i) {
            this.zzK = i;
            this.zzJ = i != 0;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzm(zzh zzhVar) {
        if (this.zzL.equals(zzhVar)) {
            return;
        }
        int i = zzhVar.zza;
        if (this.zzn != null) {
            int i2 = this.zzL.zza;
        }
        this.zzL = zzhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzn(zzlw zzlwVar) {
        this.zzk = zzlwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzo(zzbn zzbnVar) {
        zzK(new zzbn(zzfn.zza(zzbnVar.zzc, 0.1f, 8.0f), zzfn.zza(zzbnVar.zzd, 0.1f, 8.0f)), zzF().zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzp(boolean z) {
        zzK(zzF().zza, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzq(float f) {
        if (this.zzy != f) {
            this.zzy = f;
            zzL();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzr(ByteBuffer byteBuffer, long j, int i) throws zzlv, zzly {
        ByteBuffer byteBuffer2 = this.zzB;
        zzdy.zzd(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.zzl != null) {
            if (!zzN()) {
                return false;
            }
            zzmh zzmhVar = this.zzl;
            zzmh zzmhVar2 = this.zzm;
            int i2 = zzmhVar2.zzc;
            int i3 = zzmhVar.zzc;
            if (zzmhVar2.zzg == zzmhVar.zzg && zzmhVar2.zze == zzmhVar.zze && zzmhVar2.zzf == zzmhVar.zzf && zzmhVar2.zzd == zzmhVar.zzd) {
                this.zzm = zzmhVar;
                this.zzl = null;
                if (zzP(this.zzn)) {
                    this.zzn.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.zzn;
                    zzab zzabVar = this.zzm.zza;
                    audioTrack.setOffloadDelayPadding(zzabVar.zzC, zzabVar.zzD);
                    this.zzO = true;
                }
            } else {
                zzI();
                if (zzs()) {
                    return false;
                }
                zze();
            }
            zzG(j);
        }
        if (!zzO()) {
            try {
                this.zze.block();
                try {
                    zzmh zzmhVar3 = this.zzm;
                    Objects.requireNonNull(zzmhVar3);
                    AudioTrack zzc = zzmhVar3.zzc(false, this.zzo, this.zzK);
                    this.zzn = zzc;
                    if (zzP(zzc)) {
                        AudioTrack audioTrack2 = this.zzn;
                        if (this.zzh == null) {
                            this.zzh = new zzmq(this);
                        }
                        this.zzh.zza(audioTrack2);
                        AudioTrack audioTrack3 = this.zzn;
                        zzab zzabVar2 = this.zzm.zza;
                        audioTrack3.setOffloadDelayPadding(zzabVar2.zzC, zzabVar2.zzD);
                    }
                    this.zzK = this.zzn.getAudioSessionId();
                    zzmd zzmdVar = this.zzf;
                    AudioTrack audioTrack4 = this.zzn;
                    zzmh zzmhVar4 = this.zzm;
                    int i4 = zzmhVar4.zzc;
                    zzmdVar.zzf(audioTrack4, false, zzmhVar4.zzg, zzmhVar4.zzd, zzmhVar4.zzh);
                    zzL();
                    int i5 = this.zzL.zza;
                    this.zzw = true;
                } catch (zzlv e) {
                    zzlw zzlwVar = this.zzk;
                    if (zzlwVar != null) {
                        zzlwVar.zza(e);
                    }
                    throw e;
                }
            } catch (zzlv e2) {
                this.zzi.zzb(e2);
                return false;
            }
        }
        this.zzi.zza();
        if (this.zzw) {
            this.zzx = Math.max(0L, j);
            this.zzv = false;
            this.zzw = false;
            zzG(j);
            if (this.zzI) {
                zzh();
            }
        }
        if (!this.zzf.zzk(zzE())) {
            return false;
        }
        if (this.zzB == null) {
            zzdy.zzd(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            int i6 = this.zzm.zzc;
            if (this.zzp != null) {
                if (!zzN()) {
                    return false;
                }
                zzG(j);
                this.zzp = null;
            }
            long zzD = (((zzD() - this.zzb.zzo()) * 1000000) / this.zzm.zza.zzA) + this.zzx;
            if (!this.zzv && Math.abs(zzD - j) > 200000) {
                this.zzk.zza(new zzlx(j, zzD));
                this.zzv = true;
            }
            if (this.zzv) {
                if (!zzN()) {
                    return false;
                }
                long j2 = j - zzD;
                this.zzx += j2;
                this.zzv = false;
                zzG(j);
                zzlw zzlwVar2 = this.zzk;
                if (zzlwVar2 != null && j2 != 0) {
                    ((zzmu) zzlwVar2).zza.zzaa();
                }
            }
            int i7 = this.zzm.zzc;
            this.zzs += byteBuffer.remaining();
            this.zzB = byteBuffer;
        }
        zzJ(j);
        if (!this.zzB.hasRemaining()) {
            this.zzB = null;
            return true;
        } else if (!this.zzf.zzj(zzE())) {
            return false;
        } else {
            Log.w("DefaultAudioSink", "Resetting stalled audio track");
            zze();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzs() {
        return zzO() && this.zzf.zzh(zzE());
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzt() {
        boolean z = false;
        if (zzO()) {
            if (this.zzG) {
                if (zzs()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final boolean zzu(zzab zzabVar) {
        return zza(zzabVar) != 0;
    }
}
