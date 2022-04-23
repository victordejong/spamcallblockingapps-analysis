package p131c.p161d.p170b.p224d.p252g.p253a;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzlq;
import com.google.android.gms.internal.ads.zzmc;
import com.google.android.gms.internal.ads.zzoz;
import com.google.android.gms.internal.ads.zzpk;
import com.google.android.gms.internal.ads.zzpq;
import java.util.ArrayList;
/* renamed from: c.d.b.d.g.a.gd0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/gd0.class */
public final class gd0 {

    /* renamed from: a */
    public static final int f13158a = zzpq.m11614d("vide");

    /* renamed from: b */
    public static final int f13159b = zzpq.m11614d("soun");

    /* renamed from: c */
    public static final int f13160c = zzpq.m11614d("text");

    /* renamed from: d */
    public static final int f13161d = zzpq.m11614d("sbtl");

    /* renamed from: e */
    public static final int f13162e = zzpq.m11614d("subt");

    /* renamed from: f */
    public static final int f13163f = zzpq.m11614d("clcp");

    /* renamed from: g */
    public static final int f13164g = zzpq.m11614d("cenc");

    /* renamed from: h */
    public static final int f13165h = zzpq.m11614d("meta");

    /* renamed from: a */
    public static int m26961a(zzpk zzpkVar) {
        int g = zzpkVar.m11650g();
        int i = g & 127;
        while ((g & 128) == 128) {
            g = zzpkVar.m11650g();
            i = (i << 7) | (g & 127);
        }
        return i;
    }

