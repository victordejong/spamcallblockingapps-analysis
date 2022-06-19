package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoj.class */
public abstract class zzoj extends zzfx {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private ArrayDeque<zzoh> zzB;
    private zzoi zzC;
    private zzoh zzD;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    private boolean zzI;
    private boolean zzJ;
    private boolean zzK;
    private boolean zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private zzoa zzP;
    private ByteBuffer zzT;
    private boolean zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private boolean zzY;
    private boolean zzZ;
    public zzfy zza;
    private boolean zzad;
    private boolean zzae;
    private boolean zzaf;
    private boolean zzai;
    private boolean zzaj;
    private boolean zzak;
    private int zzan;
    private zznl zzao;
    private zznl zzap;
    private final zzoe zzc;
    private final zzol zzd;
    private final float zze;
    private final zznz zzi;
    private zzab zzp;
    private zzab zzq;
    private MediaCrypto zzr;
    private boolean zzs;
    private zzof zzw;
    private zzab zzx;
    private MediaFormat zzy;
    private boolean zzz;
    private final zzda zzf = new zzda(0, 0);
    private final zzda zzg = new zzda(0, 0);
    private final zzda zzh = new zzda(2, 0);
    private final zzfj<zzab> zzj = new zzfj<>(10);
    private final ArrayList<Long> zzk = new ArrayList<>();
    private final MediaCodec.BufferInfo zzl = new MediaCodec.BufferInfo();
    private float zzu = 1.0f;
    private float zzv = 1.0f;
    private long zzt = -9223372036854775807L;
    private final long[] zzm = new long[10];
    private final long[] zzn = new long[10];
    private final long[] zzo = new long[10];
    private long zzal = -9223372036854775807L;
    private long zzam = -9223372036854775807L;
    private float zzA = -1.0f;
    private int zzE = 0;
    private int zzaa = 0;
    private int zzR = -1;
    private int zzS = -1;
    private long zzQ = -9223372036854775807L;
    private long zzag = -9223372036854775807L;
    private long zzah = -9223372036854775807L;
    private int zzab = 0;
    private int zzac = 0;

    public zzoj(int i, zzoe zzoeVar, zzol zzolVar, boolean z, float f) {
        super(i);
        this.zzc = zzoeVar;
        Objects.requireNonNull(zzolVar);
        this.zzd = zzolVar;
        this.zze = f;
        zznz zznzVar = new zznz();
        this.zzi = zznzVar;
        zznzVar.zzi(0);
        zznzVar.zzb.order(ByteOrder.nativeOrder());
    }

    private final void zzS() {
        this.zzY = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzX = false;
        this.zzW = false;
    }

