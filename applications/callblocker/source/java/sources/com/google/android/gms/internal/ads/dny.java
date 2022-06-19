package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.gms.internal.ads.dmw;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dny.class */
public final class dny implements dnh {

    /* renamed from: a */
    private static final dni f14915a = new dnx();

    /* renamed from: b */
    private static final byte[] f14916b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c */
    private static final byte[] f14917c = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: d */
    private static final UUID f14918d = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    private long f14919A;

    /* renamed from: B */
    private boolean f14920B;

    /* renamed from: C */
    private long f14921C;

    /* renamed from: D */
    private long f14922D;

    /* renamed from: E */
    private long f14923E;

    /* renamed from: F */
    private dse f14924F;

    /* renamed from: G */
    private dse f14925G;

    /* renamed from: H */
    private boolean f14926H;

    /* renamed from: I */
    private int f14927I;

    /* renamed from: J */
    private long f14928J;

    /* renamed from: K */
    private long f14929K;

    /* renamed from: L */
    private int f14930L;

    /* renamed from: M */
    private int f14931M;

    /* renamed from: N */
    private int[] f14932N;

    /* renamed from: O */
    private int f14933O;

    /* renamed from: P */
    private int f14934P;

    /* renamed from: Q */
    private int f14935Q;

    /* renamed from: R */
    private int f14936R;

    /* renamed from: S */
    private boolean f14937S;

    /* renamed from: T */
    private boolean f14938T;

    /* renamed from: U */
    private boolean f14939U;

    /* renamed from: V */
    private boolean f14940V;

    /* renamed from: W */
    private byte f14941W;

    /* renamed from: X */
    private int f14942X;

    /* renamed from: Y */
    private int f14943Y;

    /* renamed from: Z */
    private int f14944Z;

    /* renamed from: aa */
    private boolean f14945aa;

    /* renamed from: ab */
    private boolean f14946ab;

    /* renamed from: ac */
    private dnj f14947ac;

    /* renamed from: e */
    private final dnw f14948e;

    /* renamed from: f */
    private final dob f14949f;

    /* renamed from: g */
    private final SparseArray<dnz> f14950g;

    /* renamed from: h */
    private final boolean f14951h;

    /* renamed from: i */
    private final dsk f14952i;

    /* renamed from: j */
    private final dsk f14953j;

    /* renamed from: k */
    private final dsk f14954k;

    /* renamed from: l */
    private final dsk f14955l;

    /* renamed from: m */
    private final dsk f14956m;

    /* renamed from: n */
    private final dsk f14957n;

    /* renamed from: o */
    private final dsk f14958o;

    /* renamed from: p */
    private final dsk f14959p;

    /* renamed from: q */
    private final dsk f14960q;

    /* renamed from: r */
    private ByteBuffer f14961r;

    /* renamed from: s */
    private long f14962s;

    /* renamed from: t */
    private long f14963t;

    /* renamed from: u */
    private long f14964u;

    /* renamed from: v */
    private long f14965v;

    /* renamed from: w */
    private long f14966w;

    /* renamed from: x */
    private dnz f14967x;

    /* renamed from: y */
    private boolean f14968y;

    /* renamed from: z */
    private int f14969z;

    public dny() {
        this(0);
    }

    private dny(int i) {
        this(new dnq(), 0);
    }

    private dny(dnw dnwVar, int i) {
        this.f14963t = -1L;
        this.f14964u = -9223372036854775807L;
        this.f14965v = -9223372036854775807L;
        this.f14966w = -9223372036854775807L;
        this.f14921C = -1L;
        this.f14922D = -1L;
        this.f14923E = -9223372036854775807L;
        this.f14948e = dnwVar;
        this.f14948e.mo9044a(new doa(this, null));
        this.f14951h = true;
        this.f14949f = new dob();
        this.f14950g = new SparseArray<>();
        this.f14954k = new dsk(4);
        this.f14955l = new dsk(ByteBuffer.allocate(4).putInt(-1).array());
        this.f14956m = new dsk(4);
        this.f14952i = new dsk(dsf.f15547a);
        this.f14953j = new dsk(4);
        this.f14957n = new dsk();
        this.f14958o = new dsk();
        this.f14959p = new dsk(8);
        this.f14960q = new dsk();
    }

