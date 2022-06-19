package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasa.class */
public final class zzasa {
    public boolean zzL;
    public zzars zzN;
    public int zzO;
    public String zza;
    public int zzb;
    public int zzc;
    public int zzd;
    public boolean zze;
    public byte[] zzf;
    public zzarr zzg;
    public byte[] zzh;
    public zzarf zzi;
    public int zzj = -1;
    public int zzk = -1;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = 0;
    public byte[] zzo = null;
    public int zzp = -1;
    public boolean zzq = false;
    public int zzr = -1;
    public int zzs = -1;
    public int zzt = -1;
    public int zzu = 1000;
    public int zzv = 200;
    public float zzw = -1.0f;
    public float zzx = -1.0f;
    public float zzy = -1.0f;
    public float zzz = -1.0f;
    public float zzA = -1.0f;
    public float zzB = -1.0f;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public int zzG = 1;
    public int zzH = -1;
    public int zzI = 8000;
    public long zzJ = 0;
    public long zzK = 0;
    public boolean zzM = true;
    private String zzP = "eng";

    private zzasa() {
    }

    public /* synthetic */ zzasa(zzarz zzarzVar) {
    }

    private static List<byte[]> zzc(zzawu zzawuVar) throws zzapj {
        try {
            zzawuVar.zzw(16);
            if (zzawuVar.zzk() != 826496599) {
                return null;
            }
            int zzc = zzawuVar.zzc() + 20;
            byte[] bArr = zzawuVar.zza;
            while (true) {
                int length = bArr.length;
                if (zzc >= length - 4) {
                    throw new zzapj("Failed to find FourCC VC1 initialization data");
                }
                if (bArr[zzc] == 0 && bArr[zzc + 1] == 0 && bArr[zzc + 2] == 1 && bArr[zzc + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, zzc, length));
                }
                zzc++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzapj("Error parsing FourCC VC1 codec private");
        }
    }

