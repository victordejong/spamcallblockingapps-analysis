package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqo.class */
public final class zzaqo {
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
    private zzapv[] zzN;
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
    private final zzaqp zza;
    private final zzaqv zzb;
    private final zzapv[] zzc;
    private final zzaqk zzd;
    private final ConditionVariable zze = new ConditionVariable(true);
    private final long[] zzf;
    private final zzaqg zzg;
    private final LinkedList<zzaqm> zzh;
    private AudioTrack zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private int zzo;
    private long zzp;
    private zzapk zzq;
    private zzapk zzr;
    private long zzs;
    private long zzt;
    private int zzu;
    private int zzv;
    private long zzw;
    private long zzx;
    private boolean zzy;
    private long zzz;

    public zzaqo(zzapt zzaptVar, zzapv[] zzapvVarArr, zzaqk zzaqkVar) {
        this.zzd = zzaqkVar;
        if (zzaxb.zza >= 18) {
            try {
                this.zzA = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (zzaxb.zza >= 19) {
            this.zzg = new zzaqh();
        } else {
            this.zzg = new zzaqg(null);
        }
        zzaqp zzaqpVar = new zzaqp();
        this.zza = zzaqpVar;
        zzaqv zzaqvVar = new zzaqv();
        this.zzb = zzaqvVar;
        this.zzc = r0;
        System.arraycopy(zzapvVarArr, 0, r0, 2, 0);
        zzapv[] zzapvVarArr2 = {new zzaqt(), zzaqpVar, zzaqvVar};
        this.zzf = new long[10];
        this.zzM = 1.0f;
        this.zzI = 0;
        this.zzW = 0;
        this.zzr = zzapk.zza;
        this.zzT = -1;
        this.zzN = new zzapv[0];
        this.zzO = new ByteBuffer[0];
        this.zzh = new LinkedList<>();
    }

    private final long zzp(long j) {
        return (j * this.zzj) / 1000000;
    }

    private final long zzq(long j) {
        return (j * 1000000) / this.zzj;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    private final long zzr() {
        return this.zzn ? this.zzG : this.zzF / this.zzE;
    }

    private final void zzs(long j) throws zzaqn {
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
                    byteBuffer = zzapv.zza;
                }
            }
            if (i == length) {
                zzz(byteBuffer, j);
            } else {
                zzapv zzapvVar = this.zzN[i];
                zzapvVar.zzf(byteBuffer);
                ByteBuffer zzc = zzapvVar.zzc();
                this.zzO[i] = zzc;
                if (zzc.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final void zzt() {
        ArrayList arrayList = new ArrayList();
        zzapv[] zzapvVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzapv zzapvVar = zzapvVarArr[i];
            if (zzapvVar.zzi()) {
                arrayList.add(zzapvVar);
            } else {
                zzapvVar.zzd();
            }
        }
        int size = arrayList.size();
        this.zzN = (zzapv[]) arrayList.toArray(new zzapv[size]);
        this.zzO = new ByteBuffer[size];
        for (int i2 = 0; i2 < size; i2++) {
            zzapv zzapvVar2 = this.zzN[i2];
            zzapvVar2.zzd();
            this.zzO[i2] = zzapvVar2.zzc();
        }
    }

    private final void zzu() {
        this.zzw = 0L;
        this.zzv = 0;
        this.zzu = 0;
        this.zzx = 0L;
        this.zzy = false;
        this.zzz = 0L;
    }

    private final void zzv() {
        if (!zzx()) {
            return;
        }
        if (zzaxb.zza >= 21) {
            this.zzi.setVolume(this.zzM);
            return;
        }
        AudioTrack audioTrack = this.zzi;
        float f = this.zzM;
        audioTrack.setStereoVolume(f, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzw() throws com.google.android.gms.internal.ads.zzaqn {
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
            com.google.android.gms.internal.ads.zzapv[] r0 = r0.zzN
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
            com.google.android.gms.internal.ads.zzapv[] r0 = r0.zzN
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
            r0.zze()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzs(r1)
            r0 = r8
            boolean r0 = r0.zzj()
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
            boolean r0 = r0.zzz(r1, r2)
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqo.zzw():boolean");
    }

    private final boolean zzx() {
        return this.zzi != null;
    }

    private final boolean zzy() {
        boolean z = true;
        if (zzaxb.zza < 23) {
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

    private final boolean zzz(ByteBuffer byteBuffer, long j) throws zzaqn {
        int i;
        if (!byteBuffer.hasRemaining()) {
            return true;
        }
        ByteBuffer byteBuffer2 = this.zzQ;
        if (byteBuffer2 != null) {
            zzawm.zzc(byteBuffer2 == byteBuffer);
        } else {
            this.zzQ = byteBuffer;
            if (zzaxb.zza < 21) {
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
        if (zzaxb.zza < 21) {
            int zza = this.zzo - ((int) (this.zzF - (this.zzg.zza() * this.zzE)));
            if (zza > 0) {
                int write = this.zzi.write(this.zzR, this.zzS, Math.min(remaining2, zza));
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
            throw new zzaqn(i);
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

    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    public final long zza(boolean z) {
        char c;
        char c2;
        char c3;
        char c4;
        long j;
        zzapk zzapkVar;
        long j2;
        long j3;
        Method method;
        if (!zzx() || this.zzI == 0) {
            return Long.MIN_VALUE;
        }
        if (this.zzi.getPlayState() == 3) {
            long zzb = this.zzg.zzb();
            if (zzb != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzx >= 30000) {
                    long[] jArr = this.zzf;
                    int i = this.zzu;
                    jArr[i] = zzb - nanoTime;
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
                if (!zzy() && nanoTime - this.zzz >= 500000) {
                    boolean zzh = this.zzg.zzh();
                    this.zzy = zzh;
                    if (zzh) {
                        long zzd = this.zzg.zzd() / 1000;
                        long zzc = this.zzg.zzc();
                        if (zzd < this.zzK) {
                            this.zzy = false;
                        } else if (Math.abs(zzd - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(zzc);
                            sb.append(", ");
                            sb.append(zzd);
                            C0028d.m8911i(sb, ", ", nanoTime, ", ");
                            sb.append(zzb);
                            Log.w("AudioTrack", sb.toString());
                            this.zzy = false;
                        } else if (Math.abs(zzq(zzc) - zzb) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(zzc);
                            sb2.append(", ");
                            sb2.append(zzd);
                            C0028d.m8911i(sb2, ", ", nanoTime, ", ");
                            sb2.append(zzb);
                            Log.w("AudioTrack", sb2.toString());
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
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("AudioTrack", sb3.toString());
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
            c = zzq(this.zzg.zzc() + zzp(nanoTime2 - (this.zzg.zzd() / 1000)));
        } else {
            char zzb2 = this.zzv == 0 ? this.zzg.zzb() : nanoTime2 + this.zzw;
            c = zzb2;
            if (!z) {
                c = zzb2 - this.zzL;
            }
        }
        long j4 = this.zzJ;
        while (!this.zzh.isEmpty()) {
            j = this.zzh.getFirst().zzc;
            if (c < j) {
                break;
            }
            zzaqm remove = this.zzh.remove();
            zzapkVar = remove.zza;
            this.zzr = zzapkVar;
            j2 = remove.zzc;
            this.zzt = j2;
            j3 = remove.zzb;
            this.zzs = j3 - this.zzJ;
        }
        if (this.zzr.zzb == 1.0f) {
            c2 = (c + this.zzs) - this.zzt;
        } else {
            if (!this.zzh.isEmpty() || this.zzb.zzn() < 1024) {
                c4 = this.zzs;
                c3 = (long) (this.zzr.zzb * (c - this.zzt));
            } else {
                c4 = this.zzs;
                c3 = zzaxb.zzj(c - this.zzt, this.zzb.zzm(), this.zzb.zzn());
            }
            c2 = c3 + c4;
        }
        return j4 + c2;
    }

    public final zzapk zzc() {
        return this.zzr;
    }

    public final zzapk zzd(zzapk zzapkVar) {
        zzapk zzapkVar2;
        if (this.zzn) {
            zzapk zzapkVar3 = zzapk.zza;
            this.zzr = zzapkVar3;
            return zzapkVar3;
        }
        float zzl = this.zzb.zzl(zzapkVar.zzb);
        this.zzb.zzk(1.0f);
        zzapk zzapkVar4 = new zzapk(zzl, 1.0f);
        zzapk zzapkVar5 = this.zzq;
        zzapk zzapkVar6 = zzapkVar5;
        if (zzapkVar5 == null) {
            if (!this.zzh.isEmpty()) {
                zzapkVar2 = this.zzh.getLast().zza;
                zzapkVar6 = zzapkVar2;
            } else {
                zzapkVar6 = this.zzr;
            }
        }
        if (!zzapkVar4.equals(zzapkVar6)) {
            if (zzx()) {
                this.zzq = zzapkVar4;
            } else {
                this.zzr = zzapkVar4;
            }
        }
        return this.zzr;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zze(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) throws com.google.android.gms.internal.ads.zzaqi {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqo.zze(java.lang.String, int, int, int, int, int[]):void");
    }

    public final void zzf() {
        if (this.zzI == 1) {
            this.zzI = 2;
        }
    }

    public final void zzg() {
        this.zzV = false;
        if (zzx()) {
            zzu();
            this.zzg.zzf();
        }
    }

    public final void zzh() {
        this.zzV = true;
        if (zzx()) {
            this.zzK = System.nanoTime() / 1000;
            this.zzi.play();
        }
    }

    public final void zzi() throws zzaqn {
        if (this.zzU || !zzx() || !zzw()) {
            return;
        }
        this.zzg.zze(zzr());
        this.zzU = true;
    }

    public final void zzj() {
        zzk();
        zzapv[] zzapvVarArr = this.zzc;
        for (int i = 0; i < 3; i++) {
            zzapvVarArr[i].zzg();
        }
        this.zzW = 0;
        this.zzV = false;
    }

    public final void zzk() {
        zzapk zzapkVar;
        if (zzx()) {
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzF = 0L;
            this.zzG = 0L;
            this.zzH = 0;
            zzapk zzapkVar2 = this.zzq;
            if (zzapkVar2 != null) {
                this.zzr = zzapkVar2;
                this.zzq = null;
            } else if (!this.zzh.isEmpty()) {
                zzapkVar = this.zzh.getLast().zza;
                this.zzr = zzapkVar;
            }
            this.zzh.clear();
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzP = null;
            this.zzQ = null;
            int i = 0;
            while (true) {
                zzapv[] zzapvVarArr = this.zzN;
                if (i >= zzapvVarArr.length) {
                    break;
                }
                zzapv zzapvVar = zzapvVarArr[i];
                zzapvVar.zzd();
                this.zzO[i] = zzapvVar.zzc();
                i++;
            }
            this.zzU = false;
            this.zzT = -1;
            this.zzI = 0;
            this.zzL = 0L;
            zzu();
            if (this.zzi.getPlayState() == 3) {
                this.zzi.pause();
            }
            AudioTrack audioTrack = this.zzi;
            this.zzi = null;
            this.zzg.zzg(null, false);
            this.zze.close();
            new zzaqe(this, audioTrack).start();
        }
    }

    public final void zzl(float f) {
        if (this.zzM != f) {
            this.zzM = f;
            zzv();
        }
    }

    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    public final boolean zzm(ByteBuffer byteBuffer, long j) throws zzaqj, zzaqn {
        int i;
        zzaqc zzaqcVar;
        zzaqc zzaqcVar2;
        ByteBuffer byteBuffer2 = this.zzP;
        zzawm.zzc(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!zzx()) {
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
                throw new zzaqj(state, this.zzj, this.zzk, this.zzo);
            }
            int audioSessionId = this.zzi.getAudioSessionId();
            if (this.zzW != audioSessionId) {
                this.zzW = audioSessionId;
                zzaqcVar2 = ((zzaqr) this.zzd).zza.zzb;
                zzaqcVar2.zzb(audioSessionId);
            }
            this.zzg.zzg(this.zzi, zzy());
            zzv();
            this.zzX = false;
            if (this.zzV) {
                zzh();
            }
        }
        if (zzy()) {
            if (this.zzi.getPlayState() == 2) {
                this.zzX = false;
                return false;
            } else if (this.zzi.getPlayState() == 1 && this.zzg.zza() != 0) {
                return false;
            }
        }
        boolean z = this.zzX;
        boolean zzn = zzn();
        this.zzX = zzn;
        if (z && !zzn && this.zzi.getPlayState() != 1) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j2 = this.zzY;
            zzaqk zzaqkVar = this.zzd;
            int i3 = this.zzo;
            long zzb = zzaor.zzb(this.zzp);
            zzaqcVar = ((zzaqr) zzaqkVar).zza.zzb;
            zzaqcVar.zzc(i3, zzb, elapsedRealtime - j2);
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
                    throw new IllegalStateException(C0082b.m8758d(38, "Unexpected audio encoding: ", i4));
                } else {
                    i = zzaps.zza(byteBuffer);
                }
                this.zzH = i;
            }
            if (this.zzq != null) {
                if (!zzw()) {
                    return false;
                }
                this.zzh.add(new zzaqm(this.zzq, Math.max(0L, j), zzq(zzr()), null));
                this.zzq = null;
                zzt();
            }
            if (this.zzI == 0) {
                this.zzJ = Math.max(0L, j);
                this.zzI = 1;
            } else {
                long zzq = this.zzJ + zzq(this.zzn ? this.zzD : this.zzC / this.zzB);
                if (this.zzI == 1 && Math.abs(zzq - j) > 200000) {
                    this.zzI = 2;
                }
                if (this.zzI == 2) {
                    this.zzJ = (j - zzq) + this.zzJ;
                    this.zzI = 1;
                    ((zzaqr) this.zzd).zza.zzh = true;
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
            zzz(this.zzP, j);
        } else {
            zzs(j);
        }
        if (!this.zzP.hasRemaining()) {
            this.zzP = null;
            return true;
        }
        return false;
    }

    public final boolean zzn() {
        boolean z = true;
        if (zzx()) {
            if (zzr() <= this.zzg.zza()) {
                if (zzy() && this.zzi.getPlayState() == 2 && this.zzi.getPlaybackHeadPosition() == 0) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    public final boolean zzo() {
        boolean z = false;
        if (zzx()) {
            if (this.zzU) {
                if (zzn()) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }
}
