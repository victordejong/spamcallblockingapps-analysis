package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zm3.class */
public final class zm3 extends dn3 {

    /* renamed from: d */
    private static final dy2<Integer> f33001d = dy2.zzc(nm3.f27229d);

    /* renamed from: e */
    private static final dy2<Integer> f33002e = dy2.zzc(om3.f27599d);

    /* renamed from: f */
    public static final /* synthetic */ int f33003f = 0;

    /* renamed from: g */
    private final AtomicReference<tm3> f33004g;

    /* renamed from: h */
    private final jm3 f33005h;

    public zm3(Context context) {
        jm3 jm3Var = new jm3();
        tm3 m10610c = tm3.m10610c(context);
        this.f33005h = jm3Var;
        this.f33004g = new AtomicReference<>(m10610c);
    }

    /* renamed from: k */
    public static boolean m8319k(int i, boolean z) {
        int i2 = i & 7;
        boolean z2 = false;
        if (i2 != 4) {
            if (z) {
                if (i2 != 3) {
                    return false;
                }
            }
            return z2;
        }
        z2 = true;
        return z2;
    }

    /* renamed from: l */
    public static String m8318l(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "und")) {
            return null;
        }
        return str;
    }

    /* renamed from: m */
    public static int m8317m(C7021u4 c7021u4, String str, boolean z) {
        if (TextUtils.isEmpty(str) || !str.equals(c7021u4.f30502e)) {
            String m8318l = m8318l(str);
            String m8318l2 = m8318l(c7021u4.f30502e);
            if (m8318l2 == null || m8318l == null) {
                return (!z || m8318l2 != null) ? 0 : 1;
            } else if (m8318l2.startsWith(m8318l) || m8318l.startsWith(m8318l2)) {
                return 3;
            } else {
                return C7101wa.m9702Z(m8318l2, "-")[0].equals(C7101wa.m9702Z(m8318l, "-")[0]) ? 2 : 0;
            }
        }
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x05a1  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01cd  */
    @Override // com.google.android.gms.internal.ads.dn3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final android.util.Pair<com.google.android.gms.internal.ads.C7060v6[], com.google.android.gms.internal.ads.mm3[]> mo8324f(com.google.android.gms.internal.ads.cn3 r9, int[][][] r10, int[] r11, com.google.android.gms.internal.ads.mk3 r12, com.google.android.gms.internal.ads.AbstractC6839p7 r13) {
        /*
            Method dump skipped, instructions count: 2507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zm3.mo8324f(com.google.android.gms.internal.ads.cn3, int[][][], int[], com.google.android.gms.internal.ads.mk3, com.google.android.gms.internal.ads.p7):android.util.Pair");
    }

    /* renamed from: i */
    public final tm3 m8321i() {
        return this.f33004g.get();
    }

    /* renamed from: j */
    public final void m8320j(um3 um3Var) {
        tm3 tm3Var = new tm3(um3Var);
        if (!this.f33004g.getAndSet(tm3Var).equals(tm3Var)) {
            m15133d();
        }
    }
}
