package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.recyclerview.widget.C0608b;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasb.class */
public final class zzasb implements zzarj {
    public static final zzarl zza = new zzarw();
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID zzd = new UUID(72057594037932032L, -9223371306706625679L);
    private boolean zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private zzawp zzE;
    private zzawp zzF;
    private boolean zzG;
    private int zzH;
    private long zzI;
    private long zzJ;
    private int zzK;
    private int zzL;
    private int[] zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private int zzQ;
    private boolean zzR;
    private boolean zzS;
    private boolean zzT;
    private boolean zzU;
    private byte zzV;
    private int zzW;
    private int zzX;
    private int zzY;
    private boolean zzZ;
    private boolean zzaa;
    private zzark zzab;
    private final zzarv zzac;
    private final zzasd zze;
    private final SparseArray<zzasa> zzf;
    private final boolean zzg;
    private final zzawu zzh;
    private final zzawu zzi;
    private final zzawu zzj;
    private final zzawu zzk;
    private final zzawu zzl;
    private final zzawu zzm;
    private final zzawu zzn;
    private final zzawu zzo;
    private final zzawu zzp;
    private ByteBuffer zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private long zzv;
    private zzasa zzw;
    private boolean zzx;
    private int zzy;
    private long zzz;

    public zzasb() {
        this(0);
    }

