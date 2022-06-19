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
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/it3.class */
public final class it3 {

    /* renamed from: N */
    public byte[] f24442N;

    /* renamed from: T */
    public jt3 f24448T;

    /* renamed from: U */
    public boolean f24449U;

    /* renamed from: X */
    public yr3 f24452X;

    /* renamed from: Y */
    public int f24453Y;

    /* renamed from: a */
    public String f24454a;

    /* renamed from: b */
    public String f24455b;

    /* renamed from: c */
    public int f24456c;

    /* renamed from: d */
    public int f24457d;

    /* renamed from: e */
    public int f24458e;

    /* renamed from: f */
    public int f24459f;

    /* renamed from: g */
    private int f24460g;

    /* renamed from: h */
    public boolean f24461h;

    /* renamed from: i */
    public byte[] f24462i;

    /* renamed from: j */
    public xr3 f24463j;

    /* renamed from: k */
    public byte[] f24464k;

    /* renamed from: l */
    public zzn f24465l;

    /* renamed from: m */
    public int f24466m = -1;

    /* renamed from: n */
    public int f24467n = -1;

    /* renamed from: o */
    public int f24468o = -1;

    /* renamed from: p */
    public int f24469p = -1;

    /* renamed from: q */
    public int f24470q = 0;

    /* renamed from: r */
    public int f24471r = -1;

    /* renamed from: s */
    public float f24472s = 0.0f;

    /* renamed from: t */
    public float f24473t = 0.0f;

    /* renamed from: u */
    public float f24474u = 0.0f;

    /* renamed from: v */
    public byte[] f24475v = null;

    /* renamed from: w */
    public int f24476w = -1;

    /* renamed from: x */
    public boolean f24477x = false;

    /* renamed from: y */
    public int f24478y = -1;

    /* renamed from: z */
    public int f24479z = -1;

    /* renamed from: A */
    public int f24429A = -1;

    /* renamed from: B */
    public int f24430B = 1000;

    /* renamed from: C */
    public int f24431C = 200;

    /* renamed from: D */
    public float f24432D = -1.0f;

    /* renamed from: E */
    public float f24433E = -1.0f;

    /* renamed from: F */
    public float f24434F = -1.0f;

    /* renamed from: G */
    public float f24435G = -1.0f;

    /* renamed from: H */
    public float f24436H = -1.0f;

    /* renamed from: I */
    public float f24437I = -1.0f;

    /* renamed from: J */
    public float f24438J = -1.0f;

    /* renamed from: K */
    public float f24439K = -1.0f;

    /* renamed from: L */
    public float f24440L = -1.0f;

    /* renamed from: M */
    public float f24441M = -1.0f;

    /* renamed from: O */
    public int f24443O = 1;

    /* renamed from: P */
    public int f24444P = -1;

    /* renamed from: Q */
    public int f24445Q = 8000;

    /* renamed from: R */
    public long f24446R = 0;

    /* renamed from: S */
    public long f24447S = 0;

    /* renamed from: V */
    public boolean f24450V = true;

    /* renamed from: W */
    private String f24451W = "eng";

    private it3() {
    }

    public /* synthetic */ it3(ht3 ht3Var) {
    }

