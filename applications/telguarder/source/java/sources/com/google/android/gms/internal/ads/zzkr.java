package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzkr.class */
public final class zzkr {
    public int height;
    public int number;
    public int type;
    public int width;
    public zzjo zzahh;
    public int zzahl;
    public byte[] zzahm;
    public int zzaho;
    public int zzahp;
    private String zzahv;
    public String zzarl;
    public int zzarm;
    public boolean zzarn;
    public byte[] zzaro;
    public zzkk zzarp;
    public byte[] zzarq;
    public int zzarr;
    public int zzars;
    public int zzart;
    public boolean zzaru;
    public int zzarv;
    public int zzarw;
    public int zzarx;
    public int zzary;
    public int zzarz;
    public float zzasa;
    public float zzasb;
    public float zzasc;
    public float zzasd;
    public float zzase;
    public float zzasf;
    public float zzasg;
    public float zzash;
    public float zzasi;
    public float zzasj;
    public int zzask;
    public long zzasl;
    public long zzasm;
    public boolean zzasn;
    public boolean zzaso;
    public zzkh zzasp;
    public int zzasq;

    private zzkr() {
        this.width = -1;
        this.height = -1;
        this.zzarr = -1;
        this.zzars = -1;
        this.zzart = 0;
        this.zzahm = null;
        this.zzahl = -1;
        this.zzaru = false;
        this.zzarv = -1;
        this.zzarw = -1;
        this.zzarx = -1;
        this.zzary = 1000;
        this.zzarz = 200;
        this.zzasa = -1.0f;
        this.zzasb = -1.0f;
        this.zzasc = -1.0f;
        this.zzasd = -1.0f;
        this.zzase = -1.0f;
        this.zzasf = -1.0f;
        this.zzasg = -1.0f;
        this.zzash = -1.0f;
        this.zzasi = -1.0f;
        this.zzasj = -1.0f;
        this.zzaho = 1;
        this.zzask = -1;
        this.zzahp = 8000;
        this.zzasl = 0L;
        this.zzasm = 0L;
        this.zzaso = true;
        this.zzahv = "eng";
    }

    public /* synthetic */ zzkr(zzkp zzkpVar) {
        this();
    }

    public static /* synthetic */ String zza(zzkr zzkrVar, String str) {
        zzkrVar.zzahv = str;
        return str;
    }

