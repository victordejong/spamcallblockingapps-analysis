package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzlz.class */
public final class zzlz extends zzfq {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private long zzA;
    private int zzB;
    private int zzE;
    private zzma zzI;
    private final Context zze;
    private final zzmi zzf;
    private final zzmt zzg;
    private zzly zzi;
    private boolean zzj;
    private boolean zzk;
    private Surface zzl;
    private zzlu zzm;
    private boolean zzn;
    private boolean zzp;
    private boolean zzq;
    private boolean zzr;
    private long zzs;
    private long zzu;
    private int zzv;
    private int zzw;
    private int zzx;
    private long zzy;
    private long zzz;
    private final boolean zzh = "NVIDIA".equals(zzamq.zzc);
    private long zzt = -9223372036854775807L;
    private int zzC = -1;
    private int zzD = -1;
    private float zzF = -1.0f;
    private int zzo = 1;
    private int zzH = 0;
    private zzy zzG = null;

    public zzlz(Context context, zzfm zzfmVar, zzfs zzfsVar, long j, boolean z, Handler handler, zzmu zzmuVar, int i) {
        super(2, zzfmVar, zzfsVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzf = new zzmi(applicationContext);
        this.zzg = new zzmt(handler, zzmuVar);
    }

    private static List<zzfo> zzaA(zzfs zzfsVar, zzafv zzafvVar, boolean z, boolean z2) throws zzfy {
        Pair<Integer, Integer> zzf;
        String str = zzafvVar.zzl;
        if (str == null) {
            return Collections.emptyList();
        }
        List<zzfo> zzd2 = zzge.zzd(zzge.zzc(str, z, z2), zzafvVar);
        if ("video/dolby-vision".equals(str) && (zzf = zzge.zzf(zzafvVar)) != null) {
            int intValue = ((Integer) zzf.first).intValue();
            if (intValue == 16 || intValue == 256) {
                zzd2.addAll(zzge.zzc("video/hevc", z, z2));
            } else if (intValue == 512) {
                zzd2.addAll(zzge.zzc("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(zzd2);
    }

    private final boolean zzaB(zzfo zzfoVar) {
        boolean z = true;
        if (zzamq.zza >= 23 && !zzab(zzfoVar.zza)) {
            if (zzfoVar.zzf) {
                if (zzlu.zza(this.zze)) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private final void zzaC() {
        int i = this.zzC;
        int i2 = i;
        if (i == -1) {
            if (this.zzD == -1) {
                return;
            }
            i2 = -1;
        }
        zzy zzyVar = this.zzG;
        if (zzyVar != null && zzyVar.zzb == i2 && zzyVar.zzc == this.zzD && zzyVar.zzd == this.zzE && zzyVar.zze == this.zzF) {
            return;
        }
        zzy zzyVar2 = new zzy(i2, this.zzD, this.zzE, this.zzF);
        this.zzG = zzyVar2;
        this.zzg.zzf(zzyVar2);
    }

    private final void zzaD() {
        zzy zzyVar = this.zzG;
        if (zzyVar != null) {
            this.zzg.zzf(zzyVar);
        }
    }

    private static boolean zzaE(long j) {
        return j < -30000;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int zzaF(zzfo zzfoVar, zzafv zzafvVar) {
        boolean z;
        int i;
        int intValue;
        int i2 = zzafvVar.zzq;
        int i3 = zzafvVar.zzr;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        String str = zzafvVar.zzl;
        int i4 = 2;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> zzf = zzge.zzf(zzafvVar);
            str = (zzf == null || !((intValue = ((Integer) zzf.first).intValue()) == 512 || intValue == 1 || intValue == 2)) ? "video/hevc" : "video/avc";
        }
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (z && !z) {
            if (z) {
                String str2 = zzamq.zzd;
                if ("BRAVIA 4K 2015".equals(str2)) {
                    return -1;
                }
                if ("Amazon".equals(zzamq.zzc)) {
                    if ("KFSOWI".equals(str2)) {
                        return -1;
                    }
                    if ("AFTS".equals(str2) && zzfoVar.zzf) {
                        return -1;
                    }
                }
                i = zzamq.zzw(i3, 16) * zzamq.zzw(i2, 16) * 256;
            } else if (!z) {
                if (!z && !z) {
                    return -1;
                }
                i = i2 * i3;
                i4 = 4;
            }
            return (i * 3) / (i4 + i4);
        }
        i = i2 * i3;
        return (i * 3) / (i4 + i4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011f A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzab(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 4570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zzab(java.lang.String):boolean");
    }

    public static int zzy(zzfo zzfoVar, zzafv zzafvVar) {
        if (zzafvVar.zzm != -1) {
            int size = zzafvVar.zzn.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += zzafvVar.zzn.get(i2).length;
            }
            return zzafvVar.zzm + i;
        }
        return zzaF(zzfoVar, zzafvVar);
    }

    public final void zzA(zzgh zzghVar, int i, long j) {
        zzaC();
        zzamo.zza("releaseOutputBuffer");
        zzghVar.zzh(i, true);
        zzamo.zzb();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        ((zzfq) this).zza.zze++;
        this.zzw = 0;
        zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzB(zzaf zzafVar) throws zzaeg {
        this.zzx++;
        int i = zzamq.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzC() {
        this.zzp = false;
        int i = zzamq.zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [android.view.Surface] */
    @Override // com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahr
    public final void zzE(int i, Object obj) throws zzaeg {
        if (i != 1) {
            if (i == 7) {
                this.zzI = (zzma) obj;
                return;
            } else if (i == 10) {
                int intValue = ((Integer) obj).intValue();
                if (this.zzH == intValue) {
                    return;
                }
                this.zzH = intValue;
                return;
            } else if (i != 4) {
                if (i != 5) {
                    return;
                }
                this.zzf.zza(((Integer) obj).intValue());
                return;
            } else {
                this.zzo = ((Integer) obj).intValue();
                zzgh zzZ = zzZ();
                if (zzZ == null) {
                    return;
                }
                zzZ.zzn(this.zzo);
                return;
            }
        }
        zzlu zzluVar = obj instanceof Surface ? (Surface) obj : null;
        zzlu zzluVar2 = zzluVar;
        if (zzluVar == null) {
            zzluVar2 = this.zzm;
            if (zzluVar2 == null) {
                zzfo zzK = zzK();
                zzluVar2 = zzluVar;
                if (zzK != null) {
                    zzluVar2 = zzluVar;
                    if (zzaB(zzK)) {
                        zzluVar2 = zzlu.zzb(this.zze, zzK.zzf);
                        this.zzm = zzluVar2;
                    }
                }
            }
        }
        if (this.zzl == zzluVar2) {
            if (zzluVar2 == null || zzluVar2 == this.zzm) {
                return;
            }
            zzaD();
            if (!this.zzn) {
                return;
            }
            this.zzg.zzg(this.zzl);
            return;
        }
        this.zzl = zzluVar2;
        this.zzf.zzd(zzluVar2);
        this.zzn = false;
        int zzaf = zzaf();
        zzgh zzZ2 = zzZ();
        if (zzZ2 != null) {
            if (zzamq.zza < 23 || zzluVar2 == null || this.zzj) {
                zzN();
                zzI();
            } else {
                zzZ2.zzl(zzluVar2);
            }
        }
        if (zzluVar2 == null || zzluVar2 == this.zzm) {
            this.zzG = null;
            this.zzp = false;
            int i2 = zzamq.zza;
            return;
        }
        zzaD();
        this.zzp = false;
        int i3 = zzamq.zza;
        if (zzaf != 2) {
            return;
        }
        this.zzt = -9223372036854775807L;
    }

    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzfq
    public final boolean zzF(long j, long j2, zzgh zzghVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzafv zzafvVar) throws zzaeg {
        int zzay;
        Objects.requireNonNull(zzghVar);
        if (this.zzs == -9223372036854775807L) {
            this.zzs = j;
        }
        if (j3 != this.zzy) {
            this.zzf.zzh(j3);
            this.zzy = j3;
        }
        long zzX = zzX();
        long j4 = j3 - zzX;
        if (z && !z2) {
            zzz(zzghVar, i, j4);
            return true;
        }
        float zzW = zzW();
        int zzaf = zzaf();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        ?? r0 = (long) ((j3 - j) / zzW);
        char c = r0;
        if (zzaf == 2) {
            c = r0 - (elapsedRealtime - j2);
        }
        if (this.zzl == this.zzm) {
            if (!zzaE(c)) {
                return false;
            }
            zzz(zzghVar, i, j4);
            zzb(c);
            return true;
        }
        long j5 = this.zzz;
        boolean z3 = this.zzr ? !this.zzp : !(zzaf != 2 && !this.zzq);
        if (this.zzt == -9223372036854775807L && j >= zzX && (z3 || (zzaf == 2 && zzaE(c) && elapsedRealtime - j5 > 100000))) {
            long nanoTime = System.nanoTime();
            if (zzamq.zza >= 21) {
                zzaa(zzghVar, i, j4, nanoTime);
            } else {
                zzA(zzghVar, i, j4);
            }
            zzb(c);
            return true;
        } else if (zzaf != 2 || j == this.zzs) {
            return false;
        } else {
            long nanoTime2 = System.nanoTime();
            long zzk = this.zzf.zzk((c * 1000) + nanoTime2);
            long j6 = (zzk - nanoTime2) / 1000;
            long j7 = this.zzt;
            if (j6 < -500000 && !z2 && (zzay = zzay(j)) != 0) {
                zzaz zzazVar = ((zzfq) this).zza;
                zzazVar.zzi++;
                int i4 = this.zzx + zzay;
                if (j7 != -9223372036854775807L) {
                    zzazVar.zzf += i4;
                } else {
                    zza(i4);
                }
                zzP();
                return false;
            } else if (zzaE(j6) && !z2) {
                if (j7 != -9223372036854775807L) {
                    zzz(zzghVar, i, j4);
                } else {
                    zzamo.zza("dropVideoBuffer");
                    zzghVar.zzh(i, false);
                    zzamo.zzb();
                    zza(1);
                }
                zzb(j6);
                return true;
            } else if (zzamq.zza >= 21) {
                if (j6 >= 50000) {
                    return false;
                }
                zzaa(zzghVar, i, j4, zzk);
                zzb(j6);
                return true;
            } else if (j6 >= 30000) {
                return false;
            } else {
                if (j6 > 11000) {
                    try {
                        Thread.sleep(((-10000) + j6) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                zzA(zzghVar, i, j4);
                zzb(j6);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final boolean zzJ(zzfo zzfoVar) {
        return this.zzl != null || zzaB(zzfoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahv
    public final void zzM(float f, float f2) throws zzaeg {
        super.zzM(f, f2);
        this.zzf.zzf(f);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzR() {
        super.zzR();
        this.zzx = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final zzfn zzT(Throwable th, zzfo zzfoVar) {
        return new zzlx(th, zzfoVar, this.zzl);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzU(zzaf zzafVar) throws zzaeg {
        if (!this.zzk) {
            return;
        }
        ByteBuffer byteBuffer = zzafVar.zze;
        Objects.requireNonNull(byteBuffer);
        if (byteBuffer.remaining() < 7) {
            return;
        }
        byte b = byteBuffer.get();
        short s = byteBuffer.getShort();
        short s2 = byteBuffer.getShort();
        byte b2 = byteBuffer.get();
        byte b3 = byteBuffer.get();
        byteBuffer.position(0);
        if (b != -75 || s != 60 || s2 != 1 || b2 != 4 || b3 != 0) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        byteBuffer.position(0);
        zzgh zzZ = zzZ();
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        zzZ.zzm(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzV(long j) {
        super.zzV(j);
        this.zzx--;
    }

    public final void zza(int i) {
        zzaz zzazVar = ((zzfq) this).zza;
        zzazVar.zzg += i;
        this.zzv += i;
        int i2 = this.zzw + i;
        this.zzw = i2;
        zzazVar.zzh = Math.max(i2, zzazVar.zzh);
    }

    public final void zzaa(zzgh zzghVar, int i, long j, long j2) {
        zzaC();
        zzamo.zza("releaseOutputBuffer");
        zzghVar.zzi(i, j2);
        zzamo.zzb();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        ((zzfq) this).zza.zze++;
        this.zzw = 0;
        zzp();
    }

    public final void zzb(long j) {
        zzaz zzazVar = ((zzfq) this).zza;
        zzazVar.zzj += j;
        zzazVar.zzk++;
        this.zzA += j;
        this.zzB++;
    }

    @Override // com.google.android.gms.internal.ads.zzahv, com.google.android.gms.internal.ads.zzahw
    public final String zzc() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final int zzd(zzfs zzfsVar, zzafv zzafvVar) throws zzfy {
        if (!zzalt.zzb(zzafvVar.zzl)) {
            return 0;
        }
        boolean z = zzafvVar.zzo != null;
        List<zzfo> zzaA = zzaA(zzfsVar, zzafvVar, z, false);
        List<zzfo> list = zzaA;
        if (z) {
            list = zzaA;
            if (zzaA.isEmpty()) {
                list = zzaA(zzfsVar, zzafvVar, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!zzfq.zzY(zzafvVar)) {
            return 2;
        }
        zzfo zzfoVar = list.get(0);
        boolean zzc2 = zzfoVar.zzc(zzafvVar);
        int i = true != zzfoVar.zzd(zzafvVar) ? 8 : 16;
        int i2 = 0;
        if (zzc2) {
            List<zzfo> zzaA2 = zzaA(zzfsVar, zzafvVar, z, true);
            i2 = 0;
            if (!zzaA2.isEmpty()) {
                zzfo zzfoVar2 = zzaA2.get(0);
                i2 = 0;
                if (zzfoVar2.zzc(zzafvVar)) {
                    i2 = 0;
                    if (zzfoVar2.zzd(zzafvVar)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (true != zzc2 ? 3 : 4) | i | i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final List<zzfo> zze(zzfs zzfsVar, zzafv zzafvVar, boolean z) throws zzfy {
        return zzaA(zzfsVar, zzafvVar, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final zzfl zzg(zzfo zzfoVar, zzafv zzafvVar, MediaCrypto mediaCrypto, float f) {
        zzly zzlyVar;
        Pair<Integer, Integer> zzf;
        Point point;
        zzlu zzluVar = this.zzm;
        if (zzluVar != null && zzluVar.zza != zzfoVar.zzf) {
            zzluVar.release();
            this.zzm = null;
        }
        String str = zzfoVar.zzc;
        zzafv[] zzau = zzau();
        int i = zzafvVar.zzq;
        int i2 = zzafvVar.zzr;
        int zzy = zzy(zzfoVar, zzafvVar);
        int length = zzau.length;
        if (length == 1) {
            int i3 = zzy;
            if (zzy != -1) {
                int zzaF = zzaF(zzfoVar, zzafvVar);
                i3 = zzy;
                if (zzaF != -1) {
                    i3 = Math.min((int) (zzy * 1.5f), zzaF);
                }
            }
            zzlyVar = new zzly(i, i2, i3);
        } else {
            int i4 = 0;
            boolean z = false;
            int i5 = i2;
            while (i4 < length) {
                zzafv zzafvVar2 = zzau[i4];
                zzafv zzafvVar3 = zzafvVar2;
                if (zzafvVar.zzx != null) {
                    zzafvVar3 = zzafvVar2;
                    if (zzafvVar2.zzx == null) {
                        zzaft zza = zzafvVar2.zza();
                        zza.zzZ(zzafvVar.zzx);
                        zzafvVar3 = zza.zzah();
                    }
                }
                int i6 = i;
                int i7 = i5;
                int i8 = zzy;
                boolean z2 = z;
                if (zzfoVar.zze(zzafvVar, zzafvVar3).zzd != 0) {
                    int i9 = zzafvVar3.zzq;
                    z2 = z | (i9 == -1 || zzafvVar3.zzr == -1);
                    i6 = Math.max(i, i9);
                    i7 = Math.max(i5, zzafvVar3.zzr);
                    i8 = Math.max(zzy, zzy(zzfoVar, zzafvVar3));
                }
                i4++;
                i = i6;
                i5 = i7;
                zzy = i8;
                z = z2;
            }
            int i10 = i;
            int i11 = i5;
            int i12 = zzy;
            if (z) {
                int i13 = zzafvVar.zzr;
                int i14 = zzafvVar.zzq;
                int i15 = i13 > i14 ? i13 : i14;
                int i16 = i13 <= i14 ? i13 : i14;
                float f2 = i16 / i15;
                int[] iArr = zzb;
                for (int i17 = 0; i17 < 9; i17++) {
                    int i18 = iArr[i17];
                    int i19 = (int) (i18 * f2);
                    if (i18 <= i15 || i19 <= i16) {
                        break;
                    } else if (zzamq.zza >= 21) {
                        int i20 = i13 <= i14 ? i18 : i19;
                        if (i13 <= i14) {
                            i18 = i19;
                        }
                        Point zzg = zzfoVar.zzg(i20, i18);
                        if (zzfoVar.zzf(zzg.x, zzg.y, zzafvVar.zzs)) {
                            point = zzg;
                            break;
                        }
                    } else {
                        try {
                            int zzw = zzamq.zzw(i18, 16) * 16;
                            int zzw2 = zzamq.zzw(i19, 16) * 16;
                            if (zzw * zzw2 <= zzge.zze()) {
                                int i21 = i13 <= i14 ? zzw : zzw2;
                                if (i13 <= i14) {
                                    zzw = zzw2;
                                }
                                point = new Point(i21, zzw);
                            }
                        } catch (zzfy e) {
                        }
                    }
                }
                point = null;
                i10 = i;
                i11 = i5;
                i12 = zzy;
                if (point != null) {
                    i10 = Math.max(i, point.x);
                    i11 = Math.max(i5, point.y);
                    zzaft zza2 = zzafvVar.zza();
                    zza2.zzS(i10);
                    zza2.zzT(i11);
                    i12 = Math.max(zzy, zzaF(zzfoVar, zza2.zzah()));
                }
            }
            zzlyVar = new zzly(i10, i11, i12);
        }
        this.zzi = zzlyVar;
        boolean z3 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", zzafvVar.zzq);
        mediaFormat.setInteger("height", zzafvVar.zzr);
        zzalq.zza(mediaFormat, zzafvVar.zzn);
        float f3 = zzafvVar.zzs;
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        zzalq.zzb(mediaFormat, "rotation-degrees", zzafvVar.zzt);
        zzj zzjVar = zzafvVar.zzx;
        if (zzjVar != null) {
            zzalq.zzb(mediaFormat, "color-transfer", zzjVar.zzc);
            zzalq.zzb(mediaFormat, "color-standard", zzjVar.zza);
            zzalq.zzb(mediaFormat, "color-range", zzjVar.zzb);
            byte[] bArr = zzjVar.zzd;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzafvVar.zzl) && (zzf = zzge.zzf(zzafvVar)) != null) {
            zzalq.zzb(mediaFormat, "profile", ((Integer) zzf.first).intValue());
        }
        mediaFormat.setInteger("max-width", zzlyVar.zza);
        mediaFormat.setInteger("max-height", zzlyVar.zzb);
        zzalq.zzb(mediaFormat, "max-input-size", zzlyVar.zzc);
        if (zzamq.zza >= 23) {
            mediaFormat.setInteger(RemoteMessageConst.Notification.PRIORITY, 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (this.zzl == null) {
            if (!zzaB(zzfoVar)) {
                throw new IllegalStateException();
            }
            if (this.zzm == null) {
                this.zzm = zzlu.zzb(this.zze, zzfoVar.zzf);
            }
            this.zzl = this.zzm;
        }
        return zzfl.zzb(zzfoVar, mediaFormat, zzafvVar, this.zzl, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0032, code lost:
        if (r11.zzr > r0.zzb) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.zzfq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzba zzh(com.google.android.gms.internal.ads.zzfo r9, com.google.android.gms.internal.ads.zzafv r10, com.google.android.gms.internal.ads.zzafv r11) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = r11
            com.google.android.gms.internal.ads.zzba r0 = r0.zze(r1, r2)
            r12 = r0
            r0 = r12
            int r0 = r0.zze
            r13 = r0
            r0 = r11
            int r0 = r0.zzq
            r14 = r0
            r0 = r8
            com.google.android.gms.internal.ads.zzly r0 = r0.zzi
            r15 = r0
            r0 = r14
            r1 = r15
            int r1 = r1.zza
            if (r0 > r1) goto L35
            r0 = r13
            r14 = r0
            r0 = r11
            int r0 = r0.zzr
            r1 = r15
            int r1 = r1.zzb
            if (r0 <= r1) goto L3d
        L35:
            r0 = r13
            r1 = 256(0x100, float:3.59E-43)
            r0 = r0 | r1
            r14 = r0
        L3d:
            r0 = r14
            r13 = r0
            r0 = r9
            r1 = r11
            int r0 = zzy(r0, r1)
            r1 = r8
            com.google.android.gms.internal.ads.zzly r1 = r1.zzi
            int r1 = r1.zzc
            if (r0 <= r1) goto L57
            r0 = r14
            r1 = 64
            r0 = r0 | r1
            r13 = r0
        L57:
            r0 = r9
            java.lang.String r0 = r0.zza
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L67
            r0 = 0
            r14 = r0
            goto L71
        L67:
            r0 = r12
            int r0 = r0.zzd
            r14 = r0
            r0 = 0
            r13 = r0
        L71:
            com.google.android.gms.internal.ads.zzba r0 = new com.google.android.gms.internal.ads.zzba
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r14
            r6 = r13
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zzh(com.google.android.gms.internal.ads.zzfo, com.google.android.gms.internal.ads.zzafv, com.google.android.gms.internal.ads.zzafv):com.google.android.gms.internal.ads.zzba");
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final float zzj(float f, zzafv zzafvVar, zzafv[] zzafvVarArr) {
        float f2;
        int length = zzafvVarArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = zzafvVarArr[i].zzs;
            float f5 = f2;
            if (f4 != -1.0f) {
                f5 = Math.max(f2, f4);
            }
            i++;
            f3 = f5;
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzk(String str, long j, long j2) {
        this.zzg.zzb(str, j, j2);
        this.zzj = zzab(str);
        zzfo zzK = zzK();
        Objects.requireNonNull(zzK);
        boolean z = false;
        if (zzamq.zza >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(zzK.zzb)) {
                MediaCodecInfo.CodecProfileLevel[] zzb2 = zzK.zzb();
                int length = zzb2.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (zzb2[i].profile == 16384) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        this.zzk = z;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzl(String str) {
        this.zzg.zzh(str);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzm(Exception exc) {
        zzaln.zzb("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzj(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final zzba zzn(zzafw zzafwVar) throws zzaeg {
        zzba zzn = super.zzn(zzafwVar);
        this.zzg.zzc(zzafwVar.zza, zzn);
        return zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzfq
    public final void zzo(zzafv zzafvVar, MediaFormat mediaFormat) {
        zzgh zzZ = zzZ();
        if (zzZ != null) {
            zzZ.zzn(this.zzo);
        }
        Objects.requireNonNull(mediaFormat);
        boolean z = false;
        if (mediaFormat.containsKey("crop-right")) {
            z = false;
            if (mediaFormat.containsKey("crop-left")) {
                z = false;
                if (mediaFormat.containsKey("crop-bottom")) {
                    z = false;
                    if (mediaFormat.containsKey("crop-top")) {
                        z = true;
                    }
                }
            }
        }
        this.zzC = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
        int integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
        this.zzD = integer;
        float f = zzafvVar.zzu;
        this.zzF = f;
        if (zzamq.zza >= 21) {
            int i = zzafvVar.zzt;
            if (i == 90 || i == 270) {
                int i2 = this.zzC;
                this.zzC = integer;
                this.zzD = i2;
                this.zzF = 1.0f / f;
            }
        } else {
            this.zzE = zzafvVar.zzt;
        }
        this.zzf.zzg(zzafvVar.zzs);
    }

    public final void zzp() {
        this.zzr = true;
        if (!this.zzp) {
            this.zzp = true;
            this.zzg.zzg(this.zzl);
            this.zzn = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzq(boolean z, boolean z2) throws zzaeg {
        super.zzq(z, z2);
        zzav();
        this.zzg.zza(((zzfq) this).zza);
        this.zzf.zzb();
        this.zzq = z2;
        this.zzr = false;
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzr(long j, boolean z) throws zzaeg {
        super.zzr(j, z);
        this.zzp = false;
        int i = zzamq.zza;
        this.zzf.zze();
        this.zzy = -9223372036854775807L;
        this.zzs = -9223372036854775807L;
        this.zzw = 0;
        this.zzt = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzs() {
        this.zzv = 0;
        this.zzu = SystemClock.elapsedRealtime();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        this.zzA = 0L;
        this.zzB = 0;
        this.zzf.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzt() {
        this.zzt = -9223372036854775807L;
        if (this.zzv > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzg.zzd(this.zzv, elapsedRealtime - this.zzu);
            this.zzv = 0;
            this.zzu = elapsedRealtime;
        }
        int i = this.zzB;
        if (i != 0) {
            this.zzg.zze(this.zzA, i);
            this.zzA = 0L;
            this.zzB = 0;
        }
        this.zzf.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzu() {
        this.zzG = null;
        this.zzp = false;
        int i = zzamq.zza;
        this.zzn = false;
        this.zzf.zzj();
        try {
            super.zzu();
        } finally {
            this.zzg.zzi(((zzfq) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzadv
    public final void zzv() {
        try {
            super.zzv();
            zzlu zzluVar = this.zzm;
            if (zzluVar == null) {
                return;
            }
            if (this.zzl == zzluVar) {
                this.zzl = null;
            }
            zzluVar.release();
            this.zzm = null;
        } catch (Throwable th) {
            zzlu zzluVar2 = this.zzm;
            if (zzluVar2 != null) {
                if (this.zzl == zzluVar2) {
                    this.zzl = null;
                }
                zzluVar2.release();
                this.zzm = null;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfq, com.google.android.gms.internal.ads.zzahv
    public final boolean zzx() {
        zzlu zzluVar;
        if (super.zzx() && (this.zzp || (((zzluVar = this.zzm) != null && this.zzl == zzluVar) || zzZ() == null))) {
            this.zzt = -9223372036854775807L;
            return true;
        } else if (this.zzt == -9223372036854775807L) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() < this.zzt) {
                return true;
            }
            this.zzt = -9223372036854775807L;
            return false;
        }
    }

    public final void zzz(zzgh zzghVar, int i, long j) {
        zzamo.zza("skipVideoBuffer");
        zzghVar.zzh(i, false);
        zzamo.zzb();
        ((zzfq) this).zza.zzf++;
    }
}
