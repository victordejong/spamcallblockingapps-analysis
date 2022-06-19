package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
/* renamed from: com.google.android.gms.internal.ads.ee */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ee.class */
public final class C6438ee {

    /* renamed from: L */
    public boolean f22084L;

    /* renamed from: O */
    public AbstractC7104wd f22087O;

    /* renamed from: P */
    public int f22088P;

    /* renamed from: a */
    public String f22089a;

    /* renamed from: b */
    public int f22090b;

    /* renamed from: c */
    public int f22091c;

    /* renamed from: d */
    public int f22092d;

    /* renamed from: e */
    public boolean f22093e;

    /* renamed from: f */
    public byte[] f22094f;

    /* renamed from: g */
    public C7067vd f22095g;

    /* renamed from: h */
    public byte[] f22096h;

    /* renamed from: i */
    public zzapk f22097i;

    /* renamed from: j */
    public int f22098j = -1;

    /* renamed from: k */
    public int f22099k = -1;

    /* renamed from: l */
    public int f22100l = -1;

    /* renamed from: m */
    public int f22101m = -1;

    /* renamed from: n */
    public int f22102n = 0;

    /* renamed from: o */
    public byte[] f22103o = null;

    /* renamed from: p */
    public int f22104p = -1;

    /* renamed from: q */
    public boolean f22105q = false;

    /* renamed from: r */
    public int f22106r = -1;

    /* renamed from: s */
    public int f22107s = -1;

    /* renamed from: t */
    public int f22108t = -1;

    /* renamed from: u */
    public int f22109u = 1000;

    /* renamed from: v */
    public int f22110v = 200;

    /* renamed from: w */
    public float f22111w = -1.0f;

    /* renamed from: x */
    public float f22112x = -1.0f;

    /* renamed from: y */
    public float f22113y = -1.0f;

    /* renamed from: z */
    public float f22114z = -1.0f;

    /* renamed from: A */
    public float f22073A = -1.0f;

    /* renamed from: B */
    public float f22074B = -1.0f;

    /* renamed from: C */
    public float f22075C = -1.0f;

    /* renamed from: D */
    public float f22076D = -1.0f;

    /* renamed from: E */
    public float f22077E = -1.0f;

    /* renamed from: F */
    public float f22078F = -1.0f;

    /* renamed from: G */
    public int f22079G = 1;

    /* renamed from: H */
    public int f22080H = -1;

    /* renamed from: I */
    public int f22081I = 8000;

    /* renamed from: J */
    public long f22082J = 0;

    /* renamed from: K */
    public long f22083K = 0;

    /* renamed from: M */
    public boolean f22085M = true;

    /* renamed from: N */
    private String f22086N = "eng";

    private C6438ee() {
    }

    public /* synthetic */ C6438ee(C6400de c6400de) {
    }