    private final void zzT() throws zzgg {
        if (this.zzad) {
            this.zzab = 1;
            this.zzac = 3;
            return;
        }
        zzao();
        zzam();
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    private final boolean zzaA() throws zzgg {
        int i;
        int i2;
        zzof zzofVar = this.zzw;
        if (zzofVar == null || this.zzab == 2 || this.zzai) {
            return false;
        }
        if (this.zzR < 0) {
            int zza = zzofVar.zza();
            this.zzR = zza;
            if (zza < 0) {
                return false;
            }
            this.zzg.zzb = this.zzw.zzf(zza);
            this.zzg.zzb();
        }
        if (this.zzab == 1) {
            if (!this.zzO) {
                this.zzae = true;
                this.zzw.zzj(this.zzR, 0, 0, 0L, 4);
                zzaw();
            }
            this.zzab = 2;
            return false;
        } else if (this.zzM) {
            this.zzM = false;
            this.zzg.zzb.put(zzb);
            this.zzw.zzj(this.zzR, 0, 38, 0L, 0);
            zzaw();
            this.zzad = true;
            return true;
        } else {
            if (this.zzaa == 1) {
                for (int i3 = 0; i3 < this.zzx.zzo.size(); i3++) {
                    this.zzg.zzb.put(this.zzx.zzo.get(i3));
                }
                this.zzaa = 2;
            }
            int position = this.zzg.zzb.position();
            zzhr zzh = zzh();
            try {
                int zzbn = zzbn(zzh, this.zzg, 0);
                if (zzF()) {
                    this.zzah = this.zzag;
                }
                if (zzbn == -3) {
                    return false;
                }
                if (zzbn == -5) {
                    if (this.zzaa == 2) {
                        this.zzg.zzb();
                        this.zzaa = 1;
                    }
                    zzR(zzh);
                    return true;
                } else if (this.zzg.zzg()) {
                    if (this.zzaa == 2) {
                        this.zzg.zzb();
                        this.zzaa = 1;
                    }
                    this.zzai = true;
                    if (!this.zzad) {
                        zzav();
                        return false;
                    }
                    try {
                        if (this.zzO) {
                            return false;
                        }
                        this.zzae = true;
                        this.zzw.zzj(this.zzR, 0, 0, 0L, 4);
                        zzaw();
                        return false;
                    } catch (MediaCodec.CryptoException e) {
                        throw zzbo(e, this.zzp, false, zzk.zzb(e.getErrorCode()));
                    }
                } else if (!this.zzad && !this.zzg.zzh()) {
                    this.zzg.zzb();
                    if (this.zzaa != 2) {
                        return true;
                    }
                    this.zzaa = 1;
                    return true;
                } else {
                    boolean zzk = this.zzg.zzk();
                    if (zzk) {
                        this.zzg.zza.zzb(position);
                    }
                    if (this.zzF && !zzk) {
                        ByteBuffer byteBuffer = this.zzg.zzb;
                        byte[] bArr = zzeu.zza;
                        int position2 = byteBuffer.position();
                        int i4 = 0;
                        int i5 = 0;
                        while (true) {
                            int i6 = i4 + 1;
                            if (i6 >= position2) {
                                byteBuffer.clear();
                                break;
                            }
                            int i7 = byteBuffer.get(i4) & 255;
                            if (i5 == 3) {
                                i2 = i5;
                                i = i7;
                                if (i7 == 1) {
                                    if ((byteBuffer.get(i6) & 31) == 7) {
                                        ByteBuffer duplicate = byteBuffer.duplicate();
                                        duplicate.position(i4 - 3);
                                        duplicate.limit(position2);
                                        byteBuffer.position(0);
                                        byteBuffer.put(duplicate);
                                        break;
                                    }
                                    i = 1;
                                    i2 = i5;
                                }
                            } else {
                                i2 = i5;
                                i = i7;
                                if (i7 == 0) {
                                    i2 = i5 + 1;
                                    i = i7;
                                }
                            }
                            i5 = i2;
                            if (i != 0) {
                                i5 = 0;
                            }
                            i4 = i6;
                        }
                        if (this.zzg.zzb.position() == 0) {
                            return true;
                        }
                        this.zzF = false;
                    }
                    zzda zzdaVar = this.zzg;
                    char c = zzdaVar.zzd;
                    zzoa zzoaVar = this.zzP;
                    if (zzoaVar != null) {
                        c = zzoaVar.zzb(this.zzp, zzdaVar);
                        this.zzag = Math.max(this.zzag, this.zzP.zza(this.zzp));
                    }
                    if (this.zzg.zzf()) {
                        this.zzk.add(Long.valueOf(c));
                    }
                    if (this.zzak) {
                        this.zzj.zzd(c, this.zzp);
                        this.zzak = false;
                    }
                    this.zzag = Math.max(this.zzag, (long) c);
                    this.zzg.zzj();
                    if (this.zzg.zze()) {
                        zzal(this.zzg);
                    }
                    zzac(this.zzg);
                    try {
                        if (zzk) {
                            this.zzw.zzk(this.zzR, 0, this.zzg.zza, c, 0);
                        } else {
                            this.zzw.zzj(this.zzR, 0, this.zzg.zzb.limit(), c, 0);
                        }
                        zzaw();
                        this.zzad = true;
                        this.zzaa = 0;
                        this.zza.zzc++;
                        return true;
                    } catch (MediaCodec.CryptoException e2) {
                        throw zzbo(e2, this.zzp, false, zzk.zzb(e2.getErrorCode()));
                    }
                }
            } catch (zzcz e3) {
                zzW(e3);
                zzaC(0);
                zzaa();
                return true;
            }
        }
    }

    private final boolean zzaB() {
        return this.zzS >= 0;
    }

    private final boolean zzaC(int i) throws zzgg {
        zzhr zzh = zzh();
        this.zzf.zzb();
        int zzbn = zzbn(zzh, this.zzf, i | 4);
        if (zzbn == -5) {
            zzR(zzh);
            return true;
        } else if (zzbn != -4 || !this.zzf.zzg()) {
            return false;
        } else {
            this.zzai = true;
            zzav();
            return false;
        }
    }

    private final boolean zzaD(long j) {
        return this.zzt == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.zzt;
    }

    private final boolean zzaE(zzab zzabVar) throws zzgg {
        if (zzfn.zza < 23 || this.zzw == null || this.zzac == 3 || zzbm() == 0) {
            return true;
        }
        float zzO = zzO(this.zzv, zzabVar, zzI());
        float f = this.zzA;
        if (f == zzO) {
            return true;
        }
        if (zzO == -1.0f) {
            zzT();
            return false;
        } else if (f == -1.0f && zzO <= this.zze) {
            return true;
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", zzO);
            this.zzw.zzp(bundle);
            this.zzA = zzO;
            return true;
        }
    }

    private final void zzaa() {
        try {
            this.zzw.zzi();
        } finally {
            zzap();
        }
    }

    public static boolean zzau(zzab zzabVar) {
        return zzabVar.zzF == 0;
    }

    @TargetApi(23)
    private final void zzav() throws zzgg {
        int i = this.zzac;
        if (i == 1) {
            zzaa();
        } else if (i == 2) {
            zzaa();
            zzay();
        } else if (i != 3) {
            this.zzaj = true;
            zzad();
        } else {
            zzao();
            zzam();
        }
    }

    private final void zzaw() {
        this.zzR = -1;
        this.zzg.zzb = null;
    }

    private final void zzax() {
        this.zzS = -1;
        this.zzT = null;
    }

    private final void zzay() throws zzgg {
        try {
            throw null;
        } catch (MediaCryptoException e) {
            throw zzbo(e, this.zzp, false, 6006);
        }
    }

    @TargetApi(23)
    private final boolean zzaz() throws zzgg {
        if (!this.zzad) {
            zzay();
            return true;
        }
        this.zzab = 1;
        if (this.zzG || this.zzI) {
            this.zzac = 3;
            return false;
        }
        this.zzac = 2;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzil
    public void zzC(float f, float f2) throws zzgg {
        this.zzu = f;
        this.zzv = f2;
        zzaE(this.zzx);
    }

    /* JADX WARN: Code restructure failed: missing block: B:236:0x0456, code lost:
        if (r21.zzab == 2) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x0681, code lost:
        if (r21.zzq != null) goto L348;
     */
    /* JADX WARN: Removed duplicated region for block: B:195:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0816 A[LOOP:2: B:168:0x0329->B:411:0x0816, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:415:0x082b  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x08c8  */
    /* JADX WARN: Removed duplicated region for block: B:449:0x08e0  */
    /* JADX WARN: Removed duplicated region for block: B:506:0x0813 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:509:0x0735 A[EDGE_INSN: B:509:0x0735->B:370:0x0735 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0839 A[EDGE_INSN: B:514:0x0839->B:419:0x0839 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzil
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzK(long r17, long r19) throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 2375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoj.zzK(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public boolean zzL() {
        return this.zzaj;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public boolean zzM() {
        boolean z;
        if (this.zzp != null) {
            z = true;
            if (!zzH()) {
                z = true;
                if (!zzaB()) {
                    if (this.zzQ != -9223372036854775807L && SystemClock.elapsedRealtime() < this.zzQ) {
                        return true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzim
    public final int zzN(zzab zzabVar) throws zzgg {
        try {
            return zzP(this.zzd, zzabVar);
        } catch (zzos e) {
            throw zzbo(e, zzabVar, false, 4002);
        }
    }

    public float zzO(float f, zzab zzabVar, zzab[] zzabVarArr) {
        throw null;
    }

    public abstract int zzP(zzol zzolVar, zzab zzabVar) throws zzos;

    public zzfz zzQ(zzoh zzohVar, zzab zzabVar, zzab zzabVar2) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
        if (zzaz() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0129, code lost:
        if (zzaz() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014e, code lost:
        if (zzaz() == false) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzfz zzR(com.google.android.gms.internal.ads.zzhr r9) throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoj.zzR(com.google.android.gms.internal.ads.zzhr):com.google.android.gms.internal.ads.zzfz");
    }

    public abstract zzod zzU(zzoh zzohVar, zzab zzabVar, MediaCrypto mediaCrypto, float f);

    public abstract List<zzoh> zzV(zzol zzolVar, zzab zzabVar, boolean z) throws zzos;

    public void zzW(Exception exc) {
        throw null;
    }

    public void zzX(String str, long j, long j2) {
        throw null;
    }

    public void zzY(String str) {
        throw null;
    }

    public void zzZ(zzab zzabVar, MediaFormat mediaFormat) throws zzgg {
        throw null;
    }

    public void zzab() {
    }

    public void zzac(zzda zzdaVar) throws zzgg {
        throw null;
    }

    public void zzad() throws zzgg {
    }

    public abstract boolean zzae(long j, long j2, zzof zzofVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzab zzabVar) throws zzgg;

    public boolean zzaf(zzab zzabVar) {
        return false;
    }

    public final float zzag() {
        return this.zzu;
    }

    public final long zzah() {
        return this.zzam;
    }

    public final zzof zzai() {
        return this.zzw;
    }

    public zzog zzaj(Throwable th, zzoh zzohVar) {
        return new zzog(th, zzohVar);
    }

    public final zzoh zzak() {
        return this.zzD;
    }

    public void zzal(zzda zzdaVar) throws zzgg {
    }

    /* JADX WARN: Code restructure failed: missing block: B:166:0x040f, code lost:
        if ("stvm8".equals(r0) == false) goto L173;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0332 A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03be A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03df A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03fa A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x043b A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x045c A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04ce A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04fc A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0516 A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x057d A[Catch: Exception -> 0x05d5, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0592 A[Catch: Exception -> 0x05d5, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:256:0x05cf A[Catch: Exception -> 0x05d5, TRY_ENTER, TryCatch #4 {Exception -> 0x05d5, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:65:0x01b1, B:67:0x01cb, B:68:0x01d6, B:70:0x01e4, B:71:0x01fe, B:73:0x0209, B:75:0x021a, B:76:0x0225, B:78:0x0231, B:80:0x023f, B:82:0x026e, B:85:0x0291, B:87:0x029c, B:89:0x02aa, B:91:0x02b4, B:93:0x02be, B:99:0x02d5, B:101:0x02e0, B:103:0x02eb, B:103:0x02eb, B:104:0x02ee, B:106:0x02f9, B:108:0x0303, B:110:0x030d, B:115:0x0320, B:118:0x0332, B:120:0x033e, B:125:0x0352, B:130:0x0366, B:132:0x0371, B:137:0x0383, B:139:0x038f, B:141:0x039a, B:146:0x03b1, B:149:0x03be, B:154:0x03d2, B:157:0x03df, B:163:0x03fa, B:165:0x0408, B:168:0x0415, B:170:0x041d, B:174:0x042e, B:177:0x043b, B:182:0x044f, B:185:0x045c, B:187:0x0467, B:189:0x0473, B:191:0x0481, B:193:0x048b, B:195:0x0495, B:197:0x049f, B:199:0x04a9, B:204:0x04bc, B:207:0x04ce, B:209:0x04d6, B:214:0x04ea, B:217:0x04fc, B:223:0x0516, B:228:0x0527, B:230:0x0531, B:233:0x053e, B:235:0x0547, B:237:0x0553, B:241:0x0560, B:243:0x057d, B:245:0x058b, B:247:0x0592, B:249:0x059e, B:256:0x05cf, B:258:0x05d4), top: B:280:0x012c, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzam() throws com.google.android.gms.internal.ads.zzgg {
        /*
            Method dump skipped, instructions count: 1624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoj.zzam():void");
    }

    public void zzan(long j) {
        while (true) {
            int i = this.zzan;
            if (i == 0 || j < this.zzo[0]) {
                return;
            }
            long[] jArr = this.zzm;
            this.zzal = jArr[0];
            this.zzam = this.zzn[0];
            int i2 = i - 1;
            this.zzan = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.zzn;
            System.arraycopy(jArr2, 1, jArr2, 0, this.zzan);
            long[] jArr3 = this.zzo;
            System.arraycopy(jArr3, 1, jArr3, 0, this.zzan);
            zzab();
        }
    }

    public final void zzao() {
        try {
            zzof zzofVar = this.zzw;
            if (zzofVar != null) {
                zzofVar.zzl();
                this.zza.zzb++;
                zzY(this.zzD.zza);
            }
        } finally {
            this.zzw = null;
            this.zzr = null;
            this.zzao = null;
            zzaq();
        }
    }

    public void zzap() {
        zzaw();
        zzax();
        this.zzQ = -9223372036854775807L;
        this.zzae = false;
        this.zzad = false;
        this.zzM = false;
        this.zzN = false;
        this.zzU = false;
        this.zzV = false;
        this.zzk.clear();
        this.zzag = -9223372036854775807L;
        this.zzah = -9223372036854775807L;
        zzoa zzoaVar = this.zzP;
        if (zzoaVar != null) {
            zzoaVar.zzc();
        }
        this.zzab = 0;
        this.zzac = 0;
        this.zzaa = this.zzZ ? 1 : 0;
    }

    public final void zzaq() {
        zzap();
        this.zzP = null;
        this.zzB = null;
        this.zzD = null;
        this.zzx = null;
        this.zzy = null;
        this.zzz = false;
        this.zzaf = false;
        this.zzA = -1.0f;
        this.zzE = 0;
        this.zzF = false;
        this.zzG = false;
        this.zzH = false;
        this.zzI = false;
        this.zzJ = false;
        this.zzK = false;
        this.zzL = false;
        this.zzO = false;
        this.zzZ = false;
        this.zzaa = 0;
        this.zzs = false;
    }

    public final boolean zzar() throws zzgg {
        boolean zzas = zzas();
        if (zzas) {
            zzam();
        }
        return zzas;
    }

    public final boolean zzas() {
        if (this.zzw == null) {
            return false;
        }
        if (this.zzac == 3 || this.zzG || ((this.zzH && !this.zzaf) || (this.zzI && this.zzae))) {
            zzao();
            return true;
        }
        zzaa();
        return false;
    }

    public boolean zzat(zzoh zzohVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzim
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public void zzq() {
        this.zzp = null;
        this.zzal = -9223372036854775807L;
        this.zzam = -9223372036854775807L;
        this.zzan = 0;
        zzas();
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public void zzr(boolean z, boolean z2) throws zzgg {
        this.zza = new zzfy();
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public void zzs(long j, boolean z) throws zzgg {
        this.zzai = false;
        this.zzaj = false;
        if (this.zzW) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzX = false;
        } else {
            zzar();
        }
        if (this.zzj.zza() > 0) {
            this.zzak = true;
        }
        this.zzj.zze();
        int i = this.zzan;
        if (i != 0) {
            int i2 = i - 1;
            this.zzam = this.zzn[i2];
            this.zzal = this.zzm[i2];
            this.zzan = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public void zzt() {
        try {
            zzS();
            zzao();
        } finally {
            this.zzap = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfx
    public final void zzw(zzab[] zzabVarArr, long j, long j2) throws zzgg {
        boolean z = true;
        if (this.zzam == -9223372036854775807L) {
            if (this.zzal != -9223372036854775807L) {
                z = false;
            }
            zzdy.zzf(z);
            this.zzal = j;
            this.zzam = j2;
            return;
        }
        int i = this.zzan;
        if (i == 10) {
            long j3 = this.zzn[9];
            StringBuilder sb = new StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j3);
            Log.w("MediaCodecRenderer", sb.toString());
        } else {
            this.zzan = i + 1;
        }
        long[] jArr = this.zzm;
        int i2 = this.zzan - 1;
        jArr[i2] = j;
        this.zzn[i2] = j2;
        this.zzo[i2] = this.zzag;
    }
}
