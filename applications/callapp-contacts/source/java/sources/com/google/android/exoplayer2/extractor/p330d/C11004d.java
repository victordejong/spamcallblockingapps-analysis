package com.google.android.exoplayer2.extractor.p330d;

import android.util.Pair;
import android.util.SparseArray;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.C10880a;
import com.google.android.exoplayer2.audio.C10883b;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.AbstractC11071h;
import com.google.android.exoplayer2.extractor.AbstractC11121i;
import com.google.android.exoplayer2.extractor.AbstractC11130j;
import com.google.android.exoplayer2.extractor.AbstractC11133l;
import com.google.android.exoplayer2.extractor.AbstractC11146v;
import com.google.android.exoplayer2.extractor.AbstractC11150x;
import com.google.android.exoplayer2.extractor.C10990c;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11618o;
import com.google.android.exoplayer2.util.C11620q;
import com.google.android.exoplayer2.util.C11624s;
import com.google.android.exoplayer2.util.C11628u;
import com.google.android.exoplayer2.video.C11640a;
import com.google.android.exoplayer2.video.C11648b;
import com.google.android.exoplayer2.video.C11651d;
import com.google.android.exoplayer2.video.ColorInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.common.collect.AbstractC15549v;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.extractor.d.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d.class */
public final class C11004d implements AbstractC11071h {

    /* renamed from: c */
    static final Map<String, Integer> f35616c;

    /* renamed from: A */
    long f35617A;

    /* renamed from: B */
    int f35618B;

    /* renamed from: C */
    int f35619C;

    /* renamed from: D */
    int[] f35620D;

    /* renamed from: E */
    int f35621E;

    /* renamed from: F */
    int f35622F;

    /* renamed from: G */
    int f35623G;

    /* renamed from: H */
    int f35624H;

    /* renamed from: I */
    boolean f35625I;

    /* renamed from: J */
    AbstractC11130j f35626J;

    /* renamed from: N */
    private final AbstractC11003c f35627N;

    /* renamed from: O */
    private final C11628u f35628O;

    /* renamed from: P */
    private final C11628u f35629P;

    /* renamed from: Q */
    private final C11628u f35630Q;

    /* renamed from: R */
    private final C11628u f35631R;

    /* renamed from: S */
    private final C11628u f35632S;

    /* renamed from: T */
    private final C11628u f35633T;

    /* renamed from: U */
    private final C11628u f35634U;

    /* renamed from: V */
    private ByteBuffer f35635V;

    /* renamed from: W */
    private long f35636W;

    /* renamed from: X */
    private boolean f35637X;

    /* renamed from: Y */
    private int f35638Y;

    /* renamed from: Z */
    private int f35639Z;

    /* renamed from: aa */
    private int f35640aa;

    /* renamed from: ab */
    private boolean f35641ab;

    /* renamed from: ac */
    private boolean f35642ac;

    /* renamed from: ad */
    private boolean f35643ad;

    /* renamed from: ae */
    private int f35644ae;

    /* renamed from: af */
    private byte f35645af;

    /* renamed from: ag */
    private boolean f35646ag;

    /* renamed from: d */
    final C11010f f35647d;

    /* renamed from: e */
    final SparseArray<C11007b> f35648e;

    /* renamed from: f */
    final boolean f35649f;

    /* renamed from: g */
    final C11628u f35650g;

    /* renamed from: h */
    final C11628u f35651h;

    /* renamed from: i */
    final C11628u f35652i;

    /* renamed from: j */
    long f35653j;

    /* renamed from: k */
    long f35654k;

    /* renamed from: l */
    long f35655l;

    /* renamed from: m */
    long f35656m;

    /* renamed from: n */
    long f35657n;

    /* renamed from: o */
    C11007b f35658o;

    /* renamed from: p */
    boolean f35659p;

    /* renamed from: q */
    int f35660q;

    /* renamed from: r */
    long f35661r;

    /* renamed from: s */
    boolean f35662s;

    /* renamed from: t */
    long f35663t;

    /* renamed from: u */
    long f35664u;

    /* renamed from: v */
    C11618o f35665v;

    /* renamed from: w */
    C11618o f35666w;

    /* renamed from: x */
    boolean f35667x;

    /* renamed from: y */
    int f35668y;

    /* renamed from: z */
    long f35669z;

    /* renamed from: a */
    public static final AbstractC11133l f35614a = _$$Lambda$d$3Jz_9Ap0zV8zZCESImMT84PV1Ns.INSTANCE;

