package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaaw.class */
public final class zzaaw {
    public byte[] zzM;
    public zzaax zzS;
    public boolean zzT;
    public zzxt zzV;
    public int zzW;
    private int zzX;
    public String zza;
    public String zzb;
    public int zzc;
    public int zzd;
    public int zze;
    public int zzf;
    public boolean zzg;
    public byte[] zzh;
    public zzxs zzi;
    public byte[] zzj;
    public zzs zzk;
    public int zzl = -1;
    public int zzm = -1;
    public int zzn = -1;
    public int zzo = -1;
    public int zzp = 0;
    public int zzq = -1;
    public float zzr = 0.0f;
    public float zzs = 0.0f;
    public float zzt = 0.0f;
    public byte[] zzu = null;
    public int zzv = -1;
    public boolean zzw = false;
    public int zzx = -1;
    public int zzy = -1;
    public int zzz = -1;
    public int zzA = 1000;
    public int zzB = 200;
    public float zzC = -1.0f;
    public float zzD = -1.0f;
    public float zzE = -1.0f;
    public float zzF = -1.0f;
    public float zzG = -1.0f;
    public float zzH = -1.0f;
    public float zzI = -1.0f;
    public float zzJ = -1.0f;
    public float zzK = -1.0f;
    public float zzL = -1.0f;
    public int zzN = 1;
    public int zzO = -1;
    public int zzP = 8000;
    public long zzQ = 0;
    public long zzR = 0;
    public boolean zzU = true;
    private String zzY = "eng";

    private zzaaw() {
    }

    public /* synthetic */ zzaaw(zzaav zzaavVar) {
    }

