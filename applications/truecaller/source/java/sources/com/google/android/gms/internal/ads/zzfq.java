package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import com.huawei.hms.support.api.entity.auth.AuthCode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfq.class */
public abstract class zzfq extends zzadv {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    private ArrayDeque<zzfo> zzA;
    private zzfp zzB;
    private zzfo zzC;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private boolean zzH;
    private boolean zzI;
    private boolean zzJ;
    private boolean zzK;
    private boolean zzL;
    private boolean zzM;
    private boolean zzN;
    private zzfk zzO;
    private ByteBuffer zzS;
    private boolean zzT;
    private boolean zzU;
    private boolean zzV;
    private boolean zzW;
    private boolean zzX;
    private boolean zzY;
    public zzaz zza;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private boolean zzah;
    private boolean zzai;
    private boolean zzaj;
    private int zzam;
    private zzgh zzan;
    private zzfg zzao;
    private zzfg zzap;
    private final zzfm zzc;
    private final zzfs zzd;
    private final float zze;
    private final zzfj zzi;
    private zzafv zzp;
    private zzafv zzq;
    private MediaCrypto zzr;
    private boolean zzs;
    private zzafv zzw;
    private MediaFormat zzx;
    private boolean zzy;
    private final zzaf zzf = new zzaf(0, 0);
    private final zzaf zzg = new zzaf(0, 0);
    private final zzaf zzh = new zzaf(2, 0);
    private final zzamm<zzafv> zzj = new zzamm<>(10);
    private final ArrayList<Long> zzk = new ArrayList<>();
    private final MediaCodec.BufferInfo zzl = new MediaCodec.BufferInfo();
    private float zzu = 1.0f;
    private float zzv = 1.0f;
    private long zzt = -9223372036854775807L;
    private final long[] zzm = new long[10];
    private final long[] zzn = new long[10];
    private final long[] zzo = new long[10];
    private long zzak = -9223372036854775807L;
    private long zzal = -9223372036854775807L;
    private float zzz = -1.0f;
    private int zzD = 0;
    private int zzZ = 0;
    private int zzQ = -1;
    private int zzR = -1;
    private long zzP = -9223372036854775807L;
    private long zzaf = -9223372036854775807L;
    private long zzag = -9223372036854775807L;
    private int zzaa = 0;
    private int zzab = 0;

    public zzfq(int i, zzfm zzfmVar, zzfs zzfsVar, boolean z, float f) {
        super(i);
        this.zzc = zzfmVar;
        Objects.requireNonNull(zzfsVar);
        this.zzd = zzfsVar;
        this.zze = f;
        zzfj zzfjVar = new zzfj();
        this.zzi = zzfjVar;
        zzfjVar.zzi(0);
        zzfjVar.zzb.order(ByteOrder.nativeOrder());
    }

    private final void zzA() {
        this.zzQ = -1;
        this.zzg.zzb = null;
    }

    public static boolean zzY(zzafv zzafvVar) {
        return zzafvVar.zzE == 0;
    }

    private final void zza() {
        this.zzX = false;
        this.zzi.zza();
        this.zzh.zza();
        this.zzW = false;
        this.zzV = false;
    }

    private final boolean zzaA(zzafv zzafvVar) throws zzaeg {
        if (zzamq.zza < 23 || this.zzan == null || this.zzab == 3 || zzaf() == 0) {
            return true;
        }
        float zzj = zzj(this.zzv, zzafvVar, zzau());
        float f = this.zzz;
        if (f == zzj) {
            return true;
        }
        if (zzj == -1.0f) {
            zzaC();
            return false;
        } else if (f == -1.0f && zzj <= this.zze) {
            return true;
        } else {
            Bundle bundle = new Bundle();
            bundle.putFloat("operating-rate", zzj);
            this.zzan.zzm(bundle);
            this.zzz = zzj;
            return true;
        }
    }

    private final boolean zzaB() throws zzaeg {
        if (!this.zzac) {
            zzaE();
            return true;
        }
        this.zzaa = 1;
        if (this.zzF || this.zzH) {
            this.zzab = 3;
            return false;
        }
        this.zzab = 2;
        return true;
    }