    /* renamed from: a */
    public static int m26959a(zzpk zzpkVar, int i, int i2, hd0 hd0Var, int i3) {
        int b = zzpkVar.m11659b();
        while (true) {
            boolean z = false;
            if (b - i >= i2) {
                return 0;
            }
            zzpkVar.m11656c(b);
            int d = zzpkVar.m11655d();
            zzoz.m11695a(d > 0, "childAtomSize should be positive");
            if (zzpkVar.m11655d() == bd0.f12413W) {
                int i4 = b + 8;
                Pair pair = null;
                Integer num = null;
                zzlq zzlqVar = null;
                boolean z2 = false;
                while (i4 - b < d) {
                    zzpkVar.m11656c(i4);
                    int d2 = zzpkVar.m11655d();
                    int d3 = zzpkVar.m11655d();
                    if (d3 == bd0.f12421c0) {
                        num = Integer.valueOf(zzpkVar.m11655d());
                        z2 = z2;
                    } else if (d3 == bd0.f12414X) {
                        zzpkVar.m11654d(4);
                        if (zzpkVar.m11655d() == f13164g) {
                            z2 = true;
                            num = num;
                        } else {
                            z2 = false;
                            num = num;
                        }
                    } else {
                        z2 = z2;
                        num = num;
                        if (d3 == bd0.f12415Y) {
                            int i5 = i4;
                            int i6 = 8;
                            while (true) {
                                int i7 = i5 + i6;
                                if (i7 - i4 >= d2) {
                                    zzlqVar = null;
                                    num = num;
                                    z2 = z2;
                                    break;
                                }
                                zzpkVar.m11656c(i7);
                                i6 = zzpkVar.m11655d();
                                if (zzpkVar.m11655d() == bd0.f12416Z) {
                                    zzpkVar.m11654d(6);
                                    boolean z3 = zzpkVar.m11650g() == 1;
                                    int g = zzpkVar.m11650g();
                                    byte[] bArr = new byte[16];
                                    zzpkVar.m11660a(bArr, 0, 16);
                                    zzlqVar = new zzlq(z3, g, bArr);
                                    z2 = z2;
                                    num = num;
                                } else {
                                    i5 = i7;
                                }
                            }
                        }
                    }
                    i4 += d2;
                }
                if (z2) {
                    zzoz.m11695a(num != null, "frma atom is mandatory");
                    if (zzlqVar != null) {
                        z = true;
                    }
                    zzoz.m11695a(z, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, zzlqVar);
                }
                if (pair != null) {
                    hd0Var.f13453a[i3] = (zzlq) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            b += d;
        }
    }

    /* renamed from: a */
    public static Pair<String, byte[]> m26960a(zzpk zzpkVar, int i) {
        zzpkVar.m11656c(i + 8 + 4);
        zzpkVar.m11654d(1);
        m26961a(zzpkVar);
        zzpkVar.m11654d(2);
        int g = zzpkVar.m11650g();
        if ((g & 128) != 0) {
            zzpkVar.m11654d(2);
        }
        if ((g & 64) != 0) {
            zzpkVar.m11654d(zzpkVar.m11649h());
        }
        if ((g & 32) != 0) {
            zzpkVar.m11654d(2);
        }
        zzpkVar.m11654d(1);
        m26961a(zzpkVar);
        int g2 = zzpkVar.m11650g();
        String str = null;
        if (g2 == 32) {
            str = "video/mp4v-es";
        } else if (g2 == 33) {
            str = "video/avc";
        } else if (g2 != 35) {
            if (g2 != 64) {
                if (g2 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (g2 == 165) {
                    str = "audio/ac3";
                } else if (g2 != 166) {
                    switch (g2) {
                        case 102:
                        case 103:
                        case 104:
                            break;
                        default:
                            switch (g2) {
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
        zzpkVar.m11654d(12);
        zzpkVar.m11654d(1);
        int a = m26961a(zzpkVar);
        byte[] bArr = new byte[a];
        zzpkVar.m11660a(bArr, 0, a);
        return Pair.create(str, bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r36v10 */
    /* JADX WARN: Type inference failed for: r36v11, types: [long] */
    /* JADX WARN: Type inference failed for: r36v13 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p131c.p161d.p170b.p224d.p252g.p253a.wd0 m26962a(com.google.android.gms.internal.ads.zzln r11, p131c.p161d.p170b.p224d.p252g.p253a.ed0 r12, com.google.android.gms.internal.ads.zzjz r13) throws com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instructions count: 2306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.gd0.m26962a(com.google.android.gms.internal.ads.zzln, c.d.b.d.g.a.ed0, com.google.android.gms.internal.ads.zzjz):c.d.b.d.g.a.wd0");
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x012f, code lost:
        if (r31 == 0) goto L_0x010d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzln m26963a(p131c.p161d.p170b.p224d.p252g.p253a.ed0 r17, p131c.p161d.p170b.p224d.p252g.p253a.dd0 r18, long r19, com.google.android.gms.internal.ads.zzjn r21, boolean r22) throws com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instructions count: 3498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p224d.p252g.p253a.gd0.m26963a(c.d.b.d.g.a.ed0, c.d.b.d.g.a.dd0, long, com.google.android.gms.internal.ads.zzjn, boolean):com.google.android.gms.internal.ads.zzln");
    }

    /* renamed from: a */
    public static zzmc m26964a(dd0 dd0Var, boolean z) {
        if (z) {
            return null;
        }
        zzpk zzpkVar = dd0Var.f12736P0;
        zzpkVar.m11656c(8);
        while (zzpkVar.m11647j() >= 8) {
            int b = zzpkVar.m11659b();
            int d = zzpkVar.m11655d();
            if (zzpkVar.m11655d() == bd0.f12379B0) {
                zzpkVar.m11656c(b);
                zzpkVar.m11654d(12);
                while (zzpkVar.m11659b() < b + d) {
                    int b2 = zzpkVar.m11659b();
                    int d2 = zzpkVar.m11655d();
                    if (zzpkVar.m11655d() == bd0.f12381C0) {
                        zzpkVar.m11656c(b2);
                        zzpkVar.m11654d(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzpkVar.m11659b() < b2 + d2) {
                            zzmc.zza a = rd0.m26411a(zzpkVar);
                            if (a != null) {
                                arrayList.add(a);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzmc(arrayList);
                        }
                        return null;
                    }
                    zzpkVar.m11654d(d2 - 8);
                }
                return null;
            }
            zzpkVar.m11654d(d - 8);
        }
        return null;
    }
}
