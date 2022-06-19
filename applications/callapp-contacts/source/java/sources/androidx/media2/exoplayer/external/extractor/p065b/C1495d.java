package androidx.media2.exoplayer.external.extractor.p065b;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.audio.C1394a;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.extractor.AbstractC1599g;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.extractor.AbstractC1601i;
import androidx.media2.exoplayer.external.extractor.AbstractC1602j;
import androidx.media2.exoplayer.external.extractor.AbstractC1637o;
import androidx.media2.exoplayer.external.extractor.AbstractC1641q;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2010k;
import androidx.media2.exoplayer.external.util.C2014n;
import androidx.media2.exoplayer.external.util.C2018p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
/* renamed from: androidx.media2.exoplayer.external.extractor.b.d */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d.class */
public final class C1495d implements AbstractC1599g {

    /* renamed from: A */
    int f5666A;

    /* renamed from: B */
    int f5667B;

    /* renamed from: C */
    int[] f5668C;

    /* renamed from: D */
    int f5669D;

    /* renamed from: E */
    int f5670E;

    /* renamed from: F */
    int f5671F;

    /* renamed from: G */
    int f5672G;

    /* renamed from: H */
    boolean f5673H;

    /* renamed from: I */
    AbstractC1601i f5674I;

    /* renamed from: O */
    private final AbstractC1494c f5675O;

    /* renamed from: P */
    private final C2018p f5676P;

    /* renamed from: Q */
    private final C2018p f5677Q;

    /* renamed from: R */
    private final C2018p f5678R;

    /* renamed from: S */
    private final C2018p f5679S;

    /* renamed from: T */
    private final C2018p f5680T;

    /* renamed from: U */
    private final C2018p f5681U;

    /* renamed from: V */
    private final C2018p f5682V;

    /* renamed from: W */
    private ByteBuffer f5683W;

    /* renamed from: X */
    private long f5684X;

    /* renamed from: Y */
    private int f5685Y;

    /* renamed from: Z */
    private boolean f5686Z;

    /* renamed from: aa */
    private boolean f5687aa;

    /* renamed from: ab */
    private boolean f5688ab;

    /* renamed from: ac */
    private boolean f5689ac;

    /* renamed from: ad */
    private byte f5690ad;

    /* renamed from: ae */
    private int f5691ae;

    /* renamed from: af */
    private int f5692af;

    /* renamed from: ag */
    private int f5693ag;

    /* renamed from: ah */
    private boolean f5694ah;

    /* renamed from: c */
    final C1502g f5695c;

    /* renamed from: d */
    final SparseArray<C1498b> f5696d;

    /* renamed from: e */
    final boolean f5697e;

    /* renamed from: f */
    final C2018p f5698f;

    /* renamed from: g */
    final C2018p f5699g;

    /* renamed from: h */
    final C2018p f5700h;

    /* renamed from: i */
    long f5701i;

    /* renamed from: j */
    long f5702j;

    /* renamed from: k */
    long f5703k;

    /* renamed from: l */
    long f5704l;

    /* renamed from: m */
    long f5705m;

    /* renamed from: n */
    C1498b f5706n;

    /* renamed from: o */
    boolean f5707o;

    /* renamed from: p */
    int f5708p;

    /* renamed from: q */
    long f5709q;

    /* renamed from: r */
    boolean f5710r;

    /* renamed from: s */
    long f5711s;

    /* renamed from: t */
    long f5712t;

    /* renamed from: u */
    C2010k f5713u;

    /* renamed from: v */
    C2010k f5714v;

    /* renamed from: w */
    boolean f5715w;

    /* renamed from: x */
    int f5716x;

    /* renamed from: y */
    long f5717y;

    /* renamed from: z */
    long f5718z;

    /* renamed from: a */
    public static final AbstractC1602j f5664a = C1500e.f5775a;

