package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import com.huawei.hms.support.api.entity.core.JosStatusCodes;
import io.agora.rtc.Constants;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27426h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.s.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/d.class */
public class C27204d implements AbstractC27179g {

    /* renamed from: b0 */
    public static final byte[] f76123b0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c0 */
    public static final byte[] f76124c0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: d0 */
    public static final byte[] f76125d0 = C27445x.m270q("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: e0 */
    public static final byte[] f76126e0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: f0 */
    public static final byte[] f76127f0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: g0 */
    public static final UUID f76128g0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: C */
    public C27426h f76131C;

    /* renamed from: D */
    public C27426h f76132D;

    /* renamed from: E */
    public boolean f76133E;

    /* renamed from: F */
    public int f76134F;

    /* renamed from: G */
    public long f76135G;

    /* renamed from: H */
    public long f76136H;

    /* renamed from: I */
    public int f76137I;

    /* renamed from: J */
    public int f76138J;

    /* renamed from: K */
    public int[] f76139K;

    /* renamed from: L */
    public int f76140L;

    /* renamed from: M */
    public int f76141M;

    /* renamed from: N */
    public int f76142N;

    /* renamed from: O */
    public int f76143O;

    /* renamed from: P */
    public int f76144P;

    /* renamed from: Q */
    public boolean f76145Q;

    /* renamed from: R */
    public boolean f76146R;

    /* renamed from: S */
    public boolean f76147S;

    /* renamed from: T */
    public boolean f76148T;

    /* renamed from: U */
    public byte f76149U;

    /* renamed from: V */
    public int f76150V;

    /* renamed from: W */
    public int f76151W;

    /* renamed from: X */
    public int f76152X;

    /* renamed from: Y */
    public boolean f76153Y;

    /* renamed from: Z */
    public boolean f76154Z;

    /* renamed from: a */
    public final AbstractC27203c f76155a;

    /* renamed from: a0 */
    public AbstractC27180h f76156a0;

    /* renamed from: b */
    public final C27210f f76157b;

    /* renamed from: c */
    public final SparseArray<C27207c> f76158c;

    /* renamed from: d */
    public final boolean f76159d;

    /* renamed from: e */
    public final C27434m f76160e;

    /* renamed from: f */
    public final C27434m f76161f;

    /* renamed from: g */
    public final C27434m f76162g;

    /* renamed from: h */
    public final C27434m f76163h;

    /* renamed from: i */
    public final C27434m f76164i;

    /* renamed from: j */
    public final C27434m f76165j;

    /* renamed from: k */
    public final C27434m f76166k;

    /* renamed from: l */
    public final C27434m f76167l;

    /* renamed from: m */
    public final C27434m f76168m;

    /* renamed from: n */
    public final C27434m f76169n;

    /* renamed from: o */
    public ByteBuffer f76170o;

    /* renamed from: p */
    public long f76171p;

    /* renamed from: u */
    public C27207c f76176u;

    /* renamed from: v */
    public boolean f76177v;

    /* renamed from: w */
    public int f76178w;

    /* renamed from: x */
    public long f76179x;

    /* renamed from: y */
    public boolean f76180y;

    /* renamed from: q */
    public long f76172q = -1;

    /* renamed from: r */
    public long f76173r = -9223372036854775807L;

    /* renamed from: s */
    public long f76174s = -9223372036854775807L;

    /* renamed from: t */
    public long f76175t = -9223372036854775807L;

    /* renamed from: z */
    public long f76181z = -1;

    /* renamed from: A */
    public long f76129A = -1;

    /* renamed from: B */
    public long f76130B = -9223372036854775807L;

    /* renamed from: n3.y.b.a.q0.s.d$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/d$b.class */
    public final class C27206b implements AbstractC27202b {
        public C27206b(C27205a c27205a) {
            C27204d.this = r4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:82:0x0432, code lost:
            r22 = r24;
         */
        /* JADX WARN: Type inference failed for: r0v141, types: [long] */
        /* JADX WARN: Type inference failed for: r0v147, types: [long] */
        /* JADX WARN: Type inference failed for: r0v151, types: [long] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m716a(int r9, int r10, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r11) throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 1490
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s.C27204d.C27206b.m716a(int, int, n3.y.b.a.q0.d):void");
        }

        /* renamed from: b */
        public void m715b(int i, double d) throws C27074c0 {
            C27204d c27204d = C27204d.this;
            Objects.requireNonNull(c27204d);
            if (i == 181) {
                c27204d.f76176u.f76197O = (int) d;
            } else if (i == 17545) {
                c27204d.f76174s = (long) d;
            } else {
                switch (i) {
                    case 21969:
                        c27204d.f76176u.f76185C = (float) d;
                        return;
                    case 21970:
                        c27204d.f76176u.f76186D = (float) d;
                        return;
                    case 21971:
                        c27204d.f76176u.f76187E = (float) d;
                        return;
                    case 21972:
                        c27204d.f76176u.f76188F = (float) d;
                        return;
                    case 21973:
                        c27204d.f76176u.f76189G = (float) d;
                        return;
                    case 21974:
                        c27204d.f76176u.f76190H = (float) d;
                        return;
                    case 21975:
                        c27204d.f76176u.f76191I = (float) d;
                        return;
                    case 21976:
                        c27204d.f76176u.f76192J = (float) d;
                        return;
                    case 21977:
                        c27204d.f76176u.f76193K = (float) d;
                        return;
                    case 21978:
                        c27204d.f76176u.f76194L = (float) d;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                c27204d.f76176u.f76223r = (float) d;
                                return;
                            case 30324:
                                c27204d.f76176u.f76224s = (float) d;
                                return;
                            case 30325:
                                c27204d.f76176u.f76225t = (float) d;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        /* renamed from: c */
        public void m714c(int i, long j) throws C27074c0 {
            C27204d c27204d = C27204d.this;
            Objects.requireNonNull(c27204d);
            if (i == 20529) {
                if (j != 0) {
                    throw new C27074c0(C22128a.m8677P1(55, "ContentEncodingOrder ", j, " not supported"));
                }
            } else if (i == 20530) {
                if (j != 1) {
                    throw new C27074c0(C22128a.m8677P1(55, "ContentEncodingScope ", j, " not supported"));
                }
            } else {
                boolean z = false;
                switch (i) {
                    case 131:
                        c27204d.f76176u.f76209d = (int) j;
                        return;
                    case 136:
                        C27207c c27207c = c27204d.f76176u;
                        boolean z2 = false;
                        if (j == 1) {
                            z2 = true;
                        }
                        c27207c.f76202T = z2;
                        return;
                    case Constants.ERR_PUBLISH_STREAM_NOT_FOUND /* 155 */:
                        c27204d.f76136H = c27204d.m719k(j);
                        return;
                    case 159:
                        c27204d.f76176u.f76195M = (int) j;
                        return;
                    case 176:
                        c27204d.f76176u.f76217l = (int) j;
                        return;
                    case 179:
                        c27204d.f76131C.m367a(c27204d.m719k(j));
                        return;
                    case 186:
                        c27204d.f76176u.f76218m = (int) j;
                        return;
                    case 215:
                        c27204d.f76176u.f76208c = (int) j;
                        return;
                    case 231:
                        c27204d.f76130B = c27204d.m719k(j);
                        return;
                    case 238:
                        c27204d.f76143O = (int) j;
                        return;
                    case 241:
                        if (c27204d.f76133E) {
                            return;
                        }
                        c27204d.f76132D.m367a(j);
                        c27204d.f76133E = true;
                        return;
                    case 251:
                        c27204d.f76154Z = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            throw new C27074c0(C22128a.m8677P1(50, "ContentCompAlgo ", j, " not supported"));
                        }
                        return;
                    case 17029:
                        if (j >= 1 && j <= 2) {
                            return;
                        }
                        throw new C27074c0(C22128a.m8677P1(53, "DocTypeReadVersion ", j, " not supported"));
                    case 17143:
                        if (j != 1) {
                            throw new C27074c0(C22128a.m8677P1(50, "EBMLReadVersion ", j, " not supported"));
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            throw new C27074c0(C22128a.m8677P1(49, "ContentEncAlgo ", j, " not supported"));
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            throw new C27074c0(C22128a.m8677P1(56, "AESSettingsCipherMode ", j, " not supported"));
                        }
                        return;
                    case 21420:
                        c27204d.f76179x = j + c27204d.f76172q;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            c27204d.f76176u.f76227v = 0;
                            return;
                        } else if (i2 == 1) {
                            c27204d.f76176u.f76227v = 2;
                            return;
                        } else if (i2 == 3) {
                            c27204d.f76176u.f76227v = 1;
                            return;
                        } else if (i2 != 15) {
                            return;
                        } else {
                            c27204d.f76176u.f76227v = 3;
                            return;
                        }
                    case 21680:
                        c27204d.f76176u.f76219n = (int) j;
                        return;
                    case 21682:
                        c27204d.f76176u.f76221p = (int) j;
                        return;
                    case 21690:
                        c27204d.f76176u.f76220o = (int) j;
                        return;
                    case 21930:
                        C27207c c27207c2 = c27204d.f76176u;
                        if (j == 1) {
                            z = true;
                        }
                        c27207c2.f76201S = z;
                        return;
                    case 21998:
                        c27204d.f76176u.f76211f = (int) j;
                        return;
                    case 22186:
                        c27204d.f76176u.f76198P = j;
                        return;
                    case 22203:
                        c27204d.f76176u.f76199Q = j;
                        return;
                    case 25188:
                        c27204d.f76176u.f76196N = (int) j;
                        return;
                    case 30321:
                        int i3 = (int) j;
                        if (i3 == 0) {
                            c27204d.f76176u.f76222q = 0;
                            return;
                        } else if (i3 == 1) {
                            c27204d.f76176u.f76222q = 1;
                            return;
                        } else if (i3 == 2) {
                            c27204d.f76176u.f76222q = 2;
                            return;
                        } else if (i3 != 3) {
                            return;
                        } else {
                            c27204d.f76176u.f76222q = 3;
                            return;
                        }
                    case 2352003:
                        c27204d.f76176u.f76210e = (int) j;
                        return;
                    case 2807729:
                        c27204d.f76173r = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    c27204d.f76176u.f76231z = 2;
                                    return;
                                } else if (i4 != 2) {
                                    return;
                                } else {
                                    c27204d.f76176u.f76231z = 1;
                                    return;
                                }
                            case 21946:
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 == 16) {
                                        c27204d.f76176u.f76230y = 6;
                                        return;
                                    } else if (i5 == 18) {
                                        c27204d.f76176u.f76230y = 7;
                                        return;
                                    } else if (i5 != 6 && i5 != 7) {
                                        return;
                                    }
                                }
                                c27204d.f76176u.f76230y = 3;
                                return;
                            case 21947:
                                C27207c c27207c3 = c27204d.f76176u;
                                c27207c3.f76228w = true;
                                int i6 = (int) j;
                                if (i6 == 1) {
                                    c27207c3.f76229x = 1;
                                    return;
                                } else if (i6 == 9) {
                                    c27207c3.f76229x = 6;
                                    return;
                                } else if (i6 != 4 && i6 != 5 && i6 != 6 && i6 != 7) {
                                    return;
                                } else {
                                    c27207c3.f76229x = 2;
                                    return;
                                }
                            case 21948:
                                c27204d.f76176u.f76183A = (int) j;
                                return;
                            case 21949:
                                c27204d.f76176u.f76184B = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        /* renamed from: d */
        public void m713d(int i, long j, long j2) throws C27074c0 {
            C27204d c27204d = C27204d.this;
            Objects.requireNonNull(c27204d);
            if (i == 160) {
                c27204d.f76154Z = false;
            } else if (i == 174) {
                c27204d.f76176u = new C27207c(null);
            } else if (i == 187) {
                c27204d.f76133E = false;
            } else if (i == 19899) {
                c27204d.f76178w = -1;
                c27204d.f76179x = -1L;
            } else if (i == 20533) {
                c27204d.f76176u.f76212g = true;
            } else if (i == 21968) {
                c27204d.f76176u.f76228w = true;
            } else if (i == 408125543) {
                long j3 = c27204d.f76172q;
                if (j3 != -1 && j3 != j) {
                    throw new C27074c0("Multiple Segment elements not supported");
                }
                c27204d.f76172q = j;
                c27204d.f76171p = j2;
            } else if (i == 475249515) {
                c27204d.f76131C = new C27426h();
                c27204d.f76132D = new C27426h();
            } else if (i != 524531317 || c27204d.f76177v) {
            } else {
                if (c27204d.f76159d && c27204d.f76181z != -1) {
                    c27204d.f76180y = true;
                    return;
                }
                c27204d.f76156a0.m749q(new AbstractC27186n.C27188b(c27204d.f76175t, 0L));
                c27204d.f76177v = true;
            }
        }

        /* renamed from: e */
        public void m712e(int i, String str) throws C27074c0 {
            C27204d c27204d = C27204d.this;
            Objects.requireNonNull(c27204d);
            if (i == 134) {
                c27204d.f76176u.f76207b = str;
            } else if (i == 17026) {
                if (!"webm".equals(str) && !"matroska".equals(str)) {
                    throw new C27074c0(C22128a.m8671R1(str.length() + 22, "DocType ", str, " not supported"));
                }
            } else if (i == 21358) {
                c27204d.f76176u.f76206a = str;
            } else if (i != 2274716) {
            } else {
                c27204d.f76176u.f76203U = str;
            }
        }
    }

    /* renamed from: n3.y.b.a.q0.s.d$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/d$c.class */
    public static final class C27207c {

        /* renamed from: R */
        public C27208d f76200R;

        /* renamed from: S */
        public boolean f76201S;

        /* renamed from: V */
        public AbstractC27190p f76204V;

        /* renamed from: W */
        public int f76205W;

        /* renamed from: a */
        public String f76206a;

        /* renamed from: b */
        public String f76207b;

        /* renamed from: c */
        public int f76208c;

        /* renamed from: d */
        public int f76209d;

        /* renamed from: e */
        public int f76210e;

        /* renamed from: f */
        public int f76211f;

        /* renamed from: g */
        public boolean f76212g;

        /* renamed from: h */
        public byte[] f76213h;

        /* renamed from: i */
        public AbstractC27190p.C27191a f76214i;

        /* renamed from: j */
        public byte[] f76215j;

        /* renamed from: k */
        public DrmInitData f76216k;

        /* renamed from: l */
        public int f76217l = -1;

        /* renamed from: m */
        public int f76218m = -1;

        /* renamed from: n */
        public int f76219n = -1;

        /* renamed from: o */
        public int f76220o = -1;

        /* renamed from: p */
        public int f76221p = 0;

        /* renamed from: q */
        public int f76222q = -1;

        /* renamed from: r */
        public float f76223r = 0.0f;

        /* renamed from: s */
        public float f76224s = 0.0f;

        /* renamed from: t */
        public float f76225t = 0.0f;

        /* renamed from: u */
        public byte[] f76226u = null;

        /* renamed from: v */
        public int f76227v = -1;

        /* renamed from: w */
        public boolean f76228w = false;

        /* renamed from: x */
        public int f76229x = -1;

        /* renamed from: y */
        public int f76230y = -1;

        /* renamed from: z */
        public int f76231z = -1;

        /* renamed from: A */
        public int f76183A = 1000;

        /* renamed from: B */
        public int f76184B = 200;

        /* renamed from: C */
        public float f76185C = -1.0f;

        /* renamed from: D */
        public float f76186D = -1.0f;

        /* renamed from: E */
        public float f76187E = -1.0f;

        /* renamed from: F */
        public float f76188F = -1.0f;

        /* renamed from: G */
        public float f76189G = -1.0f;

        /* renamed from: H */
        public float f76190H = -1.0f;

        /* renamed from: I */
        public float f76191I = -1.0f;

        /* renamed from: J */
        public float f76192J = -1.0f;

        /* renamed from: K */
        public float f76193K = -1.0f;

        /* renamed from: L */
        public float f76194L = -1.0f;

        /* renamed from: M */
        public int f76195M = 1;

        /* renamed from: N */
        public int f76196N = -1;

        /* renamed from: O */
        public int f76197O = JosStatusCodes.RTN_CODE_COMMON_ERROR;

        /* renamed from: P */
        public long f76198P = 0;

        /* renamed from: Q */
        public long f76199Q = 0;

        /* renamed from: T */
        public boolean f76202T = true;

        /* renamed from: U */
        public String f76203U = "eng";

        public C27207c() {
        }

        public C27207c(C27205a c27205a) {
        }
    }

    /* renamed from: n3.y.b.a.q0.s.d$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/d$d.class */
    public static final class C27208d {

        /* renamed from: a */
        public final byte[] f76232a = new byte[10];

        /* renamed from: b */
        public boolean f76233b;

        /* renamed from: c */
        public int f76234c;

        /* renamed from: d */
        public int f76235d;

        /* renamed from: e */
        public long f76236e;

        /* renamed from: f */
        public int f76237f;
    }

    public C27204d(int i) {
        C27199a c27199a = new C27199a();
        this.f76155a = c27199a;
        c27199a.f76117d = new C27206b(null);
        this.f76159d = (i & 1) != 0 ? false : true;
        this.f76157b = new C27210f();
        this.f76158c = new SparseArray<>();
        this.f76162g = new C27434m(4);
        this.f76163h = new C27434m(ByteBuffer.allocate(4).putInt(-1).array());
        this.f76164i = new C27434m(4);
        this.f76160e = new C27434m(C27430k.f77176a);
        this.f76161f = new C27434m(4);
        this.f76165j = new C27434m();
        this.f76166k = new C27434m();
        this.f76167l = new C27434m(8);
        this.f76168m = new C27434m();
        this.f76169n = new C27434m();
    }

    /* renamed from: e */
    public static int[] m723e(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76130B = -9223372036854775807L;
        this.f76134F = 0;
        C27199a c27199a = (C27199a) this.f76155a;
        c27199a.f76118e = 0;
        c27199a.f76115b.clear();
        C27210f c27210f = c27199a.f76116c;
        c27210f.f76242b = 0;
        c27210f.f76243c = 0;
        C27210f c27210f2 = this.f76157b;
        c27210f2.f76242b = 0;
        c27210f2.f76243c = 0;
        m720j();
        for (int i = 0; i < this.f76158c.size(); i++) {
            C27208d c27208d = this.f76158c.valueAt(i).f76200R;
            if (c27208d != null) {
                c27208d.f76233b = false;
            }
        }
    }

    /* renamed from: b */
    public final void m725b(C27207c c27207c, long j) {
        C27208d c27208d = c27207c.f76200R;
        if (c27208d == null) {
            if ("S_TEXT/UTF8".equals(c27207c.f76207b)) {
                m724c(c27207c, "%02d:%02d:%02d,%03d", 19, 1000L, f76124c0);
            } else if ("S_TEXT/ASS".equals(c27207c.f76207b)) {
                m724c(c27207c, "%01d:%02d:%02d:%02d", 21, 10000L, f76127f0);
            }
            if ((this.f76142N & 268435456) != 0) {
                C27434m c27434m = this.f76169n;
                int i = c27434m.f77202c;
                c27207c.f76204V.mo739d(c27434m, i);
                this.f76152X += i;
            }
            c27207c.f76204V.mo741b(j, this.f76142N, this.f76152X, 0, c27207c.f76214i);
        } else if (c27208d.f76233b) {
            int i2 = c27208d.f76234c;
            int i3 = i2 + 1;
            c27208d.f76234c = i3;
            if (i2 == 0) {
                c27208d.f76236e = j;
            }
            if (i3 >= 16) {
                c27207c.f76204V.mo741b(c27208d.f76236e, c27208d.f76237f, c27208d.f76235d, 0, c27207c.f76214i);
                c27208d.f76234c = 0;
            }
        }
        this.f76153Y = true;
        m720j();
    }

    /* renamed from: c */
    public final void m724c(C27207c c27207c, String str, int i, long j, byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3 = this.f76166k.f77200a;
        long j2 = this.f76136H;
        if (j2 == -9223372036854775807L) {
            bArr2 = bArr;
        } else {
            int i2 = (int) (j2 / 3600000000L);
            long j3 = j2 - ((i2 * 3600) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - ((i3 * 60) * 1000000);
            int i4 = (int) (j4 / 1000000);
            bArr2 = C27445x.m270q(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (i4 * 1000000)) / j))));
        }
        System.arraycopy(bArr2, 0, bArr3, i, bArr.length);
        AbstractC27190p abstractC27190p = c27207c.f76204V;
        C27434m c27434m = this.f76166k;
        abstractC27190p.mo739d(c27434m, c27434m.f77202c);
        this.f76152X += this.f76166k.f77202c;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public final void mo605d(AbstractC27180h abstractC27180h) {
        this.f76156a0 = abstractC27180h;
    }

    /* renamed from: f */
    public final void m722f(C27176d c27176d, int i) throws IOException, InterruptedException {
        C27434m c27434m = this.f76162g;
        if (c27434m.f77202c >= i) {
            return;
        }
        byte[] bArr = c27434m.f77200a;
        if (bArr.length < i) {
            c27434m.m317x(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i)), this.f76162g.f77202c);
        }
        C27434m c27434m2 = this.f76162g;
        byte[] bArr2 = c27434m2.f77200a;
        int i2 = c27434m2.f77202c;
        c27176d.m754g(bArr2, i2, i - i2, false);
        this.f76162g.m316y(i);
    }

    /* renamed from: g */
    public final int m721g(C27176d c27176d, AbstractC27190p abstractC27190p, int i) throws IOException, InterruptedException {
        int i2;
        int m340a = this.f76165j.m340a();
        if (m340a > 0) {
            i2 = Math.min(i, m340a);
            abstractC27190p.mo739d(this.f76165j, i2);
        } else {
            i2 = abstractC27190p.mo742a(c27176d, i, false);
        }
        this.f76144P += i2;
        this.f76152X += i2;
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public final boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        boolean z;
        C27209e c27209e = new C27209e();
        ?? r0 = c27176d.f76030c;
        int i = (r0 > (-1L) ? 1 : (r0 == (-1L) ? 0 : -1));
        char c = 1024;
        if (i != 0) {
            c = r0 > 1024 ? (char) 1024 : r0;
        }
        int i2 = c;
        c27176d.m757d(c27209e.f76238a.f77200a, 0, 4, false);
        char m325p = c27209e.f76238a.m325p();
        c27209e.f76239b = 4;
        while (true) {
            if (m325p != 440786851) {
                int i3 = c27209e.f76239b + 1;
                c27209e.f76239b = i3;
                if (i3 == i2) {
                    z = false;
                    break;
                }
                c27176d.m757d(c27209e.f76238a.f77200a, 0, 1, false);
                m325p = ((m325p << '\b') & (-256)) | (c27209e.f76238a.f77200a[0] & 255);
            } else {
                long m711a = c27209e.m711a(c27176d);
                long j = c27209e.f76239b;
                z = false;
                if (m711a != Long.MIN_VALUE) {
                    if (i == 0 || j + m711a < r0) {
                        while (true) {
                            int i4 = (c27209e.f76239b > (j + m711a) ? 1 : (c27209e.f76239b == (j + m711a) ? 0 : -1));
                            if (i4 >= 0) {
                                z = false;
                                if (i4 == 0) {
                                    z = true;
                                }
                            } else if (c27209e.m711a(c27176d) == Long.MIN_VALUE) {
                                z = false;
                                break;
                            } else {
                                long m711a2 = c27209e.m711a(c27176d);
                                int i5 = (m711a2 > 0L ? 1 : (m711a2 == 0L ? 0 : -1));
                                z = false;
                                if (i5 < 0) {
                                    break;
                                } else if (m711a2 > 2147483647L) {
                                    z = false;
                                    break;
                                } else if (i5 != 0) {
                                    int i6 = (int) m711a2;
                                    c27176d.m760a(i6, false);
                                    c27209e.f76239b += i6;
                                }
                            }
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x007e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0007 A[SYNTHETIC] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo603i(p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d r9, p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s.C27204d.mo603i(n3.y.b.a.q0.d, n3.y.b.a.q0.m):int");
    }

    /* renamed from: j */
    public final void m720j() {
        this.f76144P = 0;
        this.f76152X = 0;
        this.f76151W = 0;
        this.f76145Q = false;
        this.f76146R = false;
        this.f76148T = false;
        this.f76150V = 0;
        this.f76149U = (byte) 0;
        this.f76147S = false;
        this.f76165j.m320u();
    }

    /* renamed from: k */
    public final long m719k(long j) throws C27074c0 {
        long j2 = this.f76173r;
        if (j2 != -9223372036854775807L) {
            return C27445x.m261z(j, j2, 1000L);
        }
        throw new C27074c0("Can't scale timecode prior to timecodeScale being set.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: l */
    public final void m718l(C27176d c27176d, C27207c c27207c, int i) throws IOException, InterruptedException {
        int i2;
        int i3;
        int i4;
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(c27207c.f76207b)) {
            m717m(c27176d, f76123b0, i);
        } else if ("S_TEXT/ASS".equals(c27207c.f76207b)) {
            m717m(c27176d, f76126e0, i);
        } else {
            AbstractC27190p abstractC27190p = c27207c.f76204V;
            if (!this.f76145Q) {
                if (c27207c.f76212g) {
                    this.f76142N &= -1073741825;
                    int i5 = 128;
                    if (!this.f76146R) {
                        c27176d.m754g(this.f76162g.f77200a, 0, 1, false);
                        this.f76144P++;
                        if ((this.f76162g.f77200a[0] & 128) == 128) {
                            throw new C27074c0("Extension bit is set in signal byte");
                        }
                        this.f76149U = bArr[0];
                        this.f76146R = true;
                    }
                    byte b = this.f76149U;
                    if (((b & 1) == 1 ? 1 : null) != null) {
                        Object[] objArr = (b & 2) == 2 ? 1 : null;
                        this.f76142N |= 1073741824;
                        if (!this.f76147S) {
                            c27176d.m754g(this.f76167l.f77200a, 0, 8, false);
                            this.f76144P += 8;
                            this.f76147S = true;
                            C27434m c27434m = this.f76162g;
                            byte[] bArr2 = c27434m.f77200a;
                            if (objArr == null) {
                                i5 = 0;
                            }
                            bArr2[0] = (byte) (i5 | 8);
                            c27434m.m315z(0);
                            abstractC27190p.mo739d(this.f76162g, 1);
                            this.f76152X++;
                            this.f76167l.m315z(0);
                            abstractC27190p.mo739d(this.f76167l, 8);
                            this.f76152X += 8;
                        }
                        if (objArr != null) {
                            if (!this.f76148T) {
                                c27176d.m754g(this.f76162g.f77200a, 0, 1, false);
                                this.f76144P++;
                                this.f76162g.m315z(0);
                                this.f76150V = this.f76162g.m326o();
                                this.f76148T = true;
                            }
                            int i6 = this.f76150V * 4;
                            this.f76162g.m319v(i6);
                            c27176d.m754g(this.f76162g.f77200a, 0, i6, false);
                            this.f76144P += i6;
                            short s = (short) ((this.f76150V / 2) + 1);
                            int i7 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.f76170o;
                            if (byteBuffer == null || byteBuffer.capacity() < i7) {
                                this.f76170o = ByteBuffer.allocate(i7);
                            }
                            this.f76170o.position(0);
                            this.f76170o.putShort(s);
                            int i8 = 0;
                            int i9 = 0;
                            while (true) {
                                i3 = i9;
                                i4 = this.f76150V;
                                if (i8 >= i4) {
                                    break;
                                }
                                int m323r = this.f76162g.m323r();
                                if (i8 % 2 == 0) {
                                    this.f76170o.putShort((short) (m323r - i3));
                                } else {
                                    this.f76170o.putInt(m323r - i3);
                                }
                                i8++;
                                i9 = m323r;
                            }
                            int i10 = (i - this.f76144P) - i3;
                            if (i4 % 2 == 1) {
                                this.f76170o.putInt(i10);
                            } else {
                                this.f76170o.putShort((short) i10);
                                this.f76170o.putInt(0);
                            }
                            this.f76168m.m317x(this.f76170o.array(), i7);
                            abstractC27190p.mo739d(this.f76168m, i7);
                            this.f76152X += i7;
                        }
                    }
                } else {
                    byte[] bArr3 = c27207c.f76213h;
                    if (bArr3 != null) {
                        C27434m c27434m2 = this.f76165j;
                        int length = bArr3.length;
                        c27434m2.f77200a = bArr3;
                        c27434m2.f77202c = length;
                        c27434m2.f77201b = 0;
                    }
                }
                if (c27207c.f76211f > 0) {
                    this.f76142N |= 268435456;
                    this.f76169n.m320u();
                    this.f76162g.m319v(4);
                    C27434m c27434m3 = this.f76162g;
                    byte[] bArr4 = c27434m3.f77200a;
                    bArr4[0] = (byte) ((i >> 24) & 255);
                    bArr4[1] = (byte) ((i >> 16) & 255);
                    bArr4[2] = (byte) ((i >> 8) & 255);
                    bArr4[3] = (byte) (i & 255);
                    abstractC27190p.mo739d(c27434m3, 4);
                    this.f76152X += 4;
                }
                this.f76145Q = true;
            }
            int i11 = i + this.f76165j.f77202c;
            if (!"V_MPEG4/ISO/AVC".equals(c27207c.f76207b) && !"V_MPEGH/ISO/HEVC".equals(c27207c.f76207b)) {
                if (c27207c.f76200R != null) {
                    MediaSessionCompat.m43184y(this.f76165j.f77202c == 0);
                    C27208d c27208d = c27207c.f76200R;
                    int i12 = this.f76142N;
                    if (!c27208d.f76233b) {
                        c27176d.m757d(c27208d.f76232a, 0, 10, false);
                        c27176d.f76033f = 0;
                        byte[] bArr5 = c27208d.f76232a;
                        if (bArr5[4] == -8 && bArr5[5] == 114 && bArr5[6] == 111 && (bArr5[7] & 254) == 186) {
                            Object[] objArr2 = 8;
                            if (((bArr5[7] & 255) == 187 ? 1 : null) != null) {
                                objArr2 = 9;
                            }
                            i2 = 40 << ((bArr5[objArr2 == 1 ? 1 : 0] >> 4) & 7);
                        } else {
                            i2 = 0;
                        }
                        if (i2 != 0) {
                            c27208d.f76233b = true;
                            c27208d.f76234c = 0;
                        }
                    }
                    if (c27208d.f76234c == 0) {
                        c27208d.f76237f = i12;
                        c27208d.f76235d = 0;
                    }
                    c27208d.f76235d += i11;
                }
                while (true) {
                    int i13 = this.f76144P;
                    if (i13 >= i11) {
                        break;
                    }
                    m721g(c27176d, abstractC27190p, i11 - i13);
                }
            } else {
                byte[] bArr6 = this.f76161f.f77200a;
                bArr6[0] = (byte) 0;
                bArr6[1] = (byte) 0;
                bArr6[2] = (byte) 0;
                int i14 = c27207c.f76205W;
                int i15 = 4 - i14;
                while (this.f76144P < i11) {
                    int i16 = this.f76151W;
                    if (i16 == 0) {
                        int min = Math.min(i14, this.f76165j.m340a());
                        c27176d.m754g(bArr6, i15 + min, i14 - min, false);
                        if (min > 0) {
                            C27434m c27434m4 = this.f76165j;
                            System.arraycopy(c27434m4.f77200a, c27434m4.f77201b, bArr6, i15, min);
                            c27434m4.f77201b += min;
                        }
                        this.f76144P += i14;
                        this.f76161f.m315z(0);
                        this.f76151W = this.f76161f.m323r();
                        this.f76160e.m315z(0);
                        abstractC27190p.mo739d(this.f76160e, 4);
                        this.f76152X += 4;
                    } else {
                        this.f76151W = i16 - m721g(c27176d, abstractC27190p, i16);
                    }
                }
            }
            if (!"A_VORBIS".equals(c27207c.f76207b)) {
                return;
            }
            this.f76163h.m315z(0);
            abstractC27190p.mo739d(this.f76163h, 4);
            this.f76152X += 4;
        }
    }

    /* renamed from: m */
    public final void m717m(C27176d c27176d, byte[] bArr, int i) throws IOException, InterruptedException {
        int length = bArr.length + i;
        C27434m c27434m = this.f76166k;
        byte[] bArr2 = c27434m.f77200a;
        if (bArr2.length < length) {
            c27434m.f77200a = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        c27176d.m754g(this.f76166k.f77200a, bArr.length, i, false);
        this.f76166k.m319v(length);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public final void release() {
    }
}
