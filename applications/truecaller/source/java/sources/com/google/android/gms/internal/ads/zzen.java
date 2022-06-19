package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzen.class */
public final class zzen implements zzdw {
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
    private final zzef zzP;
    private final zzec zza;
    private final zzew zzb;
    private final zzde[] zzc;
    private zzem zzh;
    private zzdt zzk;
    private zzee zzl;
    private zzee zzm;
    private AudioTrack zzn;
    private zzeg zzp;
    private zzeg zzq;
    private final zzahf zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private boolean zzv;
    private boolean zzw;
    private long zzx;
    private final ConditionVariable zze = new ConditionVariable(true);
    private final zzea zzf = new zzea(new zzej(this, null));
    private final zzde[] zzd = {new zzeo()};
    private float zzy = 1.0f;
    private zzg zzo = zzg.zza;
    private int zzK = 0;
    private zzh zzL = new zzh(0, 0.0f);
    private int zzF = -1;
    private zzde[] zzz = new zzde[0];
    private ByteBuffer[] zzA = new ByteBuffer[0];
    private final ArrayDeque<zzeg> zzg = new ArrayDeque<>();
    private final zzei<zzds> zzi = new zzei<>(100);
    private final zzei<zzdv> zzj = new zzei<>(100);

    public zzen(zzdb zzdbVar, zzde[] zzdeVarArr, boolean z) {
        zzef zzefVar = new zzef(zzdeVarArr);
        this.zzP = zzefVar;
        int i = zzamq.zza;
        zzec zzecVar = new zzec();
        this.zza = zzecVar;
        zzew zzewVar = new zzew();
        this.zzb = zzewVar;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new zzes(), zzecVar, zzewVar);
        Collections.addAll(arrayList, zzefVar.zza());
        this.zzc = (zzde[]) arrayList.toArray(new zzde[0]);
        zzahf zzahfVar = zzahf.zza;
        this.zzq = new zzeg(zzahfVar, false, 0L, 0L, null);
        this.zzr = zzahfVar;
    }

    private final void zzD() {
        int i = 0;
        while (true) {
            zzde[] zzdeVarArr = this.zzz;
            if (i < zzdeVarArr.length) {
                zzde zzdeVar = zzdeVarArr[i];
                zzdeVar.zzg();
                this.zzA[i] = zzdeVar.zze();
                i++;
            } else {
                return;
            }
        }
    }

    private final void zzE(long j) throws zzdv {
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
                    byteBuffer = zzde.zza;
                }
            }
            if (i == length) {
                zzF(byteBuffer, j);
            } else {
                zzde zzdeVar = this.zzz[i];
                if (i > this.zzF) {
                    zzdeVar.zzc(byteBuffer);
                }
                ByteBuffer zze = zzdeVar.zze();
                this.zzA[i] = zze;
                if (zze.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x010e, code lost:
        if (r14 != (-6)) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzF(java.nio.ByteBuffer r7, long r8) throws com.google.android.gms.internal.ads.zzdv {
        /*
            Method dump skipped, instructions count: 467
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzen.zzF(java.nio.ByteBuffer, long):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0044 -> B:5:0x000d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzG() throws com.google.android.gms.internal.ads.zzdv {
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
            com.google.android.gms.internal.ads.zzde[] r0 = r0.zzz
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
            r0.zzE(r1)
            r0 = r8
            boolean r0 = r0.zzf()
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
            r0.zzF(r1, r2)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzen.zzG():boolean");
    }

    private final void zzH() {
        if (!zzM()) {
            return;
        }
        if (zzamq.zza >= 21) {
            this.zzn.setVolume(this.zzy);
            return;
        }
        AudioTrack audioTrack = this.zzn;
        float f = this.zzy;
        audioTrack.setStereoVolume(f, f);
    }

    private final void zzI(zzahf zzahfVar, boolean z) {
        zzeg zzJ = zzJ();
        if (!zzahfVar.equals(zzJ.zza) || z != zzJ.zzb) {
            zzeg zzegVar = new zzeg(zzahfVar, z, -9223372036854775807L, -9223372036854775807L, null);
            if (zzM()) {
                this.zzp = zzegVar;
            } else {
                this.zzq = zzegVar;
            }
        }
    }

    private final zzeg zzJ() {
        zzeg zzegVar = this.zzp;
        if (zzegVar == null) {
            zzegVar = !this.zzg.isEmpty() ? this.zzg.getLast() : this.zzq;
        }
        return zzegVar;
    }

    private final void zzK(long j) {
        zzahf zzahfVar;
        boolean z;
        zzdp zzdpVar;
        if (zzL()) {
            zzef zzefVar = this.zzP;
            zzahfVar = zzJ().zza;
            zzefVar.zzb(zzahfVar);
        } else {
            zzahfVar = zzahf.zza;
        }
        if (zzL()) {
            zzef zzefVar2 = this.zzP;
            z = zzJ().zzb;
            zzefVar2.zzc(z);
        } else {
            z = false;
        }
        this.zzg.add(new zzeg(zzahfVar, z, Math.max(0L, j), this.zzm.zza(zzO()), null));
        zzde[] zzdeVarArr = this.zzm.zzi;
        ArrayList arrayList = new ArrayList();
        for (zzde zzdeVar : zzdeVarArr) {
            if (zzdeVar.zzb()) {
                arrayList.add(zzdeVar);
            } else {
                zzdeVar.zzg();
            }
        }
        int size = arrayList.size();
        this.zzz = (zzde[]) arrayList.toArray(new zzde[size]);
        this.zzA = new ByteBuffer[size];
        zzD();
        zzdt zzdtVar = this.zzk;
        if (zzdtVar != null) {
            zzdpVar = ((zzep) zzdtVar).zza.zzc;
            zzdpVar.zzh(z);
        }
    }

    private final boolean zzL() {
        if ("audio/raw".equals(this.zzm.zza.zzl)) {
            int i = this.zzm.zza.zzA;
            return true;
        }
        return false;
    }

    private final boolean zzM() {
        return this.zzn != null;
    }

    public final long zzN() {
        zzee zzeeVar = this.zzm;
        int i = zzeeVar.zzc;
        return this.zzs / zzeeVar.zzb;
    }

    public final long zzO() {
        zzee zzeeVar = this.zzm;
        int i = zzeeVar.zzc;
        return this.zzt / zzeeVar.zzd;
    }

    private static boolean zzP(AudioTrack audioTrack) {
        return zzamq.zza >= 29 && audioTrack.isOffloadedPlayback();
    }

    private final void zzQ() {
        if (!this.zzH) {
            this.zzH = true;
            this.zzf.zzi(zzO());
            this.zzn.stop();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zza(zzdt zzdtVar) {
        this.zzk = zzdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final boolean zzb(zzafv zzafvVar) {
        return zzc(zzafvVar) != 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final int zzc(zzafv zzafvVar) {
        if (!"audio/raw".equals(zzafvVar.zzl)) {
            int i = zzamq.zza;
            return 0;
        } else if (!zzamq.zzP(zzafvVar.zzA)) {
            return 0;
        } else {
            return zzafvVar.zzA != 2 ? 1 : 2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzdw
    public final long zzd(boolean z) {
        char c;
        if (!zzM() || this.zzw) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.zzf.zzb(z), this.zzm.zza(zzO()));
        while (!this.zzg.isEmpty() && min >= this.zzg.getFirst().zzd) {
            this.zzq = this.zzg.remove();
        }
        zzeg zzegVar = this.zzq;
        long j = min - zzegVar.zzd;
        if (zzegVar.zza.equals(zzahf.zza)) {
            c = this.zzq.zzc + j;
        } else if (this.zzg.isEmpty()) {
            c = this.zzP.zzd(j) + this.zzq.zzc;
        } else {
            zzeg first = this.zzg.getFirst();
            c = first.zzc - zzamq.zzJ(first.zzd - min, this.zzq.zza.zzb);
        }
        return this.zzm.zza(this.zzP.zze()) + c;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zze(zzafv zzafvVar, int i, int[] iArr) throws zzdr {
        if (!"audio/raw".equals(zzafvVar.zzl)) {
            int i2 = zzamq.zza;
            String valueOf = String.valueOf(zzafvVar);
            valueOf.length();
            throw new zzdr("Unable to configure passthrough for: ".concat(valueOf), zzafvVar);
        }
        zzakt.zza(zzamq.zzP(zzafvVar.zzA));
        int zzS = zzamq.zzS(zzafvVar.zzA, zzafvVar.zzy);
        zzde[] zzdeVarArr = this.zzc;
        this.zzb.zzo(zzafvVar.zzB, zzafvVar.zzC);
        int[] iArr2 = iArr;
        if (zzamq.zza < 21) {
            iArr2 = iArr;
            if (zzafvVar.zzy == 8) {
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
        zzdc zzdcVar = new zzdc(zzafvVar.zzz, zzafvVar.zzy, zzafvVar.zzA);
        for (zzde zzdeVar : zzdeVarArr) {
            try {
                zzdc zza = zzdeVar.zza(zzdcVar);
                if (true == zzdeVar.zzb()) {
                    zzdcVar = zza;
                }
            } catch (zzdd e) {
                throw new zzdr(e, zzafvVar);
            }
        }
        int i4 = zzdcVar.zzd;
        int i5 = zzdcVar.zzb;
        int zzR = zzamq.zzR(zzdcVar.zzc);
        int zzS2 = zzamq.zzS(i4, zzdcVar.zzc);
        if (i4 == 0) {
            String valueOf2 = String.valueOf(zzafvVar);
            throw new zzdr(C22128a.m8618h(new StringBuilder(valueOf2.length() + 48), "Invalid output encoding (mode=0) for: ", valueOf2), zzafvVar);
        } else if (zzR == 0) {
            String valueOf3 = String.valueOf(zzafvVar);
            throw new zzdr(C22128a.m8618h(new StringBuilder(valueOf3.length() + 54), "Invalid output channel config (mode=0) for: ", valueOf3), zzafvVar);
        } else {
            this.zzN = false;
            zzee zzeeVar = new zzee(zzafvVar, zzS, 0, zzS2, i5, zzR, i4, 0, false, zzdeVarArr);
            if (zzM()) {
                this.zzl = zzeeVar;
            } else {
                this.zzm = zzeeVar;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzf() {
        this.zzI = true;
        if (zzM()) {
            this.zzf.zzc();
            this.zzn.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzg() {
        this.zzv = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final boolean zzh(ByteBuffer byteBuffer, long j, int i) throws zzds, zzdv {
        ByteBuffer byteBuffer2 = this.zzB;
        zzakt.zza(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.zzl != null) {
            if (!zzG()) {
                return false;
            }
            zzee zzeeVar = this.zzl;
            zzee zzeeVar2 = this.zzm;
            int i2 = zzeeVar2.zzc;
            int i3 = zzeeVar.zzc;
            if (zzeeVar2.zzg == zzeeVar.zzg && zzeeVar2.zze == zzeeVar.zze && zzeeVar2.zzf == zzeeVar.zzf && zzeeVar2.zzd == zzeeVar.zzd) {
                this.zzm = zzeeVar;
                this.zzl = null;
                if (zzP(this.zzn)) {
                    this.zzn.setOffloadEndOfStream();
                    AudioTrack audioTrack = this.zzn;
                    zzafv zzafvVar = this.zzm.zza;
                    audioTrack.setOffloadDelayPadding(zzafvVar.zzB, zzafvVar.zzC);
                    this.zzO = true;
                }
            } else {
                zzQ();
                if (zzk()) {
                    return false;
                }
                zzt();
            }
            zzK(j);
        }
        if (!zzM()) {
            try {
                this.zze.block();
                try {
                    zzee zzeeVar3 = this.zzm;
                    Objects.requireNonNull(zzeeVar3);
                    AudioTrack zzc = zzeeVar3.zzc(false, this.zzo, this.zzK);
                    this.zzn = zzc;
                    if (zzP(zzc)) {
                        AudioTrack audioTrack2 = this.zzn;
                        if (this.zzh == null) {
                            this.zzh = new zzem(this);
                        }
                        this.zzh.zza(audioTrack2);
                        AudioTrack audioTrack3 = this.zzn;
                        zzafv zzafvVar2 = this.zzm.zza;
                        audioTrack3.setOffloadDelayPadding(zzafvVar2.zzB, zzafvVar2.zzC);
                    }
                    this.zzK = this.zzn.getAudioSessionId();
                    zzea zzeaVar = this.zzf;
                    AudioTrack audioTrack4 = this.zzn;
                    zzee zzeeVar4 = this.zzm;
                    int i4 = zzeeVar4.zzc;
                    zzeaVar.zza(audioTrack4, false, zzeeVar4.zzg, zzeeVar4.zzd, zzeeVar4.zzh);
                    zzH();
                    int i5 = this.zzL.zza;
                    this.zzw = true;
                } catch (zzds e) {
                    zzdt zzdtVar = this.zzk;
                    if (zzdtVar != null) {
                        zzdtVar.zzb(e);
                    }
                    throw e;
                }
            } catch (zzds e2) {
                this.zzi.zza(e2);
                return false;
            }
        }
        this.zzi.zzb();
        if (this.zzw) {
            this.zzx = Math.max(0L, j);
            this.zzv = false;
            this.zzw = false;
            zzK(j);
            if (this.zzI) {
                zzf();
            }
        }
        if (!this.zzf.zze(zzO())) {
            return false;
        }
        if (this.zzB == null) {
            zzakt.zza(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            int i6 = this.zzm.zzc;
            if (this.zzp != null) {
                if (!zzG()) {
                    return false;
                }
                zzK(j);
                this.zzp = null;
            }
            long zzN = (((zzN() - this.zzb.zzq()) * 1000000) / this.zzm.zza.zzz) + this.zzx;
            if (!this.zzv && Math.abs(zzN - j) > 200000) {
                this.zzk.zzb(new zzdu(j, zzN));
                this.zzv = true;
            }
            if (this.zzv) {
                if (!zzG()) {
                    return false;
                }
                long j2 = j - zzN;
                this.zzx += j2;
                this.zzv = false;
                zzK(j);
                zzdt zzdtVar2 = this.zzk;
                if (zzdtVar2 != null && j2 != 0) {
                    ((zzep) zzdtVar2).zza.zzp();
                }
            }
            int i7 = this.zzm.zzc;
            this.zzs += byteBuffer.remaining();
            this.zzB = byteBuffer;
        }
        zzE(j);
        if (!this.zzB.hasRemaining()) {
            this.zzB = null;
            return true;
        } else if (!this.zzf.zzh(zzO())) {
            return false;
        } else {
            zzt();
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzi() throws zzdv {
        if (this.zzG || !zzM() || !zzG()) {
            return;
        }
        zzQ();
        this.zzG = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final boolean zzj() {
        boolean z = false;
        if (zzM()) {
            if (this.zzG) {
                if (zzk()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final boolean zzk() {
        return zzM() && this.zzf.zzj(zzO());
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzl(zzahf zzahfVar) {
        zzI(new zzahf(zzamq.zzz(zzahfVar.zzb, 0.1f, 8.0f), zzamq.zzz(zzahfVar.zzc, 0.1f, 8.0f)), zzJ().zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final zzahf zzm() {
        return zzJ().zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzn(boolean z) {
        zzI(zzJ().zza, z);
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzo(zzg zzgVar) {
        if (this.zzo.equals(zzgVar)) {
            return;
        }
        this.zzo = zzgVar;
        zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzp(int i) {
        if (this.zzK != i) {
            this.zzK = i;
            this.zzJ = i != 0;
            zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzq(zzh zzhVar) {
        if (this.zzL.equals(zzhVar)) {
            return;
        }
        int i = zzhVar.zza;
        if (this.zzn != null) {
            int i2 = this.zzL.zza;
        }
        this.zzL = zzhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzr(float f) {
        if (this.zzy != f) {
            this.zzy = f;
            zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzs() {
        this.zzI = false;
        if (!zzM() || !this.zzf.zzk()) {
            return;
        }
        this.zzn.pause();
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzt() {
        if (zzM()) {
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzu = 0L;
            this.zzO = false;
            this.zzq = new zzeg(zzJ().zza, zzJ().zzb, 0L, 0L, null);
            this.zzx = 0L;
            this.zzp = null;
            this.zzg.clear();
            this.zzB = null;
            this.zzC = null;
            this.zzH = false;
            this.zzG = false;
            this.zzF = -1;
            this.zzb.zzp();
            zzD();
            if (this.zzf.zzd()) {
                this.zzn.pause();
            }
            if (zzP(this.zzn)) {
                zzem zzemVar = this.zzh;
                Objects.requireNonNull(zzemVar);
                zzemVar.zzb(this.zzn);
            }
            AudioTrack audioTrack = this.zzn;
            this.zzn = null;
            if (zzamq.zza < 21 && !this.zzJ) {
                this.zzK = 0;
            }
            zzee zzeeVar = this.zzl;
            if (zzeeVar != null) {
                this.zzm = zzeeVar;
                this.zzl = null;
            }
            this.zzf.zzl();
            this.zze.close();
            new zzed(this, "ExoPlayer:AudioTrackReleaseThread", audioTrack).start();
        }
        this.zzj.zzb();
        this.zzi.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzdw
    public final void zzu() {
        zzt();
        for (zzde zzdeVar : this.zzc) {
            zzdeVar.zzh();
        }
        zzde[] zzdeVarArr = this.zzd;
        int length = zzdeVarArr.length;
        for (int i = 0; i <= 0; i++) {
            zzdeVarArr[i].zzh();
        }
        this.zzI = false;
        this.zzN = false;
    }
}