    private static Pair<String, List<byte[]>> zzf(zzfd zzfdVar) throws zzbj {
        try {
            zzfdVar.zzG(16);
            long zzq = zzfdVar.zzq();
            if (zzq == 1482049860) {
                return new Pair<>("video/divx", null);
            }
            if (zzq == 859189832) {
                return new Pair<>("video/3gpp", null);
            }
            if (zzq != 826496599) {
                Log.w("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            }
            int zzc = zzfdVar.zzc() + 20;
            byte[] zzH = zzfdVar.zzH();
            while (true) {
                int length = zzH.length;
                if (zzc >= length - 4) {
                    throw zzbj.zza("Failed to find FourCC VC1 initialization data", null);
                }
                if (zzH[zzc] == 0 && zzH[zzc + 1] == 0 && zzH[zzc + 2] == 1 && zzH[zzc + 3] == 15) {
                    return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(zzH, zzc, length)));
                }
                zzc++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbj.zza("Error parsing FourCC private data", null);
        }
    }

    private static List<byte[]> zzg(byte[] bArr) throws zzbj {
        int i;
        int i2;
        try {
            if (bArr[0] != 2) {
                throw zzbj.zza("Error parsing vorbis codec private", null);
            }
            int i3 = 1;
            int i4 = 0;
            while (true) {
                i = bArr[i3] & 255;
                if (i != 255) {
                    break;
                }
                i4 += 255;
                i3++;
            }
            int i5 = i3 + 1;
            int i6 = i4 + i;
            int i7 = 0;
            while (true) {
                i2 = bArr[i5] & 255;
                if (i2 != 255) {
                    break;
                }
                i7 += 255;
                i5++;
            }
            int i8 = i5 + 1;
            if (bArr[i8] != 1) {
                throw zzbj.zza("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i8, bArr2, 0, i6);
            int i9 = i8 + i6;
            if (bArr[i9] != 3) {
                throw zzbj.zza("Error parsing vorbis codec private", null);
            }
            int i10 = i9 + i7 + i2;
            if (bArr[i10] != 5) {
                throw zzbj.zza("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i10;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i10, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbj.zza("Error parsing vorbis codec private", null);
        }
    }

    private static boolean zzh(zzfd zzfdVar) throws zzbj {
        UUID uuid;
        UUID uuid2;
        try {
            int zzi = zzfdVar.zzi();
            if (zzi == 1) {
                return true;
            }
            if (zzi != 65534) {
                return false;
            }
            zzfdVar.zzF(24);
            long zzr = zzfdVar.zzr();
            uuid = zzaay.zze;
            if (zzr != uuid.getMostSignificantBits()) {
                return false;
            }
            long zzr2 = zzfdVar.zzr();
            uuid2 = zzaay.zze;
            return zzr2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzbj.zza("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    private final byte[] zzi(String str) throws zzbj {
        byte[] bArr = this.zzj;
        if (bArr == null) {
            String valueOf = String.valueOf(str);
            throw zzbj.zza(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v246, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v256, types: [java.util.List<byte[]>] */
    /* JADX WARN: Type inference failed for: r0v264, types: [java.util.List<byte[]>] */
    /* JADX WARN: Type inference failed for: r0v276, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v280, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v299, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v321, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v399, types: [com.google.android.gms.internal.ads.zzfss] */
    /* JADX WARN: Type inference failed for: r0v403, types: [com.google.android.gms.internal.ads.zzfss] */
    /* JADX WARN: Type inference failed for: r0v411, types: [com.google.android.gms.internal.ads.zzfss] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v20 */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v28 */
    /* JADX WARN: Type inference failed for: r11v29 */
    /* JADX WARN: Type inference failed for: r11v30 */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v32 */
    /* JADX WARN: Type inference failed for: r11v33 */
    /* JADX WARN: Type inference failed for: r11v34 */
    /* JADX WARN: Type inference failed for: r11v35 */
    /* JADX WARN: Type inference failed for: r11v36 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42 */
    /* JADX WARN: Type inference failed for: r11v43 */
    /* JADX WARN: Type inference failed for: r11v44 */
    /* JADX WARN: Type inference failed for: r11v45 */
    /* JADX WARN: Type inference failed for: r11v46 */
    /* JADX WARN: Type inference failed for: r11v47 */
    /* JADX WARN: Type inference failed for: r11v48 */
    /* JADX WARN: Type inference failed for: r11v49 */
    /* JADX WARN: Type inference failed for: r11v50 */
    /* JADX WARN: Type inference failed for: r11v51 */
    @EnsuresNonNull({"this.output"})
    @RequiresNonNull({"codecId"})
    public final void zze(zzws zzwsVar, int i) throws zzbj {
        ?? r11;
        ArrayList arrayList;
        int i2;
        String str;
        int i3;
        Map map;
        int i4;
        zzm zzmVar;
        Map map2;
        Map map3;
        byte[] bArr;
        int i5;
        String str2;
        String str3;
        ArrayList arrayList2;
        String str4;
        String str5;
        ArrayList arrayList3;
        int i6;
        byte[] bArr2;
        String str6 = this.zzb;
        int i7 = 3;
        switch (str6.hashCode()) {
            case -2095576542:
                if (str6.equals("V_MPEG4/ISO/AP")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -2095575984:
                if (str6.equals("V_MPEG4/ISO/SP")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1985379776:
                if (str6.equals("A_MS/ACM")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1784763192:
                if (str6.equals("A_TRUEHD")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1730367663:
                if (str6.equals("A_VORBIS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1482641358:
                if (str6.equals("A_MPEG/L2")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1482641357:
                if (str6.equals("A_MPEG/L3")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -1373388978:
                if (str6.equals("V_MS/VFW/FOURCC")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -933872740:
                if (str6.equals("S_DVBSUB")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -538363189:
                if (str6.equals("V_MPEG4/ISO/ASP")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -538363109:
                if (str6.equals("V_MPEG4/ISO/AVC")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -425012669:
                if (str6.equals("S_VOBSUB")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case -356037306:
                if (str6.equals("A_DTS/LOSSLESS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 62923557:
                if (str6.equals("A_AAC")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 62923603:
                if (str6.equals("A_AC3")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 62927045:
                if (str6.equals("A_DTS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 82318131:
                if (str6.equals("V_AV1")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 82338133:
                if (str6.equals("V_VP8")) {
                    r11 = false;
                    break;
                }
                r11 = true;
                break;
            case 82338134:
                if (str6.equals("V_VP9")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 99146302:
                if (str6.equals("S_HDMV/PGS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 444813526:
                if (str6.equals("V_THEORA")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 542569478:
                if (str6.equals("A_DTS/EXPRESS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 635596514:
                if (str6.equals("A_PCM/FLOAT/IEEE")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 725948237:
                if (str6.equals("A_PCM/INT/BIG")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 725957860:
                if (str6.equals("A_PCM/INT/LIT")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 738597099:
                if (str6.equals("S_TEXT/ASS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 855502857:
                if (str6.equals("V_MPEGH/ISO/HEVC")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 1422270023:
                if (str6.equals("S_TEXT/UTF8")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 1809237540:
                if (str6.equals("V_MPEG2")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 1950749482:
                if (str6.equals("A_EAC3")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 1950789798:
                if (str6.equals("A_FLAC")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            case 1951062397:
                if (str6.equals("A_OPUS")) {
                    r11 = true;
                    break;
                }
                r11 = true;
                break;
            default:
                r11 = true;
                break;
        }
        String str7 = "audio/raw";
        switch (r11) {
            case 0:
                str4 = "video/x-vnd.on2.vp8";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 1:
                str4 = "video/x-vnd.on2.vp9";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 2:
                str4 = "video/av01";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 3:
                str4 = "video/mpeg2";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 4:
            case 5:
            case 6:
                byte[] bArr3 = this.zzj;
                arrayList2 = bArr3 == null ? null : Collections.singletonList(bArr3);
                str3 = "video/mp4v-es";
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 7:
                zzvz zza = zzvz.zza(new zzfd(zzi(str6)));
                arrayList3 = zza.zza;
                this.zzW = zza.zzb;
                str5 = zza.zzf;
                str7 = "video/avc";
                i2 = -1;
                i7 = -1;
                String str8 = str5;
                arrayList = arrayList3;
                str = str8;
                break;
            case 8:
                zzxg zza2 = zzxg.zza(new zzfd(zzi(str6)));
                arrayList3 = zza2.zza;
                this.zzW = zza2.zzb;
                str5 = zza2.zzd;
                str7 = "video/hevc";
                i2 = -1;
                i7 = -1;
                String str82 = str5;
                arrayList = arrayList3;
                str = str82;
                break;
            case 9:
                Pair<String, List<byte[]>> zzf = zzf(new zzfd(zzi(str6)));
                str3 = (String) zzf.first;
                arrayList2 = (List) zzf.second;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 10:
                str4 = "video/x-unknown";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 11:
                arrayList = zzg(zzi(str6));
                str7 = "audio/vorbis";
                str = null;
                i2 = 8192;
                i7 = -1;
                break;
            case 12:
                arrayList = new ArrayList(3);
                arrayList.add(zzi(this.zzb));
                ByteBuffer allocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                arrayList.add(allocate.order(byteOrder).putLong(this.zzQ).array());
                arrayList.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.zzR).array());
                str7 = "audio/opus";
                str = null;
                i2 = 5760;
                i7 = -1;
                break;
            case 13:
                arrayList = Collections.singletonList(zzi(str6));
                zzvr zza3 = zzvs.zza(this.zzj);
                this.zzP = zza3.zza;
                this.zzN = zza3.zzb;
                str2 = zza3.zzc;
                str7 = "audio/mp4a-latm";
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 14:
                str7 = "audio/mpeg-L2";
                arrayList = null;
                str = null;
                i2 = 4096;
                i7 = -1;
                break;
            case 15:
                str7 = "audio/mpeg";
                arrayList = null;
                str = null;
                i2 = 4096;
                i7 = -1;
                break;
            case 16:
                str4 = "audio/ac3";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 17:
                str4 = "audio/eac3";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 18:
                this.zzS = new zzaax();
                str4 = "audio/true-hd";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 19:
            case 20:
                str4 = "audio/vnd.dts";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 21:
                str4 = "audio/vnd.dts.hd";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 22:
                arrayList2 = Collections.singletonList(zzi(str6));
                str3 = "audio/flac";
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 23:
                if (zzh(new zzfd(zzi(str6)))) {
                    int zzl = zzfn.zzl(this.zzO);
                    i6 = zzl;
                    if (zzl == 0) {
                        int i8 = this.zzO;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i8);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    i7 = i6;
                    arrayList = null;
                    str = null;
                    i2 = -1;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                str4 = "audio/x-unknown";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 24:
                int zzl2 = zzfn.zzl(this.zzO);
                i6 = zzl2;
                if (zzl2 == 0) {
                    int i9 = this.zzO;
                    StringBuilder sb2 = new StringBuilder(89);
                    sb2.append("Unsupported little endian PCM bit depth: ");
                    sb2.append(i9);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str4 = "audio/x-unknown";
                    str3 = str4;
                    arrayList2 = null;
                    str2 = null;
                    str7 = str3;
                    arrayList = arrayList2;
                    i2 = -1;
                    str = str2;
                    i7 = -1;
                    break;
                }
                i7 = i6;
                arrayList = null;
                str = null;
                i2 = -1;
                break;
            case 25:
                int i10 = this.zzO;
                if (i10 != 8) {
                    if (i10 != 16) {
                        StringBuilder sb3 = new StringBuilder(86);
                        sb3.append("Unsupported big endian PCM bit depth: ");
                        sb3.append(i10);
                        sb3.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb3.toString());
                        str4 = "audio/x-unknown";
                        str3 = str4;
                        arrayList2 = null;
                        str2 = null;
                        str7 = str3;
                        arrayList = arrayList2;
                        i2 = -1;
                        str = str2;
                        i7 = -1;
                        break;
                    } else {
                        arrayList = null;
                        str = null;
                        i2 = -1;
                        i7 = 268435456;
                        break;
                    }
                }
                arrayList = null;
                str = null;
                i2 = -1;
                break;
            case 26:
                int i11 = this.zzO;
                if (i11 != 32) {
                    StringBuilder sb4 = new StringBuilder(90);
                    sb4.append("Unsupported floating point PCM bit depth: ");
                    sb4.append(i11);
                    sb4.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb4.toString());
                    str4 = "audio/x-unknown";
                    str3 = str4;
                    arrayList2 = null;
                    str2 = null;
                    str7 = str3;
                    arrayList = arrayList2;
                    i2 = -1;
                    str = str2;
                    i7 = -1;
                    break;
                } else {
                    arrayList = null;
                    str = null;
                    i2 = -1;
                    i7 = 4;
                    break;
                }
            case 27:
                str4 = "application/x-subrip";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 28:
                bArr2 = zzaay.zzc;
                arrayList2 = zzfss.zzq(bArr2, zzi(this.zzb));
                str3 = "text/x-ssa";
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case 29:
                arrayList2 = zzfss.zzp(zzi(str6));
                str3 = "application/vobsub";
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                str4 = "application/pgs";
                str3 = str4;
                arrayList2 = null;
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                byte[] bArr4 = new byte[4];
                System.arraycopy(zzi(str6), 0, bArr4, 0, 4);
                arrayList2 = zzfss.zzp(bArr4);
                str3 = "application/dvbsubs";
                str2 = null;
                str7 = str3;
                arrayList = arrayList2;
                i2 = -1;
                str = str2;
                i7 = -1;
                break;
            default:
                throw zzbj.zza("Unrecognized codec identifier.", null);
        }
        byte[] bArr5 = this.zzM;
        String str9 = str;
        String str10 = str7;
        if (bArr5 != null) {
            zzwm zza4 = zzwm.zza(new zzfd(bArr5));
            str9 = str;
            str10 = str7;
            if (zza4 != null) {
                str9 = zza4.zza;
                str10 = "video/dolby-vision";
            }
        }
        boolean z = this.zzU;
        int i12 = true != this.zzT ? 0 : 2;
        zzz zzzVar = new zzz();
        if (zzbi.zzg(str10)) {
            zzzVar.zzw(this.zzN);
            zzzVar.zzT(this.zzP);
            zzzVar.zzN(i7);
            i3 = 1;
        } else if (zzbi.zzh(str10)) {
            if (this.zzp == 0) {
                int i13 = this.zzn;
                int i14 = i13;
                if (i13 == -1) {
                    i14 = this.zzl;
                }
                this.zzn = i14;
                int i15 = this.zzo;
                int i16 = i15;
                if (i15 == -1) {
                    i16 = this.zzm;
                }
                this.zzo = i16;
            }
            float f = (this.zzn == -1 || (i5 = this.zzo) == -1) ? -1.0f : (this.zzm * i4) / (this.zzl * i5);
            if (this.zzw) {
                if (this.zzC == -1.0f || this.zzD == -1.0f || this.zzE == -1.0f || this.zzF == -1.0f || this.zzG == -1.0f || this.zzH == -1.0f || this.zzI == -1.0f || this.zzJ == -1.0f || this.zzK == -1.0f || this.zzL == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    order.put((byte) 0);
                    order.putShort((short) ((this.zzC * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzD * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzE * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzF * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzG * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzH * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzI * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.zzJ * 50000.0f) + 0.5f));
                    order.putShort((short) (this.zzK + 0.5f));
                    order.putShort((short) (this.zzL + 0.5f));
                    order.putShort((short) this.zzA);
                    order.putShort((short) this.zzB);
                }
                zzmVar = new zzm(this.zzx, this.zzz, this.zzy, bArr);
            } else {
                zzmVar = null;
            }
            int i17 = -1;
            if (this.zza != null) {
                i17 = -1;
                map2 = zzaay.zzf;
                if (map2.containsKey(this.zza)) {
                    map3 = zzaay.zzf;
                    i17 = ((Integer) map3.get(this.zza)).intValue();
                }
            }
            if (this.zzq == 0 && Float.compare(this.zzr, 0.0f) == 0 && Float.compare(this.zzs, 0.0f) == 0) {
                if (Float.compare(this.zzt, 0.0f) == 0) {
                    i17 = 0;
                } else if (Float.compare(this.zzs, 90.0f) == 0) {
                    i17 = 90;
                } else if (Float.compare(this.zzs, -180.0f) == 0 || Float.compare(this.zzs, 180.0f) == 0) {
                    i17 = 180;
                } else if (Float.compare(this.zzs, -90.0f) == 0) {
                    i17 = 270;
                }
            }
            zzzVar.zzX(this.zzl);
            zzzVar.zzF(this.zzm);
            zzzVar.zzP(f);
            zzzVar.zzR(i17);
            zzzVar.zzQ(this.zzu);
            zzzVar.zzV(this.zzv);
            zzzVar.zzy(zzmVar);
            i3 = 2;
        } else if (!"application/x-subrip".equals(str10) && !"text/x-ssa".equals(str10) && !"application/vobsub".equals(str10) && !"application/pgs".equals(str10) && !"application/dvbsubs".equals(str10)) {
            throw zzbj.zza("Unexpected MIME type.", null);
        } else {
            i3 = 3;
        }
        if (this.zza != null) {
            map = zzaay.zzf;
            if (!map.containsKey(this.zza)) {
                zzzVar.zzJ(this.zza);
            }
        }
        zzzVar.zzG(i);
        zzzVar.zzS(str10);
        zzzVar.zzL(i2);
        zzzVar.zzK(this.zzY);
        zzzVar.zzU((z ? 1 : 0) | i12);
        zzzVar.zzI(arrayList);
        zzzVar.zzx(str9);
        zzzVar.zzB(this.zzk);
        zzab zzY = zzzVar.zzY();
        zzxt zzv = zzwsVar.zzv(this.zzc, i3);
        this.zzV = zzv;
        zzv.zzk(zzY);
    }
}