    /* renamed from: f */
    private static Pair<String, List<byte[]>> m14276f(C6694la c6694la) {
        try {
            c6694la.m13632s(16);
            long m13656C = c6694la.m13656C();
            if (m13656C == 1482049860) {
                return new Pair<>("video/divx", null);
            }
            if (m13656C == 859189832) {
                return new Pair<>("video/3gpp", null);
            }
            if (m13656C != 826496599) {
                Log.w("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            }
            int m13636o = c6694la.m13636o() + 20;
            byte[] m13634q = c6694la.m13634q();
            while (true) {
                int length = m13634q.length;
                if (m13636o >= length - 4) {
                    throw zzaha.zzb("Failed to find FourCC VC1 initialization data", null);
                }
                if (m13634q[m13636o] == 0 && m13634q[m13636o + 1] == 0 && m13634q[m13636o + 2] == 1 && m13634q[m13636o + 3] == 15) {
                    return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(m13634q, m13636o, length)));
                }
                m13636o++;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing FourCC private data", null);
        }
    }

    /* renamed from: g */
    private static List<byte[]> m14275g(byte[] bArr) {
        int i;
        int i2;
        try {
            if (bArr[0] != 2) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
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
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            byte[] bArr2 = new byte[i6];
            System.arraycopy(bArr, i8, bArr2, 0, i6);
            int i9 = i8 + i6;
            if (bArr[i9] != 3) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            int i10 = i9 + i7 + i2;
            if (bArr[i10] != 5) {
                throw zzaha.zzb("Error parsing vorbis codec private", null);
            }
            int length = bArr.length - i10;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, i10, bArr3, 0, length);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(bArr2);
            arrayList.add(bArr3);
            return arrayList;
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing vorbis codec private", null);
        }
    }

    /* renamed from: h */
    private static boolean m14274h(C6694la c6694la) {
        UUID uuid;
        UUID uuid2;
        try {
            int m13627x = c6694la.m13627x();
            if (m13627x == 1) {
                return true;
            }
            if (m13627x != 65534) {
                return false;
            }
            c6694la.m13635p(24);
            long m13653F = c6694la.m13653F();
            uuid = kt3.f25354e;
            if (m13653F != uuid.getMostSignificantBits()) {
                return false;
            }
            long m13653F2 = c6694la.m13653F();
            uuid2 = kt3.f25354e;
            return m13653F2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzaha.zzb("Error parsing MS/ACM codec private", null);
        }
    }