    public zzasb(int i) {
        zzarv zzarvVar = new zzarv();
        this.zzs = -1L;
        this.zzt = -9223372036854775807L;
        this.zzu = -9223372036854775807L;
        this.zzv = -9223372036854775807L;
        this.zzB = -1L;
        this.zzC = -1L;
        this.zzD = -9223372036854775807L;
        this.zzac = zzarvVar;
        zzarvVar.zzb(new zzary(this, null));
        this.zzg = true;
        this.zze = new zzasd();
        this.zzf = new SparseArray<>();
        this.zzj = new zzawu(4);
        this.zzk = new zzawu(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzl = new zzawu(4);
        this.zzh = new zzawu(zzaws.zza);
        this.zzi = new zzawu(4);
        this.zzm = new zzawu();
        this.zzn = new zzawu();
        this.zzo = new zzawu(8);
        this.zzp = new zzawu();
    }

    public static final int zzl(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    public static final boolean zzm(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    private final long zzn(long j) throws zzapj {
        long j2 = this.zzt;
        if (j2 != -9223372036854775807L) {
            return zzaxb.zzj(j, j2, 1000L);
        }
        throw new zzapj("Can't scale timecode prior to timecodeScale being set.");
    }

    private final void zzo(zzasa zzasaVar, long j) {
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(zzasaVar.zza)) {
            byte[] bArr2 = this.zzn.zza;
            long j2 = this.zzJ;
            if (j2 == -9223372036854775807L) {
                bArr = zzc;
            } else {
                int i = (int) (j2 / 3600000000L);
                long j3 = j2 - (i * 3600000000L);
                int i2 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i2);
                int i3 = (int) (j4 / 1000000);
                bArr = zzaxb.zzq(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            zzars zzarsVar = zzasaVar.zzN;
            zzawu zzawuVar = this.zzn;
            zzarsVar.zzb(zzawuVar, zzawuVar.zzd());
            this.zzY = this.zzn.zzd() + this.zzY;
        }
        zzasaVar.zzN.zzc(j, this.zzP, this.zzY, 0, zzasaVar.zzg);
        this.zzZ = true;
        zzp();
    }

    private final void zzp() {
        this.zzQ = 0;
        this.zzY = 0;
        this.zzX = 0;
        this.zzR = false;
        this.zzS = false;
        this.zzU = false;
        this.zzW = 0;
        this.zzV = (byte) 0;
        this.zzT = false;
        this.zzm.zzr();
    }

    private static int[] zzq(int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        return length >= i ? iArr : new int[Math.max(length + length, i)];
    }

    private final int zzr(zzari zzariVar, zzars zzarsVar, int i) throws IOException, InterruptedException {
        int i2;
        int zza2 = this.zzm.zza();
        if (zza2 > 0) {
            i2 = Math.min(i, zza2);
            zzarsVar.zzb(this.zzm, i2);
        } else {
            i2 = zzarsVar.zzd(zzariVar, i, false);
        }
        this.zzQ += i2;
        this.zzY += i2;
        return i2;
    }

    private final void zzs(zzari zzariVar, int i) throws IOException, InterruptedException {
        if (this.zzj.zzd() >= i) {
            return;
        }
        if (this.zzj.zzb() < i) {
            zzawu zzawuVar = this.zzj;
            byte[] bArr = zzawuVar.zza;
            int length = bArr.length;
            zzawuVar.zzt(Arrays.copyOf(bArr, Math.max(length + length, i)), this.zzj.zzd());
        }
        zzawu zzawuVar2 = this.zzj;
        zzariVar.zzh(zzawuVar2.zza, zzawuVar2.zzd(), i - this.zzj.zzd(), false);
        this.zzj.zzu(i);
    }

    private final void zzt(zzari zzariVar, zzasa zzasaVar, int i) throws IOException, InterruptedException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(zzasaVar.zza)) {
            int i4 = i + 32;
            if (this.zzn.zzb() < i4) {
                this.zzn.zza = Arrays.copyOf(zzb, i4 + i);
            }
            zzariVar.zzh(this.zzn.zza, 32, i, false);
            this.zzn.zzv(0);
            this.zzn.zzu(i4);
            return;
        }
        zzars zzarsVar = zzasaVar.zzN;
        if (!this.zzR) {
            if (zzasaVar.zze) {
                this.zzP &= -1073741825;
                int i5 = 128;
                if (!this.zzS) {
                    zzariVar.zzh(this.zzj.zza, 0, 1, false);
                    this.zzQ++;
                    byte b = this.zzj.zza[0];
                    if ((b & 128) == 128) {
                        throw new zzapj("Extension bit is set in signal byte");
                    }
                    this.zzV = b;
                    this.zzS = true;
                }
                byte b2 = this.zzV;
                if ((b2 & 1) == 1) {
                    int i6 = b2 & 2;
                    this.zzP |= 1073741824;
                    if (!this.zzT) {
                        zzariVar.zzh(this.zzo.zza, 0, 8, false);
                        this.zzQ += 8;
                        this.zzT = true;
                        zzawu zzawuVar = this.zzj;
                        byte[] bArr = zzawuVar.zza;
                        if (i6 != 2) {
                            i5 = 0;
                        }
                        bArr[0] = (byte) (i5 | 8);
                        zzawuVar.zzv(0);
                        zzarsVar.zzb(this.zzj, 1);
                        this.zzY++;
                        this.zzo.zzv(0);
                        zzarsVar.zzb(this.zzo, 8);
                        this.zzY += 8;
                    }
                    if (i6 == 2) {
                        if (!this.zzU) {
                            zzariVar.zzh(this.zzj.zza, 0, 1, false);
                            this.zzQ++;
                            this.zzj.zzv(0);
                            this.zzW = this.zzj.zzg();
                            this.zzU = true;
                        }
                        int i7 = this.zzW * 4;
                        this.zzj.zzs(i7);
                        zzariVar.zzh(this.zzj.zza, 0, i7, false);
                        this.zzQ += i7;
                        int i8 = (this.zzW >> 1) + 1;
                        int i9 = (i8 * 6) + 2;
                        ByteBuffer byteBuffer = this.zzq;
                        if (byteBuffer == null || byteBuffer.capacity() < i9) {
                            this.zzq = ByteBuffer.allocate(i9);
                        }
                        this.zzq.position(0);
                        this.zzq.putShort((short) i8);
                        int i10 = 0;
                        int i11 = 0;
                        while (true) {
                            i2 = i11;
                            i3 = this.zzW;
                            if (i10 >= i3) {
                                break;
                            }
                            int zzi = this.zzj.zzi();
                            if (i10 % 2 == 0) {
                                this.zzq.putShort((short) (zzi - i2));
                            } else {
                                this.zzq.putInt(zzi - i2);
                            }
                            i10++;
                            i11 = zzi;
                        }
                        int i12 = (i - this.zzQ) - i2;
                        if ((i3 & 1) == 1) {
                            this.zzq.putInt(i12);
                        } else {
                            this.zzq.putShort((short) i12);
                            this.zzq.putInt(0);
                        }
                        this.zzp.zzt(this.zzq.array(), i9);
                        zzarsVar.zzb(this.zzp, i9);
                        this.zzY += i9;
                    }
                }
            } else {
                byte[] bArr2 = zzasaVar.zzf;
                if (bArr2 != null) {
                    this.zzm.zzt(bArr2, bArr2.length);
                }
            }
            this.zzR = true;
        }
        int zzd2 = this.zzm.zzd() + i;
        if (!"V_MPEG4/ISO/AVC".equals(zzasaVar.zza) && !"V_MPEGH/ISO/HEVC".equals(zzasaVar.zza)) {
            while (true) {
                int i13 = this.zzQ;
                if (i13 >= zzd2) {
                    break;
                }
                zzr(zzariVar, zzarsVar, zzd2 - i13);
            }
        } else {
            byte[] bArr3 = this.zzi.zza;
            bArr3[0] = (byte) 0;
            bArr3[1] = (byte) 0;
            bArr3[2] = (byte) 0;
            int i14 = zzasaVar.zzO;
            int i15 = 4 - i14;
            while (this.zzQ < zzd2) {
                int i16 = this.zzX;
                if (i16 == 0) {
                    int min = Math.min(i14, this.zzm.zza());
                    zzariVar.zzh(bArr3, i15 + min, i14 - min, false);
                    if (min > 0) {
                        this.zzm.zzq(bArr3, i15, min);
                    }
                    this.zzQ += i14;
                    this.zzi.zzv(0);
                    this.zzX = this.zzi.zzi();
                    this.zzh.zzv(0);
                    zzarsVar.zzb(this.zzh, 4);
                    this.zzY += 4;
                } else {
                    this.zzX = i16 - zzr(zzariVar, zzarsVar, i16);
                }
            }
        }
        if (!"A_VORBIS".equals(zzasaVar.zza)) {
            return;
        }
        this.zzk.zzv(0);
        zzarsVar.zzb(this.zzk, 4);
        this.zzY += 4;
    }

    public final void zzb(int i) throws zzapj {
        zzarh zzarhVar;
        zzawp zzawpVar;
        zzawp zzawpVar2;
        int i2;
        int i3;
        if (i == 160) {
            if (this.zzH != 2) {
                return;
            }
            if (!this.zzaa) {
                this.zzP |= 1;
            }
            zzo(this.zzf.get(this.zzN), this.zzI);
            this.zzH = 0;
        } else if (i == 174) {
            String str = this.zzw.zza;
            if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                zzasa zzasaVar = this.zzw;
                zzasaVar.zzb(this.zzab, zzasaVar.zzb);
                SparseArray<zzasa> sparseArray = this.zzf;
                zzasa zzasaVar2 = this.zzw;
                sparseArray.put(zzasaVar2.zzb, zzasaVar2);
            }
            this.zzw = null;
        } else if (i == 19899) {
            int i4 = this.zzy;
            if (i4 != -1) {
                long j = this.zzz;
                if (j != -1) {
                    if (i4 != 475249515) {
                        return;
                    }
                    this.zzB = j;
                    return;
                }
            }
            throw new zzapj("Mandatory element SeekID or SeekPosition not found");
        } else if (i == 25152) {
            zzasa zzasaVar3 = this.zzw;
            if (!zzasaVar3.zze) {
                return;
            }
            if (zzasaVar3.zzg == null) {
                throw new zzapj("Encrypted Track found but ContentEncKeyID was not found");
            }
            zzasaVar3.zzi = new zzarf(new zzare(zzaor.zzb, "video/webm", this.zzw.zzg.zzb, false));
        } else if (i == 28032) {
            zzasa zzasaVar4 = this.zzw;
            if (zzasaVar4.zze && zzasaVar4.zzf != null) {
                throw new zzapj("Combining encryption and compression is not supported");
            }
        } else if (i == 357149030) {
            if (this.zzt == -9223372036854775807L) {
                this.zzt = 1000000L;
            }
            long j2 = this.zzu;
            if (j2 == -9223372036854775807L) {
                return;
            }
            this.zzv = zzn(j2);
        } else if (i == 374648427) {
            if (this.zzf.size() == 0) {
                throw new zzapj("No valid tracks were found");
            }
            this.zzab.zzb();
        } else if (i != 475249515 || this.zzx) {
        } else {
            zzark zzarkVar = this.zzab;
            if (this.zzs == -1 || this.zzv == -9223372036854775807L || (zzawpVar = this.zzE) == null || zzawpVar.zza() == 0 || (zzawpVar2 = this.zzF) == null || zzawpVar2.zza() != this.zzE.zza()) {
                this.zzE = null;
                this.zzF = null;
                zzarhVar = new zzarp(this.zzv);
            } else {
                int zza2 = this.zzE.zza();
                int[] iArr = new int[zza2];
                long[] jArr = new long[zza2];
                long[] jArr2 = new long[zza2];
                long[] jArr3 = new long[zza2];
                int i5 = 0;
                while (true) {
                    i2 = 0;
                    if (i5 < zza2) {
                        jArr3[i5] = this.zzE.zzb(i5);
                        jArr[i5] = this.zzF.zzb(i5) + this.zzs;
                        i5++;
                    }
                }
                while (true) {
                    i3 = zza2 - 1;
                    if (i2 >= i3) {
                        break;
                    }
                    int i6 = i2 + 1;
                    iArr[i2] = (int) (jArr[i6] - jArr[i2]);
                    jArr2[i2] = jArr3[i6] - jArr3[i2];
                    i2 = i6;
                }
                iArr[i3] = (int) ((this.zzs + this.zzr) - jArr[i3]);
                jArr2[i3] = this.zzv - jArr3[i3];
                this.zzE = null;
                this.zzF = null;
                zzarhVar = new zzarh(iArr, jArr, jArr2, jArr3);
            }
            zzarkVar.zzc(zzarhVar);
            this.zzx = true;
        }
    }

