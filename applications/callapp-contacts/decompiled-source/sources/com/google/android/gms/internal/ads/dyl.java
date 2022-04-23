package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dyl.class */
public final class dyl implements dxv {
    private static final dxw F = new dyk();
    private static final byte[] G = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] H = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};
    private static final UUID I = new UUID(72057594037932032L, -9223371306706625679L);
    int A;
    int B;
    int C;
    boolean D;
    dxx E;
    private final dyj J;
    private final ecy K;
    private final ecy L;
    private final ecy M;
    private final ecy N;
    private final ecy O;
    private final ecy P;
    private final ecy Q;
    private ByteBuffer R;
    private long S;
    private int T;
    private boolean U;
    private boolean V;
    private boolean W;
    private boolean X;
    private byte Y;
    private int Z;

    /* renamed from: a  reason: collision with root package name */
    final dyo f27400a;
    private int aa;
    private int ab;
    private boolean ac;

    /* renamed from: b  reason: collision with root package name */
    final SparseArray<dym> f27401b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f27402c;

    /* renamed from: d  reason: collision with root package name */
    final ecy f27403d;
    final ecy e;
    long f;
    long g;
    long h;
    long i;
    long j;
    dym k;
    boolean l;
    int m;
    long n;
    boolean o;
    long p;
    long q;
    ecs r;
    ecs s;
    boolean t;
    int u;
    long v;
    long w;
    int x;
    int y;
    int[] z;

    public dyl() {
        this(0);
    }

    private dyl(int i) {
        this(new dye(), 0);
    }

    private dyl(dyj dyjVar, int i) {
        this.g = -1L;
        this.h = -9223372036854775807L;
        this.i = -9223372036854775807L;
        this.j = -9223372036854775807L;
        this.p = -1L;
        this.S = -1L;
        this.q = -9223372036854775807L;
        this.J = dyjVar;
        dyjVar.a(new dyn(this, null));
        this.f27402c = true;
        this.f27400a = new dyo();
        this.f27401b = new SparseArray<>();
        this.f27403d = new ecy(4);
        this.M = new ecy(ByteBuffer.allocate(4).putInt(-1).array());
        this.e = new ecy(4);
        this.K = new ecy(ecx.f27645a);
        this.L = new ecy(4);
        this.N = new ecy();
        this.O = new ecy();
        this.P = new ecy(8);
        this.Q = new ecy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i) {
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

    private final int a(dxt dxtVar, dyc dycVar, int i) throws IOException, InterruptedException {
        int i2;
        int b2 = this.N.b();
        if (b2 > 0) {
            i2 = Math.min(i, b2);
            dycVar.a(this.N, i2);
        } else {
            i2 = dycVar.a(dxtVar, i);
        }
        this.T += i2;
        this.ab += i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int[] a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    private final void b() {
        this.T = 0;
        this.ab = 0;
        this.aa = 0;
        this.U = false;
        this.V = false;
        this.X = false;
        this.Z = 0;
        this.Y = (byte) 0;
        this.W = false;
        this.N.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0007 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dxv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.google.android.gms.internal.ads.dxt r6, com.google.android.gms.internal.ads.dyb r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r0.ac = r1
            r0 = 1
            r8 = r0
        L_0x0007:
            r0 = r8
            if (r0 == 0) goto L_0x0081
            r0 = r5
            boolean r0 = r0.ac
            if (r0 != 0) goto L_0x0081
            r0 = r5
            com.google.android.gms.internal.ads.dyj r0 = r0.J
            r1 = r6
            boolean r0 = r0.a(r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0007
            r0 = r6
            long r0 = r0.b()
            r10 = r0
            r0 = r5
            boolean r0 = r0.o
            if (r0 == 0) goto L_0x004e
            r0 = r5
            r1 = r10
            r0.S = r1
            r0 = r7
            r1 = r5
            long r1 = r1.p
            r0.f27390a = r1
            r0 = r5
            r1 = 0
            r0.o = r1
        L_0x0048:
            r0 = 1
            r12 = r0
            goto L_0x0077
        L_0x004e:
            r0 = r5
            boolean r0 = r0.l
            if (r0 == 0) goto L_0x0074
            r0 = r5
            long r0 = r0.S
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0074
            r0 = r7
            r1 = r10
            r0.f27390a = r1
            r0 = r5
            r1 = -1
            r0.S = r1
            goto L_0x0048
        L_0x0074:
            r0 = 0
            r12 = r0
        L_0x0077:
            r0 = r9
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0007
            r0 = 1
            return r0
        L_0x0081:
            r0 = r8
            if (r0 == 0) goto L_0x0087
            r0 = 0
            return r0
        L_0x0087:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyl.a(com.google.android.gms.internal.ads.dxt, com.google.android.gms.internal.ads.dyb):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a(long j) throws zzhw {
        long j2 = this.h;
        if (j2 != -9223372036854775807L) {
            return ede.a(j, j2, 1000L);
        }
        throw new zzhw("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(long j, long j2) {
        this.q = -9223372036854775807L;
        this.u = 0;
        this.J.a();
        this.f27400a.a();
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(dxt dxtVar, int i) throws IOException, InterruptedException {
        if (this.f27403d.f27651c < i) {
            if (this.f27403d.c() < i) {
                ecy ecyVar = this.f27403d;
                ecyVar.a(Arrays.copyOf(ecyVar.f27649a, Math.max(this.f27403d.f27649a.length << 1, i)), this.f27403d.f27651c);
            }
            dxtVar.b(this.f27403d.f27649a, this.f27403d.f27651c, i - this.f27403d.f27651c);
            this.f27403d.b(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(dxt dxtVar, dym dymVar, int i) throws IOException, InterruptedException {
        int i2;
        if ("S_TEXT/UTF8".equals(dymVar.f27404a)) {
            byte[] bArr = G;
            int length = bArr.length + i;
            if (this.O.c() < length) {
                this.O.f27649a = Arrays.copyOf(bArr, length + i);
            }
            dxtVar.b(this.O.f27649a, bArr.length, i);
            this.O.c(0);
            this.O.b(length);
            return;
        }
        dyc dycVar = dymVar.O;
        if (!this.U) {
            if (dymVar.e) {
                this.C &= -1073741825;
                int i3 = 128;
                if (!this.V) {
                    dxtVar.b(this.f27403d.f27649a, 0, 1);
                    this.T++;
                    if ((this.f27403d.f27649a[0] & 128) != 128) {
                        this.Y = this.f27403d.f27649a[0];
                        this.V = true;
                    } else {
                        throw new zzhw("Extension bit is set in signal byte");
                    }
                }
                byte b2 = this.Y;
                if ((b2 & 1) == 1) {
                    boolean z = (b2 & 2) == 2;
                    this.C |= 1073741824;
                    if (!this.W) {
                        dxtVar.b(this.P.f27649a, 0, 8);
                        this.T += 8;
                        this.W = true;
                        byte[] bArr2 = this.f27403d.f27649a;
                        if (!z) {
                            i3 = 0;
                        }
                        bArr2[0] = (byte) (i3 | 8);
                        this.f27403d.c(0);
                        dycVar.a(this.f27403d, 1);
                        this.ab++;
                        this.P.c(0);
                        dycVar.a(this.P, 8);
                        this.ab += 8;
                    }
                    if (z) {
                        if (!this.X) {
                            dxtVar.b(this.f27403d.f27649a, 0, 1);
                            this.T++;
                            this.f27403d.c(0);
                            this.Z = this.f27403d.d();
                            this.X = true;
                        }
                        int i4 = this.Z << 2;
                        this.f27403d.a(i4);
                        dxtVar.b(this.f27403d.f27649a, 0, i4);
                        this.T += i4;
                        short s = (short) ((this.Z / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.R;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.R = ByteBuffer.allocate(i5);
                        }
                        this.R.position(0);
                        this.R.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i2 = this.Z;
                            if (i6 >= i2) {
                                break;
                            }
                            int i8 = this.f27403d.i();
                            if (i6 % 2 == 0) {
                                this.R.putShort((short) (i8 - i7));
                            } else {
                                this.R.putInt(i8 - i7);
                            }
                            i6++;
                            i7 = i8;
                        }
                        int i9 = (i - this.T) - i7;
                        if (i2 % 2 == 1) {
                            this.R.putInt(i9);
                        } else {
                            this.R.putShort((short) i9);
                            this.R.putInt(0);
                        }
                        this.Q.a(this.R.array(), i5);
                        dycVar.a(this.Q, i5);
                        this.ab += i5;
                    }
                }
            } else if (dymVar.f != null) {
                this.N.a(dymVar.f, dymVar.f.length);
            }
            this.U = true;
        }
        int i10 = i + this.N.f27651c;
        if (!"V_MPEG4/ISO/AVC".equals(dymVar.f27404a) && !"V_MPEGH/ISO/HEVC".equals(dymVar.f27404a)) {
            while (true) {
                int i11 = this.T;
                if (i11 >= i10) {
                    break;
                }
                a(dxtVar, dycVar, i10 - i11);
            }
        } else {
            byte[] bArr3 = this.L.f27649a;
            bArr3[0] = (byte) 0;
            bArr3[1] = (byte) 0;
            bArr3[2] = (byte) 0;
            int i12 = dymVar.P;
            int i13 = 4 - dymVar.P;
            while (this.T < i10) {
                int i14 = this.aa;
                if (i14 == 0) {
                    int min = Math.min(i12, this.N.b());
                    dxtVar.b(bArr3, i13 + min, i12 - min);
                    if (min > 0) {
                        this.N.a(bArr3, i13, min);
                    }
                    this.T += i12;
                    this.L.c(0);
                    this.aa = this.L.i();
                    this.K.c(0);
                    dycVar.a(this.K, 4);
                    this.ab += 4;
                } else {
                    this.aa = i14 - a(dxtVar, dycVar, i14);
                }
            }
        }
        if ("A_VORBIS".equals(dymVar.f27404a)) {
            this.M.c(0);
            dycVar.a(this.M, 4);
            this.ab += 4;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxv
    public final void a(dxx dxxVar) {
        this.E = dxxVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(dym dymVar, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(dymVar.f27404a)) {
            byte[] bArr2 = this.O.f27649a;
            long j2 = this.w;
            if (j2 == -9223372036854775807L) {
                bArr = H;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = ede.b(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            dyc dycVar = dymVar.O;
            ecy ecyVar = this.O;
            dycVar.a(ecyVar, ecyVar.f27651c);
            this.ab += this.O.f27651c;
        }
        dymVar.O.a(j, this.C, this.ab, 0, dymVar.g);
        this.ac = true;
        b();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.dxv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.internal.ads.dxt r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dyl.a(com.google.android.gms.internal.ads.dxt):boolean");
    }
}
