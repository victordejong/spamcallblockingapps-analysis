package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaot.class */
public final class zzaot {
    private Method zzA;
    private int zzB;
    private long zzC;
    private long zzD;
    private int zzE;
    private long zzF;
    private long zzG;
    private int zzH;
    private int zzI;
    private long zzJ;
    private long zzK;
    private long zzL;
    private float zzM;
    private zzaob[] zzN;
    private ByteBuffer[] zzO;
    private ByteBuffer zzP;
    private ByteBuffer zzQ;
    private byte[] zzR;
    private int zzS;
    private int zzT;
    private boolean zzU;
    private boolean zzV;
    private int zzW;
    private boolean zzX;
    private long zzY;
    private final zzaou zza;
    private final zzapa zzb;
    private final zzaob[] zzc;
    private final zzaop zzd;
    private final ConditionVariable zze = new ConditionVariable(true);
    private final long[] zzf;
    private final zzaol zzg;
    private final LinkedList<zzaor> zzh;
    private AudioTrack zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private int zzo;
    private long zzp;
    private zzanq zzq;
    private zzanq zzr;
    private long zzs;
    private long zzt;
    private int zzu;
    private int zzv;
    private long zzw;
    private long zzx;
    private boolean zzy;
    private long zzz;

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x00cb -> B:5:0x0029). Please submit an issue!!! */
    public zzaot(zzanz zzanzVar, zzaob[] zzaobVarArr, zzaop zzaopVar) {
        this.zzd = zzaopVar;
        if (zzave.zza >= 18) {
            try {
                this.zzA = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (zzave.zza >= 19) {
            this.zzg = new zzaom();
        } else {
            this.zzg = new zzaol(null);
        }
        zzaou zzaouVar = new zzaou();
        this.zza = zzaouVar;
        zzapa zzapaVar = new zzapa();
        this.zzb = zzapaVar;
        this.zzc = r0;
        System.arraycopy(zzaobVarArr, 0, r0, 2, 0);
        zzaob[] zzaobVarArr2 = {new zzaoy(), zzaouVar, zzapaVar};
        this.zzf = new long[10];
        this.zzM = 1.0f;
        this.zzI = 0;
        this.zzW = 0;
        this.zzr = zzanq.zza;
        this.zzT = -1;
        this.zzN = new zzaob[0];
        this.zzO = new ByteBuffer[0];
        this.zzh = new LinkedList<>();
    }

    private final void zzp() {
        ArrayList arrayList = new ArrayList();
        zzaob[] zzaobVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzaob zzaobVar = zzaobVarArr[i];
            if (zzaobVar.zzb()) {
                arrayList.add(zzaobVar);
            } else {
                zzaobVar.zzi();
            }
        }
        int size = arrayList.size();
        this.zzN = (zzaob[]) arrayList.toArray(new zzaob[size]);
        this.zzO = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            zzaob zzaobVar2 = this.zzN[i2];
            zzaobVar2.zzi();
            this.zzO[i2] = zzaobVar2.zzg();
        }
    }

    private final void zzq(long j) throws zzaos {
        ByteBuffer byteBuffer;
        int length = this.zzN.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzO[i - 1];
            } else {
                ByteBuffer byteBuffer2 = this.zzP;
                byteBuffer = byteBuffer2;
                if (byteBuffer2 == null) {
                    byteBuffer = zzaob.zza;
                }
            }
            if (i == length) {
                zzr(byteBuffer, j);
            } else {
                zzaob zzaobVar = this.zzN[i];
                zzaobVar.zze(byteBuffer);
                ByteBuffer zzg = zzaobVar.zzg();
                this.zzO[i] = zzg;
                if (zzg.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final boolean zzr(ByteBuffer byteBuffer, long j) throws zzaos {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.zzQ;
        if (byteBuffer2 != null) {
            zzaup.zza(byteBuffer2 == byteBuffer);
        } else {
            this.zzQ = byteBuffer;
            if (zzave.zza < 21) {
                int remaining = byteBuffer.remaining();
                byte[] bArr = this.zzR;
                if (bArr == null || bArr.length < remaining) {
                    this.zzR = new byte[remaining];
                }
                int position = byteBuffer.position();
                byteBuffer.get(this.zzR, 0, remaining);
                byteBuffer.position(position);
                this.zzS = 0;
            }
        }
        int remaining2 = byteBuffer.remaining();
        if (zzave.zza < 21) {
            int zzd = this.zzo - ((int) (this.zzF - (this.zzg.zzd() * this.zzE)));
            if (zzd > 0) {
                int write = this.zzi.write(this.zzR, this.zzS, Math.min(remaining2, zzd));
                i = write;
                if (write > 0) {
                    this.zzS += write;
                    byteBuffer.position(byteBuffer.position() + write);
                    i = write;
                }
            } else {
                i = 0;
            }
        } else {
            i = this.zzi.write(byteBuffer, remaining2, 1);
        }
        this.zzY = SystemClock.elapsedRealtime();
        if (i < 0) {
            throw new zzaos(i);
        }
        boolean z = this.zzn;
        if (!z) {
            this.zzF += i;
        }
        if (i != remaining2) {
            return false;
        }
        if (z) {
            this.zzG += this.zzH;
        }
        this.zzQ = null;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzs() throws com.google.android.gms.internal.ads.zzaos {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.zzT
            r1 = -1
            if (r0 != r1) goto L24
            r0 = r5
            boolean r0 = r0.zzn
            if (r0 == 0) goto L18
            r0 = r5
            com.google.android.gms.internal.ads.zzaob[] r0 = r0.zzN
            int r0 = r0.length
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r5
            r1 = r6
            r0.zzT = r1
        L1f:
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r5
            int r0 = r0.zzT
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzaob[] r0 = r0.zzN
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L63
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L44
            r0 = r8
            r0.zzf()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzq(r1)
            r0 = r8
            boolean r0 = r0.zzh()
            if (r0 != 0) goto L56
            r0 = 0
            return r0
        L56:
            r0 = r5
            r1 = r5
            int r1 = r1.zzT
            r2 = 1
            int r1 = r1 + r2
            r0.zzT = r1
            goto L1f
        L63:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzQ
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.zzr(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzQ
            if (r0 == 0) goto L7e
            r0 = 0
            return r0
        L7e:
            r0 = r5
            r1 = -1
            r0.zzT = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaot.zzs():boolean");
    }

    private final void zzt() {
        if (!zzu()) {
            return;
        }
        if (zzave.zza >= 21) {
            this.zzi.setVolume(this.zzM);
            return;
        }
        AudioTrack audioTrack = this.zzi;
        float f = this.zzM;
        audioTrack.setStereoVolume(f, f);
    }

    private final boolean zzu() {
        return this.zzi != null;
    }

    private final long zzv(long j) {
        return (j * 1000000) / this.zzj;
    }

    private final long zzw(long j) {
        return (j * this.zzj) / 1000000;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    private final long zzx() {
        return this.zzn ? this.zzG : this.zzF / this.zzE;
    }

    private final void zzy() {
        this.zzw = 0L;
        this.zzv = 0;
        this.zzu = 0;
        this.zzx = 0L;
        this.zzy = false;
        this.zzz = 0L;
    }

    private final boolean zzz() {
        boolean z = true;
        if (zzave.zza < 23) {
            int i = this.zzm;
            if (i != 5) {
                if (i == 6) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    public final long zzb(boolean z) {
        char c;
        long j;
        zzanq zzanqVar;
        long j2;
        long j3;
        Method method;
        if (!zzu() || this.zzI == 0) {
            return Long.MIN_VALUE;
        }
        if (this.zzi.getPlayState() == 3) {
            long zze = this.zzg.zze();
            if (zze != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzx >= 30000) {
                    long[] jArr = this.zzf;
                    int i = this.zzu;
                    jArr[i] = zze - nanoTime;
                    this.zzu = (i + 1) % 10;
                    int i2 = this.zzv;
                    if (i2 < 10) {
                        this.zzv = i2 + 1;
                    }
                    this.zzx = nanoTime;
                    this.zzw = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzv;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzw = (this.zzf[i3] / i4) + this.zzw;
                        i3++;
                    }
                }
                if (!zzz() && nanoTime - this.zzz >= 500000) {
                    boolean zzf = this.zzg.zzf();
                    this.zzy = zzf;
                    if (zzf) {
                        long zzg = this.zzg.zzg() / 1000;
                        long zzh = this.zzg.zzh();
                        if (zzg < this.zzK) {
                            this.zzy = false;
                        } else if (Math.abs(zzg - nanoTime) > 5000000) {
                            this.zzy = false;
                        } else if (Math.abs(zzv(zzh) - zze) > 5000000) {
                            this.zzy = false;
                        }
                    }
                    if (this.zzA != null && !this.zzn) {
                        try {
                            long intValue = (((Integer) method.invoke(this.zzi, null)).intValue() * 1000) - this.zzp;
                            this.zzL = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzL = max;
                            if (max > 5000000) {
                                this.zzL = 0L;
                            }
                        } catch (Exception e) {
                            this.zzA = null;
                        }
                    }
                    this.zzz = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.zzy) {
            c = zzv(this.zzg.zzh() + zzw(nanoTime2 - (this.zzg.zzg() / 1000)));
        } else {
            char zze2 = this.zzv == 0 ? this.zzg.zze() : nanoTime2 + this.zzw;
            c = zze2;
            if (!z) {
                c = zze2 - this.zzL;
            }
        }
        long j4 = this.zzJ;
        while (!this.zzh.isEmpty()) {
            j = this.zzh.getFirst().zzc;
            if (c < j) {
                break;
            }
            zzaor remove = this.zzh.remove();
            zzanqVar = remove.zza;
            this.zzr = zzanqVar;
            j2 = remove.zzc;
            this.zzt = j2;
            j3 = remove.zzb;
            this.zzs = j3 - this.zzJ;
        }
        return j4 + (this.zzr.zzb == 1.0f ? (c + this.zzs) - this.zzt : (!this.zzh.isEmpty() || this.zzb.zzn() < 1024) ? ((long) (this.zzr.zzb * (c - this.zzt))) + this.zzs : zzave.zzj(c - this.zzt, this.zzb.zzm(), this.zzb.zzn()) + this.zzs);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzc(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) throws com.google.android.gms.internal.ads.zzaon {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaot.zzc(java.lang.String, int, int, int, int, int[]):void");
    }

    public final void zzd() {
        this.zzV = true;
        if (zzu()) {
            this.zzK = System.nanoTime() / 1000;
            this.zzi.play();
        }
    }

    public final void zze() {
        if (this.zzI == 1) {
            this.zzI = 2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    public final boolean zzf(ByteBuffer byteBuffer, long j) throws zzaoo, zzaos {
        int i;
        zzaoi zzaoiVar;
        zzaoi zzaoiVar2;
        ByteBuffer byteBuffer2 = this.zzP;
        zzaup.zza(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!zzu()) {
            this.zze.block();
            int i2 = this.zzW;
            if (i2 == 0) {
                this.zzi = new AudioTrack(3, this.zzj, this.zzk, this.zzm, this.zzo, 1);
            } else {
                this.zzi = new AudioTrack(3, this.zzj, this.zzk, this.zzm, this.zzo, 1, i2);
            }
            int state = this.zzi.getState();
            if (state != 1) {
                try {
                    this.zzi.release();
                } catch (Exception e) {
                } finally {
                    this.zzi = null;
                }
                throw new zzaoo(state, this.zzj, this.zzk, this.zzo);
            }
            int audioSessionId = this.zzi.getAudioSessionId();
            if (this.zzW != audioSessionId) {
                this.zzW = audioSessionId;
                zzaoiVar2 = ((zzaov) this.zzd).zza.zzb;
                zzaoiVar2.zzg(audioSessionId);
            }
            this.zzg.zza(this.zzi, zzz());
            zzt();
            this.zzX = false;
            if (this.zzV) {
                zzd();
            }
        }
        if (zzz()) {
            if (this.zzi.getPlayState() == 2) {
                this.zzX = false;
                return false;
            } else if (this.zzi.getPlayState() == 1 && this.zzg.zzd() != 0) {
                return false;
            }
        }
        boolean z = this.zzX;
        boolean zzi = zzi();
        this.zzX = zzi;
        if (z && !zzi && this.zzi.getPlayState() != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.zzY;
            zzaop zzaopVar = this.zzd;
            int i3 = this.zzo;
            long zza = zzamx.zza(this.zzp);
            zzaoiVar = ((zzaov) zzaopVar).zza.zzb;
            zzaoiVar.zze(i3, zza, elapsedRealtime - j2);
        }
        if (this.zzP == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.zzn && this.zzH == 0) {
                int i4 = this.zzm;
                if (i4 == 7 || i4 == 8) {
                    int position = byteBuffer.position();
                    i = ((((byteBuffer.get(position + 5) & 252) >> 2) | ((byteBuffer.get(position + 4) & 1) << 6)) + 1) * 32;
                } else if (i4 == 5) {
                    i = 1536;
                } else if (i4 != 6) {
                    throw new IllegalStateException(C22128a.m8690L1(38, "Unexpected audio encoding: ", i4));
                } else {
                    i = zzany.zzc(byteBuffer);
                }
                this.zzH = i;
            }
            if (this.zzq != null) {
                if (!zzs()) {
                    return false;
                }
                this.zzh.add(new zzaor(this.zzq, Math.max(0L, j), zzv(zzx()), null));
                this.zzq = null;
                zzp();
            }
            if (this.zzI == 0) {
                this.zzJ = Math.max(0L, j);
                this.zzI = 1;
            } else {
                long zzv = this.zzJ + zzv(this.zzn ? this.zzD : this.zzC / this.zzB);
                if (this.zzI == 1 && Math.abs(zzv - j) > 200000) {
                    this.zzI = 2;
                }
                if (this.zzI == 2) {
                    this.zzJ = (j - zzv) + this.zzJ;
                    this.zzI = 1;
                    ((zzaov) this.zzd).zza.zzh = true;
                }
            }
            if (this.zzn) {
                this.zzD += this.zzH;
            } else {
                this.zzC += byteBuffer.remaining();
            }
            this.zzP = byteBuffer;
        }
        if (this.zzn) {
            zzr(this.zzP, j);
        } else {
            zzq(j);
        }
        if (!this.zzP.hasRemaining()) {
            this.zzP = null;
            return true;
        }
        return false;
    }

    public final void zzg() throws zzaos {
        if (this.zzU || !zzu() || !zzs()) {
            return;
        }
        this.zzg.zzb(zzx());
        this.zzU = true;
    }

    public final boolean zzh() {
        boolean z = false;
        if (zzu()) {
            if (this.zzU) {
                if (zzi()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    public final boolean zzi() {
        boolean z = true;
        if (zzu()) {
            if (zzx() <= this.zzg.zzd()) {
                if (zzz() && this.zzi.getPlayState() == 2 && this.zzi.getPlaybackHeadPosition() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final zzanq zzj(zzanq zzanqVar) {
        zzanq zzanqVar2;
        if (this.zzn) {
            zzanq zzanqVar3 = zzanq.zza;
            this.zzr = zzanqVar3;
            return zzanqVar3;
        }
        float zzk = this.zzb.zzk(zzanqVar.zzb);
        this.zzb.zzl(1.0f);
        zzanq zzanqVar4 = new zzanq(zzk, 1.0f);
        zzanq zzanqVar5 = this.zzq;
        zzanq zzanqVar6 = zzanqVar5;
        if (zzanqVar5 == null) {
            if (!this.zzh.isEmpty()) {
                zzanqVar2 = this.zzh.getLast().zza;
                zzanqVar6 = zzanqVar2;
            } else {
                zzanqVar6 = this.zzr;
            }
        }
        if (!zzanqVar4.equals(zzanqVar6)) {
            if (zzu()) {
                this.zzq = zzanqVar4;
            } else {
                this.zzr = zzanqVar4;
            }
        }
        return this.zzr;
    }

    public final zzanq zzk() {
        return this.zzr;
    }

    public final void zzl(float f) {
        if (this.zzM != f) {
            this.zzM = f;
            zzt();
        }
    }

    public final void zzm() {
        this.zzV = false;
        if (zzu()) {
            zzy();
            this.zzg.zzc();
        }
    }

    public final void zzn() {
        zzanq zzanqVar;
        if (zzu()) {
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzF = 0L;
            this.zzG = 0L;
            this.zzH = 0;
            zzanq zzanqVar2 = this.zzq;
            if (zzanqVar2 != null) {
                this.zzr = zzanqVar2;
                this.zzq = null;
            } else if (!this.zzh.isEmpty()) {
                zzanqVar = this.zzh.getLast().zza;
                this.zzr = zzanqVar;
            }
            this.zzh.clear();
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzP = null;
            this.zzQ = null;
            int i = 0;
            while (true) {
                zzaob[] zzaobVarArr = this.zzN;
                if (i >= zzaobVarArr.length) {
                    break;
                }
                zzaob zzaobVar = zzaobVarArr[i];
                zzaobVar.zzi();
                this.zzO[i] = zzaobVar.zzg();
                i++;
            }
            this.zzU = false;
            this.zzT = -1;
            this.zzI = 0;
            this.zzL = 0L;
            zzy();
            if (this.zzi.getPlayState() == 3) {
                this.zzi.pause();
            }
            AudioTrack audioTrack = this.zzi;
            this.zzi = null;
            this.zzg.zza(null, false);
            this.zze.close();
            new zzaok(this, audioTrack).start();
        }
    }

    public final void zzo() {
        zzn();
        zzaob[] zzaobVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzaobVarArr[i].zzj();
        }
        this.zzW = 0;
        this.zzV = false;
    }
}
