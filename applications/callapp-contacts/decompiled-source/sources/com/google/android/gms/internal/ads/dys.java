package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzmh;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dys.class */
final class dys {

    /* renamed from: a  reason: collision with root package name */
    private static final int f27420a = ede.c("vide");

    /* renamed from: b  reason: collision with root package name */
    private static final int f27421b = ede.c("soun");

    /* renamed from: c  reason: collision with root package name */
    private static final int f27422c = ede.c("text");

    /* renamed from: d  reason: collision with root package name */
    private static final int f27423d = ede.c("sbtl");
    private static final int e = ede.c("subt");
    private static final int f = ede.c("clcp");
    private static final int g = ede.c("cenc");
    private static final int h = ede.c("meta");

    private static int a(ecy ecyVar) {
        int d2 = ecyVar.d();
        int i = d2 & 127;
        while ((d2 & 128) == 128) {
            d2 = ecyVar.d();
            i = (i << 7) | (d2 & 127);
        }
        return i;
    }

    private static int a(ecy ecyVar, int i, int i2, dyx dyxVar, int i3) {
        int i4 = ecyVar.f27650b;
        while (true) {
            boolean z = false;
            if (i4 - i >= i2) {
                return 0;
            }
            ecyVar.c(i4);
            int g2 = ecyVar.g();
            ecr.a(g2 > 0, "childAtomSize should be positive");
            if (ecyVar.g() == dyr.Y) {
                int i5 = i4 + 8;
                Pair pair = null;
                Integer num = null;
                dzm dzmVar = null;
                boolean z2 = false;
                while (i5 - i4 < g2) {
                    ecyVar.c(i5);
                    int g3 = ecyVar.g();
                    int g4 = ecyVar.g();
                    if (g4 == dyr.ae) {
                        num = Integer.valueOf(ecyVar.g());
                        z2 = z2;
                    } else if (g4 == dyr.Z) {
                        ecyVar.d(4);
                        if (ecyVar.g() == g) {
                            z2 = true;
                            num = num;
                        } else {
                            z2 = false;
                            num = num;
                        }
                    } else {
                        z2 = z2;
                        num = num;
                        if (g4 == dyr.aa) {
                            int i6 = i5;
                            int i7 = 8;
                            while (true) {
                                int i8 = i6 + i7;
                                if (i8 - i5 >= g3) {
                                    dzmVar = null;
                                    num = num;
                                    z2 = z2;
                                    break;
                                }
                                ecyVar.c(i8);
                                i7 = ecyVar.g();
                                if (ecyVar.g() == dyr.ab) {
                                    ecyVar.d(6);
                                    boolean z3 = ecyVar.d() == 1;
                                    int d2 = ecyVar.d();
                                    byte[] bArr = new byte[16];
                                    ecyVar.a(bArr, 0, 16);
                                    dzmVar = new dzm(z3, d2, bArr);
                                    z2 = z2;
                                    num = num;
                                } else {
                                    i6 = i8;
                                }
                            }
                        }
                    }
                    i5 += g3;
                }
                if (z2) {
                    ecr.a(num != null, "frma atom is mandatory");
                    if (dzmVar != null) {
                        z = true;
                    }
                    ecr.a(z, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, dzmVar);
                }
                if (pair != null) {
                    dyxVar.f27432a[i3] = (dzm) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            i4 += g2;
        }
    }

    private static Pair<String, byte[]> a(ecy ecyVar, int i) {
        ecyVar.c(i + 8 + 4);
        ecyVar.d(1);
        a(ecyVar);
        ecyVar.d(2);
        int d2 = ecyVar.d();
        if ((d2 & 128) != 0) {
            ecyVar.d(2);
        }
        if ((d2 & 64) != 0) {
            ecyVar.d(ecyVar.e());
        }
        if ((d2 & 32) != 0) {
            ecyVar.d(2);
        }
        ecyVar.d(1);
        a(ecyVar);
        int d3 = ecyVar.d();
        String str = null;
        if (d3 == 32) {
            str = "video/mp4v-es";
        } else if (d3 == 33) {
            str = "video/avc";
        } else if (d3 != 35) {
            if (d3 != 64) {
                if (d3 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (d3 == 165) {
                    str = "audio/ac3";
                } else if (d3 != 166) {
                    switch (d3) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (d3) {
                                case 169:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case 171:
                                    return Pair.create("audio/vnd.dts.hd", null);
                            }
                    }
                } else {
                    str = "audio/eac3";
                }
            }
            str = "audio/mp4a-latm";
        } else {
            str = "video/hevc";
        }
        ecyVar.d(12);
        ecyVar.d(1);
        int a2 = a(ecyVar);
        byte[] bArr = new byte[a2];
        ecyVar.a(bArr, 0, a2);
        return Pair.create(str, bArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (r31 == 0) goto L_0x010d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.dzn a(com.google.android.gms.internal.ads.dyq r17, com.google.android.gms.internal.ads.dyt r18, long r19, com.google.android.gms.internal.ads.zzjo r21, boolean r22) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 3526
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dys.a(com.google.android.gms.internal.ads.dyq, com.google.android.gms.internal.ads.dyt, long, com.google.android.gms.internal.ads.zzjo, boolean):com.google.android.gms.internal.ads.dzn");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11, types: [long] */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.dzo a(com.google.android.gms.internal.ads.dzn r11, com.google.android.gms.internal.ads.dyq r12, com.google.android.gms.internal.ads.dxz r13) throws com.google.android.gms.internal.ads.zzhw {
        /*
            Method dump skipped, instructions count: 2284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dys.a(com.google.android.gms.internal.ads.dzn, com.google.android.gms.internal.ads.dyq, com.google.android.gms.internal.ads.dxz):com.google.android.gms.internal.ads.dzo");
    }

    public static zzmh a(dyt dytVar, boolean z) {
        if (z) {
            return null;
        }
        ecy ecyVar = dytVar.f27424a;
        ecyVar.c(8);
        while (ecyVar.b() >= 8) {
            int i = ecyVar.f27650b;
            int g2 = ecyVar.g();
            if (ecyVar.g() == dyr.aD) {
                ecyVar.c(i);
                ecyVar.d(12);
                while (ecyVar.f27650b < i + g2) {
                    int i2 = ecyVar.f27650b;
                    int g3 = ecyVar.g();
                    if (ecyVar.g() == dyr.aE) {
                        ecyVar.c(i2);
                        ecyVar.d(8);
                        ArrayList arrayList = new ArrayList();
                        while (ecyVar.f27650b < i2 + g3) {
                            zzmh.zza a2 = dzg.a(ecyVar);
                            if (a2 != null) {
                                arrayList.add(a2);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzmh(arrayList);
                        }
                        return null;
                    }
                    ecyVar.d(g3 - 8);
                }
                return null;
            }
            ecyVar.d(g2 - 8);
        }
        return null;
    }
}