    private static List<byte[]> zzd(byte[] bArr) throws zzapj {
        byte b;
        byte b2;
        try {
            if (bArr[0] != 2) {
                throw new zzapj("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (true) {
                b = bArr[i];
                if (b != -1) {
                    break;
                }
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + b;
            int i5 = 0;
            while (true) {
                b2 = bArr[i3];
                if (b2 != -1) {
                    break;
                }
                i5 += 255;
                i3++;
            }
            int i6 = i3 + 1;
            if (bArr[i6] != 1) {
                throw new zzapj("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i7 = i6 + i4;
            if (bArr[i7] != 3) {
                throw new zzapj("Error parsing vorbis codec private");
            }
            int i8 = i7 + i5 + b2;
            if (bArr[i8] != 5) {
                throw new zzapj("Error parsing vorbis codec private");
            }
            int length = bArr.length - i8;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i8, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzapj("Error parsing vorbis codec private");
        }
    }

    private static boolean zze(zzawu zzawuVar) throws zzapj {
        UUID uuid;
        UUID uuid2;
        try {
            int zzf = zzawuVar.zzf();
            if (zzf == 1) {
                return true;
            }
            if (zzf != 65534) {
                return false;
            }
            zzawuVar.zzv(24);
            long zzl = zzawuVar.zzl();
            uuid = zzasb.zzd;
            if (zzl != uuid.getMostSignificantBits()) {
                return false;
            }
            long zzl2 = zzawuVar.zzl();
            uuid2 = zzasb.zzd;
            return zzl2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzapj("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v154, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v159, types: [java.util.List<byte[]>] */
    /* JADX WARN: Type inference failed for: r0v165, types: [java.util.List<byte[]>] */
    /* JADX WARN: Type inference failed for: r0v169, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v178, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v194, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v208, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v252, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v259, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v16 */
    /* JADX WARN: Type inference failed for: r20v17 */
    /* JADX WARN: Type inference failed for: r20v18 */
    /* JADX WARN: Type inference failed for: r20v19 */
    /* JADX WARN: Type inference failed for: r20v20 */
    /* JADX WARN: Type inference failed for: r20v21 */
    /* JADX WARN: Type inference failed for: r20v22 */
    /* JADX WARN: Type inference failed for: r20v23 */
    /* JADX WARN: Type inference failed for: r20v24 */
    /* JADX WARN: Type inference failed for: r20v25 */
    /* JADX WARN: Type inference failed for: r20v26 */
    /* JADX WARN: Type inference failed for: r20v27 */
    /* JADX WARN: Type inference failed for: r20v28 */
    /* JADX WARN: Type inference failed for: r20v29 */
    /* JADX WARN: Type inference failed for: r20v30 */
    /* JADX WARN: Type inference failed for: r20v31 */
    /* JADX WARN: Type inference failed for: r20v32 */
    /* JADX WARN: Type inference failed for: r20v33 */
    /* JADX WARN: Type inference failed for: r20v34 */
    /* JADX WARN: Type inference failed for: r20v35 */
    /* JADX WARN: Type inference failed for: r20v36 */
    /* JADX WARN: Type inference failed for: r20v37 */
    /* JADX WARN: Type inference failed for: r20v38 */
    /* JADX WARN: Type inference failed for: r20v39 */
    /* JADX WARN: Type inference failed for: r20v40 */
    public final void zzb(zzark zzarkVar, int i) throws zzapj {
        ?? r20;
        int i2;
        String str;
        int i3;
        ArrayList arrayList;
        zzapg zzapgVar;
        int i4;
        int i5;
        zzaxe zzaxeVar;
        byte[] bArr;
        int i6;
        ArrayList arrayList2;
        String str2;
        int i7;
        String str3 = this.zza;
        switch (str3.hashCode()) {
            case -2095576542:
                if (str3.equals("V_MPEG4/ISO/AP")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -2095575984:
                if (str3.equals("V_MPEG4/ISO/SP")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1985379776:
                if (str3.equals("A_MS/ACM")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1784763192:
                if (str3.equals("A_TRUEHD")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1730367663:
                if (str3.equals("A_VORBIS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1482641358:
                if (str3.equals("A_MPEG/L2")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1482641357:
                if (str3.equals("A_MPEG/L3")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -1373388978:
                if (str3.equals("V_MS/VFW/FOURCC")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -933872740:
                if (str3.equals("S_DVBSUB")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -538363189:
                if (str3.equals("V_MPEG4/ISO/ASP")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -538363109:
                if (str3.equals("V_MPEG4/ISO/AVC")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -425012669:
                if (str3.equals("S_VOBSUB")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case -356037306:
                if (str3.equals("A_DTS/LOSSLESS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 62923557:
                if (str3.equals("A_AAC")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 62923603:
                if (str3.equals("A_AC3")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 62927045:
                if (str3.equals("A_DTS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 82338133:
                if (str3.equals("V_VP8")) {
                    r20 = false;
                    break;
                }
                r20 = true;
                break;
            case 82338134:
                if (str3.equals("V_VP9")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 99146302:
                if (str3.equals("S_HDMV/PGS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 444813526:
                if (str3.equals("V_THEORA")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 542569478:
                if (str3.equals("A_DTS/EXPRESS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 725957860:
                if (str3.equals("A_PCM/INT/LIT")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 855502857:
                if (str3.equals("V_MPEGH/ISO/HEVC")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 1422270023:
                if (str3.equals("S_TEXT/UTF8")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 1809237540:
                if (str3.equals("V_MPEG2")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 1950749482:
                if (str3.equals("A_EAC3")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 1950789798:
                if (str3.equals("A_FLAC")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            case 1951062397:
                if (str3.equals("A_OPUS")) {
                    r20 = true;
                    break;
                }
                r20 = true;
                break;
            default:
                r20 = true;
                break;
        }
        String str4 = "audio/raw";
        switch (r20) {
            case 0:
                str2 = "video/x-vnd.on2.vp8";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 1:
                str2 = "video/x-vnd.on2.vp9";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 2:
                str2 = "video/mpeg2";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 3:
            case 4:
            case 5:
                byte[] bArr2 = this.zzh;
                arrayList2 = bArr2 == null ? null : Collections.singletonList(bArr2);
                str2 = "video/mp4v-es";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 6:
                zzaxc zza = zzaxc.zza(new zzawu(this.zzh));
                arrayList2 = zza.zza;
                this.zzO = zza.zzb;
                str2 = "video/avc";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 7:
                zzaxi zza2 = zzaxi.zza(new zzawu(this.zzh));
                arrayList2 = zza2.zza;
                this.zzO = zza2.zzb;
                str2 = "video/hevc";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 8:
                arrayList2 = zzc(new zzawu(this.zzh));
                if (arrayList2 != null) {
                    str2 = "video/wvc1";
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str2 = "video/x-unknown";
                }
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 9:
                str2 = "video/x-unknown";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 10:
                arrayList = zzd(this.zzh);
                str = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case 11:
                arrayList = new ArrayList(3);
                arrayList.add(this.zzh);
                arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzJ).array());
                arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzK).array());
                str = "audio/opus";
                i2 = -1;
                i3 = 5760;
                break;
            case 12:
                arrayList2 = Collections.singletonList(this.zzh);
                str2 = "audio/mp4a-latm";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 13:
                str = "audio/mpeg-L2";
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 14:
                str = "audio/mpeg";
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 15:
                str2 = "audio/ac3";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 16:
                str2 = "audio/eac3";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 17:
                str2 = "audio/true-hd";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 18:
            case 19:
                str2 = "audio/vnd.dts";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 20:
                str2 = "audio/vnd.dts.hd";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 21:
                arrayList2 = Collections.singletonList(this.zzh);
                str2 = "audio/x-flac";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 22:
                if (zze(new zzawu(this.zzh))) {
                    int zzh = zzaxb.zzh(this.zzH);
                    i7 = zzh;
                    if (zzh == 0) {
                        int i8 = this.zzH;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i8);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    arrayList = null;
                    i2 = i7;
                    i3 = -1;
                    str = str4;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                str2 = "audio/x-unknown";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
            case 23:
                int zzh2 = zzaxb.zzh(this.zzH);
                i7 = zzh2;
                if (zzh2 == 0) {
                    int i9 = this.zzH;
                    StringBuilder sb2 = new StringBuilder(75);
                    sb2.append("Unsupported PCM bit depth: ");
                    sb2.append(i9);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str2 = "audio/x-unknown";
                    arrayList2 = null;
                    i2 = -1;
                    str4 = str2;
                    arrayList = arrayList2;
                    i3 = -1;
                    str = str4;
                    break;
                }
                arrayList = null;
                i2 = i7;
                i3 = -1;
                str = str4;
            case 24:
                str2 = "application/x-subrip";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 25:
                arrayList2 = Collections.singletonList(this.zzh);
                str2 = "application/vobsub";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 26:
                str2 = "application/pgs";
                arrayList2 = null;
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            case 27:
                byte[] bArr3 = this.zzh;
                arrayList2 = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str2 = "application/dvbsubs";
                i2 = -1;
                str4 = str2;
                arrayList = arrayList2;
                i3 = -1;
                str = str4;
                break;
            default:
                throw new zzapj("Unrecognized codec identifier.");
        }
        int i10 = (this.zzM ? 1 : 0) | (true != this.zzL ? 0 : 2);
        if (zzawr.zza(str)) {
            zzapgVar = zzapg.zzh(Integer.toString(i), str, null, -1, i3, this.zzG, this.zzI, i2, -1, -1, arrayList, this.zzi, i10, this.zzP, null);
            i4 = 1;
        } else if (zzawr.zzb(str)) {
            if (this.zzn == 0) {
                int i11 = this.zzl;
                int i12 = i11;
                if (i11 == -1) {
                    i12 = this.zzj;
                }
                this.zzl = i12;
                int i13 = this.zzm;
                int i14 = i13;
                if (i13 == -1) {
                    i14 = this.zzk;
                }
                this.zzm = i14;
            }
            float f = (this.zzl == -1 || (i6 = this.zzm) == -1) ? -1.0f : (this.zzk * i5) / (this.zzj * i6);
            if (this.zzq) {
                if (this.zzw == -1.0f || this.zzx == -1.0f || this.zzy == -1.0f || this.zzz == -1.0f || this.zzA == -1.0f || this.zzB == -1.0f || this.zzC == -1.0f || this.zzD == -1.0f || this.zzE == -1.0f || this.zzF == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.zzw * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzx * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzy * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzz * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzA * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzB * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzC * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.zzE + 0.5f));
                    wrap.putShort((short) (this.zzF + 0.5f));
                    wrap.putShort((short) this.zzu);
                    wrap.putShort((short) this.zzv);
                }
                zzaxeVar = new zzaxe(this.zzr, this.zzt, this.zzs, bArr);
            } else {
                zzaxeVar = null;
            }
            zzapgVar = zzapg.zzl(Integer.toString(i), str, null, -1, i3, this.zzj, this.zzk, -1.0f, arrayList, -1, f, this.zzo, this.zzp, zzaxeVar, this.zzi);
            i4 = 2;
        } else {
            if ("application/x-subrip".equals(str)) {
                zzapgVar = zzapg.zzk(Integer.toString(i), str, null, -1, i10, this.zzP, -1, this.zzi, Long.MAX_VALUE, Collections.emptyList());
            } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                throw new zzapj("Unexpected MIME type.");
            } else {
                zzapgVar = zzapg.zzi(Integer.toString(i), str, null, -1, arrayList, this.zzP, this.zzi);
            }
            i4 = 3;
        }
        zzars zzbq = zzarkVar.zzbq(this.zzb, i4);
        this.zzN = zzbq;
        zzbq.zza(zzapgVar);
    }
}