    @EnsuresNonNull({"codecPrivate"})
    /* renamed from: i */
    private final byte[] m14273i(String str) {
        byte[] bArr = this.f24464k;
        if (bArr == null) {
            String valueOf = String.valueOf(str);
            throw zzaha.zzb(valueOf.length() != 0 ? "Missing CodecPrivate for codec ".concat(valueOf) : new String("Missing CodecPrivate for codec "), null);
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @EnsuresNonNull({"this.output"})
    @RequiresNonNull({"codecId"})
    /* renamed from: d */
    public final void m14278d(xq3 xq3Var, int i) {
        boolean z;
        ArrayList arrayList;
        int i2;
        String str;
        int i3;
        Map map;
        int i4;
        gm3 gm3Var;
        Map map2;
        Map map3;
        byte[] bArr;
        int i5;
        String str2;
        zzfoj zzfojVar;
        String str3;
        zzfoj zzfojVar2;
        String str4;
        String str5;
        List<byte[]> list;
        int i6;
        byte[] bArr2;
        String str6 = this.f24455b;
        int i7 = 3;
        switch (str6.hashCode()) {
            case -2095576542:
                if (str6.equals("V_MPEG4/ISO/AP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -2095575984:
                if (str6.equals("V_MPEG4/ISO/SP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1985379776:
                if (str6.equals("A_MS/ACM")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1784763192:
                if (str6.equals("A_TRUEHD")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1730367663:
                if (str6.equals("A_VORBIS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641358:
                if (str6.equals("A_MPEG/L2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1482641357:
                if (str6.equals("A_MPEG/L3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1373388978:
                if (str6.equals("V_MS/VFW/FOURCC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -933872740:
                if (str6.equals("S_DVBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363189:
                if (str6.equals("V_MPEG4/ISO/ASP")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -538363109:
                if (str6.equals("V_MPEG4/ISO/AVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -425012669:
                if (str6.equals("S_VOBSUB")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -356037306:
                if (str6.equals("A_DTS/LOSSLESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923557:
                if (str6.equals("A_AAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62923603:
                if (str6.equals("A_AC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 62927045:
                if (str6.equals("A_DTS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82318131:
                if (str6.equals("V_AV1")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 82338133:
                if (str6.equals("V_VP8")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 82338134:
                if (str6.equals("V_VP9")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 99146302:
                if (str6.equals("S_HDMV/PGS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 444813526:
                if (str6.equals("V_THEORA")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 542569478:
                if (str6.equals("A_DTS/EXPRESS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 635596514:
                if (str6.equals("A_PCM/FLOAT/IEEE")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725948237:
                if (str6.equals("A_PCM/INT/BIG")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725957860:
                if (str6.equals("A_PCM/INT/LIT")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 738597099:
                if (str6.equals("S_TEXT/ASS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 855502857:
                if (str6.equals("V_MPEGH/ISO/HEVC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1422270023:
                if (str6.equals("S_TEXT/UTF8")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1809237540:
                if (str6.equals("V_MPEG2")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950749482:
                if (str6.equals("A_EAC3")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1950789798:
                if (str6.equals("A_FLAC")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1951062397:
                if (str6.equals("A_OPUS")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        String str7 = "audio/raw";
        switch (z) {
            case false:
                str4 = "video/x-vnd.on2.vp8";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "video/x-vnd.on2.vp9";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "video/av01";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "video/mpeg2";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
            case true:
            case true:
                byte[] bArr3 = this.f24464k;
                str3 = "video/mp4v-es";
                zzfojVar2 = bArr3 == null ? null : Collections.singletonList(bArr3);
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                eq3 m15405a = eq3.m15405a(new C6694la(m14273i(str6)));
                list = m15405a.f22307a;
                this.f24453Y = m15405a.f22308b;
                str5 = m15405a.f22312f;
                str7 = "video/avc";
                i2 = -1;
                i7 = -1;
                String str8 = str5;
                arrayList = list;
                str = str8;
                break;
            case true:
                lr3 m13421a = lr3.m13421a(new C6694la(m14273i(str6)));
                list = m13421a.f26259a;
                this.f24453Y = m13421a.f26260b;
                str5 = m13421a.f26261c;
                str7 = "video/hevc";
                i2 = -1;
                i7 = -1;
                String str82 = str5;
                arrayList = list;
                str = str82;
                break;
            case true:
                Pair<String, List<byte[]>> m14276f = m14276f(new C6694la(m14273i(str6)));
                str3 = (String) m14276f.first;
                zzfojVar2 = (List) m14276f.second;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "video/x-unknown";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                arrayList = m14275g(m14273i(str6));
                str7 = "audio/vorbis";
                str = null;
                i2 = 8192;
                i7 = -1;
                break;
            case true:
                ArrayList arrayList2 = new ArrayList(3);
                arrayList2.add(m14273i(this.f24455b));
                ByteBuffer allocate = ByteBuffer.allocate(8);
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                arrayList2.add(allocate.order(byteOrder).putLong(this.f24446R).array());
                arrayList2.add(ByteBuffer.allocate(8).order(byteOrder).putLong(this.f24447S).array());
                str7 = "audio/opus";
                str = null;
                i2 = 5760;
                arrayList = arrayList2;
                i7 = -1;
                break;
            case true:
                zzfojVar = Collections.singletonList(m14273i(str6));
                vp3 m9089a = xp3.m9089a(this.f24464k);
                this.f24445Q = m9089a.f31288a;
                this.f24443O = m9089a.f31289b;
                str2 = m9089a.f31290c;
                str7 = "audio/mp4a-latm";
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str7 = "audio/mpeg-L2";
                arrayList = null;
                str = null;
                i2 = 4096;
                i7 = -1;
                break;
            case true:
                str7 = "audio/mpeg";
                arrayList = null;
                str = null;
                i2 = 4096;
                i7 = -1;
                break;
            case true:
                str4 = "audio/ac3";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "audio/eac3";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                this.f24448T = new jt3();
                str4 = "audio/true-hd";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
            case true:
                str4 = "audio/vnd.dts";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "audio/vnd.dts.hd";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                zzfojVar2 = Collections.singletonList(m14273i(str6));
                str3 = "audio/flac";
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                if (m14274h(new C6694la(m14273i(str6)))) {
                    int m9682o = C7101wa.m9682o(this.f24444P);
                    i6 = m9682o;
                    if (m9682o == 0) {
                        int i8 = this.f24444P;
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
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                int m9682o2 = C7101wa.m9682o(this.f24444P);
                i6 = m9682o2;
                if (m9682o2 == 0) {
                    int i9 = this.f24444P;
                    StringBuilder sb2 = new StringBuilder(89);
                    sb2.append("Unsupported little endian PCM bit depth: ");
                    sb2.append(i9);
                    sb2.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb2.toString());
                    str4 = "audio/x-unknown";
                    str3 = str4;
                    zzfojVar2 = null;
                    str2 = null;
                    str7 = str3;
                    zzfojVar = zzfojVar2;
                    i2 = -1;
                    str = str2;
                    arrayList = zzfojVar;
                    i7 = -1;
                    break;
                }
                i7 = i6;
                arrayList = null;
                str = null;
                i2 = -1;
                break;
            case true:
                int i10 = this.f24444P;
                if (i10 != 8) {
                    if (i10 != 16) {
                        StringBuilder sb3 = new StringBuilder(86);
                        sb3.append("Unsupported big endian PCM bit depth: ");
                        sb3.append(i10);
                        sb3.append(". Setting mimeType to audio/x-unknown");
                        Log.w("MatroskaExtractor", sb3.toString());
                        str4 = "audio/x-unknown";
                        str3 = str4;
                        zzfojVar2 = null;
                        str2 = null;
                        str7 = str3;
                        zzfojVar = zzfojVar2;
                        i2 = -1;
                        str = str2;
                        arrayList = zzfojVar;
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
            case true:
                int i11 = this.f24444P;
                if (i11 != 32) {
                    StringBuilder sb4 = new StringBuilder(90);
                    sb4.append("Unsupported floating point PCM bit depth: ");
                    sb4.append(i11);
                    sb4.append(". Setting mimeType to audio/x-unknown");
                    Log.w("MatroskaExtractor", sb4.toString());
                    str4 = "audio/x-unknown";
                    str3 = str4;
                    zzfojVar2 = null;
                    str2 = null;
                    str7 = str3;
                    zzfojVar = zzfojVar2;
                    i2 = -1;
                    str = str2;
                    arrayList = zzfojVar;
                    i7 = -1;
                    break;
                } else {
                    arrayList = null;
                    str = null;
                    i2 = -1;
                    i7 = 4;
                    break;
                }
            case true:
                str4 = "application/x-subrip";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                bArr2 = kt3.f25352c;
                zzfojVar2 = zzfoj.zzk(bArr2, m14273i(this.f24455b));
                str3 = "text/x-ssa";
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                zzfojVar2 = zzfoj.zzj(m14273i(str6));
                str3 = "application/vobsub";
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                str4 = "application/pgs";
                str3 = str4;
                zzfojVar2 = null;
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            case true:
                byte[] bArr4 = new byte[4];
                System.arraycopy(m14273i(str6), 0, bArr4, 0, 4);
                zzfojVar2 = zzfoj.zzj(bArr4);
                str3 = "application/dvbsubs";
                str2 = null;
                str7 = str3;
                zzfojVar = zzfojVar2;
                i2 = -1;
                str = str2;
                arrayList = zzfojVar;
                i7 = -1;
                break;
            default:
                throw zzaha.zzb("Unrecognized codec identifier.", null);
        }
        byte[] bArr5 = this.f24442N;
        String str9 = str;
        String str10 = str7;
        if (bArr5 != null) {
            rq3 m11323a = rq3.m11323a(new C6694la(bArr5));
            str9 = str;
            str10 = str7;
            if (m11323a != null) {
                str9 = m11323a.f29097a;
                str10 = "video/dolby-vision";
            }
        }
        boolean z2 = this.f24450V;
        int i12 = true != this.f24449U ? 0 : 2;
        C6947s4 c6947s4 = new C6947s4();
        if (C7174y9.m8892a(str10)) {
            c6947s4.m11175B(this.f24443O);
            c6947s4.m11174C(this.f24445Q);
            c6947s4.m11173D(i7);
            i3 = 1;
        } else if (C7174y9.m8891b(str10)) {
            if (this.f24470q == 0) {
                int i13 = this.f24468o;
                int i14 = i13;
                if (i13 == -1) {
                    i14 = this.f24466m;
                }
                this.f24468o = i14;
                int i15 = this.f24469p;
                int i16 = i15;
                if (i15 == -1) {
                    i16 = this.f24467n;
                }
                this.f24469p = i16;
            }
            float f = (this.f24468o == -1 || (i5 = this.f24469p) == -1) ? -1.0f : (this.f24467n * i4) / (this.f24466m * i5);
            if (this.f24477x) {
                if (this.f24432D == -1.0f || this.f24433E == -1.0f || this.f24434F == -1.0f || this.f24435G == -1.0f || this.f24436H == -1.0f || this.f24437I == -1.0f || this.f24438J == -1.0f || this.f24439K == -1.0f || this.f24440L == -1.0f || this.f24441M == -1.0f) {
                    bArr = null;
                } else {
                    bArr = new byte[25];
                    ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                    order.put((byte) 0);
                    order.putShort((short) ((this.f24432D * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24433E * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24434F * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24435G * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24436H * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24437I * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24438J * 50000.0f) + 0.5f));
                    order.putShort((short) ((this.f24439K * 50000.0f) + 0.5f));
                    order.putShort((short) (this.f24440L + 0.5f));
                    order.putShort((short) (this.f24441M + 0.5f));
                    order.putShort((short) this.f24430B);
                    order.putShort((short) this.f24431C);
                }
                gm3Var = new gm3(this.f24478y, this.f24429A, this.f24479z, bArr);
            } else {
                gm3Var = null;
            }
            int i17 = -1;
            if (this.f24454a != null) {
                i17 = -1;
                map2 = kt3.f25355f;
                if (map2.containsKey(this.f24454a)) {
                    map3 = kt3.f25355f;
                    i17 = ((Integer) map3.get(this.f24454a)).intValue();
                }
            }
            if (this.f24471r == 0 && Float.compare(this.f24472s, 0.0f) == 0 && Float.compare(this.f24473t, 0.0f) == 0) {
                if (Float.compare(this.f24474u, 0.0f) == 0) {
                    i17 = 0;
                } else if (Float.compare(this.f24473t, 90.0f) == 0) {
                    i17 = 90;
                } else if (Float.compare(this.f24473t, -180.0f) == 0 || Float.compare(this.f24473t, 180.0f) == 0) {
                    i17 = 180;
                } else if (Float.compare(this.f24473t, -90.0f) == 0) {
                    i17 = 270;
                }
            }
            c6947s4.m11124s(this.f24466m);
            c6947s4.m11123t(this.f24467n);
            c6947s4.m11120w(f);
            c6947s4.m11121v(i17);
            c6947s4.m11119x(this.f24475v);
            c6947s4.m11118y(this.f24476w);
            c6947s4.m11117z(gm3Var);
            i3 = 2;
        } else if (!"application/x-subrip".equals(str10) && !"text/x-ssa".equals(str10) && !"application/vobsub".equals(str10) && !"application/pgs".equals(str10) && !"application/dvbsubs".equals(str10)) {
            throw zzaha.zzb("Unexpected MIME type.", null);
        } else {
            i3 = 3;
        }
        if (this.f24454a != null) {
            map = kt3.f25355f;
            if (!map.containsKey(this.f24454a)) {
                c6947s4.m11140f(this.f24454a);
            }
        }
        c6947s4.m11142e(i);
        c6947s4.m11129n(str10);
        c6947s4.m11128o(i2);
        c6947s4.m11138g(this.f24451W);
        c6947s4.m11136h((z2 ? 1 : 0) | i12);
        c6947s4.m11127p(arrayList);
        c6947s4.m11132k(str9);
        c6947s4.m11126q(this.f24465l);
        C7021u4 m11168I = c6947s4.m11168I();
        yr3 mo8690o = xq3Var.mo8690o(this.f24456c, i3);
        this.f24452X = mo8690o;
        mo8690o.mo8704d(m11168I);
    }
}
