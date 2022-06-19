package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuv.class */
public final class zzuv extends zzoj {
    private static final int[] zzb = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static boolean zzc;
    private static boolean zzd;
    private long zzA;
    private int zzB;
    private int zzE;
    private zzuw zzI;
    private final Context zze;
    private final zzvd zzf;
    private final zzvo zzg;
    private zzuu zzi;
    private boolean zzj;
    private boolean zzk;
    private Surface zzl;
    private zzuq zzm;
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
    private final boolean zzh = "NVIDIA".equals(zzfn.zzc);
    private long zzt = -9223372036854775807L;
    private int zzC = -1;
    private int zzD = -1;
    private float zzF = -1.0f;
    private int zzo = 1;
    private int zzH = 0;
    private zzct zzG = null;

    public zzuv(Context context, zzoe zzoeVar, zzol zzolVar, long j, boolean z, Handler handler, zzvp zzvpVar, int i) {
        super(2, zzoeVar, zzolVar, false, 30.0f);
        Context applicationContext = context.getApplicationContext();
        this.zze = applicationContext;
        this.zzf = new zzvd(applicationContext);
        this.zzg = new zzvo(handler, zzvpVar);
    }

    public static int zzS(zzoh zzohVar, zzab zzabVar) {
        if (zzabVar.zzn != -1) {
            int size = zzabVar.zzo.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += zzabVar.zzo.get(i2).length;
            }
            return zzabVar.zzn + i;
        }
        return zzaA(zzohVar, zzabVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int zzaA(zzoh zzohVar, zzab zzabVar) {
        boolean z;
        int i;
        int intValue;
        int i2 = zzabVar.zzr;
        int i3 = zzabVar.zzs;
        if (i2 == -1 || i3 == -1) {
            return -1;
        }
        String str = zzabVar.zzm;
        int i4 = 2;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> zzb2 = zzoy.zzb(zzabVar);
            str = (zzb2 == null || !((intValue = ((Integer) zzb2.first).intValue()) == 512 || intValue == 1 || intValue == 2)) ? "video/hevc" : "video/avc";
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
                String str2 = zzfn.zzd;
                if ("BRAVIA 4K 2015".equals(str2)) {
                    return -1;
                }
                if ("Amazon".equals(zzfn.zzc)) {
                    if ("KFSOWI".equals(str2)) {
                        return -1;
                    }
                    if ("AFTS".equals(str2) && zzohVar.zzf) {
                        return -1;
                    }
                }
                i = zzfn.zze(i3, 16) * zzfn.zze(i2, 16) * 256;
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

    private static List<zzoh> zzaB(zzol zzolVar, zzab zzabVar, boolean z, boolean z2) throws zzos {
        Pair<Integer, Integer> zzb2;
        String str = zzabVar.zzm;
        if (str == null) {
            return Collections.emptyList();
        }
        List<zzoh> zzf = zzoy.zzf(zzoy.zze(str, z, z2), zzabVar);
        if ("video/dolby-vision".equals(str) && (zzb2 = zzoy.zzb(zzabVar)) != null) {
            int intValue = ((Integer) zzb2.first).intValue();
            if (intValue == 16 || intValue == 256) {
                zzf.addAll(zzoy.zze("video/hevc", z, z2));
            } else if (intValue == 512) {
                zzf.addAll(zzoy.zze("video/avc", z, z2));
            }
        }
        return Collections.unmodifiableList(zzf);
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
        zzct zzctVar = this.zzG;
        if (zzctVar != null && zzctVar.zzc == i2 && zzctVar.zzd == this.zzD && zzctVar.zze == this.zzE && zzctVar.zzf == this.zzF) {
            return;
        }
        zzct zzctVar2 = new zzct(i2, this.zzD, this.zzE, this.zzF);
        this.zzG = zzctVar2;
        this.zzg.zzt(zzctVar2);
    }

    private final void zzaD() {
        zzct zzctVar = this.zzG;
        if (zzctVar != null) {
            this.zzg.zzt(zzctVar);
        }
    }

    private final void zzaE() {
        Surface surface = this.zzl;
        zzuq zzuqVar = this.zzm;
        if (surface == zzuqVar) {
            this.zzl = null;
        }
        zzuqVar.release();
        this.zzm = null;
    }

    private static boolean zzaF(long j) {
        return j < -30000;
    }

    private final boolean zzaG(zzoh zzohVar) {
        boolean z = true;
        if (zzfn.zza >= 23 && !zzaz(zzohVar.zza)) {
            if (zzohVar.zzf) {
                if (zzuq.zzb(this.zze)) {
                    return true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x011f A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean zzaz(java.lang.String r3) {
        /*
            Method dump skipped, instructions count: 4570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuv.zzaz(java.lang.String):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzil
    public final void zzC(float f, float f2) throws zzgg {
        super.zzC(f, f2);
        this.zzf.zzg(f);
    }

    @Override // com.google.android.gms.internal.ads.zzil, com.google.android.gms.internal.ads.zzim
    public final String zzJ() {
        return "MediaCodecVideoRenderer";
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzil
    public final boolean zzM() {
        zzuq zzuqVar;
        if (super.zzM() && (this.zzp || (((zzuqVar = this.zzm) != null && this.zzl == zzuqVar) || zzai() == null))) {
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

    @Override // com.google.android.gms.internal.ads.zzoj
    public final float zzO(float f, zzab zzabVar, zzab[] zzabVarArr) {
        float f2;
        int length = zzabVarArr.length;
        int i = 0;
        float f3 = -1.0f;
        while (true) {
            f2 = f3;
            if (i >= length) {
                break;
            }
            float f4 = zzabVarArr[i].zzt;
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

    @Override // com.google.android.gms.internal.ads.zzoj
    public final int zzP(zzol zzolVar, zzab zzabVar) throws zzos {
        if (!zzbi.zzh(zzabVar.zzm)) {
            return 0;
        }
        boolean z = zzabVar.zzp != null;
        List<zzoh> zzaB = zzaB(zzolVar, zzabVar, z, false);
        List<zzoh> list = zzaB;
        if (z) {
            list = zzaB;
            if (zzaB.isEmpty()) {
                list = zzaB(zzolVar, zzabVar, false, false);
            }
        }
        if (list.isEmpty()) {
            return 1;
        }
        if (!zzoj.zzau(zzabVar)) {
            return 2;
        }
        zzoh zzohVar = list.get(0);
        boolean zzd2 = zzohVar.zzd(zzabVar);
        int i = true != zzohVar.zze(zzabVar) ? 8 : 16;
        int i2 = 0;
        if (zzd2) {
            List<zzoh> zzaB2 = zzaB(zzolVar, zzabVar, z, true);
            i2 = 0;
            if (!zzaB2.isEmpty()) {
                zzoh zzohVar2 = zzaB2.get(0);
                i2 = 0;
                if (zzohVar2.zzd(zzabVar)) {
                    i2 = 0;
                    if (zzohVar2.zze(zzabVar)) {
                        i2 = 32;
                    }
                }
            }
        }
        return (true != zzd2 ? 3 : 4) | i | i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0032, code lost:
        if (r11.zzs > r0.zzb) goto L6;
     */
    @Override // com.google.android.gms.internal.ads.zzoj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzfz zzQ(com.google.android.gms.internal.ads.zzoh r9, com.google.android.gms.internal.ads.zzab r10, com.google.android.gms.internal.ads.zzab r11) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = r11
            com.google.android.gms.internal.ads.zzfz r0 = r0.zzb(r1, r2)
            r12 = r0
            r0 = r12
            int r0 = r0.zze
            r13 = r0
            r0 = r11
            int r0 = r0.zzr
            r14 = r0
            r0 = r8
            com.google.android.gms.internal.ads.zzuu r0 = r0.zzi
            r15 = r0
            r0 = r14
            r1 = r15
            int r1 = r1.zza
            if (r0 > r1) goto L35
            r0 = r13
            r14 = r0
            r0 = r11
            int r0 = r0.zzs
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
            int r0 = zzS(r0, r1)
            r1 = r8
            com.google.android.gms.internal.ads.zzuu r1 = r1.zzi
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
            com.google.android.gms.internal.ads.zzfz r0 = new com.google.android.gms.internal.ads.zzfz
            r1 = r0
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r14
            r6 = r13
            r1.<init>(r2, r3, r4, r5, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzuv.zzQ(com.google.android.gms.internal.ads.zzoh, com.google.android.gms.internal.ads.zzab, com.google.android.gms.internal.ads.zzab):com.google.android.gms.internal.ads.zzfz");
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final zzfz zzR(zzhr zzhrVar) throws zzgg {
        zzfz zzR = super.zzR(zzhrVar);
        this.zzg.zzf(zzhrVar.zza, zzR);
        return zzR;
    }

    public final void zzT() {
        this.zzr = true;
        if (!this.zzp) {
            this.zzp = true;
            this.zzg.zzq(this.zzl);
            this.zzn = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    @TargetApi(17)
    public final zzod zzU(zzoh zzohVar, zzab zzabVar, MediaCrypto mediaCrypto, float f) {
        zzuu zzuuVar;
        Pair<Integer, Integer> zzb2;
        int i;
        int i2;
        int i3;
        Point point;
        zzuq zzuqVar = this.zzm;
        if (zzuqVar != null && zzuqVar.zza != zzohVar.zzf) {
            zzaE();
        }
        String str = zzohVar.zzc;
        zzab[] zzI = zzI();
        int i4 = zzabVar.zzr;
        int i5 = zzabVar.zzs;
        int zzS = zzS(zzohVar, zzabVar);
        int length = zzI.length;
        if (length == 1) {
            int i6 = zzS;
            if (zzS != -1) {
                int zzaA = zzaA(zzohVar, zzabVar);
                i6 = zzS;
                if (zzaA != -1) {
                    i6 = Math.min((int) (zzS * 1.5f), zzaA);
                }
            }
            zzuuVar = new zzuu(i4, i5, i6);
        } else {
            int i7 = 0;
            boolean z = false;
            int i8 = i5;
            while (i7 < length) {
                zzab zzabVar2 = zzI[i7];
                zzab zzabVar3 = zzabVar2;
                if (zzabVar.zzy != null) {
                    zzabVar3 = zzabVar2;
                    if (zzabVar2.zzy == null) {
                        zzz zzb3 = zzabVar2.zzb();
                        zzb3.zzy(zzabVar.zzy);
                        zzabVar3 = zzb3.zzY();
                    }
                }
                int i9 = i4;
                int i10 = i8;
                int i11 = zzS;
                boolean z2 = z;
                if (zzohVar.zzb(zzabVar, zzabVar3).zzd != 0) {
                    int i12 = zzabVar3.zzr;
                    z2 = z | (i12 == -1 || zzabVar3.zzs == -1);
                    i9 = Math.max(i4, i12);
                    i10 = Math.max(i8, zzabVar3.zzs);
                    i11 = Math.max(zzS, zzS(zzohVar, zzabVar3));
                }
                i7++;
                i4 = i9;
                i8 = i10;
                zzS = i11;
                z = z2;
            }
            if (z) {
                Log.w("MediaCodecVideoRenderer", C0082b.m8757e(66, "Resolutions unknown. Codec max resolution: ", i4, "x", i8));
                int i13 = zzabVar.zzs;
                int i14 = zzabVar.zzr;
                int i15 = i13 > i14 ? i13 : i14;
                int i16 = i13 <= i14 ? i13 : i14;
                float f2 = i16 / i15;
                int[] iArr = zzb;
                for (int i17 = 0; i17 < 9; i17++) {
                    int i18 = iArr[i17];
                    int i19 = (int) (i18 * f2);
                    if (i18 <= i15 || i19 <= i16) {
                        break;
                    } else if (zzfn.zza >= 21) {
                        int i20 = i13 <= i14 ? i18 : i19;
                        if (i13 <= i14) {
                            i18 = i19;
                        }
                        Point zza = zzohVar.zza(i20, i18);
                        if (zzohVar.zzf(zza.x, zza.y, zzabVar.zzt)) {
                            point = zza;
                            break;
                        }
                    } else {
                        try {
                            int zze = zzfn.zze(i18, 16) * 16;
                            int zze2 = zzfn.zze(i19, 16) * 16;
                            if (zze * zze2 <= zzoy.zza()) {
                                int i21 = i13 <= i14 ? zze : zze2;
                                if (i13 <= i14) {
                                    zze = zze2;
                                }
                                point = new Point(i21, zze);
                            }
                        } catch (zzos e) {
                        }
                    }
                }
                point = null;
                i2 = i4;
                i = i8;
                i3 = zzS;
                if (point != null) {
                    i2 = Math.max(i4, point.x);
                    i = Math.max(i8, point.y);
                    zzz zzb4 = zzabVar.zzb();
                    zzb4.zzX(i2);
                    zzb4.zzF(i);
                    i3 = Math.max(zzS, zzaA(zzohVar, zzb4.zzY()));
                    Log.w("MediaCodecVideoRenderer", C0082b.m8757e(57, "Codec max resolution adjusted to: ", i2, "x", i));
                }
            } else {
                i3 = zzS;
                i = i8;
                i2 = i4;
            }
            zzuuVar = new zzuu(i2, i, i3);
        }
        this.zzi = zzuuVar;
        boolean z3 = this.zzh;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", zzabVar.zzr);
        mediaFormat.setInteger("height", zzabVar.zzs);
        zzer.zzb(mediaFormat, zzabVar.zzo);
        float f3 = zzabVar.zzt;
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        zzer.zza(mediaFormat, "rotation-degrees", zzabVar.zzu);
        zzm zzmVar = zzabVar.zzy;
        if (zzmVar != null) {
            zzer.zza(mediaFormat, "color-transfer", zzmVar.zzd);
            zzer.zza(mediaFormat, "color-standard", zzmVar.zzb);
            zzer.zza(mediaFormat, "color-range", zzmVar.zzc);
            byte[] bArr = zzmVar.zze;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(zzabVar.zzm) && (zzb2 = zzoy.zzb(zzabVar)) != null) {
            zzer.zza(mediaFormat, Scopes.PROFILE, ((Integer) zzb2.first).intValue());
        }
        mediaFormat.setInteger("max-width", zzuuVar.zza);
        mediaFormat.setInteger("max-height", zzuuVar.zzb);
        zzer.zza(mediaFormat, "max-input-size", zzuuVar.zzc);
        if (zzfn.zza >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z3) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (this.zzl == null) {
            if (!zzaG(zzohVar)) {
                throw new IllegalStateException();
            }
            if (this.zzm == null) {
                this.zzm = zzuq.zza(this.zze, zzohVar.zzf);
            }
            this.zzl = this.zzm;
        }
        return zzod.zzb(zzohVar, mediaFormat, zzabVar, this.zzl, null);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final List<zzoh> zzV(zzol zzolVar, zzab zzabVar, boolean z) throws zzos {
        return zzaB(zzolVar, zzabVar, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzW(Exception exc) {
        zzep.zza("MediaCodecVideoRenderer", "Video codec error", exc);
        this.zzg.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzX(String str, long j, long j2) {
        this.zzg.zza(str, j, j2);
        this.zzj = zzaz(str);
        zzoh zzak = zzak();
        Objects.requireNonNull(zzak);
        boolean z = false;
        if (zzfn.zza >= 29) {
            z = false;
            if ("video/x-vnd.on2.vp9".equals(zzak.zzb)) {
                MediaCodecInfo.CodecProfileLevel[] zzg = zzak.zzg();
                int length = zzg.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (zzg[i].profile == 16384) {
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

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzY(String str) {
        this.zzg.zzb(str);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzZ(zzab zzabVar, MediaFormat mediaFormat) {
        zzof zzai = zzai();
        if (zzai != null) {
            zzai.zzq(this.zzo);
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
        float f = zzabVar.zzv;
        this.zzF = f;
        if (zzfn.zza >= 21) {
            int i = zzabVar.zzu;
            if (i == 90 || i == 270) {
                int i2 = this.zzC;
                this.zzC = integer;
                this.zzD = i2;
                this.zzF = 1.0f / f;
            }
        } else {
            this.zzE = zzabVar.zzu;
        }
        this.zzf.zze(zzabVar.zzt);
    }

    public final void zzaa(zzof zzofVar, int i, long j) {
        zzaC();
        zzfl.zza("releaseOutputBuffer");
        zzofVar.zzn(i, true);
        zzfl.zzb();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        ((zzoj) this).zza.zze++;
        this.zzw = 0;
        zzT();
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzab() {
        this.zzp = false;
        int i = zzfn.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzac(zzda zzdaVar) throws zzgg {
        this.zzx++;
        int i = zzfn.zza;
    }

    /* JADX WARN: Type inference failed for: r0v127, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzoj
    public final boolean zzae(long j, long j2, zzof zzofVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzgg {
        int zzd2;
        Objects.requireNonNull(zzofVar);
        if (this.zzs == -9223372036854775807L) {
            this.zzs = j;
        }
        if (j3 != this.zzy) {
            this.zzf.zzf(j3);
            this.zzy = j3;
        }
        long zzah = zzah();
        long j4 = j3 - zzah;
        if (z && !z2) {
            zzaw(zzofVar, i, j4);
            return true;
        }
        float zzag = zzag();
        int zzbm = zzbm();
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        ?? r0 = (long) ((j3 - j) / zzag);
        char c = r0;
        if (zzbm == 2) {
            c = r0 - (elapsedRealtime - j2);
        }
        if (this.zzl == this.zzm) {
            if (!zzaF(c)) {
                return false;
            }
            zzaw(zzofVar, i, j4);
            zzay(c);
            return true;
        }
        long j5 = this.zzz;
        boolean z3 = this.zzr ? !this.zzp : !(zzbm != 2 && !this.zzq);
        if (this.zzt == -9223372036854775807L && j >= zzah && (z3 || (zzbm == 2 && zzaF(c) && elapsedRealtime - j5 > 100000))) {
            long nanoTime = System.nanoTime();
            if (zzfn.zza >= 21) {
                zzav(zzofVar, i, j4, nanoTime);
            } else {
                zzaa(zzofVar, i, j4);
            }
            zzay(c);
            return true;
        } else if (zzbm != 2 || j == this.zzs) {
            return false;
        } else {
            long nanoTime2 = System.nanoTime();
            long zza = this.zzf.zza((c * 1000) + nanoTime2);
            long j6 = (zza - nanoTime2) / 1000;
            long j7 = this.zzt;
            if (j6 < -500000 && !z2 && (zzd2 = zzd(j)) != 0) {
                zzfy zzfyVar = ((zzoj) this).zza;
                zzfyVar.zzi++;
                int i4 = this.zzx + zzd2;
                if (j7 != -9223372036854775807L) {
                    zzfyVar.zzf += i4;
                } else {
                    zzax(i4);
                }
                zzar();
                return false;
            } else if (zzaF(j6) && !z2) {
                if (j7 != -9223372036854775807L) {
                    zzaw(zzofVar, i, j4);
                } else {
                    zzfl.zza("dropVideoBuffer");
                    zzofVar.zzn(i, false);
                    zzfl.zzb();
                    zzax(1);
                }
                zzay(j6);
                return true;
            } else if (zzfn.zza >= 21) {
                if (j6 >= 50000) {
                    return false;
                }
                zzav(zzofVar, i, j4, zza);
                zzay(j6);
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
                zzaa(zzofVar, i, j4);
                zzay(j6);
                return true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final zzog zzaj(Throwable th, zzoh zzohVar) {
        return new zzut(th, zzohVar, this.zzl);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    @TargetApi(29)
    public final void zzal(zzda zzdaVar) throws zzgg {
        if (!this.zzk) {
            return;
        }
        ByteBuffer byteBuffer = zzdaVar.zze;
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
        zzof zzai = zzai();
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        zzai.zzp(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzan(long j) {
        super.zzan(j);
        this.zzx--;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final void zzap() {
        super.zzap();
        this.zzx = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final boolean zzat(zzoh zzohVar) {
        return this.zzl != null || zzaG(zzohVar);
    }

    public final void zzav(zzof zzofVar, int i, long j, long j2) {
        zzaC();
        zzfl.zza("releaseOutputBuffer");
        zzofVar.zzm(i, j2);
        zzfl.zzb();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        ((zzoj) this).zza.zze++;
        this.zzw = 0;
        zzT();
    }

    public final void zzaw(zzof zzofVar, int i, long j) {
        zzfl.zza("skipVideoBuffer");
        zzofVar.zzn(i, false);
        zzfl.zzb();
        ((zzoj) this).zza.zzf++;
    }

    public final void zzax(int i) {
        zzfy zzfyVar = ((zzoj) this).zza;
        zzfyVar.zzg += i;
        this.zzv += i;
        int i2 = this.zzw + i;
        this.zzw = i2;
        zzfyVar.zzh = Math.max(i2, zzfyVar.zzh);
    }

    public final void zzay(long j) {
        zzfy zzfyVar = ((zzoj) this).zza;
        zzfyVar.zzj += j;
        zzfyVar.zzk++;
        this.zzA += j;
        this.zzB++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v56, types: [android.view.Surface] */
    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzih
    public final void zzo(int i, Object obj) throws zzgg {
        if (i != 1) {
            if (i == 7) {
                this.zzI = (zzuw) obj;
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
                this.zzf.zzl(((Integer) obj).intValue());
                return;
            } else {
                this.zzo = ((Integer) obj).intValue();
                zzof zzai = zzai();
                if (zzai == null) {
                    return;
                }
                zzai.zzq(this.zzo);
                return;
            }
        }
        zzuq zzuqVar = obj instanceof Surface ? (Surface) obj : null;
        zzuq zzuqVar2 = zzuqVar;
        if (zzuqVar == null) {
            zzuqVar2 = this.zzm;
            if (zzuqVar2 == null) {
                zzoh zzak = zzak();
                zzuqVar2 = zzuqVar;
                if (zzak != null) {
                    zzuqVar2 = zzuqVar;
                    if (zzaG(zzak)) {
                        zzuqVar2 = zzuq.zza(this.zze, zzak.zzf);
                        this.zzm = zzuqVar2;
                    }
                }
            }
        }
        if (this.zzl == zzuqVar2) {
            if (zzuqVar2 == null || zzuqVar2 == this.zzm) {
                return;
            }
            zzaD();
            if (!this.zzn) {
                return;
            }
            this.zzg.zzq(this.zzl);
            return;
        }
        this.zzl = zzuqVar2;
        this.zzf.zzk(zzuqVar2);
        this.zzn = false;
        int zzbm = zzbm();
        zzof zzai2 = zzai();
        if (zzai2 != null) {
            if (zzfn.zza < 23 || zzuqVar2 == null || this.zzj) {
                zzao();
                zzam();
            } else {
                zzai2.zzo(zzuqVar2);
            }
        }
        if (zzuqVar2 == null || zzuqVar2 == this.zzm) {
            this.zzG = null;
            this.zzp = false;
            int i2 = zzfn.zza;
            return;
        }
        zzaD();
        this.zzp = false;
        int i3 = zzfn.zza;
        if (zzbm != 2) {
            return;
        }
        this.zzt = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzq() {
        this.zzG = null;
        this.zzp = false;
        int i = zzfn.zza;
        this.zzn = false;
        this.zzf.zzc();
        try {
            super.zzq();
        } finally {
            this.zzg.zzc(((zzoj) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzr(boolean z, boolean z2) throws zzgg {
        super.zzr(z, z2);
        zzk();
        this.zzg.zze(((zzoj) this).zza);
        this.zzf.zzd();
        this.zzq = z2;
        this.zzr = false;
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    public final void zzs(long j, boolean z) throws zzgg {
        super.zzs(j, z);
        this.zzp = false;
        int i = zzfn.zza;
        this.zzf.zzh();
        this.zzy = -9223372036854775807L;
        this.zzs = -9223372036854775807L;
        this.zzw = 0;
        this.zzt = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzoj, com.google.android.gms.internal.ads.zzfx
    @TargetApi(17)
    public final void zzt() {
        try {
            super.zzt();
            if (this.zzm == null) {
                return;
            }
            zzaE();
        } catch (Throwable th) {
            if (this.zzm != null) {
                zzaE();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public final void zzu() {
        this.zzv = 0;
        this.zzu = SystemClock.elapsedRealtime();
        this.zzz = SystemClock.elapsedRealtime() * 1000;
        this.zzA = 0L;
        this.zzB = 0;
        this.zzf.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public final void zzv() {
        this.zzt = -9223372036854775807L;
        if (this.zzv > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzg.zzd(this.zzv, elapsedRealtime - this.zzu);
            this.zzv = 0;
            this.zzu = elapsedRealtime;
        }
        int i = this.zzB;
        if (i != 0) {
            this.zzg.zzr(this.zzA, i);
            this.zzA = 0L;
            this.zzB = 0;
        }
        this.zzf.zzj();
    }
}
