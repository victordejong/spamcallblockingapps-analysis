package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.android.gms.internal.ads.dpi;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dof.class */
public final class dof {

    /* renamed from: a */
    private static final int f15116a = dsn.m8694d("vide");

    /* renamed from: b */
    private static final int f15117b = dsn.m8694d("soun");

    /* renamed from: c */
    private static final int f15118c = dsn.m8694d("text");

    /* renamed from: d */
    private static final int f15119d = dsn.m8694d("sbtl");

    /* renamed from: e */
    private static final int f15120e = dsn.m8694d("subt");

    /* renamed from: f */
    private static final int f15121f = dsn.m8694d("clcp");

    /* renamed from: g */
    private static final int f15122g = dsn.m8694d("cenc");

    /* renamed from: h */
    private static final int f15123h = dsn.m8694d("meta");

    /* renamed from: a */
    private static int m8999a(dsk dskVar) {
        int m8728f = dskVar.m8728f();
        int i = m8728f & 127;
        while (true) {
            int i2 = i;
            if ((m8728f & 128) == 128) {
                m8728f = dskVar.m8728f();
                i = (i2 << 7) | (m8728f & 127);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: a */
    private static int m8997a(dsk dskVar, int i, int i2, dok dokVar, int i3) {
        int i4;
        Pair pair;
        Integer num;
        boolean z;
        int m8732d = dskVar.m8732d();
        while (true) {
            int i5 = m8732d;
            if (i5 - i >= i2) {
                i4 = 0;
                break;
            }
            dskVar.m8733c(i5);
            int m8722l = dskVar.m8722l();
            drz.m8771a(m8722l > 0, "childAtomSize should be positive");
            if (dskVar.m8722l() == doe.f15037P) {
                boolean z2 = false;
                dox doxVar = null;
                Integer num2 = null;
                int i6 = i5 + 8;
                while (i6 - i5 < m8722l) {
                    dskVar.m8733c(i6);
                    int m8722l2 = dskVar.m8722l();
                    int m8722l3 = dskVar.m8722l();
                    if (m8722l3 == doe.f15043V) {
                        num = Integer.valueOf(dskVar.m8722l());
                        z = z2;
                    } else if (m8722l3 == doe.f15038Q) {
                        dskVar.m8731d(4);
                        if (dskVar.m8722l() == f15122g) {
                            z = true;
                            num = num2;
                        } else {
                            z = false;
                            num = num2;
                        }
                    } else {
                        num = num2;
                        z = z2;
                        if (m8722l3 == doe.f15039R) {
                            int i7 = i6;
                            int i8 = 8;
                            while (true) {
                                int i9 = i7 + i8;
                                if (i9 - i6 >= m8722l2) {
                                    doxVar = null;
                                    num = num2;
                                    z = z2;
                                    break;
                                }
                                dskVar.m8733c(i9);
                                int m8722l4 = dskVar.m8722l();
                                if (dskVar.m8722l() == doe.f15040S) {
                                    dskVar.m8731d(6);
                                    boolean z3 = dskVar.m8728f() == 1;
                                    int m8728f = dskVar.m8728f();
                                    byte[] bArr = new byte[16];
                                    dskVar.m8737a(bArr, 0, 16);
                                    doxVar = new dox(z3, m8728f, bArr);
                                    num = num2;
                                    z = z2;
                                } else {
                                    i7 = i9;
                                    i8 = m8722l4;
                                }
                            }
                        }
                    }
                    i6 += m8722l2;
                    num2 = num;
                    z2 = z;
                }
                if (z2) {
                    drz.m8771a(num2 != null, "frma atom is mandatory");
                    drz.m8771a(doxVar != null, "schi->tenc atom is mandatory");
                    pair = Pair.create(num2, doxVar);
                } else {
                    pair = null;
                }
                if (pair != null) {
                    dokVar.f15137a[i3] = (dox) pair.second;
                    i4 = ((Integer) pair.first).intValue();
                    break;
                }
            }
            m8732d = i5 + m8722l;
        }
        return i4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static Pair<String, byte[]> m8998a(dsk dskVar, int i) {
        Pair<String, byte[]> create;
        Object obj = null;
        dskVar.m8733c(i + 8 + 4);
        dskVar.m8731d(1);
        m8999a(dskVar);
        dskVar.m8731d(2);
        int m8728f = dskVar.m8728f();
        if ((m8728f & 128) != 0) {
            dskVar.m8731d(2);
        }
        if ((m8728f & 64) != 0) {
            dskVar.m8731d(dskVar.m8727g());
        }
        if ((m8728f & 32) != 0) {
            dskVar.m8731d(2);
        }
        dskVar.m8731d(1);
        m8999a(dskVar);
        switch (dskVar.m8728f()) {
            case 32:
                obj = "video/mp4v-es";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a = m8999a(dskVar);
                byte[] bArr = new byte[m8999a];
                dskVar.m8737a(bArr, 0, m8999a);
                create = Pair.create(obj, bArr);
                break;
            case 33:
                obj = "video/avc";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a2 = m8999a(dskVar);
                byte[] bArr2 = new byte[m8999a2];
                dskVar.m8737a(bArr2, 0, m8999a2);
                create = Pair.create(obj, bArr2);
                break;
            case 35:
                obj = "video/hevc";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a22 = m8999a(dskVar);
                byte[] bArr22 = new byte[m8999a22];
                dskVar.m8737a(bArr22, 0, m8999a22);
                create = Pair.create(obj, bArr22);
                break;
            case 64:
            case 102:
            case 103:
            case 104:
                obj = "audio/mp4a-latm";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a222 = m8999a(dskVar);
                byte[] bArr222 = new byte[m8999a222];
                dskVar.m8737a(bArr222, 0, m8999a222);
                create = Pair.create(obj, bArr222);
                break;
            case 107:
                create = Pair.create("audio/mpeg", null);
                break;
            case 165:
                obj = "audio/ac3";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a2222 = m8999a(dskVar);
                byte[] bArr2222 = new byte[m8999a2222];
                dskVar.m8737a(bArr2222, 0, m8999a2222);
                create = Pair.create(obj, bArr2222);
                break;
            case 166:
                obj = "audio/eac3";
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a22222 = m8999a(dskVar);
                byte[] bArr22222 = new byte[m8999a22222];
                dskVar.m8737a(bArr22222, 0, m8999a22222);
                create = Pair.create(obj, bArr22222);
                break;
            case 169:
            case 172:
                create = Pair.create("audio/vnd.dts", null);
                break;
            case 170:
            case 171:
                create = Pair.create("audio/vnd.dts.hd", null);
                break;
            default:
                dskVar.m8731d(12);
                dskVar.m8731d(1);
                int m8999a222222 = m8999a(dskVar);
                byte[] bArr222222 = new byte[m8999a222222];
                dskVar.m8737a(bArr222222, 0, m8999a222222);
                create = Pair.create(obj, bArr222222);
                break;
        }
        return create;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0653  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0677 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v173, types: [long] */
    /* JADX WARN: Type inference failed for: r0v178, types: [long] */
    /* JADX WARN: Type inference failed for: r0v185, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    /* JADX WARN: Type inference failed for: r0v566, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.dot m9002a(com.google.android.gms.internal.ads.dod r17, com.google.android.gms.internal.ads.dog r18, long r19, com.google.android.gms.internal.ads.dmw r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 3232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dof.m9002a(com.google.android.gms.internal.ads.dod, com.google.android.gms.internal.ads.dog, long, com.google.android.gms.internal.ads.dmw, boolean):com.google.android.gms.internal.ads.dot");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v103 */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v189, types: [long] */
    /* JADX WARN: Type inference failed for: r0v357, types: [long] */
    /* JADX WARN: Type inference failed for: r0v362, types: [long] */
    /* JADX WARN: Type inference failed for: r0v394, types: [long] */
    /* renamed from: a */
    public static dov m9000a(dot dotVar, dod dodVar, dnl dnlVar) {
        doh domVar;
        int i;
        long[] jArr;
        int[] iArr;
        int i2;
        long[] jArr2;
        int[] iArr2;
        char c;
        dov dovVar;
        int i3;
        boolean z;
        int i4;
        dog m9007a = dodVar.m9007a(doe.f15067ad);
        if (m9007a != null) {
            domVar = new doj(m9007a);
        } else {
            dog m9007a2 = dodVar.m9007a(doe.f15068ae);
            if (m9007a2 == null) {
                throw new zzhi("Track has no sample table size information");
            }
            domVar = new dom(m9007a2);
        }
        int mo8992a = domVar.mo8992a();
        if (mo8992a == 0) {
            dovVar = new dov(new long[0], new int[0], 0, new long[0], new int[0]);
        } else {
            boolean z2 = false;
            dog m9007a3 = dodVar.m9007a(doe.f15069af);
            dog dogVar = m9007a3;
            if (m9007a3 == null) {
                z2 = true;
                dogVar = dodVar.m9007a(doe.f15070ag);
            }
            dsk dskVar = dogVar.f15124a;
            dsk dskVar2 = dodVar.m9007a(doe.f15066ac).f15124a;
            dsk dskVar3 = dodVar.m9007a(doe.f15047Z).f15124a;
            dog m9007a4 = dodVar.m9007a(doe.f15064aa);
            dsk dskVar4 = m9007a4 != null ? m9007a4.f15124a : null;
            dog m9007a5 = dodVar.m9007a(doe.f15065ab);
            dsk dskVar5 = m9007a5 != null ? m9007a5.f15124a : null;
            doi doiVar = new doi(dskVar2, dskVar, z2);
            dskVar3.m8733c(12);
            int m8719o = dskVar3.m8719o() - 1;
            int m8719o2 = dskVar3.m8719o();
            int m8719o3 = dskVar3.m8719o();
            int i5 = 0;
            int i6 = 0;
            if (dskVar5 != null) {
                dskVar5.m8733c(12);
                i6 = dskVar5.m8719o();
            }
            int i7 = 0;
            dsk dskVar6 = dskVar4;
            int i8 = -1;
            if (dskVar4 != null) {
                dskVar4.m8733c(12);
                i7 = dskVar4.m8719o();
                if (i7 > 0) {
                    i8 = dskVar4.m8719o() - 1;
                    dskVar6 = dskVar4;
                } else {
                    dskVar6 = null;
                    i8 = -1;
                }
            }
            char c2 = 0;
            if (!(domVar.mo8990c() && "audio/raw".equals(dotVar.f15210f.f14635c) && m8719o == 0 && i6 == 0 && i7 == 0)) {
                long[] jArr3 = new long[mo8992a];
                int[] iArr3 = new int[mo8992a];
                long[] jArr4 = new long[mo8992a];
                iArr2 = new int[mo8992a];
                char c3 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = i8;
                int i12 = i7;
                int i13 = 0;
                int i14 = 0;
                char c4 = c2;
                while (i10 < mo8992a) {
                    int i15 = i9;
                    char c5 = c3;
                    while (true) {
                        i4 = i15;
                        if (i4 != 0) {
                            break;
                        }
                        drz.m8770b(doiVar.m8996a());
                        c5 = doiVar.f15128d;
                        i15 = doiVar.f15127c;
                    }
                    if (dskVar5 != null) {
                        while (i5 == 0 && i6 > 0) {
                            i5 = dskVar5.m8719o();
                            i14 = dskVar5.m8722l();
                            i6--;
                        }
                        i5--;
                    }
                    jArr3[i10] = c5 == 1 ? 1 : 0;
                    iArr3[i10] = domVar.mo8991b();
                    int i16 = i13;
                    if (iArr3[i10] > i13) {
                        i16 = iArr3[i10];
                    }
                    jArr4[i10] = i14 + c4;
                    iArr2[i10] = dskVar6 == null ? 1 : 0;
                    int i17 = i12;
                    int i18 = i11;
                    if (i10 == i11) {
                        iArr2[i10] = 1;
                        i17 = i12 - 1;
                        i18 = i17 > 0 ? dskVar6.m8719o() - 1 : i11;
                    }
                    c4 += m8719o3;
                    int i19 = m8719o2 - 1;
                    if (i19 == 0 && m8719o > 0) {
                        i19 = dskVar3.m8719o();
                        m8719o3 = dskVar3.m8719o();
                        m8719o--;
                    }
                    c3 = c5 + iArr3[i10];
                    i10++;
                    m8719o2 = i19;
                    i13 = i16;
                    i12 = i17;
                    i11 = i18;
                    i9 = i4 - 1;
                }
                drz.m8772a(i5 == 0);
                while (i6 > 0) {
                    drz.m8772a(dskVar5.m8719o() == 0);
                    dskVar5.m8722l();
                    i6--;
                }
                if (i12 != 0 || m8719o2 != 0 || i9 != 0 || m8719o != 0) {
                    Log.w("AtomParsers", new StringBuilder(215).append("Inconsistent stbl box for track ").append(dotVar.f15205a).append(": remainingSynchronizationSamples ").append(i12).append(", remainingSamplesAtTimestampDelta ").append(m8719o2).append(", remainingSamplesInChunk ").append(i9).append(", remainingTimestampDeltaChanges ").append(m8719o).toString());
                }
                jArr2 = jArr4;
                i2 = i13;
                iArr = iArr3;
                jArr = jArr3;
                c = c4;
            } else {
                long[] jArr5 = new long[doiVar.f15125a];
                int[] iArr4 = new int[doiVar.f15125a];
                while (doiVar.m8996a()) {
                    jArr5[doiVar.f15126b] = doiVar.f15128d;
                    iArr4[doiVar.f15126b] = doiVar.f15127c;
                }
                int mo8991b = domVar.mo8991b();
                long j = m8719o3;
                int i20 = 8192 / mo8991b;
                int length = iArr4.length;
                int i21 = 0;
                int i22 = 0;
                while (true) {
                    i = i22;
                    if (i21 >= length) {
                        break;
                    }
                    i21++;
                    i22 = dsn.m8708a(iArr4[i21], i20) + i;
                }
                long[] jArr6 = new long[i];
                int[] iArr5 = new int[i];
                int i23 = 0;
                long[] jArr7 = new long[i];
                int[] iArr6 = new int[i];
                int i24 = 0;
                int i25 = 0;
                for (int i26 = 0; i26 < iArr4.length; i26++) {
                    int i27 = iArr4[i26];
                    char c6 = jArr5[i26];
                    while (i27 > 0) {
                        int min = Math.min(i20, i27);
                        jArr6[i25] = c6 == 1 ? 1 : 0;
                        iArr5[i25] = mo8991b * min;
                        i23 = Math.max(i23, iArr5[i25]);
                        jArr7[i25] = i24 * j;
                        iArr6[i25] = 1;
                        c6 += iArr5[i25];
                        i24 += min;
                        i27 -= min;
                        i25++;
                    }
                }
                don donVar = new don(jArr6, iArr5, i23, jArr7, iArr6);
                jArr = donVar.f15149a;
                iArr = donVar.f15150b;
                i2 = donVar.f15151c;
                jArr2 = donVar.f15152d;
                iArr2 = donVar.f15153e;
                c = c2;
            }
            if (dotVar.f15212h == null || dnlVar.m9054a()) {
                dsn.m8702a(jArr2, 1000000L, dotVar.f15207c);
                dovVar = new dov(jArr, iArr, i2, jArr2, iArr2);
            } else {
                if (dotVar.f15212h.length == 1 && dotVar.f15206b == 1 && jArr2.length >= 2) {
                    long j2 = dotVar.f15213i[0];
                    long m8706a = dsn.m8706a(dotVar.f15212h[0], dotVar.f15207c, dotVar.f15208d) + j2;
                    if (jArr2[0] <= j2 && j2 < jArr2[1] && jArr2[jArr2.length - 1] < m8706a && m8706a <= c) {
                        long m8706a2 = dsn.m8706a(j2 - jArr2[0], dotVar.f15210f.f14645m, dotVar.f15207c);
                        long m8706a3 = dsn.m8706a(c - m8706a, dotVar.f15210f.f14645m, dotVar.f15207c);
                        if ((m8706a2 != 0 || m8706a3 != 0) && m8706a2 <= 2147483647L && m8706a3 <= 2147483647L) {
                            dnlVar.f14898a = (int) m8706a2;
                            dnlVar.f14899b = (int) m8706a3;
                            dsn.m8702a(jArr2, 1000000L, dotVar.f15207c);
                            dovVar = new dov(jArr, iArr, i2, jArr2, iArr2);
                        }
                    }
                }
                if (dotVar.f15212h.length == 1 && dotVar.f15212h[0] == 0) {
                    for (int i28 = 0; i28 < jArr2.length; i28++) {
                        jArr2[i28] = dsn.m8706a(jArr2[i28] - dotVar.f15213i[0], 1000000L, dotVar.f15207c);
                    }
                    dovVar = new dov(jArr, iArr, i2, jArr2, iArr2);
                } else {
                    boolean z3 = dotVar.f15206b == 1;
                    int i29 = 0;
                    boolean z4 = false;
                    int i30 = 0;
                    int i31 = 0;
                    while (i29 < dotVar.f15212h.length) {
                        long j3 = dotVar.f15213i[i29];
                        if (j3 != -1) {
                            long m8706a4 = dsn.m8706a(dotVar.f15212h[i29], dotVar.f15207c, dotVar.f15208d);
                            int m8696b = dsn.m8696b(jArr2, j3, true, true);
                            int m8696b2 = dsn.m8696b(jArr2, m8706a4 + j3, z3, false);
                            int i32 = i31 + (m8696b2 - m8696b);
                            z = z4 | (i30 != m8696b);
                            i31 = i32;
                            i3 = m8696b2;
                        } else {
                            boolean z5 = z4;
                            i3 = i30;
                            z = z5;
                        }
                        i29++;
                        int i33 = i3;
                        z4 = z;
                        i30 = i33;
                    }
                    boolean z6 = z4 | (i31 != mo8992a);
                    long[] jArr8 = z6 ? new long[i31] : jArr;
                    int[] iArr7 = z6 ? new int[i31] : iArr;
                    if (z6) {
                        i2 = 0;
                    }
                    int[] iArr8 = z6 ? new int[i31] : iArr2;
                    long[] jArr9 = new long[i31];
                    int i34 = 0;
                    char c7 = 0;
                    int i35 = i2;
                    int i36 = 0;
                    while (i34 < dotVar.f15212h.length) {
                        long j4 = dotVar.f15213i[i34];
                        long j5 = dotVar.f15212h[i34];
                        if (j4 != -1) {
                            long m8706a5 = dsn.m8706a(j5, dotVar.f15207c, dotVar.f15208d);
                            int m8696b3 = dsn.m8696b(jArr2, j4, true, true);
                            int m8696b4 = dsn.m8696b(jArr2, j4 + m8706a5, z3, false);
                            if (z6) {
                                int i37 = m8696b4 - m8696b3;
                                System.arraycopy(jArr, m8696b3, jArr8, i36, i37);
                                System.arraycopy(iArr, m8696b3, iArr7, i36, i37);
                                System.arraycopy(iArr2, m8696b3, iArr8, i36, i37);
                            }
                            while (m8696b3 < m8696b4) {
                                jArr9[i36] = dsn.m8706a(jArr2[m8696b3] - j4, 1000000L, dotVar.f15207c) + dsn.m8706a(c7, 1000000L, dotVar.f15208d);
                                int i38 = i35;
                                if (z6) {
                                    i38 = i35;
                                    if (iArr7[i36] > i35) {
                                        i38 = iArr[m8696b3];
                                    }
                                }
                                i36++;
                                m8696b3++;
                                i35 = i38;
                            }
                        }
                        i34++;
                        c7 += j5;
                    }
                    boolean z7 = false;
                    for (int i39 = 0; i39 < iArr8.length && !z7; i39++) {
                        z7 |= (iArr8[i39] & 1) != 0;
                    }
                    if (!z7) {
                        throw new zzhi("The edited sample sequence does not contain a sync sample.");
                    }
                    dovVar = new dov(jArr8, iArr7, i35, jArr9, iArr8);
                }
            }
        }
        return dovVar;
    }

    /* renamed from: a */
    public static dpi m9001a(dog dogVar, boolean z) {
        dpi dpiVar;
        if (!z) {
            dsk dskVar = dogVar.f15124a;
            dskVar.m8733c(8);
            while (true) {
                dpiVar = null;
                if (dskVar.m8736b() < 8) {
                    break;
                }
                int m8732d = dskVar.m8732d();
                int m8722l = dskVar.m8722l();
                if (dskVar.m8722l() == doe.f15078ao) {
                    dskVar.m8733c(m8732d);
                    dskVar.m8731d(12);
                    while (true) {
                        dpiVar = null;
                        if (dskVar.m8732d() >= m8732d + m8722l) {
                            break;
                        }
                        int m8732d2 = dskVar.m8732d();
                        int m8722l2 = dskVar.m8722l();
                        if (dskVar.m8722l() == doe.f15079ap) {
                            dskVar.m8733c(m8732d2);
                            dskVar.m8731d(8);
                            ArrayList arrayList = new ArrayList();
                            while (dskVar.m8732d() < m8732d2 + m8722l2) {
                                dpi.AbstractC3010a m8977a = doq.m8977a(dskVar);
                                if (m8977a != null) {
                                    arrayList.add(m8977a);
                                }
                            }
                            dpiVar = null;
                            if (!arrayList.isEmpty()) {
                                dpiVar = new dpi(arrayList);
                            }
                        } else {
                            dskVar.m8731d(m8722l2 - 8);
                        }
                    }
                } else {
                    dskVar.m8731d(m8722l - 8);
                }
            }
        } else {
            dpiVar = null;
        }
        return dpiVar;
    }
}