    public final void zzc(int i, double d) {
        if (i == 181) {
            this.zzw.zzI = (int) d;
        } else if (i == 17545) {
            this.zzu = (long) d;
        } else {
            switch (i) {
                case 21969:
                    this.zzw.zzw = (float) d;
                    return;
                case 21970:
                    this.zzw.zzx = (float) d;
                    return;
                case 21971:
                    this.zzw.zzy = (float) d;
                    return;
                case 21972:
                    this.zzw.zzz = (float) d;
                    return;
                case 21973:
                    this.zzw.zzA = (float) d;
                    return;
                case 21974:
                    this.zzw.zzB = (float) d;
                    return;
                case 21975:
                    this.zzw.zzC = (float) d;
                    return;
                case 21976:
                    this.zzw.zzD = (float) d;
                    return;
                case 21977:
                    this.zzw.zzE = (float) d;
                    return;
                case 21978:
                    this.zzw.zzF = (float) d;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zzd(zzark zzarkVar) {
        this.zzab = zzarkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final void zze(long j, long j2) {
        this.zzD = -9223372036854775807L;
        this.zzH = 0;
        this.zzac.zza();
        this.zze.zzd();
        zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final int zzf(zzari zzariVar, zzaro zzaroVar) throws IOException, InterruptedException {
        this.zzZ = false;
        while (!this.zzZ) {
            if (!this.zzac.zzc(zzariVar)) {
                return -1;
            }
            long zzd2 = zzariVar.zzd();
            if (this.zzA) {
                this.zzC = zzd2;
                zzaroVar.zza = this.zzB;
                this.zzA = false;
                return 1;
            } else if (this.zzx) {
                long j = this.zzC;
                if (j != -1) {
                    zzaroVar.zza = j;
                    this.zzC = -1L;
                    return 1;
                }
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzarj
    public final boolean zzg(zzari zzariVar) throws IOException, InterruptedException {
        return new zzasc().zza(zzariVar);
    }

    public final void zzh(int i, long j) throws zzapj {
        if (i == 20529) {
            if (j == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(55);
            sb.append("ContentEncodingOrder ");
            sb.append(j);
            sb.append(" not supported");
            throw new zzapj(sb.toString());
        } else if (i == 20530) {
            if (j == 1) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(55);
            sb2.append("ContentEncodingScope ");
            sb2.append(j);
            sb2.append(" not supported");
            throw new zzapj(sb2.toString());
        } else {
            boolean z = false;
            switch (i) {
                case 131:
                    this.zzw.zzc = (int) j;
                    return;
                case 136:
                    zzasa zzasaVar = this.zzw;
                    boolean z2 = false;
                    if (j == 1) {
                        z2 = true;
                    }
                    zzasaVar.zzL = z2;
                    return;
                case 155:
                    this.zzJ = zzn(j);
                    return;
                case 159:
                    this.zzw.zzG = (int) j;
                    return;
                case 176:
                    this.zzw.zzj = (int) j;
                    return;
                case 179:
                    this.zzE.zzc(zzn(j));
                    return;
                case 186:
                    this.zzw.zzk = (int) j;
                    return;
                case 215:
                    this.zzw.zzb = (int) j;
                    return;
                case 231:
                    this.zzD = zzn(j);
                    return;
                case 241:
                    if (this.zzG) {
                        return;
                    }
                    this.zzF.zzc(j);
                    this.zzG = true;
                    return;
                case 251:
                    this.zzaa = true;
                    return;
                case 16980:
                    if (j == 3) {
                        return;
                    }
                    StringBuilder sb3 = new StringBuilder(50);
                    sb3.append("ContentCompAlgo ");
                    sb3.append(j);
                    sb3.append(" not supported");
                    throw new zzapj(sb3.toString());
                case 17029:
                    if (j >= 1 && j <= 2) {
                        return;
                    }
                    StringBuilder sb4 = new StringBuilder(53);
                    sb4.append("DocTypeReadVersion ");
                    sb4.append(j);
                    sb4.append(" not supported");
                    throw new zzapj(sb4.toString());
                case 17143:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb5 = new StringBuilder(50);
                    sb5.append("EBMLReadVersion ");
                    sb5.append(j);
                    sb5.append(" not supported");
                    throw new zzapj(sb5.toString());
                case 18401:
                    if (j == 5) {
                        return;
                    }
                    StringBuilder sb6 = new StringBuilder(49);
                    sb6.append("ContentEncAlgo ");
                    sb6.append(j);
                    sb6.append(" not supported");
                    throw new zzapj(sb6.toString());
                case 18408:
                    if (j == 1) {
                        return;
                    }
                    StringBuilder sb7 = new StringBuilder(56);
                    sb7.append("AESSettingsCipherMode ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw new zzapj(sb7.toString());
                case 21420:
                    this.zzz = j + this.zzs;
                    return;
                case 21432:
                    int i2 = (int) j;
                    if (i2 == 0) {
                        this.zzw.zzp = 0;
                        return;
                    } else if (i2 == 1) {
                        this.zzw.zzp = 2;
                        return;
                    } else if (i2 == 3) {
                        this.zzw.zzp = 1;
                        return;
                    } else if (i2 != 15) {
                        return;
                    } else {
                        this.zzw.zzp = 3;
                        return;
                    }
                case 21680:
                    this.zzw.zzl = (int) j;
                    return;
                case 21682:
                    this.zzw.zzn = (int) j;
                    return;
                case 21690:
                    this.zzw.zzm = (int) j;
                    return;
                case 21930:
                    zzasa zzasaVar2 = this.zzw;
                    if (j == 1) {
                        z = true;
                    }
                    zzasaVar2.zzM = z;
                    return;
                case 22186:
                    this.zzw.zzJ = j;
                    return;
                case 22203:
                    this.zzw.zzK = j;
                    return;
                case 25188:
                    this.zzw.zzH = (int) j;
                    return;
                case 2352003:
                    this.zzw.zzd = (int) j;
                    return;
                case 2807729:
                    this.zzt = j;
                    return;
                default:
                    switch (i) {
                        case 21945:
                            int i3 = (int) j;
                            if (i3 == 1) {
                                this.zzw.zzt = 2;
                                return;
                            } else if (i3 != 2) {
                                return;
                            } else {
                                this.zzw.zzt = 1;
                                return;
                            }
                        case 21946:
                            int i4 = (int) j;
                            if (i4 != 1) {
                                if (i4 == 16) {
                                    this.zzw.zzs = 6;
                                    return;
                                } else if (i4 == 18) {
                                    this.zzw.zzs = 7;
                                    return;
                                } else if (i4 != 6 && i4 != 7) {
                                    return;
                                }
                            }
                            this.zzw.zzs = 3;
                            return;
                        case 21947:
                            zzasa zzasaVar3 = this.zzw;
                            zzasaVar3.zzq = true;
                            int i5 = (int) j;
                            if (i5 == 1) {
                                zzasaVar3.zzr = 1;
                                return;
                            } else if (i5 == 9) {
                                zzasaVar3.zzr = 6;
                                return;
                            } else if (i5 != 4 && i5 != 5 && i5 != 6 && i5 != 7) {
                                return;
                            } else {
                                zzasaVar3.zzr = 2;
                                return;
                            }
                        case 21948:
                            this.zzw.zzu = (int) j;
                            return;
                        case 21949:
                            this.zzw.zzv = (int) j;
                            return;
                        default:
                            return;
                    }
            }
        }
    }

    public final void zzi(int i, long j, long j2) throws zzapj {
        if (i == 160) {
            this.zzaa = false;
        } else if (i == 174) {
            this.zzw = new zzasa(null);
        } else if (i == 187) {
            this.zzG = false;
        } else if (i == 19899) {
            this.zzy = -1;
            this.zzz = -1L;
        } else if (i == 20533) {
            this.zzw.zze = true;
        } else if (i == 21968) {
            this.zzw.zzq = true;
        } else if (i == 408125543) {
            long j3 = this.zzs;
            if (j3 != -1 && j3 != j) {
                throw new zzapj("Multiple Segment elements not supported");
            }
            this.zzs = j;
            this.zzr = j2;
        } else if (i == 475249515) {
            this.zzE = new zzawp(32);
            this.zzF = new zzawp(32);
        } else if (i != 524531317 || this.zzx) {
        } else {
            if (this.zzg && this.zzB != -1) {
                this.zzA = true;
                return;
            }
            this.zzab.zzc(new zzarp(this.zzv));
            this.zzx = true;
        }
    }

    public final void zzj(int i, String str) throws zzapj {
        if (i == 134) {
            this.zzw.zza = str;
        } else if (i != 17026) {
            if (i != 2274716) {
                return;
            }
            this.zzw.zzP = str;
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            throw new zzapj(C0608b.m7625j(new StringBuilder(str.length() + 22), "DocType ", str, " not supported"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x03b7, code lost:
        throw new com.google.android.gms.internal.ads.zzapj("EBML lacing sample size out of range.");
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0457  */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v143, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzk(int r9, int r10, com.google.android.gms.internal.ads.zzari r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzasb.zzk(int, int, com.google.android.gms.internal.ads.zzari):void");
    }
}
