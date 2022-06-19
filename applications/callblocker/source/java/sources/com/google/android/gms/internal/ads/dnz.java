package com.google.android.gms.internal.ads;

import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dnz.class */
public final class dnz {

    /* renamed from: A */
    public float f14970A;

    /* renamed from: B */
    public float f14971B;

    /* renamed from: C */
    public float f14972C;

    /* renamed from: D */
    public float f14973D;

    /* renamed from: E */
    public float f14974E;

    /* renamed from: F */
    public float f14975F;

    /* renamed from: G */
    public int f14976G;

    /* renamed from: H */
    public int f14977H;

    /* renamed from: I */
    public int f14978I;

    /* renamed from: J */
    public long f14979J;

    /* renamed from: K */
    public long f14980K;

    /* renamed from: L */
    public boolean f14981L;

    /* renamed from: M */
    public boolean f14982M;

    /* renamed from: N */
    public dno f14983N;

    /* renamed from: O */
    public int f14984O;

    /* renamed from: P */
    private String f14985P;

    /* renamed from: a */
    public String f14986a;

    /* renamed from: b */
    public int f14987b;

    /* renamed from: c */
    public int f14988c;

    /* renamed from: d */
    public int f14989d;

    /* renamed from: e */
    public boolean f14990e;

    /* renamed from: f */
    public byte[] f14991f;

    /* renamed from: g */
    public dnr f14992g;

    /* renamed from: h */
    public byte[] f14993h;

    /* renamed from: i */
    public dmw f14994i;

    /* renamed from: j */
    public int f14995j;

    /* renamed from: k */
    public int f14996k;

    /* renamed from: l */
    public int f14997l;

    /* renamed from: m */
    public int f14998m;

    /* renamed from: n */
    public int f14999n;

    /* renamed from: o */
    public byte[] f15000o;

    /* renamed from: p */
    public int f15001p;

    /* renamed from: q */
    public boolean f15002q;

    /* renamed from: r */
    public int f15003r;

    /* renamed from: s */
    public int f15004s;

    /* renamed from: t */
    public int f15005t;

    /* renamed from: u */
    public int f15006u;

    /* renamed from: v */
    public int f15007v;

    /* renamed from: w */
    public float f15008w;

    /* renamed from: x */
    public float f15009x;

    /* renamed from: y */
    public float f15010y;

    /* renamed from: z */
    public float f15011z;

    private dnz() {
        this.f14995j = -1;
        this.f14996k = -1;
        this.f14997l = -1;
        this.f14998m = -1;
        this.f14999n = 0;
        this.f15000o = null;
        this.f15001p = -1;
        this.f15002q = false;
        this.f15003r = -1;
        this.f15004s = -1;
        this.f15005t = -1;
        this.f15006u = 1000;
        this.f15007v = 200;
        this.f15008w = -1.0f;
        this.f15009x = -1.0f;
        this.f15010y = -1.0f;
        this.f15011z = -1.0f;
        this.f14970A = -1.0f;
        this.f14971B = -1.0f;
        this.f14972C = -1.0f;
        this.f14973D = -1.0f;
        this.f14974E = -1.0f;
        this.f14975F = -1.0f;
        this.f14976G = 1;
        this.f14977H = -1;
        this.f14978I = 8000;
        this.f14979J = 0L;
        this.f14980K = 0L;
        this.f14982M = true;
        this.f14985P = "eng";
    }

    public /* synthetic */ dnz(dnx dnxVar) {
        this();
    }

    /* renamed from: a */
    public static /* synthetic */ String m9026a(dnz dnzVar, String str) {
        dnzVar.f14985P = str;
        return str;
    }