    /* renamed from: a */
    public static int m9042a(int i) {
        int i2;
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
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                i2 = 2;
                break;
            case 134:
            case 17026:
            case 2274716:
                i2 = 3;
                break;
            case 160:
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
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                i2 = 1;
                break;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                i2 = 4;
                break;
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
                i2 = 5;
                break;
            default:
                i2 = 0;
                break;
        }
        return i2;
    }

    /* renamed from: a */
    private final int m9034a(dng dngVar, dno dnoVar, int i) {
        int mo8862a;
        int m8736b = this.f14957n.m8736b();
        if (m8736b > 0) {
            mo8862a = Math.min(i, m8736b);
            dnoVar.mo8860a(this.f14957n, mo8862a);
        } else {
            mo8862a = dnoVar.mo8862a(dngVar, i, false);
        }
        this.f14936R += mo8862a;
        this.f14944Z += mo8862a;
        return mo8862a;
    }

    /* renamed from: a */
    private final long m9036a(long j) {
        if (this.f14964u == -9223372036854775807L) {
            throw new zzhi("Can't scale timecode prior to timecodeScale being set.");
        }
        return dsn.m8706a(j, this.f14964u, 1000L);
    }

    /* renamed from: a */
    private final void m9035a(dng dngVar, int i) {
        if (this.f14954k.m8734c() >= i) {
            return;
        }
        if (this.f14954k.m8730e() < i) {
            this.f14954k.m8738a(Arrays.copyOf(this.f14954k.f15569a, Math.max(this.f14954k.f15569a.length << 1, i)), this.f14954k.m8734c());
        }
        dngVar.mo9058b(this.f14954k.f15569a, this.f14954k.m8734c(), i - this.f14954k.m8734c());
        this.f14954k.m8735b(i);
    }

    /* renamed from: a */
    private final void m9033a(dng dngVar, dnz dnzVar, int i) {
        int i2;
        if ("S_TEXT/UTF8".equals(dnzVar.f14986a)) {
            int length = f14916b.length + i;
            if (this.f14958o.m8730e() < length) {
                this.f14958o.f15569a = Arrays.copyOf(f14916b, length + i);
            }
            dngVar.mo9058b(this.f14958o.f15569a, f14916b.length, i);
            this.f14958o.m8733c(0);
            this.f14958o.m8735b(length);
            return;
        }
        dno dnoVar = dnzVar.f14983N;
        if (!this.f14937S) {
            if (dnzVar.f14990e) {
                this.f14935Q &= -1073741825;
                if (!this.f14938T) {
                    dngVar.mo9058b(this.f14954k.f15569a, 0, 1);
                    this.f14936R++;
                    if ((this.f14954k.f15569a[0] & 128) == 128) {
                        throw new zzhi("Extension bit is set in signal byte");
                    }
                    this.f14941W = this.f14954k.f15569a[0];
                    this.f14938T = true;
                }
                if ((this.f14941W & 1) == 1) {
                    boolean z = (this.f14941W & 2) == 2;
                    this.f14935Q |= 1073741824;
                    if (!this.f14939U) {
                        dngVar.mo9058b(this.f14959p.f15569a, 0, 8);
                        this.f14936R += 8;
                        this.f14939U = true;
                        this.f14954k.f15569a[0] = (byte) ((z ? 128 : 0) | 8);
                        this.f14954k.m8733c(0);
                        dnoVar.mo8860a(this.f14954k, 1);
                        this.f14944Z++;
                        this.f14959p.m8733c(0);
                        dnoVar.mo8860a(this.f14959p, 8);
                        this.f14944Z += 8;
                    }
                    if (z) {
                        if (!this.f14940V) {
                            dngVar.mo9058b(this.f14954k.f15569a, 0, 1);
                            this.f14936R++;
                            this.f14954k.m8733c(0);
                            this.f14942X = this.f14954k.m8728f();
                            this.f14940V = true;
                        }
                        int i3 = this.f14942X << 2;
                        this.f14954k.m8739a(i3);
                        dngVar.mo9058b(this.f14954k.f15569a, 0, i3);
                        this.f14936R = i3 + this.f14936R;
                        short s = (short) ((this.f14942X / 2) + 1);
                        int i4 = (s * 6) + 2;
                        if (this.f14961r == null || this.f14961r.capacity() < i4) {
                            this.f14961r = ByteBuffer.allocate(i4);
                        }
                        this.f14961r.position(0);
                        this.f14961r.putShort(s);
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            i2 = i6;
                            if (i5 >= this.f14942X) {
                                break;
                            }
                            int m8719o = this.f14954k.m8719o();
                            if (i5 % 2 == 0) {
                                this.f14961r.putShort((short) (m8719o - i2));
                            } else {
                                this.f14961r.putInt(m8719o - i2);
                            }
                            i5++;
                            i6 = m8719o;
                        }
                        int i7 = (i - this.f14936R) - i2;
                        if (this.f14942X % 2 == 1) {
                            this.f14961r.putInt(i7);
                        } else {
                            this.f14961r.putShort((short) i7);
                            this.f14961r.putInt(0);
                        }
                        this.f14960q.m8738a(this.f14961r.array(), i4);
                        dnoVar.mo8860a(this.f14960q, i4);
                        this.f14944Z += i4;
                    }
                }
            } else if (dnzVar.f14991f != null) {
                this.f14957n.m8738a(dnzVar.f14991f, dnzVar.f14991f.length);
            }
            this.f14937S = true;
        }
        int m8734c = this.f14957n.m8734c() + i;
        if ("V_MPEG4/ISO/AVC".equals(dnzVar.f14986a) || "V_MPEGH/ISO/HEVC".equals(dnzVar.f14986a)) {
            byte[] bArr = this.f14953j.f15569a;
            bArr[0] = (byte) 0;
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            int i8 = dnzVar.f14984O;
            int i9 = 4 - dnzVar.f14984O;
            while (this.f14936R < m8734c) {
                if (this.f14943Y == 0) {
                    int min = Math.min(i8, this.f14957n.m8736b());
                    dngVar.mo9058b(bArr, i9 + min, i8 - min);
                    if (min > 0) {
                        this.f14957n.m8737a(bArr, i9, min);
                    }
                    this.f14936R += i8;
                    this.f14953j.m8733c(0);
                    this.f14943Y = this.f14953j.m8719o();
                    this.f14952i.m8733c(0);
                    dnoVar.mo8860a(this.f14952i, 4);
                    this.f14944Z += 4;
                } else {
                    this.f14943Y -= m9034a(dngVar, dnoVar, this.f14943Y);
                }
            }
        } else {
            while (this.f14936R < m8734c) {
                m9034a(dngVar, dnoVar, m8734c - this.f14936R);
            }
        }
        if (!"A_VORBIS".equals(dnzVar.f14986a)) {
            return;
        }
        this.f14955l.m8733c(0);
        dnoVar.mo8860a(this.f14955l, 4);
        this.f14944Z += 4;
    }

    /* renamed from: a */
    private final void m9032a(dnz dnzVar, long j) {
        int i;
        byte[] m8695c;
        if ("S_TEXT/UTF8".equals(dnzVar.f14986a)) {
            byte[] bArr = this.f14958o.f15569a;
            long j2 = this.f14929K;
            if (j2 == -9223372036854775807L) {
                m8695c = f14917c;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                m8695c = dsn.m8695c(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(m8695c, 0, bArr, 19, 12);
            dnzVar.f14983N.mo8860a(this.f14958o, this.f14958o.m8734c());
            this.f14944Z += this.f14958o.m8734c();
        }
        dnzVar.f14983N.mo8867a(j, this.f14935Q, this.f14944Z, 0, dnzVar.f14992g);
        this.f14945aa = true;
        m9030b();
    }

    /* renamed from: a */
    private static int[] m9031a(int[] iArr, int i) {
        int[] iArr2;
        if (iArr == null) {
            iArr2 = new int[i];
        } else {
            iArr2 = iArr;
            if (iArr.length < i) {
                iArr2 = new int[Math.max(iArr.length << 1, i)];
            }
        }
        return iArr2;
    }

    /* renamed from: b */
    private final void m9030b() {
        this.f14936R = 0;
        this.f14944Z = 0;
        this.f14943Y = 0;
        this.f14937S = false;
        this.f14938T = false;
        this.f14940V = false;
        this.f14942X = 0;
        this.f14941W = (byte) 0;
        this.f14939U = false;
        this.f14957n.m8740a();
    }

    /* renamed from: b */
    public static boolean m9029b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final int mo8985a(dng dngVar, dnn dnnVar) {
        int i;
        boolean z;
        this.f14945aa = false;
        boolean z2 = true;
        while (z2 && !this.f14945aa) {
            z2 = this.f14948e.mo9045a(dngVar);
            if (z2) {
                long mo9060b = dngVar.mo9060b();
                if (this.f14920B) {
                    this.f14922D = mo9060b;
                    dnnVar.f14900a = this.f14921C;
                    this.f14920B = false;
                    z = true;
                } else if (!this.f14968y || this.f14922D == -1) {
                    z = false;
                } else {
                    dnnVar.f14900a = this.f14922D;
                    this.f14922D = -1L;
                    z = true;
                }
                if (z) {
                    i = 1;
                    break;
                }
            }
        }
        i = z2 ? 0 : -1;
        return i;
    }

    /* renamed from: a */
    public final void m9041a(int i, double d) {
        switch (i) {
            case 181:
                this.f14967x.f14978I = (int) d;
                return;
            case 17545:
                this.f14965v = (long) d;
                return;
            case 21969:
                this.f14967x.f15008w = (float) d;
                return;
            case 21970:
                this.f14967x.f15009x = (float) d;
                return;
            case 21971:
                this.f14967x.f15010y = (float) d;
                return;
            case 21972:
                this.f14967x.f15011z = (float) d;
                return;
            case 21973:
                this.f14967x.f14970A = (float) d;
                return;
            case 21974:
                this.f14967x.f14971B = (float) d;
                return;
            case 21975:
                this.f14967x.f14972C = (float) d;
                return;
            case 21976:
                this.f14967x.f14973D = (float) d;
                return;
            case 21977:
                this.f14967x.f14974E = (float) d;
                return;
            case 21978:
                this.f14967x.f14975F = (float) d;
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Type inference failed for: r0v101, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r0v97, types: [long] */
    /* renamed from: a */
    public final void m9040a(int i, int i2, dng dngVar) {
        char c;
        int i3;
        switch (i) {
            case 161:
            case 163:
                if (this.f14927I == 0) {
                    this.f14933O = (int) this.f14949f.m9012a(dngVar, false, true, 8);
                    this.f14934P = this.f14949f.m9010b();
                    this.f14929K = -9223372036854775807L;
                    this.f14927I = 1;
                    this.f14954k.m8740a();
                }
                dnz dnzVar = this.f14950g.get(this.f14933O);
                if (dnzVar == null) {
                    dngVar.mo9059b(i2 - this.f14934P);
                    this.f14927I = 0;
                    return;
                }
                if (this.f14927I == 1) {
                    m9035a(dngVar, 3);
                    int i4 = (this.f14954k.f15569a[2] & 6) >> 1;
                    if (i4 == 0) {
                        this.f14931M = 1;
                        this.f14932N = m9031a(this.f14932N, 1);
                        this.f14932N[0] = (i2 - this.f14934P) - 3;
                    } else if (i != 163) {
                        throw new zzhi("Lacing only supported in SimpleBlocks.");
                    } else {
                        m9035a(dngVar, 4);
                        this.f14931M = (this.f14954k.f15569a[3] & 255) + 1;
                        this.f14932N = m9031a(this.f14932N, this.f14931M);
                        if (i4 == 2) {
                            Arrays.fill(this.f14932N, 0, this.f14931M, ((i2 - this.f14934P) - 4) / this.f14931M);
                        } else if (i4 == 1) {
                            int i5 = 0;
                            int i6 = 4;
                            for (int i7 = 0; i7 < this.f14931M - 1; i7++) {
                                this.f14932N[i7] = 0;
                                int i8 = i6;
                                do {
                                    i6 = i8 + 1;
                                    m9035a(dngVar, i6);
                                    i3 = this.f14954k.f15569a[i6 - 1] & 255;
                                    int[] iArr = this.f14932N;
                                    iArr[i7] = iArr[i7] + i3;
                                    i8 = i6;
                                } while (i3 == 255);
                                i5 += this.f14932N[i7];
                            }
                            this.f14932N[this.f14931M - 1] = ((i2 - this.f14934P) - i6) - i5;
                        } else if (i4 != 3) {
                            throw new zzhi(new StringBuilder(36).append("Unexpected lacing value: ").append(i4).toString());
                        } else {
                            int i9 = 0;
                            int i10 = 4;
                            for (int i11 = 0; i11 < this.f14931M - 1; i11++) {
                                this.f14932N[i11] = 0;
                                int i12 = i10 + 1;
                                m9035a(dngVar, i12);
                                if (this.f14954k.f15569a[i12 - 1] == 0) {
                                    throw new zzhi("No valid varint length mask found");
                                }
                                int i13 = 0;
                                while (true) {
                                    i10 = i12;
                                    c = 0;
                                    if (i13 < 8) {
                                        int i14 = 1 << (7 - i13);
                                        if ((this.f14954k.f15569a[i12 - 1] & i14) != 0) {
                                            int i15 = i12 - 1;
                                            int i16 = i12 + i13;
                                            m9035a(dngVar, i16);
                                            char c2 = this.f14954k.f15569a[i15] & 255 & (i14 ^ (-1));
                                            for (int i17 = i15 + 1; i17 < i16; i17++) {
                                                c2 = (c2 << '\b') | (this.f14954k.f15569a[i17] & 255);
                                            }
                                            i10 = i16;
                                            c = c2;
                                            if (i11 > 0) {
                                                c = c2 - ((1 << ((i13 * 7) + 6)) - 1);
                                                i10 = i16;
                                            }
                                        } else {
                                            i13++;
                                        }
                                    }
                                }
                                if (c < -2147483648L || c > 2147483647L) {
                                    throw new zzhi("EBML lacing sample size out of range.");
                                }
                                int i18 = c;
                                int[] iArr2 = this.f14932N;
                                if (i11 != 0) {
                                    i18 += this.f14932N[i11 - 1];
                                }
                                iArr2[i11] = i18;
                                i9 += this.f14932N[i11];
                            }
                            this.f14932N[this.f14931M - 1] = ((i2 - this.f14934P) - i10) - i9;
                        }
                    }
                    this.f14928J = this.f14923E + m9036a((this.f14954k.f15569a[0] << 8) | (this.f14954k.f15569a[1] & 255));
                    this.f14935Q = ((this.f14954k.f15569a[2] & 8) == 8 ? Integer.MIN_VALUE : 0) | (dnzVar.f14988c == 2 || (i == 163 && (this.f14954k.f15569a[2] & 128) == 128) ? 1 : 0);
                    this.f14927I = 2;
                    this.f14930L = 0;
                }
                if (i != 163) {
                    m9033a(dngVar, dnzVar, this.f14932N[0]);
                    return;
                }
                while (this.f14930L < this.f14931M) {
                    m9033a(dngVar, dnzVar, this.f14932N[this.f14930L]);
                    m9032a(dnzVar, this.f14928J + ((this.f14930L * dnzVar.f14989d) / 1000));
                    this.f14930L++;
                }
                this.f14927I = 0;
                return;
            case 16981:
                this.f14967x.f14991f = new byte[i2];
                dngVar.mo9058b(this.f14967x.f14991f, 0, i2);
                return;
            case 18402:
                byte[] bArr = new byte[i2];
                dngVar.mo9058b(bArr, 0, i2);
                this.f14967x.f14992g = new dnr(1, bArr);
                return;
            case 21419:
                Arrays.fill(this.f14956m.f15569a, (byte) 0);
                dngVar.mo9058b(this.f14956m.f15569a, 4 - i2, i2);
                this.f14956m.m8733c(0);
                this.f14969z = (int) this.f14956m.m8724j();
                return;
            case 25506:
                this.f14967x.f14993h = new byte[i2];
                dngVar.mo9058b(this.f14967x.f14993h, 0, i2);
                return;
            case 30322:
                this.f14967x.f15000o = new byte[i2];
                dngVar.mo9058b(this.f14967x.f15000o, 0, i2);
                return;
            default:
                throw new zzhi(new StringBuilder(26).append("Unexpected id: ").append(i).toString());
        }
    }

    /* renamed from: a */
    public final void m9039a(int i, long j) {
        boolean z = true;
        switch (i) {
            case 131:
                this.f14967x.f14988c = (int) j;
                return;
            case 136:
                dnz dnzVar = this.f14967x;
                if (j != 1) {
                    z = false;
                }
                dnzVar.f14981L = z;
                return;
            case 155:
                this.f14929K = m9036a(j);
                return;
            case 159:
                this.f14967x.f14976G = (int) j;
                return;
            case 176:
                this.f14967x.f14995j = (int) j;
                return;
            case 179:
                this.f14924F.m8755a(m9036a(j));
                return;
            case 186:
                this.f14967x.f14996k = (int) j;
                return;
            case 215:
                this.f14967x.f14987b = (int) j;
                return;
            case 231:
                this.f14923E = m9036a(j);
                return;
            case 241:
                if (this.f14926H) {
                    return;
                }
                this.f14925G.m8755a(j);
                this.f14926H = true;
                return;
            case 251:
                this.f14946ab = true;
                return;
            case 16980:
                if (j == 3) {
                    return;
                }
                throw new zzhi(new StringBuilder(50).append("ContentCompAlgo ").append(j).append(" not supported").toString());
            case 17029:
                if (j >= 1 && j <= 2) {
                    return;
                }
                throw new zzhi(new StringBuilder(53).append("DocTypeReadVersion ").append(j).append(" not supported").toString());
            case 17143:
                if (j == 1) {
                    return;
                }
                throw new zzhi(new StringBuilder(50).append("EBMLReadVersion ").append(j).append(" not supported").toString());
            case 18401:
                if (j == 5) {
                    return;
                }
                throw new zzhi(new StringBuilder(49).append("ContentEncAlgo ").append(j).append(" not supported").toString());
            case 18408:
                if (j == 1) {
                    return;
                }
                throw new zzhi(new StringBuilder(56).append("AESSettingsCipherMode ").append(j).append(" not supported").toString());
            case 20529:
                if (j == 0) {
                    return;
                }
                throw new zzhi(new StringBuilder(55).append("ContentEncodingOrder ").append(j).append(" not supported").toString());
            case 20530:
                if (j == 1) {
                    return;
                }
                throw new zzhi(new StringBuilder(55).append("ContentEncodingScope ").append(j).append(" not supported").toString());
            case 21420:
                this.f14919A = this.f14963t + j;
                return;
            case 21432:
                switch ((int) j) {
                    case 0:
                        this.f14967x.f15001p = 0;
                        return;
                    case 1:
                        this.f14967x.f15001p = 2;
                        return;
                    case 3:
                        this.f14967x.f15001p = 1;
                        return;
                    case 15:
                        this.f14967x.f15001p = 3;
                        return;
                    default:
                        return;
                }
            case 21680:
                this.f14967x.f14997l = (int) j;
                return;
            case 21682:
                this.f14967x.f14999n = (int) j;
                return;
            case 21690:
                this.f14967x.f14998m = (int) j;
                return;
            case 21930:
                this.f14967x.f14982M = j == 1;
                return;
            case 21945:
                switch ((int) j) {
                    case 1:
                        this.f14967x.f15005t = 2;
                        return;
                    case 2:
                        this.f14967x.f15005t = 1;
                        return;
                    default:
                        return;
                }
            case 21946:
                switch ((int) j) {
                    case 1:
                    case 6:
                    case 7:
                        this.f14967x.f15004s = 3;
                        return;
                    case 16:
                        this.f14967x.f15004s = 6;
                        return;
                    case 18:
                        this.f14967x.f15004s = 7;
                        return;
                    default:
                        return;
                }
            case 21947:
                this.f14967x.f15002q = true;
                switch ((int) j) {
                    case 1:
                        this.f14967x.f15003r = 1;
                        return;
                    case 2:
                    case 3:
                    case 8:
                    default:
                        return;
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                        this.f14967x.f15003r = 2;
                        return;
                    case 9:
                        this.f14967x.f15003r = 6;
                        return;
                }
            case 21948:
                this.f14967x.f15006u = (int) j;
                return;
            case 21949:
                this.f14967x.f15007v = (int) j;
                return;
            case 22186:
                this.f14967x.f14979J = j;
                return;
            case 22203:
                this.f14967x.f14980K = j;
                return;
            case 25188:
                this.f14967x.f14977H = (int) j;
                return;
            case 2352003:
                this.f14967x.f14989d = (int) j;
                return;
            case 2807729:
                this.f14964u = j;
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public final void m9038a(int i, long j, long j2) {
        switch (i) {
            case 160:
                this.f14946ab = false;
                return;
            case 174:
                this.f14967x = new dnz(null);
                return;
            case 187:
                this.f14926H = false;
                return;
            case 19899:
                this.f14969z = -1;
                this.f14919A = -1L;
                return;
            case 20533:
                this.f14967x.f14990e = true;
                return;
            case 21968:
                this.f14967x.f15002q = true;
                return;
            case 25152:
            default:
                return;
            case 408125543:
                if (this.f14963t != -1 && this.f14963t != j) {
                    throw new zzhi("Multiple Segment elements not supported");
                }
                this.f14963t = j;
                this.f14962s = j2;
                return;
            case 475249515:
                this.f14924F = new dse();
                this.f14925G = new dse();
                return;
            case 524531317:
                if (this.f14968y) {
                    return;
                }
                if (this.f14951h && this.f14921C != -1) {
                    this.f14920B = true;
                    return;
                }
                this.f14947ac.mo8926a(new dnp(this.f14966w));
                this.f14968y = true;
                return;
        }
    }

    /* renamed from: a */
    public final void m9037a(int i, String str) {
        switch (i) {
            case 134:
                this.f14967x.f14986a = str;
                return;
            case 17026:
                if (!"webm".equals(str) && !"matroska".equals(str)) {
                    throw new zzhi(new StringBuilder(String.valueOf(str).length() + 22).append("DocType ").append(str).append(" not supported").toString());
                }
                return;
            case 2274716:
                this.f14967x.f14985P = str;
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final void mo8987a(long j, long j2) {
        this.f14923E = -9223372036854775807L;
        this.f14927I = 0;
        this.f14948e.mo9046a();
        this.f14949f.m9014a();
        m9030b();
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final void mo8984a(dnj dnjVar) {
        this.f14947ac = dnjVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final boolean mo8986a(dng dngVar) {
        return new doc().m9009a(dngVar);
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: c */
    public final void mo8981c() {
    }

    /* renamed from: c */
    public final void m9028c(int i) {
        dnf dnfVar;
        switch (i) {
            case 160:
                if (this.f14927I != 2) {
                    return;
                }
                if (!this.f14946ab) {
                    this.f14935Q |= 1;
                }
                m9032a(this.f14950g.get(this.f14933O), this.f14928J);
                this.f14927I = 0;
                return;
            case 174:
                String str = this.f14967x.f14986a;
                if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                    this.f14967x.m9027a(this.f14947ac, this.f14967x.f14987b);
                    this.f14950g.put(this.f14967x.f14987b, this.f14967x);
                }
                this.f14967x = null;
                return;
            case 19899:
                if (this.f14969z == -1 || this.f14919A == -1) {
                    throw new zzhi("Mandatory element SeekID or SeekPosition not found");
                }
                if (this.f14969z != 475249515) {
                    return;
                }
                this.f14921C = this.f14919A;
                return;
            case 25152:
                if (!this.f14967x.f14990e) {
                    return;
                }
                if (this.f14967x.f14992g == null) {
                    throw new zzhi("Encrypted Track found but ContentEncKeyID was not found");
                }
                this.f14967x.f14994i = new dmw(new dmw.C3005a(dkr.f14537b, "video/webm", this.f14967x.f14992g.f14910b));
                return;
            case 28032:
                if (this.f14967x.f14990e && this.f14967x.f14991f != null) {
                    throw new zzhi("Combining encryption and compression is not supported");
                }
                return;
            case 357149030:
                if (this.f14964u == -9223372036854775807L) {
                    this.f14964u = 1000000L;
                }
                if (this.f14965v == -9223372036854775807L) {
                    return;
                }
                this.f14966w = m9036a(this.f14965v);
                return;
            case 374648427:
                if (this.f14950g.size() == 0) {
                    throw new zzhi("No valid tracks were found");
                }
                this.f14947ac.mo8931a();
                return;
            case 475249515:
                if (this.f14968y) {
                    return;
                }
                dnj dnjVar = this.f14947ac;
                if (this.f14963t == -1 || this.f14966w == -9223372036854775807L || this.f14924F == null || this.f14924F.m8757a() == 0 || this.f14925G == null || this.f14925G.m8757a() != this.f14924F.m8757a()) {
                    this.f14924F = null;
                    this.f14925G = null;
                    dnfVar = new dnp(this.f14966w);
                } else {
                    int m8757a = this.f14924F.m8757a();
                    int[] iArr = new int[m8757a];
                    long[] jArr = new long[m8757a];
                    long[] jArr2 = new long[m8757a];
                    long[] jArr3 = new long[m8757a];
                    for (int i2 = 0; i2 < m8757a; i2++) {
                        jArr3[i2] = this.f14924F.m8756a(i2);
                        jArr[i2] = this.f14963t + this.f14925G.m8756a(i2);
                    }
                    for (int i3 = 0; i3 < m8757a - 1; i3++) {
                        iArr[i3] = (int) (jArr[i3 + 1] - jArr[i3]);
                        jArr2[i3] = jArr3[i3 + 1] - jArr3[i3];
                    }
                    iArr[m8757a - 1] = (int) ((this.f14963t + this.f14962s) - jArr[m8757a - 1]);
                    jArr2[m8757a - 1] = this.f14966w - jArr3[m8757a - 1];
                    this.f14924F = null;
                    this.f14925G = null;
                    dnfVar = new dnf(iArr, jArr, jArr2, jArr3);
                }
                dnjVar.mo8926a(dnfVar);
                this.f14968y = true;
                return;
            default:
                return;
        }
    }
}
