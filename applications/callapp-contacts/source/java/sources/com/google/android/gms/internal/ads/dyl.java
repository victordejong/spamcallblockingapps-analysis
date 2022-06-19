package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyl.class */
public final class dyl implements dxv {

    /* renamed from: F */
    private static final dxw f48007F = new dyk();

    /* renamed from: G */
    private static final byte[] f48008G = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: H */
    private static final byte[] f48009H = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: I */
    private static final UUID f48010I = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    int f48011A;

    /* renamed from: B */
    int f48012B;

    /* renamed from: C */
    int f48013C;

    /* renamed from: D */
    boolean f48014D;

    /* renamed from: E */
    dxx f48015E;

    /* renamed from: J */
    private final dyj f48016J;

    /* renamed from: K */
    private final ecy f48017K;

    /* renamed from: L */
    private final ecy f48018L;

    /* renamed from: M */
    private final ecy f48019M;

    /* renamed from: N */
    private final ecy f48020N;

    /* renamed from: O */
    private final ecy f48021O;

    /* renamed from: P */
    private final ecy f48022P;

    /* renamed from: Q */
    private final ecy f48023Q;

    /* renamed from: R */
    private ByteBuffer f48024R;

    /* renamed from: S */
    private long f48025S;

    /* renamed from: T */
    private int f48026T;

    /* renamed from: U */
    private boolean f48027U;

    /* renamed from: V */
    private boolean f48028V;

    /* renamed from: W */
    private boolean f48029W;

    /* renamed from: X */
    private boolean f48030X;

    /* renamed from: Y */
    private byte f48031Y;

    /* renamed from: Z */
    private int f48032Z;

    /* renamed from: a */
    final dyo f48033a;

    /* renamed from: aa */
    private int f48034aa;

    /* renamed from: ab */
    private int f48035ab;

    /* renamed from: ac */
    private boolean f48036ac;

    /* renamed from: b */
    final SparseArray<dym> f48037b;

    /* renamed from: c */
    final boolean f48038c;

    /* renamed from: d */
    final ecy f48039d;

    /* renamed from: e */
    final ecy f48040e;

    /* renamed from: f */
    long f48041f;

    /* renamed from: g */
    long f48042g;

    /* renamed from: h */
    long f48043h;

    /* renamed from: i */
    long f48044i;

    /* renamed from: j */
    long f48045j;

    /* renamed from: k */
    dym f48046k;

    /* renamed from: l */
    boolean f48047l;

    /* renamed from: m */
    int f48048m;

    /* renamed from: n */
    long f48049n;

    /* renamed from: o */
    boolean f48050o;

    /* renamed from: p */
    long f48051p;

    /* renamed from: q */
    long f48052q;

    /* renamed from: r */
    ecs f48053r;

    /* renamed from: s */
    ecs f48054s;

    /* renamed from: t */
    boolean f48055t;

    /* renamed from: u */
    int f48056u;

    /* renamed from: v */
    long f48057v;

    /* renamed from: w */
    long f48058w;

    /* renamed from: x */
    int f48059x;

    /* renamed from: y */
    int f48060y;

    /* renamed from: z */
    int[] f48061z;

    public dyl() {
        this(0);
    }

    private dyl(int i) {
        this(new dye(), 0);
    }

    private dyl(dyj dyjVar, int i) {
        this.f48042g = -1L;
        this.f48043h = -9223372036854775807L;
        this.f48044i = -9223372036854775807L;
        this.f48045j = -9223372036854775807L;
        this.f48051p = -1L;
        this.f48025S = -1L;
        this.f48052q = -9223372036854775807L;
        this.f48016J = dyjVar;
        dyjVar.mo15482a(new dyn(this, null));
        this.f48038c = true;
        this.f48033a = new dyo();
        this.f48037b = new SparseArray<>();
        this.f48039d = new ecy(4);
        this.f48019M = new ecy(ByteBuffer.allocate(4).putInt(-1).array());
        this.f48040e = new ecy(4);
        this.f48017K = new ecy(ecx.f48720a);
        this.f48018L = new ecy(4);
        this.f48020N = new ecy();
        this.f48021O = new ecy();
        this.f48022P = new ecy(8);
        this.f48023Q = new ecy();
    }