    /* renamed from: a */
    private static List<byte[]> m9025a(dsk dskVar) {
        List<byte[]> singletonList;
        try {
            dskVar.m8731d(16);
            if (dskVar.m8723k() == 826496599) {
                byte[] bArr = dskVar.f15569a;
                for (int m8732d = dskVar.m8732d() + 20; m8732d < bArr.length - 4; m8732d++) {
                    if (bArr[m8732d] == 0 && bArr[m8732d + 1] == 0 && bArr[m8732d + 2] == 1 && bArr[m8732d + 3] == 15) {
                        singletonList = Collections.singletonList(Arrays.copyOfRange(bArr, m8732d, bArr.length));
                    }
                }
                throw new zzhi("Failed to find FourCC VC1 initialization data");
            }
            singletonList = null;
            return singletonList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhi("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: a */
    private static List<byte[]> m9024a(byte[] bArr) {
        try {
            if (bArr[0] != 2) {
                throw new zzhi("Error parsing vorbis codec private");
            }
            int i = 0;
            int i2 = 1;
            while (bArr[i2] == -1) {
                i2++;
                i += 255;
            }
            int i3 = i + bArr[i2];
            int i4 = i2 + 1;
            int i5 = 0;
            while (bArr[i4] == -1) {
                i5 += 255;
                i4++;
            }
            int i6 = i4 + 1;
            byte b = bArr[i4];
            if (bArr[i6] != 1) {
                throw new zzhi("Error parsing vorbis codec private");
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i6, bArr2, 0, i3);
            int i7 = i3 + i6;
            if (bArr[i7] != 3) {
                throw new zzhi("Error parsing vorbis codec private");
            }
            int i8 = i5 + b + i7;
            if (bArr[i8] != 5) {
                throw new zzhi("Error parsing vorbis codec private");
            }
            byte[] bArr3 = new byte[bArr.length - i8];
            System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhi("Error parsing vorbis codec private");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
        if (r0 != r0.getLeastSignificantBits()) goto L15;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m9023b(com.google.android.gms.internal.ads.dsk r5) {
        /*
            r0 = 1
            r6 = r0
            r0 = r5
            int r0 = r0.m8726h()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            r7 = r0
            r0 = r7
            r1 = 1
            if (r0 != r1) goto Le
        Lc:
            r0 = r6
            return r0
        Le:
            r0 = r7
            r1 = 65534(0xfffe, float:9.1833E-41)
            if (r0 != r1) goto L41
            r0 = r5
            r1 = 24
            r0.m8733c(r1)     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            r0 = r5
            long r0 = r0.m8721m()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            java.util.UUID r1 = com.google.android.gms.internal.ads.dny.m9043a()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            long r1 = r1.getMostSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L3c
            r0 = r5
            long r0 = r0.m8721m()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            r8 = r0
            java.util.UUID r0 = com.google.android.gms.internal.ads.dny.m9043a()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            long r0 = r0.getLeastSignificantBits()     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L46
            r10 = r0
            r0 = r8
            r1 = r10
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Lc
        L3c:
            r0 = 0
            r6 = r0
            goto Lc
        L41:
            r0 = 0
            r6 = r0
            goto Lc
        L46:
            r5 = move-exception
            com.google.android.gms.internal.ads.zzhi r0 = new com.google.android.gms.internal.ads.zzhi
            r1 = r0
            java.lang.String r2 = "Error parsing MS/ACM codec private"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dnz.m9023b(com.google.android.gms.internal.ads.dsk):boolean");
    }

    /* renamed from: a */
    public final void m9027a(dnj dnjVar, int i) {
        String str;
        List<byte[]> singletonList;
        int i2;
        dlf m9226a;
        int i3;
        byte[] bArr;
        int i4 = -1;
        String str2 = this.f14986a;
        boolean z = true;
        switch (str2.hashCode()) {
            case -2095576542:
                if (str2.equals("V_MPEG4/ISO/AP")) {
                    z = true;
                    break;
                }
                break;
            case -2095575984:
                if (str2.equals("V_MPEG4/ISO/SP")) {
                    z = true;
                    break;
                }
                break;
            case -1985379776:
                if (str2.equals("A_MS/ACM")) {
                    z = true;
                    break;
                }
                break;
            case -1784763192:
                if (str2.equals("A_TRUEHD")) {
                    z = true;
                    break;
                }
                break;
            case -1730367663:
                if (str2.equals("A_VORBIS")) {
                    z = true;
                    break;
                }
                break;
            case -1482641358:
                if (str2.equals("A_MPEG/L2")) {
                    z = true;
                    break;
                }
                break;
            case -1482641357:
                if (str2.equals("A_MPEG/L3")) {
                    z = true;
                    break;
                }
                break;
            case -1373388978:
                if (str2.equals("V_MS/VFW/FOURCC")) {
                    z = true;
                    break;
                }
                break;
            case -933872740:
                if (str2.equals("S_DVBSUB")) {
                    z = true;
                    break;
                }
                break;
            case -538363189:
                if (str2.equals("V_MPEG4/ISO/ASP")) {
                    z = true;
                    break;
                }
                break;
            case -538363109:
                if (str2.equals("V_MPEG4/ISO/AVC")) {
                    z = true;
                    break;
                }
                break;
            case -425012669:
                if (str2.equals("S_VOBSUB")) {
                    z = true;
                    break;
                }
                break;
            case -356037306:
                if (str2.equals("A_DTS/LOSSLESS")) {
                    z = true;
                    break;
                }
                break;
            case 62923557:
                if (str2.equals("A_AAC")) {
                    z = true;
                    break;
                }
                break;
            case 62923603:
                if (str2.equals("A_AC3")) {
                    z = true;
                    break;
                }
                break;
            case 62927045:
                if (str2.equals("A_DTS")) {
                    z = true;
                    break;
                }
                break;
            case 82338133:
                if (str2.equals("V_VP8")) {
                    z = false;
                    break;
                }
                break;
            case 82338134:
                if (str2.equals("V_VP9")) {
                    z = true;
                    break;
                }
                break;
            case 99146302:
                if (str2.equals("S_HDMV/PGS")) {
                    z = true;
                    break;
                }
                break;
            case 444813526:
                if (str2.equals("V_THEORA")) {
                    z = true;
                    break;
                }
                break;
            case 542569478:
                if (str2.equals("A_DTS/EXPRESS")) {
                    z = true;
                    break;
                }
                break;
            case 725957860:
                if (str2.equals("A_PCM/INT/LIT")) {
                    z = true;
                    break;
                }
                break;
            case 855502857:
                if (str2.equals("V_MPEGH/ISO/HEVC")) {
                    z = true;
                    break;
                }
                break;
            case 1422270023:
                if (str2.equals("S_TEXT/UTF8")) {
                    z = true;
                    break;
                }
                break;
            case 1809237540:
                if (str2.equals("V_MPEG2")) {
                    z = true;
                    break;
                }
                break;
            case 1950749482:
                if (str2.equals("A_EAC3")) {
                    z = true;
                    break;
                }
                break;
            case 1950789798:
                if (str2.equals("A_FLAC")) {
                    z = true;
                    break;
                }
                break;
            case 1951062397:
                if (str2.equals("A_OPUS")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                str = "video/x-vnd.on2.vp8";
                singletonList = null;
                i2 = -1;
                break;
            case true:
                str = "video/x-vnd.on2.vp9";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "video/mpeg2";
                i2 = -1;
                singletonList = null;
                break;
            case true:
            case true:
            case true:
                singletonList = this.f14993h == null ? null : Collections.singletonList(this.f14993h);
                str = "video/mp4v-es";
                i2 = -1;
                break;
            case true:
                str = "video/avc";
                dsp m8690a = dsp.m8690a(new dsk(this.f14993h));
                singletonList = m8690a.f15585a;
                this.f14984O = m8690a.f15586b;
                i2 = -1;
                break;
            case true:
                str = "video/hevc";
                dsv m8686a = dsv.m8686a(new dsk(this.f14993h));
                singletonList = m8686a.f15601a;
                this.f14984O = m8686a.f15602b;
                i2 = -1;
                break;
            case true:
                singletonList = m9025a(new dsk(this.f14993h));
                if (singletonList == null) {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    str = "video/x-unknown";
                    i2 = -1;
                    break;
                } else {
                    str = "video/wvc1";
                    i2 = -1;
                    break;
                }
            case true:
                str = "video/x-unknown";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "audio/vorbis";
                i2 = 8192;
                singletonList = m9024a(this.f14993h);
                break;
            case true:
                str = "audio/opus";
                i2 = 5760;
                singletonList = new ArrayList(3);
                singletonList.add(this.f14993h);
                singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f14979J).array());
                singletonList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f14980K).array());
                break;
            case true:
                str = "audio/mp4a-latm";
                singletonList = Collections.singletonList(this.f14993h);
                i2 = -1;
                break;
            case true:
                str = "audio/mpeg-L2";
                i2 = 4096;
                singletonList = null;
                break;
            case true:
                str = "audio/mpeg";
                i2 = 4096;
                singletonList = null;
                break;
            case true:
                str = "audio/ac3";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "audio/eac3";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "audio/true-hd";
                i2 = -1;
                singletonList = null;
                break;
            case true:
            case true:
                str = "audio/vnd.dts";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "audio/vnd.dts.hd";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "audio/x-flac";
                singletonList = Collections.singletonList(this.f14993h);
                i2 = -1;
                break;
            case true:
                str = "audio/raw";
                if (!m9023b(new dsk(this.f14993h))) {
                    String valueOf = String.valueOf("audio/x-unknown");
                    Log.w("MatroskaExtractor", valueOf.length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat(valueOf) : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to "));
                    str = "audio/x-unknown";
                    i2 = -1;
                    singletonList = null;
                    break;
                } else {
                    int m8709a = dsn.m8709a(this.f14977H);
                    i2 = -1;
                    i4 = m8709a;
                    singletonList = null;
                    if (m8709a == 0) {
                        i4 = -1;
                        str = "audio/x-unknown";
                        Log.w("MatroskaExtractor", new StringBuilder(String.valueOf("audio/x-unknown").length() + 60).append("Unsupported PCM bit depth: ").append(this.f14977H).append(". Setting mimeType to ").append("audio/x-unknown").toString());
                        i2 = -1;
                        singletonList = null;
                        break;
                    }
                }
                break;
            case true:
                str = "audio/raw";
                int m8709a2 = dsn.m8709a(this.f14977H);
                i2 = -1;
                i4 = m8709a2;
                singletonList = null;
                if (m8709a2 == 0) {
                    i4 = -1;
                    str = "audio/x-unknown";
                    Log.w("MatroskaExtractor", new StringBuilder(String.valueOf("audio/x-unknown").length() + 60).append("Unsupported PCM bit depth: ").append(this.f14977H).append(". Setting mimeType to ").append("audio/x-unknown").toString());
                    i2 = -1;
                    singletonList = null;
                    break;
                }
                break;
            case true:
                str = "application/x-subrip";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "application/vobsub";
                singletonList = Collections.singletonList(this.f14993h);
                i2 = -1;
                break;
            case true:
                str = "application/pgs";
                i2 = -1;
                singletonList = null;
                break;
            case true:
                str = "application/dvbsubs";
                singletonList = Collections.singletonList(new byte[]{this.f14993h[0], this.f14993h[1], this.f14993h[2], this.f14993h[3]});
                i2 = -1;
                break;
            default:
                throw new zzhi("Unrecognized codec identifier.");
        }
        int i5 = (this.f14982M ? 1 : 0) | 0 | (this.f14981L ? 2 : 0);
        if (dsg.m8752a(str)) {
            m9226a = dlf.m9231a(Integer.toString(i), str, null, -1, i2, this.f14976G, this.f14978I, i4, singletonList, this.f14994i, i5, this.f14985P);
            i3 = 1;
        } else if (dsg.m8751b(str)) {
            if (this.f14999n == 0) {
                this.f14997l = this.f14997l == -1 ? this.f14995j : this.f14997l;
                this.f14998m = this.f14998m == -1 ? this.f14996k : this.f14998m;
            }
            float f = -1.0f;
            if (this.f14997l != -1) {
                f = -1.0f;
                if (this.f14998m != -1) {
                    f = (this.f14996k * this.f14997l) / (this.f14995j * this.f14998m);
                }
            }
            dss dssVar = null;
            if (this.f15002q) {
                if (this.f15008w == -1.0f || this.f15009x == -1.0f || this.f15010y == -1.0f || this.f15011z == -1.0f || this.f14970A == -1.0f || this.f14971B == -1.0f || this.f14972C == -1.0f || this.f14973D == -1.0f || this.f14974E == -1.0f || this.f14975F == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.put((byte) 0);
                    wrap.putShort((short) ((this.f15008w * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f15009x * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f15010y * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f15011z * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f14970A * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f14971B * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f14972C * 50000.0f) + 0.5f));
                    wrap.putShort((short) ((this.f14973D * 50000.0f) + 0.5f));
                    wrap.putShort((short) (this.f14974E + 0.5f));
                    wrap.putShort((short) (this.f14975F + 0.5f));
                    wrap.putShort((short) this.f15006u);
                    wrap.putShort((short) this.f15007v);
                }
                dssVar = new dss(this.f15003r, this.f15005t, this.f15004s, bArr);
            }
            m9226a = dlf.m9232a(Integer.toString(i), str, null, -1, i2, this.f14995j, this.f14996k, -1.0f, singletonList, -1, f, this.f15000o, this.f15001p, dssVar, this.f14994i);
            i3 = 2;
        } else if ("application/x-subrip".equals(str)) {
            m9226a = dlf.m9228a(Integer.toString(i), str, (String) null, -1, i5, this.f14985P, this.f14994i);
            i3 = 3;
        } else if (!"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
            throw new zzhi("Unexpected MIME type.");
        } else {
            m9226a = dlf.m9226a(Integer.toString(i), str, (String) null, -1, singletonList, this.f14985P, this.f14994i);
            i3 = 3;
        }
        this.f14983N = dnjVar.mo8929a(this.f14987b, i3);
        this.f14983N.mo8864a(m9226a);
    }
}
