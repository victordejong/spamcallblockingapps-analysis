package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import androidx.work.WorkRequest;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzit.class */
public final class zzit {
    private static boolean zzajr = false;
    private static boolean zzajs = false;
    private int streamType;
    private zzhz zzafi;
    private int zzahp;
    private final zzja zzaju;
    private final zzjj zzajv;
    private final zzij[] zzajw;
    private final zziz zzajx;
    private final long[] zzajz;
    private final zziv zzaka;
    private final LinkedList<zziy> zzakb;
    private AudioTrack zzakc;
    private int zzakd;
    private int zzake;
    private int zzakf;
    private boolean zzakg;
    private int zzakh;
    private long zzaki;
    private zzhz zzakj;
    private long zzakk;
    private long zzakl;
    private ByteBuffer zzakm;
    private int zzakn;
    private int zzako;
    private int zzakp;
    private long zzakq;
    private long zzakr;
    private boolean zzaks;
    private long zzakt;
    private Method zzaku;
    private int zzakv;
    private long zzakw;
    private long zzakx;
    private int zzaky;
    private long zzakz;
    private long zzala;
    private int zzalb;
    private int zzalc;
    private long zzald;
    private long zzale;
    private long zzalf;
    private zzij[] zzalg;
    private ByteBuffer[] zzalh;
    private ByteBuffer zzali;
    private ByteBuffer zzalj;
    private byte[] zzalk;
    private int zzall;
    private int zzalm;
    private boolean zzaln;
    private boolean zzalo;
    private int zzalp;
    private boolean zzalq;
    private boolean zzalr;
    private long zzals;
    private float zzdi;
    private final zzig zzajt = null;
    private final ConditionVariable zzajy = new ConditionVariable(true);

