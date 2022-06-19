package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nn2.class */
final class nn2 {

    /* renamed from: L */
    public boolean f7739L;

    /* renamed from: O */
    public hn2 f7742O;

    /* renamed from: P */
    public int f7743P;

    /* renamed from: a */
    public String f7744a;

    /* renamed from: b */
    public int f7745b;

    /* renamed from: c */
    public int f7746c;

    /* renamed from: d */
    public int f7747d;

    /* renamed from: e */
    public boolean f7748e;

    /* renamed from: f */
    public byte[] f7749f;

    /* renamed from: g */
    public gn2 f7750g;

    /* renamed from: h */
    public byte[] f7751h;

    /* renamed from: i */
    public zzkq f7752i;

    /* renamed from: j */
    public int f7753j = -1;

    /* renamed from: k */
    public int f7754k = -1;

    /* renamed from: l */
    public int f7755l = -1;

    /* renamed from: m */
    public int f7756m = -1;

    /* renamed from: n */
    public int f7757n = 0;

    /* renamed from: o */
    public byte[] f7758o = null;

    /* renamed from: p */
    public int f7759p = -1;

    /* renamed from: q */
    public boolean f7760q = false;

    /* renamed from: r */
    public int f7761r = -1;

    /* renamed from: s */
    public int f7762s = -1;

    /* renamed from: t */
    public int f7763t = -1;

    /* renamed from: u */
    public int f7764u = 1000;

    /* renamed from: v */
    public int f7765v = 200;

    /* renamed from: w */
    public float f7766w = -1.0f;

    /* renamed from: x */
    public float f7767x = -1.0f;

    /* renamed from: y */
    public float f7768y = -1.0f;

    /* renamed from: z */
    public float f7769z = -1.0f;

    /* renamed from: A */
    public float f7728A = -1.0f;

    /* renamed from: B */
    public float f7729B = -1.0f;

    /* renamed from: C */
    public float f7730C = -1.0f;

    /* renamed from: D */
    public float f7731D = -1.0f;

    /* renamed from: E */
    public float f7732E = -1.0f;

    /* renamed from: F */
    public float f7733F = -1.0f;

    /* renamed from: G */
    public int f7734G = 1;

    /* renamed from: H */
    public int f7735H = -1;

    /* renamed from: I */
    public int f7736I = 8000;

    /* renamed from: J */
    public long f7737J = 0;

    /* renamed from: K */
    public long f7738K = 0;

    /* renamed from: M */
    public boolean f7740M = true;

    /* renamed from: N */
    private String f7741N = "eng";

    private nn2() {
    }

    /* synthetic */ nn2(ln2 ln2Var) {
    }