    /* renamed from: K */
    private static final byte[] f35611K = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: b */
    static final byte[] f35615b = C11599af.m19931c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: L */
    private static final byte[] f35612L = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: M */
    private static final UUID f35613M = new UUID(72057594037932032L, -9223371306706625679L);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.extractor.d.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$a.class */
    public final class C11006a implements AbstractC11002b {
        private C11006a() {
            C11004d.this = r4;
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final int mo21727a(int i) {
            return C11004d.m21744a(i);
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final void mo21726a(int i, double d) throws ParserException {
            C11004d c11004d = C11004d.this;
            if (i == 181) {
                c11004d.m21728e(i).f35687Q = (int) d;
            } else if (i == 17545) {
                c11004d.f35656m = (long) d;
            } else {
                switch (i) {
                    case 21969:
                        c11004d.m21728e(i).f35674D = (float) d;
                        return;
                    case 21970:
                        c11004d.m21728e(i).f35675E = (float) d;
                        return;
                    case 21971:
                        c11004d.m21728e(i).f35676F = (float) d;
                        return;
                    case 21972:
                        c11004d.m21728e(i).f35677G = (float) d;
                        return;
                    case 21973:
                        c11004d.m21728e(i).f35678H = (float) d;
                        return;
                    case 21974:
                        c11004d.m21728e(i).f35679I = (float) d;
                        return;
                    case 21975:
                        c11004d.m21728e(i).f35680J = (float) d;
                        return;
                    case 21976:
                        c11004d.m21728e(i).f35681K = (float) d;
                        return;
                    case 21977:
                        c11004d.m21728e(i).f35682L = (float) d;
                        return;
                    case 21978:
                        c11004d.m21728e(i).f35683M = (float) d;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                c11004d.m21728e(i).f35714s = (float) d;
                                return;
                            case 30324:
                                c11004d.m21728e(i).f35715t = (float) d;
                                return;
                            case 30325:
                                c11004d.m21728e(i).f35716u = (float) d;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v113, types: [long] */
        /* JADX WARN: Type inference failed for: r0v123, types: [long] */
        /* JADX WARN: Type inference failed for: r0v133, types: [long] */
        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final void mo21725a(int i, int i2, AbstractC11121i abstractC11121i) throws IOException {
            int i3;
            C11004d c11004d = C11004d.this;
            int i4 = 4;
            if (i != 161 && i != 163) {
                if (i == 165) {
                    if (c11004d.f35668y != 2) {
                        return;
                    }
                    C11007b c11007b = c11004d.f35648e.get(c11004d.f35621E);
                    if (c11004d.f35624H != 4 || !"V_VP9".equals(c11007b.f35697b)) {
                        abstractC11121i.mo21401b(i2);
                        return;
                    }
                    c11004d.f35652i.m19811a(i2);
                    abstractC11121i.mo21400b(c11004d.f35652i.f38733a, 0, i2);
                    return;
                } else if (i == 16877) {
                    C11007b m21728e = c11004d.m21728e(i);
                    if (m21728e.f35702g != 1685485123 && m21728e.f35702g != 1685480259) {
                        abstractC11121i.mo21401b(i2);
                        return;
                    }
                    m21728e.f35684N = new byte[i2];
                    abstractC11121i.mo21400b(m21728e.f35684N, 0, i2);
                    return;
                } else if (i == 16981) {
                    c11004d.m21732c(i);
                    c11004d.f35658o.f35704i = new byte[i2];
                    abstractC11121i.mo21400b(c11004d.f35658o.f35704i, 0, i2);
                    return;
                } else if (i == 18402) {
                    byte[] bArr = new byte[i2];
                    abstractC11121i.mo21400b(bArr, 0, i2);
                    c11004d.m21728e(i).f35705j = new AbstractC11150x.C11151a(1, bArr, 0, 0);
                    return;
                } else if (i == 21419) {
                    Arrays.fill(c11004d.f35651h.f38733a, (byte) 0);
                    abstractC11121i.mo21400b(c11004d.f35651h.f38733a, 4 - i2, i2);
                    c11004d.f35651h.m19801d(0);
                    c11004d.f35660q = (int) c11004d.f35651h.m19794h();
                    return;
                } else if (i == 25506) {
                    c11004d.m21732c(i);
                    c11004d.f35658o.f35706k = new byte[i2];
                    abstractC11121i.mo21400b(c11004d.f35658o.f35706k, 0, i2);
                    return;
                } else if (i != 30322) {
                    throw new ParserException("Unexpected id: ".concat(String.valueOf(i)));
                } else {
                    c11004d.m21732c(i);
                    c11004d.f35658o.f35717v = new byte[i2];
                    abstractC11121i.mo21400b(c11004d.f35658o.f35717v, 0, i2);
                    return;
                }
            }
            if (c11004d.f35668y == 0) {
                c11004d.f35621E = (int) c11004d.f35647d.m21710a(abstractC11121i, false, true, 8);
                c11004d.f35622F = c11004d.f35647d.f35732a;
                c11004d.f35617A = -9223372036854775807L;
                c11004d.f35668y = 1;
                c11004d.f35650g.m19811a(0);
            }
            C11007b c11007b2 = c11004d.f35648e.get(c11004d.f35621E);
            if (c11007b2 == null) {
                abstractC11121i.mo21401b(i2 - c11004d.f35622F);
                c11004d.f35668y = 0;
                return;
            }
            c11007b2.m21719a();
            if (c11004d.f35668y == 1) {
                c11004d.m21740a(abstractC11121i, 3);
                int i5 = (c11004d.f35650g.f38733a[2] & 6) >> 1;
                if (i5 == 0) {
                    c11004d.f35619C = 1;
                    c11004d.f35620D = C11004d.m21736a(c11004d.f35620D, 1);
                    c11004d.f35620D[0] = (i2 - c11004d.f35622F) - 3;
                } else {
                    c11004d.m21740a(abstractC11121i, 4);
                    c11004d.f35619C = (c11004d.f35650g.f38733a[3] & 255) + 1;
                    c11004d.f35620D = C11004d.m21736a(c11004d.f35620D, c11004d.f35619C);
                    if (i5 == 2) {
                        Arrays.fill(c11004d.f35620D, 0, c11004d.f35619C, ((i2 - c11004d.f35622F) - 4) / c11004d.f35619C);
                    } else if (i5 == 1) {
                        int i6 = 0;
                        for (int i7 = 0; i7 < c11004d.f35619C - 1; i7++) {
                            c11004d.f35620D[i7] = 0;
                            int i8 = i4;
                            do {
                                i4 = i8 + 1;
                                c11004d.m21740a(abstractC11121i, i4);
                                i3 = c11004d.f35650g.f38733a[i4 - 1] & 255;
                                int[] iArr = c11004d.f35620D;
                                iArr[i7] = iArr[i7] + i3;
                                i8 = i4;
                            } while (i3 == 255);
                            i6 += c11004d.f35620D[i7];
                        }
                        c11004d.f35620D[c11004d.f35619C - 1] = ((i2 - c11004d.f35622F) - i4) - i6;
                    } else if (i5 != 3) {
                        throw new ParserException("Unexpected lacing value: ".concat(String.valueOf(i5)));
                    } else {
                        int i9 = 0;
                        for (int i10 = 0; i10 < c11004d.f35619C - 1; i10++) {
                            c11004d.f35620D[i10] = 0;
                            i4++;
                            c11004d.m21740a(abstractC11121i, i4);
                            int i11 = i4 - 1;
                            if (c11004d.f35650g.f38733a[i11] == 0) {
                                throw new ParserException("No valid varint length mask found");
                            }
                            char c = 0;
                            int i12 = 0;
                            while (true) {
                                if (i12 >= 8) {
                                    break;
                                }
                                int i13 = 1 << (7 - i12);
                                if ((c11004d.f35650g.f38733a[i11] & i13) != 0) {
                                    int i14 = i4 + i12;
                                    c11004d.m21740a(abstractC11121i, i14);
                                    char c2 = (i13 ^ (-1)) & c11004d.f35650g.f38733a[i11] & 255;
                                    int i15 = i11 + 1;
                                    while (i15 < i14) {
                                        i15++;
                                        c2 = (c11004d.f35650g.f38733a[i15] & 255) | (c2 << '\b');
                                    }
                                    C11004d c11004d2 = c11004d;
                                    i4 = i14;
                                    c = c2;
                                    c11004d = c11004d2;
                                    if (i10 > 0) {
                                        c = c2 - ((1 << ((i12 * 7) + 6)) - 1);
                                        i4 = i14;
                                        c11004d = c11004d2;
                                    }
                                } else {
                                    i12++;
                                }
                            }
                            if (c < -2147483648L || c > 2147483647L) {
                                throw new ParserException("EBML lacing sample size out of range.");
                            }
                            int i16 = c;
                            int[] iArr2 = c11004d.f35620D;
                            if (i10 != 0) {
                                i16 += c11004d.f35620D[i10 - 1];
                            }
                            iArr2[i10] = i16;
                            i9 += c11004d.f35620D[i10];
                        }
                        c11004d.f35620D[c11004d.f35619C - 1] = ((i2 - c11004d.f35622F) - i4) - i9;
                    }
                }
                c11004d.f35669z = c11004d.f35664u + c11004d.m21743a((c11004d.f35650g.f38733a[0] << 8) | (c11004d.f35650g.f38733a[1] & 255));
                c11004d.f35623G = (c11007b2.f35699d == 2 || (i == 163 && (c11004d.f35650g.f38733a[2] & 128) == 128)) ? 1 : 0;
                c11004d.f35668y = 2;
                c11004d.f35618B = 0;
            }
            if (i != 163) {
                while (c11004d.f35618B < c11004d.f35619C) {
                    c11004d.f35620D[c11004d.f35618B] = c11004d.m21739a(abstractC11121i, c11007b2, c11004d.f35620D[c11004d.f35618B]);
                    c11004d.f35618B++;
                }
                return;
            }
            while (c11004d.f35618B < c11004d.f35619C) {
                c11004d.m21741a(c11007b2, ((c11004d.f35618B * c11007b2.f35700e) / 1000) + c11004d.f35669z, c11004d.f35623G, c11004d.m21739a(abstractC11121i, c11007b2, c11004d.f35620D[c11004d.f35618B]), 0);
                c11004d.f35618B++;
            }
            c11004d.f35668y = 0;
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final void mo21724a(int i, long j) throws ParserException {
            C11004d c11004d = C11004d.this;
            if (i == 20529) {
                if (j == 0) {
                    return;
                }
                throw new ParserException("ContentEncodingOrder " + j + " not supported");
            } else if (i == 20530) {
                if (j == 1) {
                    return;
                }
                throw new ParserException("ContentEncodingScope " + j + " not supported");
            } else {
                boolean z = false;
                switch (i) {
                    case 131:
                        c11004d.m21728e(i).f35699d = (int) j;
                        return;
                    case 136:
                        C11007b m21728e = c11004d.m21728e(i);
                        boolean z2 = false;
                        if (j == 1) {
                            z2 = true;
                        }
                        m21728e.f35692V = z2;
                        return;
                    case 155:
                        c11004d.f35617A = c11004d.m21743a(j);
                        return;
                    case 159:
                        c11004d.m21728e(i).f35685O = (int) j;
                        return;
                    case 176:
                        c11004d.m21728e(i).f35708m = (int) j;
                        return;
                    case 179:
                        c11004d.m21730d(i);
                        c11004d.f35665v.m19855a(c11004d.m21743a(j));
                        return;
                    case 186:
                        c11004d.m21728e(i).f35709n = (int) j;
                        return;
                    case 215:
                        c11004d.m21728e(i).f35698c = (int) j;
                        return;
                    case 231:
                        c11004d.f35664u = c11004d.m21743a(j);
                        return;
                    case 238:
                        c11004d.f35624H = (int) j;
                        return;
                    case 241:
                        if (c11004d.f35667x) {
                            return;
                        }
                        c11004d.m21730d(i);
                        c11004d.f35666w.m19855a(j);
                        c11004d.f35667x = true;
                        return;
                    case 251:
                        c11004d.f35625I = true;
                        return;
                    case 16871:
                        c11004d.m21728e(i).f35702g = (int) j;
                        return;
                    case 16980:
                        if (j == 3) {
                            return;
                        }
                        throw new ParserException("ContentCompAlgo " + j + " not supported");
                    case 17029:
                        if (j >= 1 && j <= 2) {
                            return;
                        }
                        throw new ParserException("DocTypeReadVersion " + j + " not supported");
                    case 17143:
                        if (j == 1) {
                            return;
                        }
                        throw new ParserException("EBMLReadVersion " + j + " not supported");
                    case 18401:
                        if (j == 5) {
                            return;
                        }
                        throw new ParserException("ContentEncAlgo " + j + " not supported");
                    case 18408:
                        if (j == 1) {
                            return;
                        }
                        throw new ParserException("AESSettingsCipherMode " + j + " not supported");
                    case 21420:
                        c11004d.f35661r = j + c11004d.f35654k;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        c11004d.m21732c(i);
                        if (i2 == 0) {
                            c11004d.f35658o.f35718w = 0;
                            return;
                        } else if (i2 == 1) {
                            c11004d.f35658o.f35718w = 2;
                            return;
                        } else if (i2 == 3) {
                            c11004d.f35658o.f35718w = 1;
                            return;
                        } else if (i2 != 15) {
                            return;
                        } else {
                            c11004d.f35658o.f35718w = 3;
                            return;
                        }
                    case 21680:
                        c11004d.m21728e(i).f35710o = (int) j;
                        return;
                    case 21682:
                        c11004d.m21728e(i).f35712q = (int) j;
                        return;
                    case 21690:
                        c11004d.m21728e(i).f35711p = (int) j;
                        return;
                    case 21930:
                        C11007b m21728e2 = c11004d.m21728e(i);
                        if (j == 1) {
                            z = true;
                        }
                        m21728e2.f35691U = z;
                        return;
                    case 21998:
                        c11004d.m21728e(i).f35701f = (int) j;
                        return;
                    case 22186:
                        c11004d.m21728e(i).f35688R = j;
                        return;
                    case 22203:
                        c11004d.m21728e(i).f35689S = j;
                        return;
                    case 25188:
                        c11004d.m21728e(i).f35686P = (int) j;
                        return;
                    case 30321:
                        c11004d.m21732c(i);
                        int i3 = (int) j;
                        if (i3 == 0) {
                            c11004d.f35658o.f35713r = 0;
                            return;
                        } else if (i3 == 1) {
                            c11004d.f35658o.f35713r = 1;
                            return;
                        } else if (i3 == 2) {
                            c11004d.f35658o.f35713r = 2;
                            return;
                        } else if (i3 != 3) {
                            return;
                        } else {
                            c11004d.f35658o.f35713r = 3;
                            return;
                        }
                    case 2352003:
                        c11004d.m21728e(i).f35700e = (int) j;
                        return;
                    case 2807729:
                        c11004d.f35655l = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                c11004d.m21732c(i);
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    c11004d.f35658o.f35671A = 2;
                                    return;
                                } else if (i4 != 2) {
                                    return;
                                } else {
                                    c11004d.f35658o.f35671A = 1;
                                    return;
                                }
                            case 21946:
                                c11004d.m21732c(i);
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 == 16) {
                                        c11004d.f35658o.f35721z = 6;
                                        return;
                                    } else if (i5 == 18) {
                                        c11004d.f35658o.f35721z = 7;
                                        return;
                                    } else if (i5 != 6 && i5 != 7) {
                                        return;
                                    }
                                }
                                c11004d.f35658o.f35721z = 3;
                                return;
                            case 21947:
                                c11004d.m21732c(i);
                                c11004d.f35658o.f35719x = true;
                                int i6 = (int) j;
                                if (i6 == 1) {
                                    c11004d.f35658o.f35720y = 1;
                                    return;
                                } else if (i6 == 9) {
                                    c11004d.f35658o.f35720y = 6;
                                    return;
                                } else if (i6 != 4 && i6 != 5 && i6 != 6 && i6 != 7) {
                                    return;
                                } else {
                                    c11004d.f35658o.f35720y = 2;
                                    return;
                                }
                            case 21948:
                                c11004d.m21728e(i).f35672B = (int) j;
                                return;
                            case 21949:
                                c11004d.m21728e(i).f35673C = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final void mo21723a(int i, long j, long j2) throws ParserException {
            C11004d c11004d = C11004d.this;
            c11004d.m21745a();
            if (i == 160) {
                c11004d.f35625I = false;
            } else if (i == 174) {
                c11004d.f35658o = new C11007b();
            } else if (i == 187) {
                c11004d.f35667x = false;
            } else if (i == 19899) {
                c11004d.f35660q = -1;
                c11004d.f35661r = -1L;
            } else if (i == 20533) {
                c11004d.m21728e(i).f35703h = true;
            } else if (i == 21968) {
                c11004d.m21728e(i).f35719x = true;
            } else if (i == 408125543) {
                if (c11004d.f35654k != -1 && c11004d.f35654k != j) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                c11004d.f35654k = j;
                c11004d.f35653j = j2;
            } else if (i == 475249515) {
                c11004d.f35665v = new C11618o();
                c11004d.f35666w = new C11618o();
            } else if (i != 524531317 || c11004d.f35659p) {
            } else {
                if (c11004d.f35649f && c11004d.f35663t != -1) {
                    c11004d.f35662s = true;
                    return;
                }
                c11004d.f35626J.mo20901a(new AbstractC11146v.C11148b(c11004d.f35657n));
                c11004d.f35659p = true;
            }
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: a */
        public final void mo21722a(int i, String str) throws ParserException {
            C11004d c11004d = C11004d.this;
            if (i == 134) {
                c11004d.m21728e(i).f35697b = str;
            } else if (i != 17026) {
                if (i == 21358) {
                    c11004d.m21728e(i).f35696a = str;
                } else if (i != 2274716) {
                } else {
                    c11004d.m21728e(i).f35693W = str;
                }
            } else if ("webm".equals(str) || "matroska".equals(str)) {
            } else {
                throw new ParserException("DocType " + str + " not supported");
            }
        }

        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: b */
        public final boolean mo21721b(int i) {
            return C11004d.m21734b(i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.android.exoplayer2.extractor.p330d.AbstractC11002b
        /* renamed from: c */
        public final void mo21720c(int i) throws ParserException {
            boolean z;
            boolean z2;
            boolean z3;
            int i2;
            ArrayList arrayList;
            String str;
            int i3;
            int i4;
            ColorInfo colorInfo;
            byte[] bArr;
            String str2;
            String str3;
            String str4;
            AbstractC15549v abstractC15549v;
            C10990c c10990c;
            int i5;
            C11004d c11004d = C11004d.this;
            c11004d.m21745a();
            if (i == 160) {
                if (c11004d.f35668y != 2) {
                    return;
                }
                int i6 = 0;
                for (int i7 = 0; i7 < c11004d.f35619C; i7++) {
                    i6 += c11004d.f35620D[i7];
                }
                C11007b c11007b = c11004d.f35648e.get(c11004d.f35621E);
                c11007b.m21719a();
                for (int i8 = 0; i8 < c11004d.f35619C; i8++) {
                    long j = c11004d.f35669z;
                    long j2 = (c11007b.f35700e * i8) / 1000;
                    int i9 = c11004d.f35623G;
                    int i10 = i9;
                    if (i8 == 0) {
                        i10 = i9;
                        if (!c11004d.f35625I) {
                            i10 = i9 | 1;
                        }
                    }
                    int i11 = c11004d.f35620D[i8];
                    i6 -= i11;
                    c11004d.m21741a(c11007b, j2 + j, i10, i11, i6);
                }
                c11004d.f35668y = 0;
            } else if (i == 174) {
                C11007b c11007b2 = (C11007b) C11593a.m20024a(c11004d.f35658o);
                if (c11007b2.f35697b == null) {
                    throw new ParserException("CodecId is missing in TrackEntry element");
                }
                String str5 = c11007b2.f35697b;
                str5.hashCode();
                switch (str5.hashCode()) {
                    case -2095576542:
                        if (str5.equals("V_MPEG4/ISO/AP")) {
                            z = false;
                            break;
                        }
                        z = true;
                        break;
                    case -2095575984:
                        if (str5.equals("V_MPEG4/ISO/SP")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1985379776:
                        if (str5.equals("A_MS/ACM")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1784763192:
                        if (str5.equals("A_TRUEHD")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1730367663:
                        if (str5.equals("A_VORBIS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1482641358:
                        if (str5.equals("A_MPEG/L2")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1482641357:
                        if (str5.equals("A_MPEG/L3")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1373388978:
                        if (str5.equals("V_MS/VFW/FOURCC")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -933872740:
                        if (str5.equals("S_DVBSUB")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -538363189:
                        if (str5.equals("V_MPEG4/ISO/ASP")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -538363109:
                        if (str5.equals("V_MPEG4/ISO/AVC")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -425012669:
                        if (str5.equals("S_VOBSUB")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -356037306:
                        if (str5.equals("A_DTS/LOSSLESS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 62923557:
                        if (str5.equals("A_AAC")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 62923603:
                        if (str5.equals("A_AC3")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 62927045:
                        if (str5.equals("A_DTS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 82318131:
                        if (str5.equals("V_AV1")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 82338133:
                        if (str5.equals("V_VP8")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 82338134:
                        if (str5.equals("V_VP9")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 99146302:
                        if (str5.equals("S_HDMV/PGS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 444813526:
                        if (str5.equals("V_THEORA")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 542569478:
                        if (str5.equals("A_DTS/EXPRESS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 635596514:
                        if (str5.equals("A_PCM/FLOAT/IEEE")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 725948237:
                        if (str5.equals("A_PCM/INT/BIG")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 725957860:
                        if (str5.equals("A_PCM/INT/LIT")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 738597099:
                        if (str5.equals("S_TEXT/ASS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 855502857:
                        if (str5.equals("V_MPEGH/ISO/HEVC")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1422270023:
                        if (str5.equals("S_TEXT/UTF8")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1809237540:
                        if (str5.equals("V_MPEG2")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1950749482:
                        if (str5.equals("A_EAC3")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1950789798:
                        if (str5.equals("A_FLAC")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case 1951062397:
                        if (str5.equals("A_OPUS")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                    case true:
                        z2 = true;
                        break;
                    default:
                        z2 = false;
                        break;
                }
                if (z2) {
                    AbstractC11130j abstractC11130j = c11004d.f35626J;
                    int i12 = c11007b2.f35698c;
                    String str6 = c11007b2.f35697b;
                    str6.hashCode();
                    switch (str6.hashCode()) {
                        case -2095576542:
                            if (str6.equals("V_MPEG4/ISO/AP")) {
                                z3 = false;
                                break;
                            }
                            z3 = true;
                            break;
                        case -2095575984:
                            if (str6.equals("V_MPEG4/ISO/SP")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1985379776:
                            if (str6.equals("A_MS/ACM")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1784763192:
                            if (str6.equals("A_TRUEHD")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1730367663:
                            if (str6.equals("A_VORBIS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1482641358:
                            if (str6.equals("A_MPEG/L2")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1482641357:
                            if (str6.equals("A_MPEG/L3")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -1373388978:
                            if (str6.equals("V_MS/VFW/FOURCC")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -933872740:
                            if (str6.equals("S_DVBSUB")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -538363189:
                            if (str6.equals("V_MPEG4/ISO/ASP")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -538363109:
                            if (str6.equals("V_MPEG4/ISO/AVC")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -425012669:
                            if (str6.equals("S_VOBSUB")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case -356037306:
                            if (str6.equals("A_DTS/LOSSLESS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 62923557:
                            if (str6.equals("A_AAC")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 62923603:
                            if (str6.equals("A_AC3")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 62927045:
                            if (str6.equals("A_DTS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 82318131:
                            if (str6.equals("V_AV1")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 82338133:
                            if (str6.equals("V_VP8")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 82338134:
                            if (str6.equals("V_VP9")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 99146302:
                            if (str6.equals("S_HDMV/PGS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 444813526:
                            if (str6.equals("V_THEORA")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 542569478:
                            if (str6.equals("A_DTS/EXPRESS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 635596514:
                            if (str6.equals("A_PCM/FLOAT/IEEE")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 725948237:
                            if (str6.equals("A_PCM/INT/BIG")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 725957860:
                            if (str6.equals("A_PCM/INT/LIT")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 738597099:
                            if (str6.equals("S_TEXT/ASS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 855502857:
                            if (str6.equals("V_MPEGH/ISO/HEVC")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 1422270023:
                            if (str6.equals("S_TEXT/UTF8")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 1809237540:
                            if (str6.equals("V_MPEG2")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 1950749482:
                            if (str6.equals("A_EAC3")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 1950789798:
                            if (str6.equals("A_FLAC")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        case 1951062397:
                            if (str6.equals("A_OPUS")) {
                                z3 = true;
                                break;
                            }
                            z3 = true;
                            break;
                        default:
                            z3 = true;
                            break;
                    }
                    String str7 = "audio/raw";
                    switch (z3) {
                        case false:
                        case true:
                        case true:
                            str2 = "video/mp4v-es";
                            abstractC15549v = c11007b2.f35706k == null ? null : Collections.singletonList(c11007b2.f35706k);
                            List<byte[]> list = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            if (C11007b.m21715b(new C11628u(c11007b2.m21717a(c11007b2.f35697b)))) {
                                i2 = C11599af.m19951b(c11007b2.f35686P);
                                if (i2 == 0) {
                                    C11617n.m19863a("MatroskaExtractor", "Unsupported PCM bit depth: " + c11007b2.f35686P + ". Setting mimeType to audio/x-unknown");
                                }
                                i3 = -1;
                                str = null;
                                arrayList = null;
                                break;
                            } else {
                                C11617n.m19863a("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown"));
                            }
                            str3 = "audio/x-unknown";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            c11007b2.f35690T = new C11008c();
                            str3 = "audio/true-hd";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            i3 = 8192;
                            arrayList = C11007b.m21716a(c11007b2.m21717a(c11007b2.f35697b));
                            str4 = "audio/vorbis";
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            i3 = 4096;
                            str3 = "audio/mpeg-L2";
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            i3 = 4096;
                            str3 = "audio/mpeg";
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            Pair<String, List<byte[]>> m21718a = C11007b.m21718a(new C11628u(c11007b2.m21717a(c11007b2.f35697b)));
                            str2 = (String) m21718a.first;
                            abstractC15549v = (List) m21718a.second;
                            List<byte[]> list2 = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list2;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            byte[] bArr2 = new byte[4];
                            System.arraycopy(c11007b2.m21717a(c11007b2.f35697b), 0, bArr2, 0, 4);
                            abstractC15549v = AbstractC15549v.m8728a(bArr2);
                            str2 = "application/dvbsubs";
                            List<byte[]> list22 = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list22;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            C11640a m19754a = C11640a.m19754a(new C11628u(c11007b2.m21717a(c11007b2.f35697b)));
                            arrayList = m19754a.f38774a;
                            c11007b2.f35695Y = m19754a.f38775b;
                            str = m19754a.f38779f;
                            str7 = "video/avc";
                            i2 = -1;
                            i3 = -1;
                            break;
                        case true:
                            abstractC15549v = AbstractC15549v.m8728a(c11007b2.m21717a(c11007b2.f35697b));
                            str2 = "application/vobsub";
                            List<byte[]> list222 = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list222;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "audio/vnd.dts.hd";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            arrayList = Collections.singletonList(c11007b2.m21717a(c11007b2.f35697b));
                            C10880a.C10882a m22086a = C10880a.m22086a(c11007b2.f35706k);
                            c11007b2.f35687Q = m22086a.f35116a;
                            c11007b2.f35685O = m22086a.f35117b;
                            str = m22086a.f35118c;
                            str7 = "audio/mp4a-latm";
                            i2 = -1;
                            i3 = -1;
                            break;
                        case true:
                            str3 = "audio/ac3";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                        case true:
                            str3 = "audio/vnd.dts";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "video/av01";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "video/x-vnd.on2.vp8";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "video/x-vnd.on2.vp9";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "application/pgs";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "video/x-unknown";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            if (c11007b2.f35686P == 32) {
                                i3 = -1;
                                str = null;
                                arrayList = null;
                                i2 = 4;
                                break;
                            } else {
                                C11617n.m19863a("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + c11007b2.f35686P + ". Setting mimeType to audio/x-unknown");
                                str3 = "audio/x-unknown";
                                i3 = -1;
                                arrayList = null;
                                str7 = str3;
                                str = null;
                                i2 = -1;
                                break;
                            }
                        case true:
                            if (c11007b2.f35686P == 8) {
                                i3 = -1;
                                str = null;
                                arrayList = null;
                                i2 = 3;
                                break;
                            } else if (c11007b2.f35686P == 16) {
                                i3 = -1;
                                str = null;
                                arrayList = null;
                                i2 = 268435456;
                                break;
                            } else {
                                C11617n.m19863a("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + c11007b2.f35686P + ". Setting mimeType to audio/x-unknown");
                                str3 = "audio/x-unknown";
                                i3 = -1;
                                arrayList = null;
                                str7 = str3;
                                str = null;
                                i2 = -1;
                                break;
                            }
                        case true:
                            i2 = C11599af.m19951b(c11007b2.f35686P);
                            if (i2 == 0) {
                                C11617n.m19863a("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + c11007b2.f35686P + ". Setting mimeType to audio/x-unknown");
                                str3 = "audio/x-unknown";
                                i3 = -1;
                                arrayList = null;
                                str7 = str3;
                                str = null;
                                i2 = -1;
                                break;
                            }
                            i3 = -1;
                            str = null;
                            arrayList = null;
                            break;
                        case true:
                            abstractC15549v = AbstractC15549v.m8727a(C11004d.f35615b, c11007b2.m21717a(c11007b2.f35697b));
                            str2 = "text/x-ssa";
                            List<byte[]> list2222 = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list2222;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            C11651d m19732a = C11651d.m19732a(new C11628u(c11007b2.m21717a(c11007b2.f35697b)));
                            arrayList = m19732a.f38815a;
                            c11007b2.f35695Y = m19732a.f38816b;
                            str = m19732a.f38817c;
                            str7 = "video/hevc";
                            i2 = -1;
                            i3 = -1;
                            break;
                        case true:
                            str3 = "application/x-subrip";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "video/mpeg2";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            str3 = "audio/eac3";
                            i3 = -1;
                            arrayList = null;
                            str7 = str3;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            abstractC15549v = Collections.singletonList(c11007b2.m21717a(c11007b2.f35697b));
                            str2 = "audio/flac";
                            List<byte[]> list22222 = abstractC15549v;
                            i3 = -1;
                            str4 = str2;
                            arrayList = list22222;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        case true:
                            i3 = 5760;
                            ArrayList arrayList2 = new ArrayList(3);
                            arrayList2.add(c11007b2.m21717a(c11007b2.f35697b));
                            arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(c11007b2.f35688R).array());
                            arrayList2.add(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(c11007b2.f35689S).array());
                            str4 = "audio/opus";
                            arrayList = arrayList2;
                            str7 = str4;
                            str = null;
                            i2 = -1;
                            break;
                        default:
                            throw new ParserException("Unrecognized codec identifier.");
                    }
                    String str8 = str;
                    String str9 = str7;
                    if (c11007b2.f35684N != null) {
                        C11648b m19739a = C11648b.m19739a(new C11628u(c11007b2.f35684N));
                        str8 = str;
                        str9 = str7;
                        if (m19739a != null) {
                            str8 = m19739a.f38800c;
                            str9 = "video/dolby-vision";
                        }
                    }
                    boolean z4 = c11007b2.f35692V;
                    int i13 = c11007b2.f35691U ? 2 : 0;
                    Format.C10828a c10828a = new Format.C10828a();
                    if (C11620q.m19853a(str9)) {
                        c10828a.f34805x = c11007b2.f35685O;
                        c10828a.f34806y = c11007b2.f35687Q;
                        c10828a.f34807z = i2;
                        i4 = 1;
                    } else if (C11620q.m19851b(str9)) {
                        if (c11007b2.f35712q == 0) {
                            c11007b2.f35710o = c11007b2.f35710o == -1 ? c11007b2.f35708m : c11007b2.f35710o;
                            c11007b2.f35711p = c11007b2.f35711p == -1 ? c11007b2.f35709n : c11007b2.f35711p;
                        }
                        float f = (c11007b2.f35710o == -1 || c11007b2.f35711p == -1) ? -1.0f : (c11007b2.f35709n * c11007b2.f35710o) / (c11007b2.f35708m * c11007b2.f35711p);
                        if (c11007b2.f35719x) {
                            if (c11007b2.f35674D == -1.0f || c11007b2.f35675E == -1.0f || c11007b2.f35676F == -1.0f || c11007b2.f35677G == -1.0f || c11007b2.f35678H == -1.0f || c11007b2.f35679I == -1.0f || c11007b2.f35680J == -1.0f || c11007b2.f35681K == -1.0f || c11007b2.f35682L == -1.0f || c11007b2.f35683M == -1.0f) {
                                bArr = null;
                            } else {
                                bArr = new byte[25];
                                ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                order.put((byte) 0);
                                order.putShort((short) ((c11007b2.f35674D * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35675E * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35676F * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35677G * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35678H * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35679I * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35680J * 50000.0f) + 0.5f));
                                order.putShort((short) ((c11007b2.f35681K * 50000.0f) + 0.5f));
                                order.putShort((short) (c11007b2.f35682L + 0.5f));
                                order.putShort((short) (c11007b2.f35683M + 0.5f));
                                order.putShort((short) c11007b2.f35672B);
                                order.putShort((short) c11007b2.f35673C);
                            }
                            colorInfo = new ColorInfo(c11007b2.f35720y, c11007b2.f35671A, c11007b2.f35721z, bArr);
                        } else {
                            colorInfo = null;
                        }
                        int intValue = (c11007b2.f35696a == null || !C11004d.f35616c.containsKey(c11007b2.f35696a)) ? -1 : C11004d.f35616c.get(c11007b2.f35696a).intValue();
                        if (c11007b2.f35713r == 0 && Float.compare(c11007b2.f35714s, BitmapDescriptorFactory.HUE_RED) == 0 && Float.compare(c11007b2.f35715t, BitmapDescriptorFactory.HUE_RED) == 0) {
                            if (Float.compare(c11007b2.f35716u, BitmapDescriptorFactory.HUE_RED) == 0) {
                                intValue = 0;
                            } else if (Float.compare(c11007b2.f35715t, 90.0f) == 0) {
                                intValue = 90;
                            } else if (Float.compare(c11007b2.f35715t, -180.0f) == 0 || Float.compare(c11007b2.f35715t, 180.0f) == 0) {
                                intValue = 180;
                            } else if (Float.compare(c11007b2.f35715t, -90.0f) == 0) {
                                intValue = 270;
                            }
                        }
                        c10828a.f34797p = c11007b2.f35708m;
                        c10828a.f34798q = c11007b2.f35709n;
                        c10828a.f34801t = f;
                        c10828a.f34800s = intValue;
                        c10828a.f34802u = c11007b2.f35717v;
                        c10828a.f34803v = c11007b2.f35718w;
                        c10828a.f34804w = colorInfo;
                        i4 = 2;
                    } else {
                        i4 = 3;
                        if (!"application/x-subrip".equals(str9)) {
                            i4 = 3;
                            if (!"text/x-ssa".equals(str9)) {
                                i4 = 3;
                                if (!"application/vobsub".equals(str9)) {
                                    i4 = 3;
                                    if (!"application/pgs".equals(str9)) {
                                        if (!"application/dvbsubs".equals(str9)) {
                                            throw new ParserException("Unexpected MIME type.");
                                        }
                                        i4 = 3;
                                    }
                                }
                            }
                        }
                    }
                    if (c11007b2.f35696a != null && !C11004d.f35616c.containsKey(c11007b2.f35696a)) {
                        c10828a.f34783b = c11007b2.f35696a;
                    }
                    Format.C10828a m22320a = c10828a.m22320a(i12);
                    m22320a.f34792k = str9;
                    m22320a.f34793l = i3;
                    m22320a.f34784c = c11007b2.f35693W;
                    m22320a.f34785d = (z4 ? 1 : 0) | 0 | i13;
                    m22320a.f34794m = arrayList;
                    m22320a.f34789h = str8;
                    m22320a.f34795n = c11007b2.f35707l;
                    Format m22321a = m22320a.m22321a();
                    c11007b2.f35694X = abstractC11130j.mo20905a(c11007b2.f35698c, i4);
                    c11007b2.f35694X.mo20831a(m22321a);
                    c11004d.f35648e.put(c11007b2.f35698c, c11007b2);
                }
                c11004d.f35658o = null;
            } else if (i == 19899) {
                if (c11004d.f35660q == -1 || c11004d.f35661r == -1) {
                    throw new ParserException("Mandatory element SeekID or SeekPosition not found");
                }
                if (c11004d.f35660q != 475249515) {
                    return;
                }
                c11004d.f35663t = c11004d.f35661r;
            } else if (i == 25152) {
                c11004d.m21732c(i);
                if (!c11004d.f35658o.f35703h) {
                    return;
                }
                if (c11004d.f35658o.f35705j == null) {
                    throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
                }
                c11004d.f35658o.f35707l = new DrmInitData(new DrmInitData.SchemeData(C11158f.f36539a, "video/webm", c11004d.f35658o.f35705j.f36510b));
            } else if (i == 28032) {
                c11004d.m21732c(i);
                if (c11004d.f35658o.f35703h && c11004d.f35658o.f35704i != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
            } else if (i == 357149030) {
                if (c11004d.f35655l == -9223372036854775807L) {
                    c11004d.f35655l = 1000000L;
                }
                if (c11004d.f35656m == -9223372036854775807L) {
                    return;
                }
                c11004d.f35657n = c11004d.m21743a(c11004d.f35656m);
            } else if (i == 374648427) {
                if (c11004d.f35648e.size() == 0) {
                    throw new ParserException("No valid tracks were found");
                }
                c11004d.f35626J.mo20907a();
            } else if (i == 475249515) {
                if (!c11004d.f35659p) {
                    AbstractC11130j abstractC11130j2 = c11004d.f35626J;
                    C11618o c11618o = c11004d.f35665v;
                    C11618o c11618o2 = c11004d.f35666w;
                    if (c11004d.f35654k == -1 || c11004d.f35657n == -9223372036854775807L || c11618o == null || c11618o.f38699a == 0 || c11618o2 == null || c11618o2.f38699a != c11618o.f38699a) {
                        c10990c = new AbstractC11146v.C11148b(c11004d.f35657n);
                    } else {
                        int i14 = c11618o.f38699a;
                        int[] iArr = new int[i14];
                        long[] jArr = new long[i14];
                        long[] jArr2 = new long[i14];
                        long[] jArr3 = new long[i14];
                        for (int i15 = 0; i15 < i14; i15++) {
                            jArr3[i15] = c11618o.m19856a(i15);
                            jArr[i15] = c11004d.f35654k + c11618o2.m19856a(i15);
                        }
                        int i16 = 0;
                        while (true) {
                            int i17 = i16;
                            i5 = i14 - 1;
                            if (i17 >= i5) {
                                break;
                            }
                            int i18 = i17 + 1;
                            iArr[i17] = (int) (jArr[i18] - jArr[i17]);
                            jArr2[i17] = jArr3[i18] - jArr3[i17];
                            i16 = i18;
                        }
                        iArr[i5] = (int) ((c11004d.f35654k + c11004d.f35653j) - jArr[i5]);
                        jArr2[i5] = c11004d.f35657n - jArr3[i5];
                        long j3 = jArr2[i5];
                        if (j3 <= 0) {
                            C11617n.m19863a("MatroskaExtractor", "Discarding last cue point with unexpected duration: ".concat(String.valueOf(j3)));
                            iArr = Arrays.copyOf(iArr, i5);
                            jArr = Arrays.copyOf(jArr, i5);
                            jArr2 = Arrays.copyOf(jArr2, i5);
                            jArr3 = Arrays.copyOf(jArr3, i5);
                        }
                        c10990c = new C10990c(iArr, jArr, jArr2, jArr3);
                    }
                    abstractC11130j2.mo20901a(c10990c);
                    c11004d.f35659p = true;
                }
                c11004d.f35665v = null;
                c11004d.f35666w = null;
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.d.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$b.class */
    public static final class C11007b {

        /* renamed from: A */
        public int f35671A;

        /* renamed from: B */
        public int f35672B;

        /* renamed from: C */
        public int f35673C;

        /* renamed from: D */
        public float f35674D;

        /* renamed from: E */
        public float f35675E;

        /* renamed from: F */
        public float f35676F;

        /* renamed from: G */
        public float f35677G;

        /* renamed from: H */
        public float f35678H;

        /* renamed from: I */
        public float f35679I;

        /* renamed from: J */
        public float f35680J;

        /* renamed from: K */
        public float f35681K;

        /* renamed from: L */
        public float f35682L;

        /* renamed from: M */
        public float f35683M;

        /* renamed from: N */
        public byte[] f35684N;

        /* renamed from: O */
        public int f35685O;

        /* renamed from: P */
        public int f35686P;

        /* renamed from: Q */
        public int f35687Q;

        /* renamed from: R */
        public long f35688R;

        /* renamed from: S */
        public long f35689S;

        /* renamed from: T */
        public C11008c f35690T;

        /* renamed from: U */
        public boolean f35691U;

        /* renamed from: V */
        public boolean f35692V;

        /* renamed from: W */
        String f35693W;

        /* renamed from: X */
        public AbstractC11150x f35694X;

        /* renamed from: Y */
        public int f35695Y;

        /* renamed from: a */
        public String f35696a;

        /* renamed from: b */
        public String f35697b;

        /* renamed from: c */
        public int f35698c;

        /* renamed from: d */
        public int f35699d;

        /* renamed from: e */
        public int f35700e;

        /* renamed from: f */
        public int f35701f;

        /* renamed from: g */
        int f35702g;

        /* renamed from: h */
        public boolean f35703h;

        /* renamed from: i */
        public byte[] f35704i;

        /* renamed from: j */
        public AbstractC11150x.C11151a f35705j;

        /* renamed from: k */
        public byte[] f35706k;

        /* renamed from: l */
        public DrmInitData f35707l;

        /* renamed from: m */
        public int f35708m;

        /* renamed from: n */
        public int f35709n;

        /* renamed from: o */
        public int f35710o;

        /* renamed from: p */
        public int f35711p;

        /* renamed from: q */
        public int f35712q;

        /* renamed from: r */
        public int f35713r;

        /* renamed from: s */
        public float f35714s;

        /* renamed from: t */
        public float f35715t;

        /* renamed from: u */
        public float f35716u;

        /* renamed from: v */
        public byte[] f35717v;

        /* renamed from: w */
        public int f35718w;

        /* renamed from: x */
        public boolean f35719x;

        /* renamed from: y */
        public int f35720y;

        /* renamed from: z */
        public int f35721z;

        private C11007b() {
            this.f35708m = -1;
            this.f35709n = -1;
            this.f35710o = -1;
            this.f35711p = -1;
            this.f35712q = 0;
            this.f35713r = -1;
            this.f35714s = BitmapDescriptorFactory.HUE_RED;
            this.f35715t = BitmapDescriptorFactory.HUE_RED;
            this.f35716u = BitmapDescriptorFactory.HUE_RED;
            this.f35717v = null;
            this.f35718w = -1;
            this.f35719x = false;
            this.f35720y = -1;
            this.f35721z = -1;
            this.f35671A = -1;
            this.f35672B = 1000;
            this.f35673C = 200;
            this.f35674D = -1.0f;
            this.f35675E = -1.0f;
            this.f35676F = -1.0f;
            this.f35677G = -1.0f;
            this.f35678H = -1.0f;
            this.f35679I = -1.0f;
            this.f35680J = -1.0f;
            this.f35681K = -1.0f;
            this.f35682L = -1.0f;
            this.f35683M = -1.0f;
            this.f35685O = 1;
            this.f35686P = -1;
            this.f35687Q = 8000;
            this.f35688R = 0L;
            this.f35689S = 0L;
            this.f35692V = true;
            this.f35693W = "eng";
        }

        /* renamed from: a */
        static Pair<String, List<byte[]>> m21718a(C11628u c11628u) throws ParserException {
            try {
                c11628u.m19799e(16);
                long m19793i = c11628u.m19793i();
                if (m19793i == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (m19793i == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (m19793i != 826496599) {
                    C11617n.m19863a("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>("video/x-unknown", null);
                }
                byte[] bArr = c11628u.f38733a;
                for (int i = c11628u.f38734b + 20; i < bArr.length - 4; i++) {
                    if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 1 && bArr[i + 3] == 15) {
                        return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, i, bArr.length)));
                    }
                }
                throw new ParserException("Failed to find FourCC VC1 initialization data");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        /* renamed from: a */
        static List<byte[]> m21716a(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i = 1;
                int i2 = 0;
                while ((bArr[i] & 255) == 255) {
                    i2 += 255;
                    i++;
                }
                int i3 = i + 1;
                int i4 = i2 + (bArr[i] & 255);
                int i5 = 0;
                int i6 = i3;
                while ((bArr[i6] & 255) == 255) {
                    i5 += 255;
                    i6++;
                }
                int i7 = i6 + 1;
                byte b = bArr[i6];
                if (bArr[i7] != 1) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i7, bArr2, 0, i4);
                int i8 = i7 + i4;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i8 + i5 + (b & 255);
                if (bArr[i9] != 5) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr3 = new byte[bArr.length - i9];
                System.arraycopy(bArr, i9, bArr3, 0, bArr.length - i9);
                ArrayList arrayList = new ArrayList(2);
                arrayList.add(bArr2);
                arrayList.add(bArr3);
                return arrayList;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        /* renamed from: b */
        static boolean m21715b(C11628u c11628u) throws ParserException {
            try {
                int m19800e = c11628u.m19800e();
                if (m19800e == 1) {
                    return true;
                }
                if (m19800e != 65534) {
                    return false;
                }
                c11628u.m19801d(24);
                if (c11628u.m19790l() != C11004d.f35613M.getMostSignificantBits()) {
                    return false;
                }
                return c11628u.m19790l() == C11004d.f35613M.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }

        @EnsuresNonNull({"output"})
        /* renamed from: a */
        final void m21719a() {
            C11593a.m20020b(this.f35694X);
        }

        @EnsuresNonNull({"codecPrivate"})
        /* renamed from: a */
        final byte[] m21717a(String str) throws ParserException {
            byte[] bArr = this.f35706k;
            if (bArr != null) {
                return bArr;
            }
            throw new ParserException("Missing CodecPrivate for codec ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.d.d$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/d/d$c.class */
    public static final class C11008c {

        /* renamed from: a */
        final byte[] f35722a = new byte[10];

        /* renamed from: b */
        boolean f35723b;

        /* renamed from: c */
        int f35724c;

        /* renamed from: d */
        long f35725d;

        /* renamed from: e */
        int f35726e;

        /* renamed from: f */
        int f35727f;

        /* renamed from: g */
        int f35728g;

        @RequiresNonNull({"#1.output"})
        /* renamed from: a */
        public final void m21714a(C11007b c11007b) {
            if (this.f35724c > 0) {
                c11007b.f35694X.mo20835a(this.f35725d, this.f35726e, this.f35727f, this.f35728g, c11007b.f35705j);
                this.f35724c = 0;
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("htc_video_rotA-000", 0);
        hashMap.put("htc_video_rotA-090", 90);
        hashMap.put("htc_video_rotA-180", 180);
        hashMap.put("htc_video_rotA-270", 270);
        f35616c = Collections.unmodifiableMap(hashMap);
    }

    public C11004d() {
        this(0);
    }

    public C11004d(int i) {
        this(new C10999a(), i);
    }

    C11004d(AbstractC11003c abstractC11003c, int i) {
        this.f35654k = -1L;
        this.f35655l = -9223372036854775807L;
        this.f35656m = -9223372036854775807L;
        this.f35657n = -9223372036854775807L;
        this.f35663t = -1L;
        this.f35636W = -1L;
        this.f35664u = -9223372036854775807L;
        this.f35627N = abstractC11003c;
        abstractC11003c.mo21747a(new C11006a());
        this.f35649f = (i & 1) == 0;
        this.f35647d = new C11010f();
        this.f35648e = new SparseArray<>();
        this.f35650g = new C11628u(4);
        this.f35630Q = new C11628u(ByteBuffer.allocate(4).putInt(-1).array());
        this.f35651h = new C11628u(4);
        this.f35628O = new C11628u(C11624s.f38709a);
        this.f35629P = new C11628u(4);
        this.f35631R = new C11628u();
        this.f35632S = new C11628u();
        this.f35633T = new C11628u(8);
        this.f35634U = new C11628u();
        this.f35652i = new C11628u();
        this.f35620D = new int[1];
    }

    /* renamed from: a */
    protected static int m21744a(int i) {
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
            case 238:
            case 241:
            case 251:
            case 16871:
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
            case 21998:
            case 22186:
            case 22203:
            case 25188:
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
            case 2274716:
                return 3;
            case 160:
            case 166:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 16868:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30113:
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
            case 165:
            case 16877:
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
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    private int m21738a(AbstractC11121i abstractC11121i, AbstractC11150x abstractC11150x, int i) throws IOException {
        int i2;
        int m19812a = this.f35631R.m19812a();
        if (m19812a > 0) {
            i2 = Math.min(i, m19812a);
            abstractC11150x.mo20819b(this.f35631R, i2);
        } else {
            i2 = abstractC11150x.mo20820b(abstractC11121i, i, false);
        }
        return i2;
    }

    /* renamed from: a */
    private void m21737a(AbstractC11121i abstractC11121i, byte[] bArr, int i) throws IOException {
        int length = bArr.length + i;
        if (this.f35632S.f38733a.length < length) {
            C11628u c11628u = this.f35632S;
            byte[] copyOf = Arrays.copyOf(bArr, length + i);
            c11628u.m19808a(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.f35632S.f38733a, 0, bArr.length);
        }
        abstractC11121i.mo21400b(this.f35632S.f38733a, bArr.length, i);
        this.f35632S.m19801d(0);
        this.f35632S.m19803c(length);
    }

    /* renamed from: a */
    private static byte[] m21742a(long j, String str, long j2) {
        C11593a.m20022a(j != -9223372036854775807L);
        int i = (int) (j / 3600000000L);
        long j3 = j - ((i * 3600) * 1000000);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - ((i2 * 60) * 1000000);
        int i3 = (int) (j4 / 1000000);
        return C11599af.m19931c(String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2))));
    }

    /* renamed from: a */
    static int[] m21736a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* renamed from: b */
    protected static boolean m21734b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* renamed from: c */
    private int m21733c() {
        int i = this.f35639Z;
        m21731d();
        return i;
    }

    /* renamed from: d */
    private void m21731d() {
        this.f35638Y = 0;
        this.f35639Z = 0;
        this.f35640aa = 0;
        this.f35641ab = false;
        this.f35642ac = false;
        this.f35643ad = false;
        this.f35644ae = 0;
        this.f35645af = (byte) 0;
        this.f35646ag = false;
        this.f35631R.m19811a(0);
    }

    /* renamed from: e */
    public static /* synthetic */ AbstractC11071h[] m21729e() {
        return new AbstractC11071h[]{new C11004d()};
    }

    @RequiresNonNull({"#2.output"})
    /* renamed from: a */
    int m21739a(AbstractC11121i abstractC11121i, C11007b c11007b, int i) throws IOException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(c11007b.f35697b)) {
            m21737a(abstractC11121i, f35611K, i);
            return m21733c();
        } else if ("S_TEXT/ASS".equals(c11007b.f35697b)) {
            m21737a(abstractC11121i, f35612L, i);
            return m21733c();
        } else {
            AbstractC11150x abstractC11150x = c11007b.f35694X;
            if (!this.f35641ab) {
                if (c11007b.f35703h) {
                    this.f35623G &= -1073741825;
                    int i4 = 128;
                    if (!this.f35642ac) {
                        abstractC11121i.mo21400b(this.f35650g.f38733a, 0, 1);
                        this.f35638Y++;
                        if ((this.f35650g.f38733a[0] & 128) == 128) {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                        this.f35645af = this.f35650g.f38733a[0];
                        this.f35642ac = true;
                    }
                    byte b = this.f35645af;
                    if ((b & 1) == 1) {
                        boolean z = (b & 2) == 2;
                        this.f35623G |= 1073741824;
                        if (!this.f35646ag) {
                            abstractC11121i.mo21400b(this.f35633T.f38733a, 0, 8);
                            this.f35638Y += 8;
                            this.f35646ag = true;
                            byte[] bArr = this.f35650g.f38733a;
                            if (!z) {
                                i4 = 0;
                            }
                            bArr[0] = (byte) (i4 | 8);
                            this.f35650g.m19801d(0);
                            abstractC11150x.mo20826a(this.f35650g, 1);
                            this.f35639Z++;
                            this.f35633T.m19801d(0);
                            abstractC11150x.mo20826a(this.f35633T, 8);
                            this.f35639Z += 8;
                        }
                        if (z) {
                            if (!this.f35643ad) {
                                abstractC11121i.mo21400b(this.f35650g.f38733a, 0, 1);
                                this.f35638Y++;
                                this.f35650g.m19801d(0);
                                this.f35644ae = this.f35650g.m19804c();
                                this.f35643ad = true;
                            }
                            int i5 = this.f35644ae * 4;
                            this.f35650g.m19811a(i5);
                            abstractC11121i.mo21400b(this.f35650g.f38733a, 0, i5);
                            this.f35638Y += i5;
                            short s = (short) ((this.f35644ae / 2) + 1);
                            int i6 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.f35635V;
                            if (byteBuffer == null || byteBuffer.capacity() < i6) {
                                this.f35635V = ByteBuffer.allocate(i6);
                            }
                            this.f35635V.position(0);
                            this.f35635V.putShort(s);
                            int i7 = 0;
                            int i8 = 0;
                            while (true) {
                                i2 = i8;
                                i3 = this.f35644ae;
                                if (i7 >= i3) {
                                    break;
                                }
                                int m19787o = this.f35650g.m19787o();
                                if (i7 % 2 == 0) {
                                    this.f35635V.putShort((short) (m19787o - i2));
                                } else {
                                    this.f35635V.putInt(m19787o - i2);
                                }
                                i7++;
                                i8 = m19787o;
                            }
                            int i9 = (i - this.f35638Y) - i2;
                            if (i3 % 2 == 1) {
                                this.f35635V.putInt(i9);
                            } else {
                                this.f35635V.putShort((short) i9);
                                this.f35635V.putInt(0);
                            }
                            this.f35634U.m19808a(this.f35635V.array(), i6);
                            abstractC11150x.mo20826a(this.f35634U, i6);
                            this.f35639Z += i6;
                        }
                    }
                } else if (c11007b.f35704i != null) {
                    this.f35631R.m19808a(c11007b.f35704i, c11007b.f35704i.length);
                }
                if (c11007b.f35701f > 0) {
                    this.f35623G |= 268435456;
                    this.f35652i.m19811a(0);
                    this.f35650g.m19811a(4);
                    this.f35650g.f38733a[0] = (byte) ((i >> 24) & 255);
                    this.f35650g.f38733a[1] = (byte) ((i >> 16) & 255);
                    this.f35650g.f38733a[2] = (byte) ((i >> 8) & 255);
                    this.f35650g.f38733a[3] = (byte) (i & 255);
                    abstractC11150x.mo20826a(this.f35650g, 4);
                    this.f35639Z += 4;
                }
                this.f35641ab = true;
            }
            int i10 = i + this.f35631R.f38735c;
            if (!"V_MPEG4/ISO/AVC".equals(c11007b.f35697b) && !"V_MPEGH/ISO/HEVC".equals(c11007b.f35697b)) {
                if (c11007b.f35690T != null) {
                    C11593a.m20019b(this.f35631R.f38735c == 0);
                    C11008c c11008c = c11007b.f35690T;
                    if (!c11008c.f35723b) {
                        abstractC11121i.mo21394d(c11008c.f35722a, 0, 10);
                        abstractC11121i.mo21406a();
                        if (C10883b.m22076b(c11008c.f35722a) != 0) {
                            c11008c.f35723b = true;
                        }
                    }
                }
                while (true) {
                    int i11 = this.f35638Y;
                    if (i11 >= i10) {
                        break;
                    }
                    int m21738a = m21738a(abstractC11121i, abstractC11150x, i10 - i11);
                    this.f35638Y += m21738a;
                    this.f35639Z += m21738a;
                }
            } else {
                byte[] bArr2 = this.f35629P.f38733a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 0;
                bArr2[2] = (byte) 0;
                int i12 = c11007b.f35695Y;
                int i13 = 4 - c11007b.f35695Y;
                while (this.f35638Y < i10) {
                    int i14 = this.f35640aa;
                    if (i14 == 0) {
                        int min = Math.min(i12, this.f35631R.m19812a());
                        abstractC11121i.mo21400b(bArr2, i13 + min, i12 - min);
                        if (min > 0) {
                            this.f35631R.m19807a(bArr2, i13, min);
                        }
                        this.f35638Y += i12;
                        this.f35629P.m19801d(0);
                        this.f35640aa = this.f35629P.m19787o();
                        this.f35628O.m19801d(0);
                        abstractC11150x.mo20819b(this.f35628O, 4);
                        this.f35639Z += 4;
                    } else {
                        int m21738a2 = m21738a(abstractC11121i, abstractC11150x, i14);
                        this.f35638Y += m21738a2;
                        this.f35639Z += m21738a2;
                        this.f35640aa -= m21738a2;
                    }
                }
            }
            if ("A_VORBIS".equals(c11007b.f35697b)) {
                this.f35630Q.m19801d(0);
                abstractC11150x.mo20819b(this.f35630Q, 4);
                this.f35639Z += 4;
            }
            return m21733c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x000a A[SYNTHETIC] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo21437a(com.google.android.exoplayer2.extractor.AbstractC11121i r6, com.google.android.exoplayer2.extractor.C11145u r7) throws java.io.IOException {
        /*
            r5 = this;
            r0 = 0
            r8 = r0
            r0 = r5
            r1 = 0
            r0.f35637X = r1
            r0 = 1
            r9 = r0
        La:
            r0 = r9
            if (r0 == 0) goto L87
            r0 = r5
            boolean r0 = r0.f35637X
            if (r0 != 0) goto L87
            r0 = r5
            com.google.android.exoplayer2.extractor.d.c r0 = r0.f35627N
            r1 = r6
            boolean r0 = r0.mo21746a(r1)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            if (r0 == 0) goto La
            r0 = r6
            long r0 = r0.mo21398c()
            r11 = r0
            r0 = r5
            boolean r0 = r0.f35662s
            if (r0 == 0) goto L53
            r0 = r5
            r1 = r11
            r0.f35636W = r1
            r0 = r7
            r1 = r5
            long r1 = r1.f35663t
            r0.f36501a = r1
            r0 = r5
            r1 = 0
            r0.f35662s = r1
        L4d:
            r0 = 1
            r13 = r0
            goto L7c
        L53:
            r0 = r5
            boolean r0 = r0.f35659p
            if (r0 == 0) goto L79
            r0 = r5
            long r0 = r0.f35636W
            r11 = r0
            r0 = r11
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L79
            r0 = r7
            r1 = r11
            r0.f36501a = r1
            r0 = r5
            r1 = -1
            r0.f35636W = r1
            goto L4d
        L79:
            r0 = 0
            r13 = r0
        L7c:
            r0 = r10
            r9 = r0
            r0 = r13
            if (r0 == 0) goto La
            r0 = 1
            return r0
        L87:
            r0 = r9
            if (r0 != 0) goto Lc3
            r0 = r8
            r13 = r0
        L8f:
            r0 = r13
            r1 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.d.d$b> r1 = r1.f35648e
            int r1 = r1.size()
            if (r0 >= r1) goto Lc1
            r0 = r5
            android.util.SparseArray<com.google.android.exoplayer2.extractor.d.d$b> r0 = r0.f35648e
            r1 = r13
            java.lang.Object r0 = r0.valueAt(r1)
            com.google.android.exoplayer2.extractor.d.d$b r0 = (com.google.android.exoplayer2.extractor.p330d.C11004d.C11007b) r0
            r6 = r0
            r0 = r6
            r0.m21719a()
            r0 = r6
            com.google.android.exoplayer2.extractor.d.d$c r0 = r0.f35690T
            if (r0 == 0) goto Lbb
            r0 = r6
            com.google.android.exoplayer2.extractor.d.d$c r0 = r0.f35690T
            r1 = r6
            r0.m21714a(r1)
        Lbb:
            int r13 = r13 + 1
            goto L8f
        Lc1:
            r0 = -1
            return r0
        Lc3:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p330d.C11004d.mo21437a(com.google.android.exoplayer2.extractor.i, com.google.android.exoplayer2.extractor.u):int");
    }

    /* renamed from: a */
    final long m21743a(long j) throws ParserException {
        long j2 = this.f35655l;
        if (j2 != -9223372036854775807L) {
            return C11599af.m19946b(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    @EnsuresNonNull({"extractorOutput"})
    /* renamed from: a */
    final void m21745a() {
        C11593a.m20024a(this.f35626J);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21439a(long j, long j2) {
        this.f35664u = -9223372036854775807L;
        this.f35668y = 0;
        this.f35627N.mo21748a();
        this.f35647d.m21712a();
        m21731d();
        for (int i = 0; i < this.f35648e.size(); i++) {
            C11007b valueAt = this.f35648e.valueAt(i);
            if (valueAt.f35690T != null) {
                C11008c c11008c = valueAt.f35690T;
                c11008c.f35723b = false;
                c11008c.f35724c = 0;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0187  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"#1.output"})
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m21741a(com.google.android.exoplayer2.extractor.p330d.C11004d.C11007b r9, long r10, int r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.p330d.C11004d.m21741a(com.google.android.exoplayer2.extractor.d.d$b, long, int, int, int):void");
    }

    /* renamed from: a */
    void m21740a(AbstractC11121i abstractC11121i, int i) throws IOException {
        if (this.f35650g.f38735c >= i) {
            return;
        }
        if (this.f35650g.f38733a.length < i) {
            C11628u c11628u = this.f35650g;
            c11628u.m19805b(Math.max(c11628u.f38733a.length * 2, i));
        }
        abstractC11121i.mo21400b(this.f35650g.f38733a, this.f35650g.f38735c, i - this.f35650g.f38735c);
        this.f35650g.m19803c(i);
    }

    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final void mo21436a(AbstractC11130j abstractC11130j) {
        this.f35626J = abstractC11130j;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // com.google.android.exoplayer2.extractor.AbstractC11071h
    /* renamed from: a */
    public final boolean mo21438a(AbstractC11121i abstractC11121i) throws IOException {
        long m21713a;
        int i;
        C11009e c11009e = new C11009e();
        ?? mo21395d = abstractC11121i.mo21395d();
        int i2 = (mo21395d > (-1L) ? 1 : (mo21395d == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = mo21395d > 1024 ? (char) 1024 : mo21395d;
        }
        int i3 = c;
        abstractC11121i.mo21394d(c11009e.f35729a.f38733a, 0, 4);
        c11009e.f35730b = 4;
        for (char m19794h = c11009e.f35729a.m19794h(); m19794h != 440786851; m19794h = ((m19794h << '\b') & (-256)) | (c11009e.f35729a.f38733a[0] & 255)) {
            int i4 = c11009e.f35730b + 1;
            c11009e.f35730b = i4;
            if (i4 == i3) {
                return false;
            }
            abstractC11121i.mo21394d(c11009e.f35729a.f38733a, 0, 1);
        }
        long m21713a2 = c11009e.m21713a(abstractC11121i);
        long j = c11009e.f35730b;
        if (m21713a2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + m21713a2 >= mo21395d) {
                return false;
            }
            while (true) {
                long j2 = c11009e.f35730b;
                long j3 = j + m21713a2;
                if (j2 >= j3) {
                    return ((long) c11009e.f35730b) == j3;
                } else if (c11009e.m21713a(abstractC11121i) == Long.MIN_VALUE || (m21713a = c11009e.m21713a(abstractC11121i)) < 0 || m21713a > 2147483647L) {
                    return false;
                } else {
                    if (i != 0) {
                        int i5 = (int) m21713a;
                        abstractC11121i.mo21397c(i5);
                        c11009e.f35730b += i5;
                    }
                }
            }
        } else {
            return false;
        }
    }

    @EnsuresNonNull({"currentTrack"})
    /* renamed from: c */
    final void m21732c(int i) throws ParserException {
        if (this.f35658o != null) {
            return;
        }
        throw new ParserException("Element " + i + " must be in a TrackEntry");
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    /* renamed from: d */
    final void m21730d(int i) throws ParserException {
        if (this.f35665v == null || this.f35666w == null) {
            throw new ParserException("Element " + i + " must be in a Cues");
        }
    }

    /* renamed from: e */
    final C11007b m21728e(int i) throws ParserException {
        m21732c(i);
        return this.f35658o;
    }
}