    private static List<byte[]> zza(zzpn zzpnVar) throws zzhw {
        try {
            zzpnVar.zzbj(16);
            if (zzpnVar.zziy() != 826496599) {
                return null;
            }
            byte[] bArr = zzpnVar.data;
            for (int position = zzpnVar.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                }
            }
            throw new zzhw("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing FourCC VC1 codec private");
        }
    }

    private static boolean zzb(zzpn zzpnVar) throws zzhw {
        UUID uuid;
        UUID uuid2;
        try {
            int zziw = zzpnVar.zziw();
            if (zziw == 1) {
                return true;
            }
            if (zziw != 65534) {
                return false;
            }
            zzpnVar.zzbi(24);
            long readLong = zzpnVar.readLong();
            uuid = zzkq.zzapn;
            if (readLong != uuid.getMostSignificantBits()) {
                return false;
            }
            long readLong2 = zzpnVar.readLong();
            uuid2 = zzkq.zzapn;
            return readLong2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing MS/ACM codec private");
        }
    }

    private static List<byte[]> zzd(byte[] bArr) throws zzhw {
        try {
            if (bArr[0] != 2) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            int i = 1;
            int i2 = 0;
            while (bArr[i] == -1) {
                i2 += 255;
                i++;
            }
            int i3 = i + 1;
            int i4 = i2 + bArr[i];
            int i5 = 0;
            int i6 = i3;
            while (bArr[i6] == -1) {
                i5 += 255;
                i6++;
            }
            int i7 = i6 + 1;
            byte b = bArr[i6];
            if (bArr[i7] != 1) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i7, bArr2, 0, i4);
            int i8 = i7 + i4;
            if (bArr[i8] != 3) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            int i9 = i8 + i5 + b;
            if (bArr[i9] != 5) {
                throw new zzhw("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i9];
            System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhw("Error parsing vorbis codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void zza(zzkc zzkcVar, int i) throws zzhw {
        boolean z;
        int i2;
        String str;
        int i3;
        ArrayList arrayList;
        zzht zzhtVar;
        int i4;
        int i5;
        zzpy zzpyVar;
        byte[] bArr;
        int i6;
        List<byte[]> singletonList;
        String str2;
        int i7;
        List<byte[]> list;
        String str3 = this.zzarl;
        str3.hashCode();
        switch (str3.hashCode()) {
            case -2095576542:
                if (str3.equals("V_MPEG4/ISO/AP")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -2095575984:
                if (str3.equals("V_MPEG4/ISO/SP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1985379776:
                if (str3.equals("A_MS/ACM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1784763192:
                if (str3.equals("A_TRUEHD")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1730367663:
                if (str3.equals("A_VORBIS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641358:
                if (str3.equals("A_MPEG/L2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641357:
                if (str3.equals("A_MPEG/L3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1373388978:
                if (str3.equals("V_MS/VFW/FOURCC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -933872740:
                if (str3.equals("S_DVBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363189:
                if (str3.equals("V_MPEG4/ISO/ASP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363109:
                if (str3.equals("V_MPEG4/ISO/AVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -425012669:
                if (str3.equals("S_VOBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -356037306:
                if (str3.equals("A_DTS/LOSSLESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923557:
                if (str3.equals("A_AAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923603:
                if (str3.equals("A_AC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62927045:
                if (str3.equals("A_DTS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338133:
                if (str3.equals("V_VP8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338134:
                if (str3.equals("V_VP9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99146302:
                if (str3.equals("S_HDMV/PGS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 444813526:
                if (str3.equals("V_THEORA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 542569478:
                if (str3.equals("A_DTS/EXPRESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725957860:
                if (str3.equals("A_PCM/INT/LIT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 855502857:
                if (str3.equals("V_MPEGH/ISO/HEVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1422270023:
                if (str3.equals("S_TEXT/UTF8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1809237540:
                if (str3.equals("V_MPEG2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950749482:
                if (str3.equals("A_EAC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950789798:
                if (str3.equals("A_FLAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1951062397:
                if (str3.equals("A_OPUS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        String str4 = "audio/raw";
        switch (z) {
            case false:
            case true:
            case true:
                byte[] bArr2 = this.zzarq;
                singletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                str2 = "video/mp4v-es";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                if (zzb(new zzpn(this.zzarq))) {
                    int zzbo = zzpt.zzbo(this.zzask);
                    i7 = zzbo;
                    if (zzbo == 0) {
                        int i8 = this.zzask;
                        StringBuilder sb = new StringBuilder("audio/x-unknown".length() + 60);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i8);
                        sb.append(". Setting mimeType to ");
                        sb.append("audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    list = null;
                    i2 = i7;
                    i3 = -1;
                    str = str4;
                    arrayList = list;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "audio/x-unknown".length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown") : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to "));
                }
                str2 = "audio/x-unknown";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
            case true:
                str2 = "audio/true-hd";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                arrayList = zzd(this.zzarq);
                str = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case true:
                str = "audio/mpeg-L2";
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case true:
                str = "audio/mpeg";
                arrayList = null;
                i2 = -1;
                i3 = 4096;
                break;
            case true:
                singletonList = zza(new zzpn(this.zzarq));
                if (singletonList != null) {
                    str2 = "video/wvc1";
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str2 = "video/x-unknown";
                }
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                byte[] bArr3 = this.zzarq;
                singletonList = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str2 = "application/dvbsubs";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                zzpv zzg = zzpv.zzg(new zzpn(this.zzarq));
                singletonList = zzg.zzahg;
                this.zzasq = zzg.zzasq;
                str2 = "video/avc";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                singletonList = Collections.singletonList(this.zzarq);
                str2 = "application/vobsub";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "audio/vnd.dts.hd";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                singletonList = Collections.singletonList(this.zzarq);
                str2 = "audio/mp4a-latm";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "audio/ac3";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
            case true:
                str2 = "audio/vnd.dts";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "video/x-vnd.on2.vp8";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "video/x-vnd.on2.vp9";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                singletonList = null;
                str2 = "application/pgs";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "video/x-unknown";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                int zzbo2 = zzpt.zzbo(this.zzask);
                i7 = zzbo2;
                if (zzbo2 == 0) {
                    int i9 = this.zzask;
                    StringBuilder sb2 = new StringBuilder("audio/x-unknown".length() + 60);
                    sb2.append("Unsupported PCM bit depth: ");
                    sb2.append(i9);
                    sb2.append(". Setting mimeType to ");
                    sb2.append("audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str2 = "audio/x-unknown";
                    singletonList = null;
                    i2 = -1;
                    str4 = str2;
                    list = singletonList;
                    i3 = -1;
                    str = str4;
                    arrayList = list;
                    break;
                }
                list = null;
                i2 = i7;
                i3 = -1;
                str = str4;
                arrayList = list;
            case true:
                zzqb zzi = zzqb.zzi(new zzpn(this.zzarq));
                singletonList = zzi.zzahg;
                this.zzasq = zzi.zzasq;
                str2 = "video/hevc";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "application/x-subrip";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "video/mpeg2";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                str2 = "audio/eac3";
                singletonList = null;
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                singletonList = Collections.singletonList(this.zzarq);
                str2 = "audio/x-flac";
                i2 = -1;
                str4 = str2;
                list = singletonList;
                i3 = -1;
                str = str4;
                arrayList = list;
                break;
            case true:
                ArrayList arrayList2 = new ArrayList(3);
                arrayList2.add(this.zzarq);
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzasl).array());
                arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.zzasm).array());
                str = "audio/opus";
                i2 = -1;
                i3 = 5760;
                arrayList = arrayList2;
                break;
            default:
                throw new zzhw("Unrecognized codec identifier.");
        }
        int i10 = (this.zzaso ? 1 : 0) | 0 | (this.zzasn ? 2 : 0);
        if (zzpj.zzbc(str)) {
            zzhtVar = zzht.zza(Integer.toString(i), str, null, -1, i3, this.zzaho, this.zzahp, i2, arrayList, this.zzahh, i10, this.zzahv);
            i4 = 1;
        } else if (zzpj.zzbd(str)) {
            if (this.zzart == 0) {
                int i11 = this.zzarr;
                int i12 = i11;
                if (i11 == -1) {
                    i12 = this.width;
                }
                this.zzarr = i12;
                int i13 = this.zzars;
                int i14 = i13;
                if (i13 == -1) {
                    i14 = this.height;
                }
                this.zzars = i14;
            }
            float f = (this.zzarr == -1 || (i6 = this.zzars) == -1) ? -1.0f : (this.height * i5) / (this.width * i6);
            if (this.zzaru) {
                if (this.zzasa == -1.0f || this.zzasb == -1.0f || this.zzasc == -1.0f || this.zzasd == -1.0f || this.zzase == -1.0f || this.zzasf == -1.0f || this.zzasg == -1.0f || this.zzash == -1.0f || this.zzasi == -1.0f || this.zzasj == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.zzasa * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzasb * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzasc * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzasd * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzase * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzasf * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzasg * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.zzash * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.zzasi + 0.5f));
                    wrap.putShort((short) (this.zzasj + 0.5f));
                    wrap.putShort((short) this.zzary);
                    wrap.putShort((short) this.zzarz);
                }
                zzpyVar = new zzpy(this.zzarv, this.zzarx, this.zzarw, bArr);
            } else {
                zzpyVar = null;
            }
            zzhtVar = zzht.zza(Integer.toString(i), str, null, -1, i3, this.width, this.height, -1.0f, arrayList, -1, f, this.zzahm, this.zzahl, zzpyVar, this.zzahh);
            i4 = 2;
        } else {
            if ("application/x-subrip".equals(str)) {
                zzhtVar = zzht.zza(Integer.toString(i), str, (String) null, -1, i10, this.zzahv, this.zzahh);
            } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                throw new zzhw("Unexpected MIME type.");
            } else {
                zzhtVar = zzht.zza(Integer.toString(i), str, (String) null, -1, arrayList, this.zzahv, this.zzahh);
            }
            i4 = 3;
        }
        zzkh zzc = zzkcVar.zzc(this.number, i4);
        this.zzasp = zzc;
        zzc.zze(zzhtVar);
    }
}