    /* renamed from: c */
    private static List<byte[]> m6415c(sr2 sr2Var) {
        try {
            sr2Var.m5607j(16);
            if (sr2Var.m5600q() != 826496599) {
                return null;
            }
            int m5610g = sr2Var.m5610g() + 20;
            byte[] bArr = sr2Var.f8551a;
            while (true) {
                int length = bArr.length;
                if (m5610g >= length - 4) {
                    throw new zziw("Failed to find FourCC VC1 initialization data");
                }
                if (bArr[m5610g] == 0 && bArr[m5610g + 1] == 0 && bArr[m5610g + 2] == 1 && bArr[m5610g + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, m5610g, length));
                }
                m5610g++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: d */
    private static List<byte[]> m6414d(byte[] bArr) {
        byte b;
        byte b2;
        try {
            if (bArr[0] != 2) {
                throw new zziw("Error parsing vorbis codec private");
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
                throw new zziw("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i4];
            System.arraycopy(bArr, i6, bArr2, 0, i4);
            int i7 = i6 + i4;
            if (bArr[i7] != 3) {
                throw new zziw("Error parsing vorbis codec private");
            }
            int i8 = i7 + i5 + b2;
            if (bArr[i8] != 5) {
                throw new zziw("Error parsing vorbis codec private");
            }
            int length = bArr.length - i8;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i8, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing vorbis codec private");
        }
    }

    /* renamed from: e */
    private static boolean m6413e(sr2 sr2Var) {
        try {
            int m5603n = sr2Var.m5603n();
            if (m5603n == 1) {
                return true;
            }
            if (m5603n != 65534) {
                return false;
            }
            sr2Var.m5608i(24);
            if (sr2Var.m5598s() != on2.j().getMostSignificantBits()) {
                return false;
            }
            return sr2Var.m5598s() == on2.j().getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m6417a(zm2 zm2Var, int i) {
        boolean z;
        int i2;
        String str;
        int i3;
        ArrayList arrayList;
        zzit zzitVar;
        int i4;
        int i5;
        zzqm zzqmVar;
        byte[] bArr;
        int i6;
        ArrayList arrayList2;
        ArrayList arrayList3;
        String str2;
        String str3;
        int i7;
        int i8;
        StringBuilder sb;
        String str4 = this.f7744a;
        switch (str4.hashCode()) {
            case -2095576542:
                if (str4.equals("V_MPEG4/ISO/AP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -2095575984:
                if (str4.equals("V_MPEG4/ISO/SP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1985379776:
                if (str4.equals("A_MS/ACM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1784763192:
                if (str4.equals("A_TRUEHD")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1730367663:
                if (str4.equals("A_VORBIS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641358:
                if (str4.equals("A_MPEG/L2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641357:
                if (str4.equals("A_MPEG/L3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1373388978:
                if (str4.equals("V_MS/VFW/FOURCC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -933872740:
                if (str4.equals("S_DVBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363189:
                if (str4.equals("V_MPEG4/ISO/ASP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363109:
                if (str4.equals("V_MPEG4/ISO/AVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -425012669:
                if (str4.equals("S_VOBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -356037306:
                if (str4.equals("A_DTS/LOSSLESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923557:
                if (str4.equals("A_AAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923603:
                if (str4.equals("A_AC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62927045:
                if (str4.equals("A_DTS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338133:
                if (str4.equals("V_VP8")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 82338134:
                if (str4.equals("V_VP9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99146302:
                if (str4.equals("S_HDMV/PGS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 444813526:
                if (str4.equals("V_THEORA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 542569478:
                if (str4.equals("A_DTS/EXPRESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725957860:
                if (str4.equals("A_PCM/INT/LIT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 855502857:
                if (str4.equals("V_MPEGH/ISO/HEVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1422270023:
                if (str4.equals("S_TEXT/UTF8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1809237540:
                if (str4.equals("V_MPEG2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950749482:
                if (str4.equals("A_EAC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950789798:
                if (str4.equals("A_FLAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1951062397:
                if (str4.equals("A_OPUS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        String str5 = "audio/raw";
        switch (z) {
            case false:
                str2 = "video/x-vnd.on2.vp8";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/x-vnd.on2.vp9";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/mpeg2";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
            case true:
            case true:
                byte[] bArr2 = this.f7751h;
                str2 = "video/mp4v-es";
                arrayList3 = bArr2 == null ? null : Collections.singletonList(bArr2);
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                as2 m8091a = as2.m8091a(new sr2(this.f7751h));
                arrayList3 = m8091a.f6077a;
                this.f7743P = m8091a.f6078b;
                str2 = "video/avc";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                es2 m7593a = es2.m7593a(new sr2(this.f7751h));
                arrayList3 = m7593a.f6449a;
                this.f7743P = m7593a.f6450b;
                str2 = "video/hevc";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                List<byte[]> m6415c = m6415c(new sr2(this.f7751h));
                if (m6415c != null) {
                    str2 = "video/wvc1";
                    arrayList3 = m6415c;
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str2 = "video/x-unknown";
                    arrayList3 = m6415c;
                }
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "video/x-unknown";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                arrayList = m6414d(this.f7751h);
                str = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case true:
                ArrayList arrayList4 = new ArrayList(3);
                arrayList4.add(this.f7751h);
                arrayList4.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7737J).array());
                arrayList4.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7738K).array());
                str = "audio/opus";
                i2 = -1;
                i3 = 5760;
                arrayList = arrayList4;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f7751h);
                str2 = "audio/mp4a-latm";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
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
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/eac3";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/true-hd";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
            case true:
                str2 = "audio/vnd.dts";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "audio/vnd.dts.hd";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f7751h);
                str2 = "audio/x-flac";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                if (m6413e(new sr2(this.f7751h))) {
                    int m4520o = zr2.m4520o(this.f7735H);
                    i7 = m4520o;
                    if (m4520o == 0) {
                        i8 = this.f7735H;
                        sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i8);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        str3 = sb.toString();
                        Log.w("MatroskaExtractor", str3);
                        str2 = "audio/x-unknown";
                        arrayList3 = null;
                        i2 = -1;
                        str5 = str2;
                        arrayList2 = arrayList3;
                        i3 = -1;
                        str = str5;
                        arrayList = arrayList2;
                        break;
                    }
                    arrayList2 = null;
                    i2 = i7;
                    i3 = -1;
                    str = str5;
                    arrayList = arrayList2;
                } else {
                    str3 = "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown";
                    Log.w("MatroskaExtractor", str3);
                    str2 = "audio/x-unknown";
                    arrayList3 = null;
                    i2 = -1;
                    str5 = str2;
                    arrayList2 = arrayList3;
                    i3 = -1;
                    str = str5;
                    arrayList = arrayList2;
                }
            case true:
                int m4520o2 = zr2.m4520o(this.f7735H);
                i7 = m4520o2;
                if (m4520o2 == 0) {
                    i8 = this.f7735H;
                    sb = new StringBuilder(75);
                    sb.append("Unsupported PCM bit depth: ");
                    sb.append(i8);
                    sb.append(". Setting mimeType to audio/x-unknown");
                    str3 = sb.toString();
                    Log.w("MatroskaExtractor", str3);
                    str2 = "audio/x-unknown";
                    arrayList3 = null;
                    i2 = -1;
                    str5 = str2;
                    arrayList2 = arrayList3;
                    i3 = -1;
                    str = str5;
                    arrayList = arrayList2;
                    break;
                }
                arrayList2 = null;
                i2 = i7;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
            case true:
                str2 = "application/x-subrip";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                arrayList3 = Collections.singletonList(this.f7751h);
                str2 = "application/vobsub";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                str2 = "application/pgs";
                arrayList3 = null;
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            case true:
                byte[] bArr3 = this.f7751h;
                arrayList3 = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str2 = "application/dvbsubs";
                i2 = -1;
                str5 = str2;
                arrayList2 = arrayList3;
                i3 = -1;
                str = str5;
                arrayList = arrayList2;
                break;
            default:
                throw new zziw("Unrecognized codec identifier.");
        }
        int i9 = (this.f7740M ? 1 : 0) | (true != this.f7739L ? 0 : 2);
        if (or2.m6258a(str)) {
            zzitVar = zzit.m4486c(Integer.toString(i), str, null, -1, i3, this.f7734G, this.f7736I, i2, -1, -1, arrayList, this.f7752i, i9, this.f7741N, null);
            i4 = 1;
        } else if (or2.m6257b(str)) {
            if (this.f7757n == 0) {
                int i10 = this.f7755l;
                int i11 = i10;
                if (i10 == -1) {
                    i11 = this.f7753j;
                }
                this.f7755l = i11;
                int i12 = this.f7756m;
                int i13 = i12;
                if (i12 == -1) {
                    i13 = this.f7754k;
                }
                this.f7756m = i13;
            }
            float f = (this.f7755l == -1 || (i6 = this.f7756m) == -1) ? -1.0f : (this.f7754k * i5) / (this.f7753j * i6);
            if (this.f7760q) {
                if (this.f7766w == -1.0f || this.f7767x == -1.0f || this.f7768y == -1.0f || this.f7769z == -1.0f || this.f7728A == -1.0f || this.f7729B == -1.0f || this.f7730C == -1.0f || this.f7731D == -1.0f || this.f7732E == -1.0f || this.f7733F == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.f7766w * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7767x * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7768y * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7769z * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7728A * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7729B * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7730C * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f7731D * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.f7732E + 0.5f));
                    wrap.putShort((short) (this.f7733F + 0.5f));
                    wrap.putShort((short) this.f7764u);
                    wrap.putShort((short) this.f7765v);
                }
                zzqmVar = new zzqm(this.f7761r, this.f7763t, this.f7762s, bArr);
            } else {
                zzqmVar = null;
            }
            zzitVar = zzit.m4488a(Integer.toString(i), str, null, -1, i3, this.f7753j, this.f7754k, -1.0f, arrayList, -1, f, this.f7758o, this.f7759p, zzqmVar, this.f7752i);
            i4 = 2;
        } else {
            if ("application/x-subrip".equals(str)) {
                zzitVar = zzit.m4485d(Integer.toString(i), str, null, -1, i9, this.f7741N, -1, this.f7752i, Long.MAX_VALUE, Collections.emptyList());
            } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
                throw new zziw("Unexpected MIME type.");
            } else {
                zzitVar = zzit.m4484e(Integer.toString(i), str, null, -1, arrayList, this.f7741N, this.f7752i);
            }
            i4 = 3;
        }
        hn2 m4597k = zm2Var.m4597k(this.f7745b, i4);
        this.f7742O = m4597k;
        m4597k.m7264a(zzitVar);
    }
}