    private final void zzaC() throws zzaeg {
        if (this.zzac) {
            this.zzaa = 1;
            this.zzab = 3;
            return;
        }
        zzN();
        zzI();
    }

    private final void zzaD() throws zzaeg {
        int i = this.zzab;
        if (i == 1) {
            zzb();
        } else if (i == 2) {
            zzb();
            zzaE();
        } else if (i != 3) {
            this.zzai = true;
            zzD();
        } else {
            zzN();
            zzI();
        }
    }

    private final void zzaE() throws zzaeg {
        try {
            throw null;
        } catch (MediaCryptoException e) {
            throw zzaw(e, this.zzp, false, AuthCode.StatusCode.PERMISSION_EXPIRED);
        }
    }

    private final void zzaa() {
        this.zzR = -1;
        this.zzS = null;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    private final boolean zzab() throws zzaeg {
        int i;
        int i2;
        zzgh zzghVar = this.zzan;
        if (zzghVar == null || this.zzaa == 2 || this.zzah) {
            return false;
        }
        if (this.zzQ < 0) {
            int zza = zzghVar.zza();
            this.zzQ = zza;
            if (zza < 0) {
                return false;
            }
            this.zzg.zzb = this.zzan.zzd(zza);
            this.zzg.zza();
        }
        if (this.zzaa == 1) {
            if (!this.zzN) {
                this.zzad = true;
                this.zzan.zzf(this.zzQ, 0, 0, 0L, 4);
                zzA();
            }
            this.zzaa = 2;
            return false;
        } else if (this.zzL) {
            this.zzL = false;
            this.zzg.zzb.put(zzb);
            this.zzan.zzf(this.zzQ, 0, 38, 0L, 0);
            zzA();
            this.zzac = true;
            return true;
        } else {
            if (this.zzZ == 1) {
                for (int i3 = 0; i3 < this.zzw.zzn.size(); i3++) {
                    this.zzg.zzb.put(this.zzw.zzn.get(i3));
                }
                this.zzZ = 2;
            }
            int position = this.zzg.zzb.position();
            zzafw zzat = zzat();
            try {
                int zzax = zzax(zzat, this.zzg, 0);
                if (zzak()) {
                    this.zzag = this.zzaf;
                }
                if (zzax == -3) {
                    return false;
                }
                if (zzax == -5) {
                    if (this.zzZ == 2) {
                        this.zzg.zza();
                        this.zzZ = 1;
                    }
                    zzn(zzat);
                    return true;
                } else if (this.zzg.zzc()) {
                    if (this.zzZ == 2) {
                        this.zzg.zza();
                        this.zzZ = 1;
                    }
                    this.zzah = true;
                    if (!this.zzac) {
                        zzaD();
                        return false;
                    }
                    try {
                        if (this.zzN) {
                            return false;
                        }
                        this.zzad = true;
                        this.zzan.zzf(this.zzQ, 0, 0, 0L, 4);
                        zzA();
                        return false;
                    } catch (MediaCodec.CryptoException e) {
                        throw zzaw(e, this.zzp, false, zzadx.zze(e.getErrorCode()));
                    }
                } else if (!this.zzac && !this.zzg.zzd()) {
                    this.zzg.zza();
                    if (this.zzZ != 2) {
                        return true;
                    }
                    this.zzZ = 1;
                    return true;
                } else {
                    boolean zzj = this.zzg.zzj();
                    if (zzj) {
                        this.zzg.zza.zzc(position);
                    }
                    if (this.zzE && !zzj) {
                        ByteBuffer byteBuffer = this.zzg.zzb;
                        byte[] bArr = zzalw.zza;
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
                        this.zzE = false;
                    }
                    zzaf zzafVar = this.zzg;
                    char c = zzafVar.zzd;
                    zzfk zzfkVar = this.zzO;
                    if (zzfkVar != null) {
                        c = zzfkVar.zzb(this.zzp, zzafVar);
                        this.zzaf = Math.max(this.zzaf, this.zzO.zzc(this.zzp));
                    }
                    if (this.zzg.zzb()) {
                        this.zzk.add(Long.valueOf(c));
                    }
                    if (this.zzaj) {
                        this.zzj.zza(c, this.zzp);
                        this.zzaj = false;
                    }
                    this.zzaf = Math.max(this.zzaf, (long) c);
                    this.zzg.zzk();
                    if (this.zzg.zze()) {
                        zzU(this.zzg);
                    }
                    zzB(this.zzg);
                    try {
                        if (zzj) {
                            this.zzan.zzg(this.zzQ, 0, this.zzg.zza, c, 0);
                        } else {
                            this.zzan.zzf(this.zzQ, 0, this.zzg.zzb.limit(), c, 0);
                        }
                        zzA();
                        this.zzac = true;
                        this.zzZ = 0;
                        this.zza.zzc++;
                        return true;
                    } catch (MediaCodec.CryptoException e2) {
                        throw zzaw(e2, this.zzp, false, zzadx.zze(e2.getErrorCode()));
                    }
                }
            } catch (zzae e3) {
                zzm(e3);
                zzp(0);
                zzb();
                return true;
            }
        }
    }

    private final void zzb() {
        try {
            this.zzan.zzj();
        } finally {
            zzR();
        }
    }

    private final boolean zzp(int i) throws zzaeg {
        zzafw zzat = zzat();
        this.zzf.zza();
        int zzax = zzax(zzat, this.zzf, i | 4);
        if (zzax == -5) {
            zzn(zzat);
            return true;
        } else if (zzax != -4 || !this.zzf.zzc()) {
            return false;
        } else {
            this.zzah = true;
            zzaD();
            return false;
        }
    }

    private final boolean zzy(long j) {
        return this.zzt == -9223372036854775807L || SystemClock.elapsedRealtime() - j < this.zzt;
    }

    private final boolean zzz() {
        return this.zzR >= 0;
    }

    public void zzB(zzaf zzafVar) throws zzaeg {
        throw null;
    }

    public void zzC() {
    }

    public void zzD() throws zzaeg {
    }

    public abstract boolean zzF(long j, long j2, zzgh zzghVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzafv zzafvVar) throws zzaeg;

    @Override // com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahw
    public final int zzG() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzahw
    public final int zzH(zzafv zzafvVar) throws zzaeg {
        try {
            return zzd(this.zzd, zzafvVar);
        } catch (zzfy e) {
            throw zzaw(e, zzafvVar, false, 4002);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x03bb, code lost:
        if ("stvm8".equals(r0) == false) goto L166;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02de A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x036a A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x038b A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03a6 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x03e7 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0408 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x047a A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x04a8 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04c2 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x051f A[Catch: Exception -> 0x0577, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0534 A[Catch: Exception -> 0x0577, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0571 A[Catch: Exception -> 0x0577, TRY_ENTER, TryCatch #4 {Exception -> 0x0577, blocks: (B:47:0x012c, B:51:0x0149, B:53:0x015d, B:57:0x016c, B:59:0x0182, B:60:0x018d, B:62:0x0199, B:64:0x01ac, B:66:0x01b5, B:68:0x01c6, B:69:0x01d1, B:71:0x01dd, B:73:0x01eb, B:74:0x0219, B:74:0x0219, B:75:0x021c, B:78:0x023d, B:80:0x0248, B:82:0x0256, B:84:0x0260, B:86:0x026a, B:92:0x0281, B:94:0x028c, B:96:0x0297, B:96:0x0297, B:97:0x029a, B:99:0x02a5, B:101:0x02af, B:103:0x02b9, B:108:0x02cc, B:111:0x02de, B:113:0x02ea, B:118:0x02fe, B:123:0x0312, B:125:0x031d, B:130:0x032f, B:132:0x033b, B:134:0x0346, B:139:0x035d, B:142:0x036a, B:147:0x037e, B:150:0x038b, B:156:0x03a6, B:158:0x03b4, B:161:0x03c1, B:163:0x03c9, B:167:0x03da, B:170:0x03e7, B:175:0x03fb, B:178:0x0408, B:180:0x0413, B:182:0x041f, B:184:0x042d, B:186:0x0437, B:188:0x0441, B:190:0x044b, B:192:0x0455, B:197:0x0468, B:200:0x047a, B:202:0x0482, B:207:0x0496, B:210:0x04a8, B:216:0x04c2, B:221:0x04d3, B:223:0x04dd, B:226:0x04ea, B:228:0x04f3, B:230:0x04ff, B:234:0x050c, B:236:0x051f, B:238:0x052d, B:240:0x0534, B:242:0x0540, B:249:0x0571, B:251:0x0576), top: B:272:0x012c, outer: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzI() throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 1537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfq.zzI():void");
    }

    public boolean zzJ(zzfo zzfoVar) {
        return true;
    }

    public final zzfo zzK() {
        return this.zzC;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zzL(zzafv[] zzafvVarArr, long j, long j2) throws zzaeg {
        boolean z = true;
        if (this.zzal == -9223372036854775807L) {
            if (this.zzak != -9223372036854775807L) {
                z = false;
            }
            zzakt.zzd(z);
            this.zzak = j;
            this.zzal = j2;
            return;
        }
        int i = this.zzam;
        if (i == 10) {
            long j3 = this.zzn[9];
        } else {
            this.zzam = i + 1;
        }
        long[] jArr = this.zzm;
        int i2 = this.zzam - 1;
        jArr[i2] = j;
        this.zzn[i2] = j2;
        this.zzo[i2] = this.zzaf;
    }

    @Override // com.google.android.gms.internal.ads.zzadv, com.google.android.gms.internal.ads.zzahv
    public void zzM(float f, float f2) throws zzaeg {
        this.zzu = f;
        this.zzv = f2;
        zzaA(this.zzw);
    }

    public final void zzN() {
        try {
            zzgh zzghVar = this.zzan;
            if (zzghVar != null) {
                zzghVar.zzk();
                this.zza.zzb++;
                zzl(this.zzC.zza);
            }
        } finally {
            this.zzan = null;
            this.zzr = null;
            this.zzao = null;
            zzS();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:237:0x059d, code lost:
        if (r21.zzaa == 2) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x0855, code lost:
        if (r21.zzq != null) goto L349;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0197, code lost:
        r21.zzai = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x019f, code lost:
        r27 = r21;
     */
    /* JADX WARN: Removed duplicated region for block: B:196:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x05af  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x09bc  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0a21 A[LOOP:2: B:169:0x0425->B:414:0x0a21, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:418:0x0a42  */
    /* JADX WARN: Removed duplicated region for block: B:451:0x0b0e  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0b26  */
    /* JADX WARN: Removed duplicated region for block: B:514:0x0a1e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0922 A[EDGE_INSN: B:516:0x0922->B:373:0x0922 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:521:0x0a54 A[EDGE_INSN: B:521:0x0a54->B:422:0x0a54 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzahv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzO(long r17, long r19) throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 2956
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfq.zzO(long, long):void");
    }

    public final boolean zzP() throws zzaeg {
        boolean zzQ = zzQ();
        if (zzQ) {
            zzI();
        }
        return zzQ;
    }

    public final boolean zzQ() {
        if (this.zzan == null) {
            return false;
        }
        if (this.zzab == 3 || this.zzF || ((this.zzG && !this.zzae) || (this.zzH && this.zzad))) {
            zzN();
            return true;
        }
        zzb();
        return false;
    }

    public void zzR() {
        zzA();
        zzaa();
        this.zzP = -9223372036854775807L;
        this.zzad = false;
        this.zzac = false;
        this.zzL = false;
        this.zzM = false;
        this.zzT = false;
        this.zzU = false;
        this.zzk.clear();
        this.zzaf = -9223372036854775807L;
        this.zzag = -9223372036854775807L;
        zzfk zzfkVar = this.zzO;
        if (zzfkVar != null) {
            zzfkVar.zza();
        }
        this.zzaa = 0;
        this.zzab = 0;
        this.zzZ = this.zzY ? 1 : 0;
    }

    public final void zzS() {
        zzR();
        this.zzO = null;
        this.zzA = null;
        this.zzC = null;
        this.zzw = null;
        this.zzx = null;
        this.zzy = false;
        this.zzae = false;
        this.zzz = -1.0f;
        this.zzD = 0;
        this.zzE = false;
        this.zzF = false;
        this.zzG = false;
        this.zzH = false;
        this.zzI = false;
        this.zzJ = false;
        this.zzK = false;
        this.zzN = false;
        this.zzY = false;
        this.zzZ = 0;
        this.zzs = false;
    }

    public zzfn zzT(Throwable th, zzfo zzfoVar) {
        return new zzfn(th, zzfoVar);
    }

    public void zzU(zzaf zzafVar) throws zzaeg {
    }

    public void zzV(long j) {
        while (true) {
            int i = this.zzam;
            if (i == 0 || j < this.zzo[0]) {
                return;
            }
            long[] jArr = this.zzm;
            this.zzak = jArr[0];
            this.zzal = this.zzn[0];
            int i2 = i - 1;
            this.zzam = i2;
            System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.zzn;
            System.arraycopy(jArr2, 1, jArr2, 0, this.zzam);
            long[] jArr3 = this.zzo;
            System.arraycopy(jArr3, 1, jArr3, 0, this.zzam);
            zzC();
        }
    }

    public final float zzW() {
        return this.zzu;
    }

    public final long zzX() {
        return this.zzal;
    }

    public final zzgh zzZ() {
        return this.zzan;
    }

    public abstract int zzd(zzfs zzfsVar, zzafv zzafvVar) throws zzfy;

    public abstract List<zzfo> zze(zzfs zzfsVar, zzafv zzafvVar, boolean z) throws zzfy;

    public boolean zzf(zzafv zzafvVar) {
        return false;
    }

    public abstract zzfl zzg(zzfo zzfoVar, zzafv zzafvVar, MediaCrypto mediaCrypto, float f);

    public zzba zzh(zzfo zzfoVar, zzafv zzafvVar, zzafv zzafvVar2) {
        throw null;
    }

    public float zzj(float f, zzafv zzafvVar, zzafv[] zzafvVarArr) {
        throw null;
    }

    public void zzk(String str, long j, long j2) {
        throw null;
    }

    public void zzl(String str) {
        throw null;
    }

    public void zzm(Exception exc) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c2, code lost:
        if (zzaB() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0127, code lost:
        if (zzaB() == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014c, code lost:
        if (zzaB() == false) goto L55;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.zzba zzn(com.google.android.gms.internal.ads.zzafw r9) throws com.google.android.gms.internal.ads.zzaeg {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfq.zzn(com.google.android.gms.internal.ads.zzafw):com.google.android.gms.internal.ads.zzba");
    }

    public void zzo(zzafv zzafvVar, MediaFormat mediaFormat) throws zzaeg {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public void zzq(boolean z, boolean z2) throws zzaeg {
        this.zza = new zzaz();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public void zzr(long j, boolean z) throws zzaeg {
        this.zzah = false;
        this.zzai = false;
        if (this.zzV) {
            this.zzi.zza();
            this.zzh.zza();
            this.zzW = false;
        } else {
            zzP();
        }
        if (this.zzj.zzc() > 0) {
            this.zzaj = true;
        }
        this.zzj.zzb();
        int i = this.zzam;
        if (i != 0) {
            int i2 = i - 1;
            this.zzal = this.zzn[i2];
            this.zzak = this.zzm[i2];
            this.zzam = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public void zzu() {
        this.zzp = null;
        this.zzak = -9223372036854775807L;
        this.zzal = -9223372036854775807L;
        this.zzam = 0;
        zzQ();
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public void zzv() {
        try {
            zza();
            zzN();
        } finally {
            this.zzap = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahv
    public boolean zzw() {
        return this.zzai;
    }

    @Override // com.google.android.gms.internal.ads.zzahv
    public boolean zzx() {
        boolean z;
        if (this.zzp != null) {
            z = true;
            if (!zzaz()) {
                z = true;
                if (!zzz()) {
                    if (this.zzP != -9223372036854775807L && SystemClock.elapsedRealtime() < this.zzP) {
                        return true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }
}