    /* renamed from: a */
    public static int m15480a(int i) {
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
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
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
                return 1;
            case 161:
            case 163:
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
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: a */
    private final int m15477a(dxt dxtVar, dyc dycVar, int i) throws IOException, InterruptedException {
        int i2;
        int m15229b = this.f48020N.m15229b();
        if (m15229b > 0) {
            i2 = Math.min(i, m15229b);
            dycVar.mo15328a(this.f48020N, i2);
        } else {
            i2 = dycVar.mo15329a(dxtVar, i);
        }
        this.f48026T += i2;
        this.f48035ab += i2;
        return i2;
    }

    /* renamed from: a */
    public static int[] m15474a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    /* renamed from: b */
    private final void m15473b() {
        this.f48026T = 0;
        this.f48035ab = 0;
        this.f48034aa = 0;
        this.f48027U = false;
        this.f48028V = false;
        this.f48030X = false;
        this.f48032Z = 0;
        this.f48031Y = (byte) 0;
        this.f48029W = false;
        this.f48020N.m15233a();
    }

    /* renamed from: b */
    public static boolean m15472b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0007 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo15419a(com.google.android.gms.internal.ads.dxt r6, com.google.android.gms.internal.ads.dyb r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r0.f48036ac = r1
            r0 = 1
            r8 = r0
        L7:
            r0 = r8
            if (r0 == 0) goto L81
            r0 = r5
            boolean r0 = r0.f48036ac
            if (r0 != 0) goto L81
            r0 = r5
            com.google.android.gms.internal.ads.dyj r0 = r0.f48016J
            r1 = r6
            boolean r0 = r0.mo15483a(r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L7
            r0 = r6
            long r0 = r0.mo15495b()
            r10 = r0
            r0 = r5
            boolean r0 = r0.f48050o
            if (r0 == 0) goto L4e
            r0 = r5
            r1 = r10
            r0.f48025S = r1
            r0 = r7
            r1 = r5
            long r1 = r1.f48051p
            r0.f47994a = r1
            r0 = r5
            r1 = 0
            r0.f48050o = r1
        L48:
            r0 = 1
            r12 = r0
            goto L77
        L4e:
            r0 = r5
            boolean r0 = r0.f48047l
            if (r0 == 0) goto L74
            r0 = r5
            long r0 = r0.f48025S
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L74
            r0 = r7
            r1 = r10
            r0.f47994a = r1
            r0 = r5
            r1 = -1
            r0.f48025S = r1
            goto L48
        L74:
            r0 = 0
            r12 = r0
        L77:
            r0 = r9
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L7
            r0 = 1
            return r0
        L81:
            r0 = r8
            if (r0 == 0) goto L87
            r0 = 0
            return r0
        L87:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyl.mo15419a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    /* renamed from: a */
    public final long m15479a(long j) throws zzhw {
        long j2 = this.f48043h;
        if (j2 != -9223372036854775807L) {
            return ede.m15196a(j, j2, 1000L);
        }
        throw new zzhw("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15421a(long j, long j2) {
        this.f48052q = -9223372036854775807L;
        this.f48056u = 0;
        this.f48016J.mo15484a();
        this.f48033a.m15460a();
        m15473b();
    }

    /* renamed from: a */
    public final void m15478a(dxt dxtVar, int i) throws IOException, InterruptedException {
        if (this.f48039d.f48726c >= i) {
            return;
        }
        if (this.f48039d.m15227c() < i) {
            ecy ecyVar = this.f48039d;
            ecyVar.m15231a(Arrays.copyOf(ecyVar.f48724a, Math.max(this.f48039d.f48724a.length << 1, i)), this.f48039d.f48726c);
        }
        dxtVar.mo15493b(this.f48039d.f48724a, this.f48039d.f48726c, i - this.f48039d.f48726c);
        this.f48039d.m15228b(i);
    }

    /* renamed from: a */
    public final void m15476a(dxt dxtVar, dym dymVar, int i) throws IOException, InterruptedException {
        int i2;
        int i3;
        if ("S_TEXT/UTF8".equals(dymVar.f48078a)) {
            byte[] bArr = f48008G;
            int length = bArr.length + i;
            if (this.f48021O.m15227c() < length) {
                this.f48021O.f48724a = Arrays.copyOf(bArr, length + i);
            }
            dxtVar.mo15493b(this.f48021O.f48724a, bArr.length, i);
            this.f48021O.m15226c(0);
            this.f48021O.m15228b(length);
            return;
        }
        dyc dycVar = dymVar.f48076O;
        if (!this.f48027U) {
            if (dymVar.f48082e) {
                this.f48013C &= -1073741825;
                int i4 = 128;
                if (!this.f48028V) {
                    dxtVar.mo15493b(this.f48039d.f48724a, 0, 1);
                    this.f48026T++;
                    if ((this.f48039d.f48724a[0] & 128) == 128) {
                        throw new zzhw("Extension bit is set in signal byte");
                    }
                    this.f48031Y = this.f48039d.f48724a[0];
                    this.f48028V = true;
                }
                byte b = this.f48031Y;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.f48013C |= 1073741824;
                    if (!this.f48029W) {
                        dxtVar.mo15493b(this.f48022P.f48724a, 0, 8);
                        this.f48026T += 8;
                        this.f48029W = true;
                        byte[] bArr2 = this.f48039d.f48724a;
                        if (!z) {
                            i4 = 0;
                        }
                        bArr2[0] = (byte) (i4 | 8);
                        this.f48039d.m15226c(0);
                        dycVar.mo15328a(this.f48039d, 1);
                        this.f48035ab++;
                        this.f48022P.m15226c(0);
                        dycVar.mo15328a(this.f48022P, 8);
                        this.f48035ab += 8;
                    }
                    if (z) {
                        if (!this.f48030X) {
                            dxtVar.mo15493b(this.f48039d.f48724a, 0, 1);
                            this.f48026T++;
                            this.f48039d.m15226c(0);
                            this.f48032Z = this.f48039d.m15225d();
                            this.f48030X = true;
                        }
                        int i5 = this.f48032Z << 2;
                        this.f48039d.m15232a(i5);
                        dxtVar.mo15493b(this.f48039d.f48724a, 0, i5);
                        this.f48026T += i5;
                        short s = (short) ((this.f48032Z / 2) + 1);
                        int i6 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.f48024R;
                        if (byteBuffer == null || byteBuffer.capacity() < i6) {
                            this.f48024R = ByteBuffer.allocate(i6);
                        }
                        this.f48024R.position(0);
                        this.f48024R.putShort(s);
                        int i7 = 0;
                        int i8 = 0;
                        while (true) {
                            i2 = i8;
                            i3 = this.f48032Z;
                            if (i7 >= i3) {
                                break;
                            }
                            int m15218i = this.f48039d.m15218i();
                            if (i7 % 2 == 0) {
                                this.f48024R.putShort((short) (m15218i - i2));
                            } else {
                                this.f48024R.putInt(m15218i - i2);
                            }
                            i7++;
                            i8 = m15218i;
                        }
                        int i9 = (i - this.f48026T) - i2;
                        if (i3 % 2 == 1) {
                            this.f48024R.putInt(i9);
                        } else {
                            this.f48024R.putShort((short) i9);
                            this.f48024R.putInt(0);
                        }
                        this.f48023Q.m15231a(this.f48024R.array(), i6);
                        dycVar.mo15328a(this.f48023Q, i6);
                        this.f48035ab += i6;
                    }
                }
            } else if (dymVar.f48083f != null) {
                this.f48020N.m15231a(dymVar.f48083f, dymVar.f48083f.length);
            }
            this.f48027U = true;
        }
        int i10 = i + this.f48020N.f48726c;
        if (!"V_MPEG4/ISO/AVC".equals(dymVar.f48078a) && !"V_MPEGH/ISO/HEVC".equals(dymVar.f48078a)) {
            while (true) {
                int i11 = this.f48026T;
                if (i11 >= i10) {
                    break;
                }
                m15477a(dxtVar, dycVar, i10 - i11);
            }
        } else {
            byte[] bArr3 = this.f48018L.f48724a;
            bArr3[0] = (byte) 0;
            bArr3[1] = (byte) 0;
            bArr3[2] = (byte) 0;
            int i12 = dymVar.f48077P;
            int i13 = 4 - dymVar.f48077P;
            while (this.f48026T < i10) {
                int i14 = this.f48034aa;
                if (i14 == 0) {
                    int min = Math.min(i12, this.f48020N.m15229b());
                    dxtVar.mo15493b(bArr3, i13 + min, i12 - min);
                    if (min > 0) {
                        this.f48020N.m15230a(bArr3, i13, min);
                    }
                    this.f48026T += i12;
                    this.f48018L.m15226c(0);
                    this.f48034aa = this.f48018L.m15218i();
                    this.f48017K.m15226c(0);
                    dycVar.mo15328a(this.f48017K, 4);
                    this.f48035ab += 4;
                } else {
                    this.f48034aa = i14 - m15477a(dxtVar, dycVar, i14);
                }
            }
        }
        if (!"A_VORBIS".equals(dymVar.f48078a)) {
            return;
        }
        this.f48019M.m15226c(0);
        dycVar.mo15328a(this.f48019M, 4);
        this.f48035ab += 4;
    }

    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final void mo15418a(dxx dxxVar) {
        this.f48015E = dxxVar;
    }

    /* renamed from: a */
    public final void m15475a(dym dymVar, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(dymVar.f48078a)) {
            byte[] bArr2 = this.f48021O.f48724a;
            long j2 = this.f48058w;
            if (j2 == -9223372036854775807L) {
                bArr = f48009H;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = ede.m15186b(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            dyc dycVar = dymVar.f48076O;
            ecy ecyVar = this.f48021O;
            dycVar.mo15328a(ecyVar, ecyVar.f48726c);
            this.f48035ab += this.f48021O.f48726c;
        }
        dymVar.f48076O.mo15332a(j, this.f48013C, this.f48035ab, 0, dymVar.f48084g);
        this.f48036ac = true;
        m15473b();
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    @Override // com.google.android.gms.internal.ads.dxv
    /* renamed from: a */
    public final boolean mo15420a(dxt dxtVar) throws IOException, InterruptedException {
        long m15456a;
        int i;
        dyp dypVar = new dyp();
        ?? mo15492c = dxtVar.mo15492c();
        int i2 = (mo15492c > (-1L) ? 1 : (mo15492c == (-1L) ? 0 : -1));
        char c = 1024;
        if (i2 != 0) {
            c = mo15492c > 1024 ? (char) 1024 : mo15492c;
        }
        int i3 = c;
        dxtVar.mo15490c(dypVar.f48109a.f48724a, 0, 4);
        dypVar.f48110b = 4;
        for (char m15221f = dypVar.f48109a.m15221f(); m15221f != 440786851; m15221f = ((m15221f << '\b') & (-256)) | (dypVar.f48109a.f48724a[0] & 255)) {
            int i4 = dypVar.f48110b + 1;
            dypVar.f48110b = i4;
            if (i4 == i3) {
                return false;
            }
            dxtVar.mo15490c(dypVar.f48109a.f48724a, 0, 1);
        }
        long m15456a2 = dypVar.m15456a(dxtVar);
        long j = dypVar.f48110b;
        if (m15456a2 != Long.MIN_VALUE) {
            if (i2 != 0 && j + m15456a2 >= mo15492c) {
                return false;
            }
            while (true) {
                long j2 = dypVar.f48110b;
                long j3 = j + m15456a2;
                if (j2 >= j3) {
                    return ((long) dypVar.f48110b) == j3;
                } else if (dypVar.m15456a(dxtVar) == Long.MIN_VALUE || (m15456a = dypVar.m15456a(dxtVar)) < 0 || m15456a > 2147483647L) {
                    return false;
                } else {
                    if (i != 0) {
                        dxtVar.mo15491c((int) m15456a);
                        dypVar.f48110b = (int) (dypVar.f48110b + m15456a);
                    }
                }
            }
        } else {
            return false;
        }
    }
}