    public zzit(zzig zzigVar, zzij[] zzijVarArr, zziz zzizVar) {
        this.zzajx = zzizVar;
        if (zzpt.SDK_INT >= 18) {
            try {
                this.zzaku = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (zzpt.SDK_INT >= 19) {
            this.zzaka = new zziu();
        } else {
            this.zzaka = new zziv(null);
        }
        zzja zzjaVar = new zzja();
        this.zzaju = zzjaVar;
        zzjj zzjjVar = new zzjj();
        this.zzajv = zzjjVar;
        zzij[] zzijVarArr2 = new zzij[zzijVarArr.length + 3];
        this.zzajw = zzijVarArr2;
        zzijVarArr2[0] = new zzjh();
        zzijVarArr2[1] = zzjaVar;
        System.arraycopy(zzijVarArr, 0, zzijVarArr2, 2, zzijVarArr.length);
        zzijVarArr2[zzijVarArr.length + 2] = zzjjVar;
        this.zzajz = new long[10];
        this.zzdi = 1.0f;
        this.zzalc = 0;
        this.streamType = 3;
        this.zzalp = 0;
        this.zzafi = zzhz.zzaia;
        this.zzalm = -1;
        this.zzalg = new zzij[0];
        this.zzalh = new ByteBuffer[0];
        this.zzakb = new LinkedList<>();
    }

    private final boolean isInitialized() {
        return this.zzakc != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0199, code lost:
        if (r13 < r0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0218  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzc(java.nio.ByteBuffer r8, long r9) throws com.google.android.gms.internal.ads.zzjb {
        /*
            Method dump skipped, instructions count: 546
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzc(java.nio.ByteBuffer, long):boolean");
    }

    private final void zzdv(long j) throws zzjb {
        ByteBuffer byteBuffer;
        int length = this.zzalg.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.zzalh[i - 1];
            } else {
                byteBuffer = this.zzali;
                if (byteBuffer == null) {
                    byteBuffer = zzij.zzajc;
                }
            }
            if (i == length) {
                zzc(byteBuffer, j);
            } else {
                zzij zzijVar = this.zzalg[i];
                zzijVar.zzn(byteBuffer);
                ByteBuffer zzfm = zzijVar.zzfm();
                this.zzalh[i] = zzfm;
                if (zzfm.hasRemaining()) {
                    i++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            }
            i--;
        }
    }

    private final long zzdw(long j) {
        return (j * 1000000) / this.zzahp;
    }

    private final long zzdx(long j) {
        return (j * this.zzahp) / 1000000;
    }

    private final void zzfn() {
        zzij[] zzijVarArr;
        ArrayList arrayList = new ArrayList();
        for (zzij zzijVar : this.zzajw) {
            if (zzijVar.isActive()) {
                arrayList.add(zzijVar);
            } else {
                zzijVar.flush();
            }
        }
        int size = arrayList.size();
        this.zzalg = (zzij[]) arrayList.toArray(new zzij[size]);
        this.zzalh = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            zzij zzijVar2 = this.zzalg[i];
            zzijVar2.flush();
            this.zzalh[i] = zzijVar2.zzfm();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzfq() throws com.google.android.gms.internal.ads.zzjb {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.zzalm
            r1 = -1
            if (r0 != r1) goto L24
            r0 = r5
            boolean r0 = r0.zzakg
            if (r0 == 0) goto L18
            r0 = r5
            com.google.android.gms.internal.ads.zzij[] r0 = r0.zzalg
            int r0 = r0.length
            r6 = r0
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r5
            r1 = r6
            r0.zzalm = r1
        L1f:
            r0 = 1
            r6 = r0
            goto L26
        L24:
            r0 = 0
            r6 = r0
        L26:
            r0 = r5
            int r0 = r0.zzalm
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzij[] r0 = r0.zzalg
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
            r0.zzfl()
        L44:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.zzdv(r1)
            r0 = r8
            boolean r0 = r0.zzfe()
            if (r0 != 0) goto L56
            r0 = 0
            return r0
        L56:
            r0 = r5
            r1 = r5
            int r1 = r1.zzalm
            r2 = 1
            int r1 = r1 + r2
            r0.zzalm = r1
            goto L1f
        L63:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzalj
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L7e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.zzc(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.zzalj
            if (r0 == 0) goto L7e
            r0 = 0
            return r0
        L7e:
            r0 = r5
            r1 = -1
            r0.zzalm = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzit.zzfq():boolean");
    }

    private final void zzfu() {
        if (isInitialized()) {
            if (zzpt.SDK_INT >= 21) {
                this.zzakc.setVolume(this.zzdi);
                return;
            }
            AudioTrack audioTrack = this.zzakc;
            float f = this.zzdi;
            audioTrack.setStereoVolume(f, f);
        }
    }

    private final long zzfv() {
        return this.zzakg ? this.zzala : this.zzakz / this.zzaky;
    }

    private final void zzfw() {
        this.zzakq = 0L;
        this.zzakp = 0;
        this.zzako = 0;
        this.zzakr = 0L;
        this.zzaks = false;
        this.zzakt = 0L;
    }

    private final boolean zzfx() {
        if (zzpt.SDK_INT < 23) {
            int i = this.zzakf;
            return i == 5 || i == 6;
        }
        return false;
    }

    public final void pause() {
        this.zzalo = false;
        if (isInitialized()) {
            zzfw();
            this.zzaka.pause();
        }
    }

    public final void play() {
        this.zzalo = true;
        if (isInitialized()) {
            this.zzale = System.nanoTime() / 1000;
            this.zzakc.play();
        }
    }

    public final void release() {
        reset();
        for (zzij zzijVar : this.zzajw) {
            zzijVar.reset();
        }
        this.zzalp = 0;
        this.zzalo = false;
    }

    public final void reset() {
        zzhz zzhzVar;
        if (isInitialized()) {
            this.zzakw = 0L;
            this.zzakx = 0L;
            this.zzakz = 0L;
            this.zzala = 0L;
            this.zzalb = 0;
            zzhz zzhzVar2 = this.zzakj;
            if (zzhzVar2 != null) {
                this.zzafi = zzhzVar2;
                this.zzakj = null;
            } else if (!this.zzakb.isEmpty()) {
                zzhzVar = this.zzakb.getLast().zzafi;
                this.zzafi = zzhzVar;
            }
            this.zzakb.clear();
            this.zzakk = 0L;
            this.zzakl = 0L;
            this.zzali = null;
            this.zzalj = null;
            int i = 0;
            while (true) {
                zzij[] zzijVarArr = this.zzalg;
                if (i >= zzijVarArr.length) {
                    break;
                }
                zzij zzijVar = zzijVarArr[i];
                zzijVar.flush();
                this.zzalh[i] = zzijVar.zzfm();
                i++;
            }
            this.zzaln = false;
            this.zzalm = -1;
            this.zzakm = null;
            this.zzakn = 0;
            this.zzalc = 0;
            this.zzalf = 0L;
            zzfw();
            if (this.zzakc.getPlayState() == 3) {
                this.zzakc.pause();
            }
            AudioTrack audioTrack = this.zzakc;
            this.zzakc = null;
            this.zzaka.zza(null, false);
            this.zzajy.close();
            new zzis(this, audioTrack).start();
        }
    }

    public final void setStreamType(int i) {
        if (this.streamType == i) {
            return;
        }
        this.streamType = i;
        if (this.zzalq) {
            return;
        }
        reset();
        this.zzalp = 0;
    }

    public final void setVolume(float f) {
        if (this.zzdi != f) {
            this.zzdi = f;
            zzfu();
        }
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    public final void zza(String str, int i, int i2, int i3, int i4, int[] iArr) throws zzix {
        int i5;
        int i6;
        boolean z;
        int i7;
        int i8;
        zzij[] zzijVarArr;
        boolean z2 = true;
        boolean z3 = !"audio/raw".equals(str);
        if (z3) {
            str.hashCode();
            boolean z4 = true;
            switch (str.hashCode()) {
                case -1095064472:
                    if (str.equals("audio/vnd.dts")) {
                        z4 = false;
                        break;
                    }
                    break;
                case 187078296:
                    if (str.equals("audio/ac3")) {
                        z4 = true;
                        break;
                    }
                    break;
                case 1504578661:
                    if (str.equals("audio/eac3")) {
                        z4 = true;
                        break;
                    }
                    break;
                case 1505942594:
                    if (str.equals("audio/vnd.dts.hd")) {
                        z4 = true;
                        break;
                    }
                    break;
            }
            switch (z4) {
                case false:
                    i5 = 7;
                    break;
                case true:
                    i5 = 5;
                    break;
                case true:
                    i5 = 6;
                    break;
                case true:
                    i5 = 8;
                    break;
                default:
                    i5 = 0;
                    break;
            }
        } else {
            i5 = i3;
        }
        if (!z3) {
            this.zzakv = zzpt.zzg(i3, i);
            this.zzaju.zzb(iArr);
            boolean z5 = false;
            int i9 = i5;
            for (zzij zzijVar : this.zzajw) {
                try {
                    z5 |= zzijVar.zzb(i2, i, i9);
                    if (zzijVar.isActive()) {
                        i = zzijVar.zzfj();
                        i9 = zzijVar.zzfk();
                    }
                } catch (zzii e) {
                    throw new zzix(e);
                }
            }
            i5 = i9;
            i6 = i;
            z = z5;
            if (z5) {
                zzfn();
                i5 = i9;
                i6 = i;
                z = z5;
            }
        } else {
            z = false;
            i6 = i;
        }
        switch (i6) {
            case 1:
                i7 = 4;
                break;
            case 2:
                i7 = 12;
                break;
            case 3:
                i7 = 28;
                break;
            case 4:
                i7 = 204;
                break;
            case 5:
                i7 = 220;
                break;
            case 6:
                i7 = 252;
                break;
            case 7:
                i7 = 1276;
                break;
            case 8:
                i7 = zzhf.CHANNEL_OUT_7POINT1_SURROUND;
                break;
            default:
                StringBuilder sb = new StringBuilder(38);
                sb.append("Unsupported channel count: ");
                sb.append(i6);
                throw new zzix(sb.toString());
        }
        if (zzpt.SDK_INT <= 23 && "foster".equals(zzpt.DEVICE) && "NVIDIA".equals(zzpt.MANUFACTURER)) {
            if (i6 == 3 || i6 == 5) {
                i7 = 252;
            } else if (i6 == 7) {
                i7 = zzhf.CHANNEL_OUT_7POINT1_SURROUND;
            }
        }
        if (zzpt.SDK_INT <= 25 && "fugu".equals(zzpt.DEVICE) && z3 && i6 == 1) {
            i7 = 12;
        }
        if (!z && isInitialized() && this.zzake == i5 && this.zzahp == i2 && this.zzakd == i7) {
            return;
        }
        reset();
        this.zzake = i5;
        this.zzakg = z3;
        this.zzahp = i2;
        this.zzakd = i7;
        if (!z3) {
            i5 = 2;
        }
        this.zzakf = i5;
        this.zzaky = zzpt.zzg(2, i6);
        if (z3) {
            int i10 = this.zzakf;
            i8 = (i10 == 5 || i10 == 6) ? 20480 : 49152;
        } else {
            int minBufferSize = AudioTrack.getMinBufferSize(i2, i7, this.zzakf);
            if (minBufferSize == -2) {
                z2 = false;
            }
            zzpg.checkState(z2);
            i8 = minBufferSize << 2;
            int zzdx = this.zzaky * ((int) zzdx(250000L));
            int max = (int) Math.max(minBufferSize, zzdx(750000L) * this.zzaky);
            if (i8 < zzdx) {
                i8 = zzdx;
            } else if (i8 > max) {
                i8 = max;
            }
        }
        this.zzakh = i8;
        this.zzaki = z3 ? (char) 1 : zzdw(i8 / this.zzaky);
        zzb(this.zzafi);
    }

    public final zzhz zzb(zzhz zzhzVar) {
        zzhz zzhzVar2;
        if (this.zzakg) {
            zzhz zzhzVar3 = zzhz.zzaia;
            this.zzafi = zzhzVar3;
            return zzhzVar3;
        }
        zzhz zzhzVar4 = new zzhz(this.zzajv.zzb(zzhzVar.zzaib), this.zzajv.zzc(zzhzVar.zzaic));
        zzhz zzhzVar5 = this.zzakj;
        if (zzhzVar5 == null) {
            if (!this.zzakb.isEmpty()) {
                zzhzVar2 = this.zzakb.getLast().zzafi;
                zzhzVar5 = zzhzVar2;
            } else {
                zzhzVar5 = this.zzafi;
            }
        }
        if (!zzhzVar4.equals(zzhzVar5)) {
            if (isInitialized()) {
                this.zzakj = zzhzVar4;
            } else {
                this.zzafi = zzhzVar4;
            }
        }
        return this.zzafi;
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    public final boolean zzb(ByteBuffer byteBuffer, long j) throws zziw, zzjb {
        int i;
        ByteBuffer byteBuffer2 = this.zzali;
        zzpg.checkArgument(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!isInitialized()) {
            this.zzajy.block();
            if (this.zzalq) {
                this.zzakc = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.zzakd).setEncoding(this.zzakf).setSampleRate(this.zzahp).build(), this.zzakh, 1, this.zzalp);
            } else if (this.zzalp == 0) {
                this.zzakc = new AudioTrack(this.streamType, this.zzahp, this.zzakd, this.zzakf, this.zzakh, 1);
            } else {
                this.zzakc = new AudioTrack(this.streamType, this.zzahp, this.zzakd, this.zzakf, this.zzakh, 1, this.zzalp);
            }
            int state = this.zzakc.getState();
            if (state != 1) {
                try {
                    this.zzakc.release();
                } catch (Exception e) {
                } finally {
                    this.zzakc = null;
                }
                throw new zziw(state, this.zzahp, this.zzakd, this.zzakh);
            }
            int audioSessionId = this.zzakc.getAudioSessionId();
            if (this.zzalp != audioSessionId) {
                this.zzalp = audioSessionId;
                this.zzajx.zzx(audioSessionId);
            }
            this.zzaka.zza(this.zzakc, zzfx());
            zzfu();
            this.zzalr = false;
            if (this.zzalo) {
                play();
            }
        }
        if (zzfx()) {
            if (this.zzakc.getPlayState() == 2) {
                this.zzalr = false;
                return false;
            } else if (this.zzakc.getPlayState() == 1 && this.zzaka.zzgb() != 0) {
                return false;
            }
        }
        boolean z = this.zzalr;
        boolean zzfr = zzfr();
        this.zzalr = zzfr;
        if (z && !zzfr && this.zzakc.getPlayState() != 1) {
            this.zzajx.zzc(this.zzakh, zzhf.zzdo(this.zzaki), SystemClock.elapsedRealtime() - this.zzals);
        }
        if (this.zzali == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.zzakg && this.zzalb == 0) {
                int i2 = this.zzakf;
                if (i2 == 7 || i2 == 8) {
                    i = zzjd.zzo(byteBuffer);
                } else if (i2 == 5) {
                    i = zzih.zzfi();
                } else if (i2 != 6) {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i2);
                    throw new IllegalStateException(sb.toString());
                } else {
                    i = zzih.zzm(byteBuffer);
                }
                this.zzalb = i;
            }
            if (this.zzakj != null) {
                if (!zzfq()) {
                    return false;
                }
                this.zzakb.add(new zziy(this.zzakj, Math.max(0L, j), zzdw(zzfv()), null));
                this.zzakj = null;
                zzfn();
            }
            if (this.zzalc == 0) {
                this.zzald = Math.max(0L, j);
                this.zzalc = 1;
            } else {
                long zzdw = this.zzald + zzdw(this.zzakg ? this.zzakx : this.zzakw / this.zzakv);
                if (this.zzalc == 1 && Math.abs(zzdw - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(zzdw);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.zzalc = 2;
                }
                if (this.zzalc == 2) {
                    this.zzald += j - zzdw;
                    this.zzalc = 1;
                    this.zzajx.zzek();
                }
            }
            if (this.zzakg) {
                this.zzakx += this.zzalb;
            } else {
                this.zzakw += byteBuffer.remaining();
            }
            this.zzali = byteBuffer;
        }
        if (this.zzakg) {
            zzc(this.zzali, j);
        } else {
            zzdv(j);
        }
        if (!this.zzali.hasRemaining()) {
            this.zzali = null;
            return true;
        }
        return false;
    }

    public final boolean zzfe() {
        if (isInitialized()) {
            return this.zzaln && !zzfr();
        }
        return true;
    }

    public final void zzfo() {
        if (this.zzalc == 1) {
            this.zzalc = 2;
        }
    }

    public final void zzfp() throws zzjb {
        if (this.zzaln || !isInitialized() || !zzfq()) {
            return;
        }
        this.zzaka.zzdy(zzfv());
        this.zzakn = 0;
        this.zzaln = true;
    }

    public final boolean zzfr() {
        if (isInitialized()) {
            if (zzfv() > this.zzaka.zzgb()) {
                return true;
            }
            return zzfx() && this.zzakc.getPlayState() == 2 && this.zzakc.getPlaybackHeadPosition() == 0;
        }
        return false;
    }

    public final zzhz zzfs() {
        return this.zzafi;
    }

    public final void zzft() {
        if (this.zzalq) {
            this.zzalq = false;
            this.zzalp = 0;
            reset();
        }
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v72, types: [long] */
    public final long zzj(boolean z) {
        char c;
        char c2;
        char c3;
        char c4;
        long j;
        zzhz zzhzVar;
        long j2;
        long j3;
        Method method;
        if (!(isInitialized() && this.zzalc != 0)) {
            return Long.MIN_VALUE;
        }
        if (this.zzakc.getPlayState() == 3) {
            long zzgc = this.zzaka.zzgc();
            if (zzgc != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzakr >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                    long[] jArr = this.zzajz;
                    int i = this.zzako;
                    jArr[i] = zzgc - nanoTime;
                    this.zzako = (i + 1) % 10;
                    int i2 = this.zzakp;
                    if (i2 < 10) {
                        this.zzakp = i2 + 1;
                    }
                    this.zzakr = nanoTime;
                    this.zzakq = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzakp;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzakq += this.zzajz[i3] / i4;
                        i3++;
                    }
                }
                if (!zzfx() && nanoTime - this.zzakt >= 500000) {
                    boolean zzfy = this.zzaka.zzfy();
                    this.zzaks = zzfy;
                    if (zzfy) {
                        long zzfz = this.zzaka.zzfz() / 1000;
                        long zzga = this.zzaka.zzga();
                        if (zzfz < this.zzale) {
                            this.zzaks = false;
                        } else if (Math.abs(zzfz - nanoTime) > 5000000) {
                            StringBuilder sb = new StringBuilder(136);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(zzga);
                            sb.append(", ");
                            sb.append(zzfz);
                            sb.append(", ");
                            sb.append(nanoTime);
                            sb.append(", ");
                            sb.append(zzgc);
                            Log.w("AudioTrack", sb.toString());
                            this.zzaks = false;
                        } else if (Math.abs(zzdw(zzga) - zzgc) > 5000000) {
                            StringBuilder sb2 = new StringBuilder(138);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(zzga);
                            sb2.append(", ");
                            sb2.append(zzfz);
                            sb2.append(", ");
                            sb2.append(nanoTime);
                            sb2.append(", ");
                            sb2.append(zzgc);
                            Log.w("AudioTrack", sb2.toString());
                            this.zzaks = false;
                        }
                    }
                    if (this.zzaku != null && !this.zzakg) {
                        try {
                            long intValue = (((Integer) method.invoke(this.zzakc, null)).intValue() * 1000) - this.zzaki;
                            this.zzalf = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzalf = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("AudioTrack", sb3.toString());
                                this.zzalf = 0L;
                            }
                        } catch (Exception e) {
                            this.zzaku = null;
                        }
                    }
                    this.zzakt = nanoTime;
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        if (this.zzaks) {
            c = zzdw(this.zzaka.zzga() + zzdx(nanoTime2 - (this.zzaka.zzfz() / 1000)));
        } else {
            char zzgc2 = this.zzakp == 0 ? this.zzaka.zzgc() : nanoTime2 + this.zzakq;
            c = zzgc2;
            if (!z) {
                c = zzgc2 - this.zzalf;
            }
        }
        long j4 = this.zzald;
        while (!this.zzakb.isEmpty()) {
            j = this.zzakb.getFirst().zzagk;
            if (c < j) {
                break;
            }
            zziy remove = this.zzakb.remove();
            zzhzVar = remove.zzafi;
            this.zzafi = zzhzVar;
            j2 = remove.zzagk;
            this.zzakl = j2;
            j3 = remove.zzamf;
            this.zzakk = j3 - this.zzald;
        }
        if (this.zzafi.zzaib == 1.0f) {
            c2 = (c + this.zzakk) - this.zzakl;
        } else {
            if (!this.zzakb.isEmpty() || this.zzajv.zzgl() < 1024) {
                c4 = this.zzakk;
                c3 = (long) (this.zzafi.zzaib * (c - this.zzakl));
            } else {
                ?? r0 = this.zzakk;
                c3 = zzpt.zza(c - this.zzakl, this.zzajv.zzgk(), this.zzajv.zzgl());
                c4 = r0;
            }
            c2 = c3 + c4;
        }
        return j4 + c2;
    }
}