    /* renamed from: J */
    private static final byte[] f5659J = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: K */
    private static final byte[] f5660K = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: b */
    static final byte[] f5665b = C1996ac.m41623c("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: L */
    private static final byte[] f5661L = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: M */
    private static final byte[] f5662M = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: N */
    private static final UUID f5663N = new UUID(72057594037932032L, -9223371306706625679L);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.b.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$a.class */
    public final class C1497a implements AbstractC1493b {
        private C1497a() {
            C1495d.this = r4;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final int mo42803a(int i) {
            return C1495d.m42816a(i);
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final void mo42802a(int i, double d) throws ParserException {
            C1495d c1495d = C1495d.this;
            if (i == 181) {
                c1495d.f5706n.f5734O = (int) d;
            } else if (i == 17545) {
                c1495d.f5704l = (long) d;
            } else {
                switch (i) {
                    case 21969:
                        c1495d.f5706n.f5722C = (float) d;
                        return;
                    case 21970:
                        c1495d.f5706n.f5723D = (float) d;
                        return;
                    case 21971:
                        c1495d.f5706n.f5724E = (float) d;
                        return;
                    case 21972:
                        c1495d.f5706n.f5725F = (float) d;
                        return;
                    case 21973:
                        c1495d.f5706n.f5726G = (float) d;
                        return;
                    case 21974:
                        c1495d.f5706n.f5727H = (float) d;
                        return;
                    case 21975:
                        c1495d.f5706n.f5728I = (float) d;
                        return;
                    case 21976:
                        c1495d.f5706n.f5729J = (float) d;
                        return;
                    case 21977:
                        c1495d.f5706n.f5730K = (float) d;
                        return;
                    case 21978:
                        c1495d.f5706n.f5731L = (float) d;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                c1495d.f5706n.f5760r = (float) d;
                                return;
                            case 30324:
                                c1495d.f5706n.f5761s = (float) d;
                                return;
                            case 30325:
                                c1495d.f5706n.f5762t = (float) d;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v126, types: [long] */
        /* JADX WARN: Type inference failed for: r0v134, types: [long] */
        /* JADX WARN: Type inference failed for: r0v138, types: [long] */
        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final void mo42801a(int i, int i2, AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
            char c;
            int i3;
            C1495d c1495d = C1495d.this;
            int i4 = 4;
            if (i != 161 && i != 163) {
                if (i == 165) {
                    if (c1495d.f5716x != 2) {
                        return;
                    }
                    C1498b c1498b = c1495d.f5696d.get(c1495d.f5669D);
                    if (c1495d.f5672G != 4 || !"V_VP9".equals(c1498b.f5744b)) {
                        abstractC1600h.mo42606b(i2);
                        return;
                    }
                    c1495d.f5700h.m41541a(i2);
                    abstractC1600h.mo42605b(c1495d.f5700h.f8131a, 0, i2);
                    return;
                } else if (i == 16981) {
                    c1495d.f5706n.f5750h = new byte[i2];
                    abstractC1600h.mo42605b(c1495d.f5706n.f5750h, 0, i2);
                    return;
                } else if (i == 18402) {
                    byte[] bArr = new byte[i2];
                    abstractC1600h.mo42605b(bArr, 0, i2);
                    c1495d.f5706n.f5751i = new AbstractC1641q.C1642a(1, bArr, 0, 0);
                    return;
                } else if (i == 21419) {
                    Arrays.fill(c1495d.f5699g.f8131a, (byte) 0);
                    abstractC1600h.mo42605b(c1495d.f5699g.f8131a, 4 - i2, i2);
                    c1495d.f5699g.m41533c(0);
                    c1495d.f5708p = (int) c1495d.f5699g.m41526g();
                    return;
                } else if (i == 25506) {
                    c1495d.f5706n.f5752j = new byte[i2];
                    abstractC1600h.mo42605b(c1495d.f5706n.f5752j, 0, i2);
                    return;
                } else if (i == 30322) {
                    c1495d.f5706n.f5763u = new byte[i2];
                    abstractC1600h.mo42605b(c1495d.f5706n.f5763u, 0, i2);
                    return;
                } else {
                    StringBuilder sb = new StringBuilder(26);
                    sb.append("Unexpected id: ");
                    sb.append(i);
                    throw new ParserException(sb.toString());
                }
            }
            if (c1495d.f5716x == 0) {
                c1495d.f5669D = (int) c1495d.f5695c.m42788a(abstractC1600h, false, true, 8);
                c1495d.f5670E = c1495d.f5695c.f5779a;
                c1495d.f5718z = -9223372036854775807L;
                c1495d.f5716x = 1;
                c1495d.f5698f.m41542a();
            }
            C1498b c1498b2 = c1495d.f5696d.get(c1495d.f5669D);
            if (c1498b2 == null) {
                abstractC1600h.mo42606b(i2 - c1495d.f5670E);
                c1495d.f5716x = 0;
                return;
            }
            if (c1495d.f5716x == 1) {
                c1495d.m42812a(abstractC1600h, 3);
                int i5 = (c1495d.f5698f.f8131a[2] & 6) >> 1;
                if (i5 == 0) {
                    c1495d.f5667B = 1;
                    c1495d.f5668C = C1495d.m42807a(c1495d.f5668C, 1);
                    c1495d.f5668C[0] = (i2 - c1495d.f5670E) - 3;
                } else if (i != 163) {
                    throw new ParserException("Lacing only supported in SimpleBlocks.");
                } else {
                    c1495d.m42812a(abstractC1600h, 4);
                    c1495d.f5667B = (c1495d.f5698f.f8131a[3] & 255) + 1;
                    c1495d.f5668C = C1495d.m42807a(c1495d.f5668C, c1495d.f5667B);
                    if (i5 == 2) {
                        Arrays.fill(c1495d.f5668C, 0, c1495d.f5667B, ((i2 - c1495d.f5670E) - 4) / c1495d.f5667B);
                    } else if (i5 == 1) {
                        int i6 = 0;
                        for (int i7 = 0; i7 < c1495d.f5667B - 1; i7++) {
                            c1495d.f5668C[i7] = 0;
                            int i8 = i4;
                            do {
                                i4 = i8 + 1;
                                c1495d.m42812a(abstractC1600h, i4);
                                i3 = c1495d.f5698f.f8131a[i4 - 1] & 255;
                                int[] iArr = c1495d.f5668C;
                                iArr[i7] = iArr[i7] + i3;
                                i8 = i4;
                            } while (i3 == 255);
                            i6 += c1495d.f5668C[i7];
                        }
                        c1495d.f5668C[c1495d.f5667B - 1] = ((i2 - c1495d.f5670E) - i4) - i6;
                    } else if (i5 != 3) {
                        StringBuilder sb2 = new StringBuilder(36);
                        sb2.append("Unexpected lacing value: ");
                        sb2.append(i5);
                        throw new ParserException(sb2.toString());
                    } else {
                        int i9 = 0;
                        for (int i10 = 0; i10 < c1495d.f5667B - 1; i10++) {
                            c1495d.f5668C[i10] = 0;
                            int i11 = i4 + 1;
                            c1495d.m42812a(abstractC1600h, i11);
                            byte[] bArr2 = c1495d.f5698f.f8131a;
                            int i12 = i11 - 1;
                            if (bArr2[i12] == 0) {
                                throw new ParserException("No valid varint length mask found");
                            }
                            int i13 = 0;
                            while (true) {
                                i4 = i11;
                                c = 0;
                                if (i13 >= 8) {
                                    break;
                                }
                                int i14 = 1 << (7 - i13);
                                if ((c1495d.f5698f.f8131a[i12] & i14) != 0) {
                                    int i15 = i11 + i13;
                                    c1495d.m42812a(abstractC1600h, i15);
                                    char c2 = (i14 ^ (-1)) & c1495d.f5698f.f8131a[i12] & 255;
                                    for (int i16 = i12 + 1; i16 < i15; i16++) {
                                        c2 = (c2 << '\b') | (c1495d.f5698f.f8131a[i16] & 255);
                                    }
                                    i4 = i15;
                                    c = c2;
                                    if (i10 > 0) {
                                        c = c2 - ((1 << ((i13 * 7) + 6)) - 1);
                                        i4 = i15;
                                    }
                                } else {
                                    i13++;
                                }
                            }
                            if (c < -2147483648L || c > 2147483647L) {
                                throw new ParserException("EBML lacing sample size out of range.");
                            }
                            int i17 = c;
                            int[] iArr2 = c1495d.f5668C;
                            if (i10 != 0) {
                                i17 += c1495d.f5668C[i10 - 1];
                            }
                            iArr2[i10] = i17;
                            i9 += c1495d.f5668C[i10];
                        }
                        c1495d.f5668C[c1495d.f5667B - 1] = ((i2 - c1495d.f5670E) - i4) - i9;
                    }
                }
                c1495d.f5717y = c1495d.f5712t + c1495d.m42815a((c1495d.f5698f.f8131a[0] << 8) | (c1495d.f5698f.f8131a[1] & 255));
                c1495d.f5671F = ((c1495d.f5698f.f8131a[2] & 8) == 8 ? Integer.MIN_VALUE : 0) | ((c1498b2.f5746d == 2 || (i == 163 && (c1495d.f5698f.f8131a[2] & 128) == 128)) ? 1 : 0);
                c1495d.f5716x = 2;
                c1495d.f5666A = 0;
            }
            if (i != 163) {
                c1495d.m42811a(abstractC1600h, c1498b2, c1495d.f5668C[0]);
                return;
            }
            while (c1495d.f5666A < c1495d.f5667B) {
                c1495d.m42811a(abstractC1600h, c1498b2, c1495d.f5668C[c1495d.f5666A]);
                c1495d.m42814a(c1498b2, c1495d.f5717y + ((c1495d.f5666A * c1498b2.f5747e) / 1000));
                c1495d.f5666A++;
            }
            c1495d.f5716x = 0;
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final void mo42800a(int i, long j) throws ParserException {
            C1495d c1495d = C1495d.this;
            if (i == 20529) {
                if (j == 0) {
                    return;
                }
                StringBuilder sb = new StringBuilder(55);
                sb.append("ContentEncodingOrder ");
                sb.append(j);
                sb.append(" not supported");
                throw new ParserException(sb.toString());
            } else if (i == 20530) {
                if (j == 1) {
                    return;
                }
                StringBuilder sb2 = new StringBuilder(55);
                sb2.append("ContentEncodingScope ");
                sb2.append(j);
                sb2.append(" not supported");
                throw new ParserException(sb2.toString());
            } else {
                boolean z = false;
                switch (i) {
                    case 131:
                        c1495d.f5706n.f5746d = (int) j;
                        return;
                    case 136:
                        C1498b c1498b = c1495d.f5706n;
                        boolean z2 = false;
                        if (j == 1) {
                            z2 = true;
                        }
                        c1498b.f5739T = z2;
                        return;
                    case 155:
                        c1495d.f5718z = c1495d.m42815a(j);
                        return;
                    case 159:
                        c1495d.f5706n.f5732M = (int) j;
                        return;
                    case 176:
                        c1495d.f5706n.f5754l = (int) j;
                        return;
                    case 179:
                        c1495d.f5713u.m41576a(c1495d.m42815a(j));
                        return;
                    case 186:
                        c1495d.f5706n.f5755m = (int) j;
                        return;
                    case 215:
                        c1495d.f5706n.f5745c = (int) j;
                        return;
                    case 231:
                        c1495d.f5712t = c1495d.m42815a(j);
                        return;
                    case 238:
                        c1495d.f5672G = (int) j;
                        return;
                    case 241:
                        if (c1495d.f5715w) {
                            return;
                        }
                        c1495d.f5714v.m41576a(j);
                        c1495d.f5715w = true;
                        return;
                    case 251:
                        c1495d.f5673H = true;
                        return;
                    case 16980:
                        if (j == 3) {
                            return;
                        }
                        StringBuilder sb3 = new StringBuilder(50);
                        sb3.append("ContentCompAlgo ");
                        sb3.append(j);
                        sb3.append(" not supported");
                        throw new ParserException(sb3.toString());
                    case 17029:
                        if (j >= 1 && j <= 2) {
                            return;
                        }
                        StringBuilder sb4 = new StringBuilder(53);
                        sb4.append("DocTypeReadVersion ");
                        sb4.append(j);
                        sb4.append(" not supported");
                        throw new ParserException(sb4.toString());
                    case 17143:
                        if (j == 1) {
                            return;
                        }
                        StringBuilder sb5 = new StringBuilder(50);
                        sb5.append("EBMLReadVersion ");
                        sb5.append(j);
                        sb5.append(" not supported");
                        throw new ParserException(sb5.toString());
                    case 18401:
                        if (j == 5) {
                            return;
                        }
                        StringBuilder sb6 = new StringBuilder(49);
                        sb6.append("ContentEncAlgo ");
                        sb6.append(j);
                        sb6.append(" not supported");
                        throw new ParserException(sb6.toString());
                    case 18408:
                        if (j == 1) {
                            return;
                        }
                        StringBuilder sb7 = new StringBuilder(56);
                        sb7.append("AESSettingsCipherMode ");
                        sb7.append(j);
                        sb7.append(" not supported");
                        throw new ParserException(sb7.toString());
                    case 21420:
                        c1495d.f5709q = j + c1495d.f5702j;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            c1495d.f5706n.f5764v = 0;
                            return;
                        } else if (i2 == 1) {
                            c1495d.f5706n.f5764v = 2;
                            return;
                        } else if (i2 == 3) {
                            c1495d.f5706n.f5764v = 1;
                            return;
                        } else if (i2 != 15) {
                            return;
                        } else {
                            c1495d.f5706n.f5764v = 3;
                            return;
                        }
                    case 21680:
                        c1495d.f5706n.f5756n = (int) j;
                        return;
                    case 21682:
                        c1495d.f5706n.f5758p = (int) j;
                        return;
                    case 21690:
                        c1495d.f5706n.f5757o = (int) j;
                        return;
                    case 21930:
                        C1498b c1498b2 = c1495d.f5706n;
                        if (j == 1) {
                            z = true;
                        }
                        c1498b2.f5738S = z;
                        return;
                    case 21998:
                        c1495d.f5706n.f5748f = (int) j;
                        return;
                    case 22186:
                        c1495d.f5706n.f5735P = j;
                        return;
                    case 22203:
                        c1495d.f5706n.f5736Q = j;
                        return;
                    case 25188:
                        c1495d.f5706n.f5733N = (int) j;
                        return;
                    case 30321:
                        int i3 = (int) j;
                        if (i3 == 0) {
                            c1495d.f5706n.f5759q = 0;
                            return;
                        } else if (i3 == 1) {
                            c1495d.f5706n.f5759q = 1;
                            return;
                        } else if (i3 == 2) {
                            c1495d.f5706n.f5759q = 2;
                            return;
                        } else if (i3 != 3) {
                            return;
                        } else {
                            c1495d.f5706n.f5759q = 3;
                            return;
                        }
                    case 2352003:
                        c1495d.f5706n.f5747e = (int) j;
                        return;
                    case 2807729:
                        c1495d.f5703k = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    c1495d.f5706n.f5768z = 2;
                                    return;
                                } else if (i4 != 2) {
                                    return;
                                } else {
                                    c1495d.f5706n.f5768z = 1;
                                    return;
                                }
                            case 21946:
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 == 16) {
                                        c1495d.f5706n.f5767y = 6;
                                        return;
                                    } else if (i5 == 18) {
                                        c1495d.f5706n.f5767y = 7;
                                        return;
                                    } else if (i5 != 6 && i5 != 7) {
                                        return;
                                    }
                                }
                                c1495d.f5706n.f5767y = 3;
                                return;
                            case 21947:
                                c1495d.f5706n.f5765w = true;
                                int i6 = (int) j;
                                if (i6 == 1) {
                                    c1495d.f5706n.f5766x = 1;
                                    return;
                                } else if (i6 == 9) {
                                    c1495d.f5706n.f5766x = 6;
                                    return;
                                } else if (i6 != 4 && i6 != 5 && i6 != 6 && i6 != 7) {
                                    return;
                                } else {
                                    c1495d.f5706n.f5766x = 2;
                                    return;
                                }
                            case 21948:
                                c1495d.f5706n.f5720A = (int) j;
                                return;
                            case 21949:
                                c1495d.f5706n.f5721B = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final void mo42799a(int i, long j, long j2) throws ParserException {
            C1495d c1495d = C1495d.this;
            if (i == 160) {
                c1495d.f5673H = false;
            } else if (i == 174) {
                c1495d.f5706n = new C1498b();
            } else if (i == 187) {
                c1495d.f5715w = false;
            } else if (i == 19899) {
                c1495d.f5708p = -1;
                c1495d.f5709q = -1L;
            } else if (i == 20533) {
                c1495d.f5706n.f5749g = true;
            } else if (i == 21968) {
                c1495d.f5706n.f5765w = true;
            } else if (i == 408125543) {
                if (c1495d.f5702j != -1 && c1495d.f5702j != j) {
                    throw new ParserException("Multiple Segment elements not supported");
                }
                c1495d.f5702j = j;
                c1495d.f5701i = j2;
            } else if (i == 475249515) {
                c1495d.f5713u = new C2010k();
                c1495d.f5714v = new C2010k();
            } else if (i != 524531317 || c1495d.f5707o) {
            } else {
                if (c1495d.f5697e && c1495d.f5711s != -1) {
                    c1495d.f5710r = true;
                    return;
                }
                c1495d.f5674I.mo42209a(new AbstractC1637o.C1639b(c1495d.f5705m));
                c1495d.f5707o = true;
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: a */
        public final void mo42798a(int i, String str) throws ParserException {
            C1495d c1495d = C1495d.this;
            if (i == 134) {
                c1495d.f5706n.f5744b = str;
            } else if (i != 17026) {
                if (i == 21358) {
                    c1495d.f5706n.f5743a = str;
                } else if (i != 2274716) {
                } else {
                    c1495d.f5706n.f5740U = str;
                }
            } else if ("webm".equals(str) || "matroska".equals(str)) {
            } else {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
                sb.append("DocType ");
                sb.append(str);
                sb.append(" not supported");
                throw new ParserException(sb.toString());
            }
        }

        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: b */
        public final boolean mo42797b(int i) {
            return C1495d.m42805b(i);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:291:0x0b09  */
        /* JADX WARN: Removed duplicated region for block: B:292:0x0b0f  */
        /* JADX WARN: Removed duplicated region for block: B:295:0x0b23  */
        /* JADX WARN: Removed duplicated region for block: B:296:0x0b51  */
        @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1493b
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo42796c(int r17) throws androidx.media2.exoplayer.external.ParserException {
            /*
                Method dump skipped, instructions count: 4019
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p065b.C1495d.C1497a.mo42796c(int):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.b.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$b.class */
    public static final class C1498b {

        /* renamed from: A */
        public int f5720A;

        /* renamed from: B */
        public int f5721B;

        /* renamed from: C */
        public float f5722C;

        /* renamed from: D */
        public float f5723D;

        /* renamed from: E */
        public float f5724E;

        /* renamed from: F */
        public float f5725F;

        /* renamed from: G */
        public float f5726G;

        /* renamed from: H */
        public float f5727H;

        /* renamed from: I */
        public float f5728I;

        /* renamed from: J */
        public float f5729J;

        /* renamed from: K */
        public float f5730K;

        /* renamed from: L */
        public float f5731L;

        /* renamed from: M */
        public int f5732M;

        /* renamed from: N */
        public int f5733N;

        /* renamed from: O */
        public int f5734O;

        /* renamed from: P */
        public long f5735P;

        /* renamed from: Q */
        public long f5736Q;

        /* renamed from: R */
        public C1499c f5737R;

        /* renamed from: S */
        public boolean f5738S;

        /* renamed from: T */
        public boolean f5739T;

        /* renamed from: U */
        String f5740U;

        /* renamed from: V */
        public AbstractC1641q f5741V;

        /* renamed from: W */
        public int f5742W;

        /* renamed from: a */
        public String f5743a;

        /* renamed from: b */
        public String f5744b;

        /* renamed from: c */
        public int f5745c;

        /* renamed from: d */
        public int f5746d;

        /* renamed from: e */
        public int f5747e;

        /* renamed from: f */
        public int f5748f;

        /* renamed from: g */
        public boolean f5749g;

        /* renamed from: h */
        public byte[] f5750h;

        /* renamed from: i */
        public AbstractC1641q.C1642a f5751i;

        /* renamed from: j */
        public byte[] f5752j;

        /* renamed from: k */
        public DrmInitData f5753k;

        /* renamed from: l */
        public int f5754l;

        /* renamed from: m */
        public int f5755m;

        /* renamed from: n */
        public int f5756n;

        /* renamed from: o */
        public int f5757o;

        /* renamed from: p */
        public int f5758p;

        /* renamed from: q */
        public int f5759q;

        /* renamed from: r */
        public float f5760r;

        /* renamed from: s */
        public float f5761s;

        /* renamed from: t */
        public float f5762t;

        /* renamed from: u */
        public byte[] f5763u;

        /* renamed from: v */
        public int f5764v;

        /* renamed from: w */
        public boolean f5765w;

        /* renamed from: x */
        public int f5766x;

        /* renamed from: y */
        public int f5767y;

        /* renamed from: z */
        public int f5768z;

        private C1498b() {
            this.f5754l = -1;
            this.f5755m = -1;
            this.f5756n = -1;
            this.f5757o = -1;
            this.f5758p = 0;
            this.f5759q = -1;
            this.f5760r = BitmapDescriptorFactory.HUE_RED;
            this.f5761s = BitmapDescriptorFactory.HUE_RED;
            this.f5762t = BitmapDescriptorFactory.HUE_RED;
            this.f5763u = null;
            this.f5764v = -1;
            this.f5765w = false;
            this.f5766x = -1;
            this.f5767y = -1;
            this.f5768z = -1;
            this.f5720A = 1000;
            this.f5721B = 200;
            this.f5722C = -1.0f;
            this.f5723D = -1.0f;
            this.f5724E = -1.0f;
            this.f5725F = -1.0f;
            this.f5726G = -1.0f;
            this.f5727H = -1.0f;
            this.f5728I = -1.0f;
            this.f5729J = -1.0f;
            this.f5730K = -1.0f;
            this.f5731L = -1.0f;
            this.f5732M = 1;
            this.f5733N = -1;
            this.f5734O = 8000;
            this.f5735P = 0L;
            this.f5736Q = 0L;
            this.f5739T = true;
            this.f5740U = "eng";
        }

        /* renamed from: a */
        static Pair<String, List<byte[]>> m42795a(C2018p c2018p) throws ParserException {
            try {
                c2018p.m41531d(16);
                long m41525h = c2018p.m41525h();
                if (m41525h == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (m41525h == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (m41525h != 826496599) {
                    C2009j.m41584a("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                    return new Pair<>("video/x-unknown", null);
                }
                byte[] bArr = c2018p.f8131a;
                for (int i = c2018p.f8132b + 20; i < bArr.length - 4; i++) {
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
        static List<byte[]> m42794a(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] != 2) {
                    throw new ParserException("Error parsing vorbis codec private");
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
                    throw new ParserException("Error parsing vorbis codec private");
                }
                byte[] bArr2 = new byte[i4];
                System.arraycopy(bArr, i7, bArr2, 0, i4);
                int i8 = i7 + i4;
                if (bArr[i8] != 3) {
                    throw new ParserException("Error parsing vorbis codec private");
                }
                int i9 = i8 + i5 + b;
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
        static boolean m42793b(C2018p c2018p) throws ParserException {
            try {
                int m41530e = c2018p.m41530e();
                if (m41530e == 1) {
                    return true;
                }
                if (m41530e != 65534) {
                    return false;
                }
                c2018p.m41533c(24);
                if (c2018p.m41522k() != C1495d.f5663N.getMostSignificantBits()) {
                    return false;
                }
                return c2018p.m41522k() == C1495d.f5663N.getLeastSignificantBits();
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing MS/ACM codec private");
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.b.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/d$c.class */
    public static final class C1499c {

        /* renamed from: a */
        final byte[] f5769a = new byte[10];

        /* renamed from: b */
        boolean f5770b;

        /* renamed from: c */
        int f5771c;

        /* renamed from: d */
        int f5772d;

        /* renamed from: e */
        long f5773e;

        /* renamed from: f */
        int f5774f;

        /* renamed from: a */
        public final void m42792a(C1498b c1498b, long j) {
            if (!this.f5770b) {
                return;
            }
            int i = this.f5771c;
            int i2 = i + 1;
            this.f5771c = i2;
            if (i == 0) {
                this.f5773e = j;
            }
            if (i2 < 16) {
                return;
            }
            c1498b.f5741V.mo42313a(this.f5773e, this.f5774f, this.f5772d, 0, c1498b.f5751i);
            this.f5771c = 0;
        }
    }

    public C1495d() {
        this(0);
    }

    public C1495d(int i) {
        this(new C1490a(), i);
    }

    C1495d(AbstractC1494c abstractC1494c, int i) {
        this.f5702j = -1L;
        this.f5703k = -9223372036854775807L;
        this.f5704l = -9223372036854775807L;
        this.f5705m = -9223372036854775807L;
        this.f5711s = -1L;
        this.f5684X = -1L;
        this.f5712t = -9223372036854775807L;
        this.f5675O = abstractC1494c;
        abstractC1494c.mo42819a(new C1497a());
        this.f5697e = (i & 1) != 0 ? false : true;
        this.f5695c = new C1502g();
        this.f5696d = new SparseArray<>();
        this.f5698f = new C2018p(4);
        this.f5678R = new C2018p(ByteBuffer.allocate(4).putInt(-1).array());
        this.f5699g = new C2018p(4);
        this.f5676P = new C2018p(C2014n.f8107a);
        this.f5677Q = new C2018p(4);
        this.f5679S = new C2018p();
        this.f5680T = new C2018p();
        this.f5681U = new C2018p(8);
        this.f5682V = new C2018p();
        this.f5700h = new C2018p();
    }

    /* renamed from: a */
    protected static int m42816a(int i) {
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
    private int m42810a(AbstractC1600h abstractC1600h, AbstractC1641q abstractC1641q, int i) throws IOException, InterruptedException {
        int i2;
        int m41536b = this.f5679S.m41536b();
        if (m41536b > 0) {
            i2 = Math.min(i, m41536b);
            abstractC1641q.mo42306a(this.f5679S, i2);
        } else {
            i2 = abstractC1641q.mo42308a(abstractC1600h, i, false);
        }
        this.f5685Y += i2;
        this.f5693ag += i2;
        return i2;
    }

    /* renamed from: a */
    private void m42813a(C1498b c1498b, String str, int i, long j, byte[] bArr) {
        m42808a(this.f5680T.f8131a, this.f5718z, str, i, j, bArr);
        AbstractC1641q abstractC1641q = c1498b.f5741V;
        C2018p c2018p = this.f5680T;
        abstractC1641q.mo42306a(c2018p, c2018p.f8133c);
        this.f5693ag += this.f5680T.f8133c;
    }

    /* renamed from: a */
    private void m42809a(AbstractC1600h abstractC1600h, byte[] bArr, int i) throws IOException, InterruptedException {
        int length = bArr.length + i;
        if (this.f5680T.f8131a.length < length) {
            this.f5680T.f8131a = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.f5680T.f8131a, 0, bArr.length);
        }
        abstractC1600h.mo42605b(this.f5680T.f8131a, bArr.length, i);
        this.f5680T.m41541a(length);
    }

    /* renamed from: a */
    private static void m42808a(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] bArr3;
        if (j == -9223372036854775807L) {
            bArr3 = bArr2;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - ((i2 * 3600) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - ((i3 * 60) * 1000000);
            int i4 = (int) (j4 / 1000000);
            bArr3 = C1996ac.m41623c(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (i4 * 1000000)) / j2))));
        }
        System.arraycopy(bArr3, 0, bArr, i, bArr2.length);
    }

    /* renamed from: a */
    static int[] m42807a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC1599g[] m42817a() {
        return new AbstractC1599g[]{new C1495d()};
    }

    /* renamed from: b */
    protected static boolean m42805b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* renamed from: c */
    private void m42804c() {
        this.f5685Y = 0;
        this.f5693ag = 0;
        this.f5692af = 0;
        this.f5686Z = false;
        this.f5687aa = false;
        this.f5689ac = false;
        this.f5691ae = 0;
        this.f5690ad = (byte) 0;
        this.f5688ab = false;
        this.f5679S.m41542a();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0007 A[SYNTHETIC] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo42187a(androidx.media2.exoplayer.external.extractor.AbstractC1600h r9, androidx.media2.exoplayer.external.extractor.C1636n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.extractor.p065b.C1495d.mo42187a(androidx.media2.exoplayer.external.extractor.h, androidx.media2.exoplayer.external.extractor.n):int");
    }

    /* renamed from: a */
    final long m42815a(long j) throws ParserException {
        long j2 = this.f5703k;
        if (j2 != -9223372036854775807L) {
            return C1996ac.m41634b(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42189a(long j, long j2) {
        this.f5712t = -9223372036854775807L;
        this.f5716x = 0;
        this.f5675O.mo42820a();
        this.f5695c.m42790a();
        m42804c();
        for (int i = 0; i < this.f5696d.size(); i++) {
            C1498b valueAt = this.f5696d.valueAt(i);
            if (valueAt.f5737R != null) {
                valueAt.f5737R.f5770b = false;
            }
        }
    }

    /* renamed from: a */
    final void m42814a(C1498b c1498b, long j) {
        if (c1498b.f5737R != null) {
            c1498b.f5737R.m42792a(c1498b, j);
        } else {
            if ("S_TEXT/UTF8".equals(c1498b.f5744b)) {
                m42813a(c1498b, "%02d:%02d:%02d,%03d", 19, 1000L, f5660K);
            } else if ("S_TEXT/ASS".equals(c1498b.f5744b)) {
                m42813a(c1498b, "%01d:%02d:%02d:%02d", 21, 10000L, f5662M);
            }
            if ((this.f5671F & 268435456) != 0) {
                int i = this.f5700h.f8133c;
                c1498b.f5741V.mo42306a(this.f5700h, i);
                this.f5693ag += i;
            }
            c1498b.f5741V.mo42313a(j, this.f5671F, this.f5693ag, 0, c1498b.f5751i);
        }
        this.f5694ah = true;
        m42804c();
    }

    /* renamed from: a */
    void m42812a(AbstractC1600h abstractC1600h, int i) throws IOException, InterruptedException {
        if (this.f5698f.f8133c >= i) {
            return;
        }
        if (this.f5698f.f8131a.length < i) {
            C2018p c2018p = this.f5698f;
            c2018p.m41538a(Arrays.copyOf(c2018p.f8131a, Math.max(this.f5698f.f8131a.length * 2, i)), this.f5698f.f8133c);
        }
        abstractC1600h.mo42605b(this.f5698f.f8131a, this.f5698f.f8133c, i - this.f5698f.f8133c);
        this.f5698f.m41535b(i);
    }

    /* renamed from: a */
    void m42811a(AbstractC1600h abstractC1600h, C1498b c1498b, int i) throws IOException, InterruptedException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(c1498b.f5744b)) {
            m42809a(abstractC1600h, f5659J, i);
        } else if ("S_TEXT/ASS".equals(c1498b.f5744b)) {
            m42809a(abstractC1600h, f5661L, i);
        } else {
            AbstractC1641q abstractC1641q = c1498b.f5741V;
            if (!this.f5686Z) {
                if (c1498b.f5749g) {
                    this.f5671F &= -1073741825;
                    int i4 = 128;
                    if (!this.f5687aa) {
                        abstractC1600h.mo42605b(this.f5698f.f8131a, 0, 1);
                        this.f5685Y++;
                        if ((this.f5698f.f8131a[0] & 128) == 128) {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                        this.f5690ad = this.f5698f.f8131a[0];
                        this.f5687aa = true;
                    }
                    byte b = this.f5690ad;
                    if ((b & 1) == 1) {
                        boolean z = (b & 2) == 2;
                        this.f5671F |= 1073741824;
                        if (!this.f5688ab) {
                            abstractC1600h.mo42605b(this.f5681U.f8131a, 0, 8);
                            this.f5685Y += 8;
                            this.f5688ab = true;
                            byte[] bArr = this.f5698f.f8131a;
                            if (!z) {
                                i4 = 0;
                            }
                            bArr[0] = (byte) (i4 | 8);
                            this.f5698f.m41533c(0);
                            abstractC1641q.mo42306a(this.f5698f, 1);
                            this.f5693ag++;
                            this.f5681U.m41533c(0);
                            abstractC1641q.mo42306a(this.f5681U, 8);
                            this.f5693ag += 8;
                        }
                        if (z) {
                            if (!this.f5689ac) {
                                abstractC1600h.mo42605b(this.f5698f.f8131a, 0, 1);
                                this.f5685Y++;
                                this.f5698f.m41533c(0);
                                this.f5691ae = this.f5698f.m41534c();
                                this.f5689ac = true;
                            }
                            int i5 = this.f5691ae * 4;
                            this.f5698f.m41541a(i5);
                            abstractC1600h.mo42605b(this.f5698f.f8131a, 0, i5);
                            this.f5685Y += i5;
                            short s = (short) ((this.f5691ae / 2) + 1);
                            int i6 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.f5683W;
                            if (byteBuffer == null || byteBuffer.capacity() < i6) {
                                this.f5683W = ByteBuffer.allocate(i6);
                            }
                            this.f5683W.position(0);
                            this.f5683W.putShort(s);
                            int i7 = 0;
                            int i8 = 0;
                            while (true) {
                                i2 = i8;
                                i3 = this.f5691ae;
                                if (i7 >= i3) {
                                    break;
                                }
                                int m41519n = this.f5698f.m41519n();
                                if (i7 % 2 == 0) {
                                    this.f5683W.putShort((short) (m41519n - i2));
                                } else {
                                    this.f5683W.putInt(m41519n - i2);
                                }
                                i7++;
                                i8 = m41519n;
                            }
                            int i9 = (i - this.f5685Y) - i2;
                            if (i3 % 2 == 1) {
                                this.f5683W.putInt(i9);
                            } else {
                                this.f5683W.putShort((short) i9);
                                this.f5683W.putInt(0);
                            }
                            this.f5682V.m41538a(this.f5683W.array(), i6);
                            abstractC1641q.mo42306a(this.f5682V, i6);
                            this.f5693ag += i6;
                        }
                    }
                } else if (c1498b.f5750h != null) {
                    this.f5679S.m41538a(c1498b.f5750h, c1498b.f5750h.length);
                }
                if (c1498b.f5748f > 0) {
                    this.f5671F |= 268435456;
                    this.f5700h.m41542a();
                    this.f5698f.m41541a(4);
                    this.f5698f.f8131a[0] = (byte) ((i >> 24) & 255);
                    this.f5698f.f8131a[1] = (byte) ((i >> 16) & 255);
                    this.f5698f.f8131a[2] = (byte) ((i >> 8) & 255);
                    this.f5698f.f8131a[3] = (byte) (i & 255);
                    abstractC1641q.mo42306a(this.f5698f, 4);
                    this.f5693ag += 4;
                }
                this.f5686Z = true;
            }
            int i10 = i + this.f5679S.f8133c;
            if (!"V_MPEG4/ISO/AVC".equals(c1498b.f5744b) && !"V_MPEGH/ISO/HEVC".equals(c1498b.f5744b)) {
                if (c1498b.f5737R != null) {
                    C1993a.m41686b(this.f5679S.f8133c == 0);
                    C1499c c1499c = c1498b.f5737R;
                    int i11 = this.f5671F;
                    if (!c1499c.f5770b) {
                        abstractC1600h.mo42601c(c1499c.f5769a, 0, 10);
                        abstractC1600h.mo42612a();
                        if (C1394a.m43026b(c1499c.f5769a) != 0) {
                            c1499c.f5770b = true;
                            c1499c.f5771c = 0;
                        }
                    }
                    if (c1499c.f5771c == 0) {
                        c1499c.f5774f = i11;
                        c1499c.f5772d = 0;
                    }
                    c1499c.f5772d += i10;
                }
                while (true) {
                    int i12 = this.f5685Y;
                    if (i12 >= i10) {
                        break;
                    }
                    m42810a(abstractC1600h, abstractC1641q, i10 - i12);
                }
            } else {
                byte[] bArr2 = this.f5677Q.f8131a;
                bArr2[0] = (byte) 0;
                bArr2[1] = (byte) 0;
                bArr2[2] = (byte) 0;
                int i13 = c1498b.f5742W;
                int i14 = 4 - c1498b.f5742W;
                while (this.f5685Y < i10) {
                    int i15 = this.f5692af;
                    if (i15 == 0) {
                        int min = Math.min(i13, this.f5679S.m41536b());
                        abstractC1600h.mo42605b(bArr2, i14 + min, i13 - min);
                        if (min > 0) {
                            this.f5679S.m41537a(bArr2, i14, min);
                        }
                        this.f5685Y += i13;
                        this.f5677Q.m41533c(0);
                        this.f5692af = this.f5677Q.m41519n();
                        this.f5676P.m41533c(0);
                        abstractC1641q.mo42306a(this.f5676P, 4);
                        this.f5693ag += 4;
                    } else {
                        this.f5692af = i15 - m42810a(abstractC1600h, abstractC1641q, i15);
                    }
                }
            }
            if (!"A_VORBIS".equals(c1498b.f5744b)) {
                return;
            }
            this.f5678R.m41533c(0);
            abstractC1641q.mo42306a(this.f5678R, 4);
            this.f5693ag += 4;
        }
    }

    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final void mo42186a(AbstractC1601i abstractC1601i) {
        this.f5674I = abstractC1601i;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    @Override // androidx.media2.exoplayer.external.extractor.AbstractC1599g
    /* renamed from: a */
    public final boolean mo42188a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        long m42791a;
        int i;
        C1501f c1501f = new C1501f();
        ?? mo42600d = abstractC1600h.mo42600d();
        int i2 = (mo42600d > (-1L) ? 1 : (mo42600d == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = mo42600d > 1024 ? (char) 1024 : mo42600d;
        }
        int i3 = c;
        abstractC1600h.mo42601c(c1501f.f5776a.f8131a, 0, 4);
        c1501f.f5777b = 4;
        for (char m41526g = c1501f.f5776a.m41526g(); m41526g != 440786851; m41526g = ((m41526g << '\b') & (-256)) | (c1501f.f5776a.f8131a[0] & 255)) {
            int i4 = c1501f.f5777b + 1;
            c1501f.f5777b = i4;
            if (i4 == i3) {
                return false;
            }
            abstractC1600h.mo42601c(c1501f.f5776a.f8131a, 0, 1);
        }
        long m42791a2 = c1501f.m42791a(abstractC1600h);
        long j = c1501f.f5777b;
        if (m42791a2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + m42791a2 >= mo42600d) {
                return false;
            }
            while (true) {
                long j2 = c1501f.f5777b;
                long j3 = j + m42791a2;
                if (j2 >= j3) {
                    return ((long) c1501f.f5777b) == j3;
                } else if (c1501f.m42791a(abstractC1600h) == Long.MIN_VALUE || (m42791a = c1501f.m42791a(abstractC1600h)) < 0 || m42791a > 2147483647L) {
                    return false;
                } else {
                    if (i != 0) {
                        int i5 = (int) m42791a;
                        abstractC1600h.mo42602c(i5);
                        c1501f.f5777b += i5;
                    }
                }
            }
        } else {
            return false;
        }
    }
}