    /* renamed from: c */
    private static List<byte[]> m15520c(C6665ki c6665ki) {
        try {
            c6665ki.m13898j(16);
            if (c6665ki.m13891q() != 826496599) {
                return null;
            }
            int m13901g = c6665ki.m13901g() + 20;
            byte[] bArr = c6665ki.f25221a;
            while (true) {
                int length = bArr.length;
                if (m13901g >= length - 4) {
                    throw new zzanp("Failed to find FourCC VC1 initialization data");
                }
                if (bArr[m13901g] == 0 && bArr[m13901g + 1] == 0 && bArr[m13901g + 2] == 1 && bArr[m13901g + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, m13901g, length));
                }
                m13901g++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: d */
    private static List<byte[]> m15519d(byte[] bArr) {
        byte b;
        byte b2;
        try {
            if (bArr[0] != 2) {
                throw new zzanp("Error parsing vorbis codec private");
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
                throw new zzanp("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i7 = i6 + i4;
            if (bArr[i7] != 3) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            int i8 = i7 + i5 + b2;
            if (bArr[i8] != 5) {
                throw new zzanp("Error parsing vorbis codec private");
            }
            int length = bArr.length - i8;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i8, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing vorbis codec private");
        }
    }

    /* renamed from: e */
    private static boolean m15518e(C6665ki c6665ki) {
        UUID uuid;
        UUID uuid2;
        try {
            int m13894n = c6665ki.m13894n();
            if (m13894n == 1) {
                return true;
            }
            if (m13894n != 65534) {
                return false;
            }
            c6665ki.m13899i(24);
            long m13889s = c6665ki.m13889s();
            uuid = C6475fe.f22805d;
            if (m13889s != uuid.getMostSignificantBits()) {
                return false;
            }
            long m13889s2 = c6665ki.m13889s();
            uuid2 = C6475fe.f22805d;
            return m13889s2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzanp("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public final void m15521b(AbstractC6808od abstractC6808od, int i) {
        boolean z;
        int i2;
        String str;
        int i3;
        ArrayList arrayList;
        zzanm zzanmVar;
        int i4;
        int i5;
        zzavh zzavhVar;
        byte[] bArr;
        int i6;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2;
        int i7;
        String str3 = this.f22089a;
        switch (str3.hashCode()) {
            case -2095576542:
                if (str3.equals("V_MPEG4/ISO/AP")) {
                    z = true;
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
                    z = false;
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
                str2 = "video/x-vnd.on2.vp8";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/x-vnd.on2.vp9";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/mpeg2";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
            case true:
            case true:
                byte[] bArr2 = this.f22096h;
                str2 = "video/mp4v-es";
                arrayList3 = bArr2 == null ? null : Collections.singletonList(bArr2);
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                C6998ti m10657a = C6998ti.m10657a(new C6665ki(this.f22096h));
                arrayList3 = m10657a.f30009a;
                this.f22088P = m10657a.f30010b;
                str2 = "video/avc";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                C7146xi m9153a = C7146xi.m9153a(new C6665ki(this.f22096h));
                arrayList3 = m9153a.f32061a;
                this.f22088P = m9153a.f32062b;
                str2 = "video/hevc";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                List<byte[]> m15520c = m15520c(new C6665ki(this.f22096h));
                if (m15520c != null) {
                    str2 = "video/wvc1";
                    arrayList3 = m15520c;
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str2 = "video/x-unknown";
                    arrayList3 = m15520c;
                }
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/x-unknown";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                arrayList = m15519d(this.f22096h);
                str = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case true:
                ArrayList arrayList4 = new ArrayList(3);
                arrayList4.add(this.f22096h);
                arrayList4.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f22082J).array());
                arrayList4.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f22083K).array());
                str = "audio/opus";
                i2 = -1;
                i3 = 5760;
                arrayList = arrayList4;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f22096h);
                str2 = "audio/mp4a-latm";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
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
                str2 = "audio/ac3";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/eac3";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/true-hd";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
            case true:
                str2 = "audio/vnd.dts";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/vnd.dts.hd";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f22096h);
                str2 = "audio/x-flac";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                if (m15518e(new C6665ki(this.f22096h))) {
                    int m11007o = C6961si.m11007o(this.f22080H);
                    i7 = m11007o;
                    if (m11007o == 0) {
                        int i8 = this.f22080H;
                        StringBuilder sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i8);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb.toString());
                    }
                    arrayList2 = null;
                    i2 = i7;
                    i3 = -1;
                    str = str4;
                    arrayList = arrayList2;
                    break;
                } else {
                    Log.w("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                }
                str2 = "audio/x-unknown";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
            case true:
                int m11007o2 = C6961si.m11007o(this.f22080H);
                i7 = m11007o2;
                if (m11007o2 == 0) {
                    int i9 = this.f22080H;
                    StringBuilder sb2 = new StringBuilder(75);
                    sb2.append("Unsupported PCM bit depth: ");
                    sb2.append(i9);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str2 = "audio/x-unknown";
                    arrayList3 = null;
                    i2 = -1;
                    str4 = str2;
                    arrayList2 = arrayList3;
                    i3 = -1;
                    str = str4;
                    arrayList = arrayList2;
                    break;
                }
                arrayList2 = null;
                i2 = i7;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
            case true:
                str2 = "application/x-subrip";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f22096h);
                str2 = "application/vobsub";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "application/pgs";
                arrayList3 = null;
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            case true:
                byte[] bArr3 = this.f22096h;
                arrayList3 = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str2 = "application/dvbsubs";
                i2 = -1;
                str4 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str4;
                arrayList = arrayList2;
                break;
            default:
                throw new zzanp("Unrecognized codec identifier.");
        }
        int i10 = (this.f22085M ? 1 : 0) | (true != this.f22084L ? 0 : 2);
        if (C6553hi.m14641a(str)) {
            zzanmVar = zzanm.m8110c(Integer.toString(i), str, null, -1, i3, this.f22079G, this.f22081I, i2, -1, -1, arrayList, this.f22097i, i10, this.f22086N, null);
            i4 = 1;
        } else if (C6553hi.m14640b(str)) {
            if (this.f22102n == 0) {
                int i11 = this.f22100l;
                int i12 = i11;
                if (i11 == -1) {
                    i12 = this.f22098j;
                }
                this.f22100l = i12;
                int i13 = this.f22101m;
                int i14 = i13;
                if (i13 == -1) {
                    i14 = this.f22099k;
                }
                this.f22101m = i14;
            }
            float f = (this.f22100l == -1 || (i6 = this.f22101m) == -1) ? -1.0f : (this.f22099k * i5) / (this.f22098j * i6);
            if (this.f22105q) {
                if (this.f22111w == -1.0f || this.f22112x == -1.0f || this.f22113y == -1.0f || this.f22114z == -1.0f || this.f22073A == -1.0f || this.f22074B == -1.0f || this.f22075C == -1.0f || this.f22076D == -1.0f || this.f22077E == -1.0f || this.f22078F == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.f22111w * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22112x * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22113y * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22114z * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22073A * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22074B * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22075C * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f22076D * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.f22077E + 0.5f));
                    wrap.putShort((short) (this.f22078F + 0.5f));
                    wrap.putShort((short) this.f22109u);
                    wrap.putShort((short) this.f22110v);
                }
                zzavhVar = new zzavh(this.f22106r, this.f22108t, this.f22107s, bArr);
            } else {
                zzavhVar = null;
            }
            zzanmVar = zzanm.m8112a(Integer.toString(i), str, null, -1, i3, this.f22098j, this.f22099k, -1.0f, arrayList, -1, f, this.f22103o, this.f22104p, zzavhVar, this.f22097i);
            i4 = 2;
        } else {
            if ("application/x-subrip".equals(str)) {
                zzanmVar = zzanm.m8109d(Integer.toString(i), str, null, -1, i10, this.f22086N, -1, this.f22097i, Long.MAX_VALUE, Collections.emptyList());
            } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                throw new zzanp("Unexpected MIME type.");
            } else {
                zzanmVar = zzanm.m8108e(Integer.toString(i), str, null, -1, arrayList, this.f22086N, this.f22097i);
            }
            i4 = 3;
        }
        AbstractC7104wd mo12694p = abstractC6808od.mo12694p(this.f22090b, i4);
        this.f22087O = mo12694p;
        mo12694p.mo9666c(zzanmVar);
    }
}
