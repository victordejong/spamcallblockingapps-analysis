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
            int g = sr2Var.m5610g() + 20;
            byte[] bArr = sr2Var.f8551a;
            while (true) {
                int length = bArr.length;
                if (g >= length - 4) {
                    throw new zziw("Failed to find FourCC VC1 initialization data");
                } else if (bArr[g] == 0 && bArr[g + 1] == 0 && bArr[g + 2] == 1 && bArr[g + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, g, length));
                } else {
                    g++;
                }
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
            if (bArr[0] == 2) {
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
                if (bArr[i6] == 1) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i6, bArr2, 0, i4);
                    int i7 = i6 + i4;
                    if (bArr[i7] == 3) {
                        int i8 = i7 + i5 + b2;
                        if (bArr[i8] == 5) {
                            int length = bArr.length - i8;
                            byte[] bArr3 = new byte[length];
                            System.arraycopy(bArr, i8, bArr3, 0, length);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new zziw("Error parsing vorbis codec private");
                    }
                    throw new zziw("Error parsing vorbis codec private");
                }
                throw new zziw("Error parsing vorbis codec private");
            }
            throw new zziw("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing vorbis codec private");
        }
    }

    /* renamed from: e */
    private static boolean m6413e(sr2 sr2Var) {
        try {
            int n = sr2Var.m5603n();
            if (n == 1) {
                return true;
            }
            if (n != 65534) {
                return false;
            }
            sr2Var.m5608i(24);
            if (sr2Var.m5598s() == on2.j().getMostSignificantBits()) {
                return sr2Var.m5598s() == on2.j().getLeastSignificantBits();
            }
            return false;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zziw("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m6417a(zm2 zm2Var, int i) {
        char c;
        int i2;
        int i3;
        List list;
        zzit zzitVar;
        zzqm zzqmVar;
        byte[] bArr;
        int i4;
        String str;
        int i5;
        StringBuilder sb;
        String str2 = this.f7744a;
        int i6 = 2;
        switch (str2.hashCode()) {
            case -2095576542:
                if (str2.equals("V_MPEG4/ISO/AP")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str2.equals("V_MPEG4/ISO/SP")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str2.equals("A_MS/ACM")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str2.equals("A_TRUEHD")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str2.equals("A_VORBIS")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str2.equals("A_MPEG/L2")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str2.equals("A_MPEG/L3")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str2.equals("V_MS/VFW/FOURCC")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str2.equals("S_DVBSUB")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str2.equals("V_MPEG4/ISO/ASP")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str2.equals("V_MPEG4/ISO/AVC")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str2.equals("S_VOBSUB")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str2.equals("A_DTS/LOSSLESS")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str2.equals("A_AAC")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str2.equals("A_AC3")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str2.equals("A_DTS")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str2.equals("V_VP8")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str2.equals("V_VP9")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str2.equals("S_HDMV/PGS")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str2.equals("V_THEORA")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str2.equals("A_DTS/EXPRESS")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str2.equals("A_PCM/INT/LIT")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str2.equals("V_MPEGH/ISO/HEVC")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str2.equals("S_TEXT/UTF8")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str2.equals("V_MPEG2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str2.equals("A_EAC3")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str2.equals("A_FLAC")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str2.equals("A_OPUS")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str3 = "audio/raw";
        switch (c) {
            case 0:
                str3 = "video/x-vnd.on2.vp8";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 1:
                str3 = "video/x-vnd.on2.vp9";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 2:
                str3 = "video/mpeg2";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 3:
            case 4:
            case 5:
                byte[] bArr2 = this.f7751h;
                list = bArr2 == null ? null : Collections.singletonList(bArr2);
                str3 = "video/mp4v-es";
                i2 = -1;
                i3 = -1;
                break;
            case 6:
                as2 a = as2.m8091a(new sr2(this.f7751h));
                list = a.f6077a;
                this.f7743P = a.f6078b;
                str3 = "video/avc";
                i2 = -1;
                i3 = -1;
                break;
            case 7:
                es2 a2 = es2.m7593a(new sr2(this.f7751h));
                list = a2.f6449a;
                this.f7743P = a2.f6450b;
                str3 = "video/hevc";
                i2 = -1;
                i3 = -1;
                break;
            case '\b':
                list = m6415c(new sr2(this.f7751h));
                if (list != null) {
                    str3 = "video/wvc1";
                } else {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str3 = "video/x-unknown";
                }
                i2 = -1;
                i3 = -1;
                break;
            case '\t':
                str3 = "video/x-unknown";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case '\n':
                list = m6414d(this.f7751h);
                str3 = "audio/vorbis";
                i2 = -1;
                i3 = 8192;
                break;
            case 11:
                list = new ArrayList(3);
                list.add(this.f7751h);
                list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7737J).array());
                list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7738K).array());
                str3 = "audio/opus";
                i2 = -1;
                i3 = 5760;
                break;
            case '\f':
                list = Collections.singletonList(this.f7751h);
                str3 = "audio/mp4a-latm";
                i2 = -1;
                i3 = -1;
                break;
            case '\r':
                str3 = "audio/mpeg-L2";
                list = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 14:
                str3 = "audio/mpeg";
                list = null;
                i2 = -1;
                i3 = 4096;
                break;
            case 15:
                str3 = "audio/ac3";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 16:
                str3 = "audio/eac3";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 17:
                str3 = "audio/true-hd";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 18:
            case 19:
                str3 = "audio/vnd.dts";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 20:
                str3 = "audio/vnd.dts.hd";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 21:
                list = Collections.singletonList(this.f7751h);
                str3 = "audio/x-flac";
                i2 = -1;
                i3 = -1;
                break;
            case 22:
                if (m6413e(new sr2(this.f7751h))) {
                    int o = zr2.m4520o(this.f7735H);
                    i2 = o;
                    if (o == 0) {
                        i5 = this.f7735H;
                        sb = new StringBuilder(75);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i5);
                        sb.append(". Setting mimeType to audio/x-unknown");
                        str = sb.toString();
                        Log.w("MatroskaExtractor", str);
                        str3 = "audio/x-unknown";
                        list = null;
                        i2 = -1;
                        i3 = -1;
                        break;
                    }
                    list = null;
                    i3 = -1;
                } else {
                    str = "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown";
                    Log.w("MatroskaExtractor", str);
                    str3 = "audio/x-unknown";
                    list = null;
                    i2 = -1;
                    i3 = -1;
                }
            case 23:
                int o2 = zr2.m4520o(this.f7735H);
                i2 = o2;
                if (o2 == 0) {
                    i5 = this.f7735H;
                    sb = new StringBuilder(75);
                    sb.append("Unsupported PCM bit depth: ");
                    sb.append(i5);
                    sb.append(". Setting mimeType to audio/x-unknown");
                    str = sb.toString();
                    Log.w("MatroskaExtractor", str);
                    str3 = "audio/x-unknown";
                    list = null;
                    i2 = -1;
                    i3 = -1;
                    break;
                }
                list = null;
                i3 = -1;
            case 24:
                str3 = "application/x-subrip";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 25:
                list = Collections.singletonList(this.f7751h);
                str3 = "application/vobsub";
                i2 = -1;
                i3 = -1;
                break;
            case 26:
                str3 = "application/pgs";
                list = null;
                i2 = -1;
                i3 = -1;
                break;
            case 27:
                byte[] bArr3 = this.f7751h;
                list = Collections.singletonList(new byte[]{bArr3[0], bArr3[1], bArr3[2], bArr3[3]});
                str3 = "application/dvbsubs";
                i2 = -1;
                i3 = -1;
                break;
            default:
                throw new zziw("Unrecognized codec identifier.");
        }
        int i7 = (this.f7740M ? 1 : 0) | (true != this.f7739L ? 0 : 2);
        if (or2.m6258a(str3)) {
            zzitVar = zzit.m4486c(Integer.toString(i), str3, null, -1, i3, this.f7734G, this.f7736I, i2, -1, -1, list, this.f7752i, i7, this.f7741N, null);
            i6 = 1;
        } else if (or2.m6257b(str3)) {
            if (this.f7757n == 0) {
                int i8 = this.f7755l;
                int i9 = i8;
                if (i8 == -1) {
                    i9 = this.f7753j;
                }
                this.f7755l = i9;
                int i10 = this.f7756m;
                int i11 = i10;
                if (i10 == -1) {
                    i11 = this.f7754k;
                }
                this.f7756m = i11;
            }
            int i12 = this.f7755l;
            float f = (i12 == -1 || (i4 = this.f7756m) == -1) ? -1.0f : (this.f7754k * i12) / (this.f7753j * i4);
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
            zzitVar = zzit.m4488a(Integer.toString(i), str3, null, -1, i3, this.f7753j, this.f7754k, -1.0f, list, -1, f, this.f7758o, this.f7759p, zzqmVar, this.f7752i);
        } else {
            if ("application/x-subrip".equals(str3)) {
                zzitVar = zzit.m4485d(Integer.toString(i), str3, null, -1, i7, this.f7741N, -1, this.f7752i, Long.MAX_VALUE, Collections.emptyList());
            } else if ("application/vobsub".equals(str3) || "application/pgs".equals(str3) || "application/dvbsubs".equals(str3)) {
                zzitVar = zzit.m4484e(Integer.toString(i), str3, null, -1, list, this.f7741N, this.f7752i);
            } else {
                throw new zziw("Unexpected MIME type.");
            }
            i6 = 3;
        }
        hn2 k = zm2Var.m4597k(this.f7745b, i6);
        this.f7742O = k;
        k.m7264a(zzitVar);
    }
}
