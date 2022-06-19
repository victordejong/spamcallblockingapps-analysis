package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gs3.class */
public final class gs3 implements uq3 {

    /* renamed from: c */
    private static final int[] f23677c;

    /* renamed from: f */
    private static final int f23680f;

    /* renamed from: h */
    private boolean f23682h;

    /* renamed from: i */
    private long f23683i;

    /* renamed from: j */
    private int f23684j;

    /* renamed from: k */
    private int f23685k;

    /* renamed from: l */
    private boolean f23686l;

    /* renamed from: n */
    private int f23688n;

    /* renamed from: o */
    private long f23689o;

    /* renamed from: p */
    private xq3 f23690p;

    /* renamed from: q */
    private yr3 f23691q;

    /* renamed from: r */
    private ur3 f23692r;

    /* renamed from: s */
    private boolean f23693s;

    /* renamed from: a */
    public static final br3 f23675a = fs3.f23126b;

    /* renamed from: b */
    private static final int[] f23676b = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: d */
    private static final byte[] f23678d = C7101wa.m9704X("#!AMR\n");

    /* renamed from: e */
    private static final byte[] f23679e = C7101wa.m9704X("#!AMR-WB\n");

    /* renamed from: g */
    private final byte[] f23681g = new byte[1];

    /* renamed from: m */
    private int f23687m = -1;

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        f23677c = iArr;
        f23680f = iArr[8];
    }

    public gs3(int i) {
    }

    /* renamed from: a */
    private final boolean m14813a(vq3 vq3Var) {
        byte[] bArr = f23678d;
        if (m14812b(vq3Var, bArr)) {
            this.f23682h = false;
            ((pq3) vq3Var).m12196p(bArr.length, false);
            return true;
        }
        byte[] bArr2 = f23679e;
        if (!m14812b(vq3Var, bArr2)) {
            return false;
        }
        this.f23682h = true;
        ((pq3) vq3Var).m12196p(bArr2.length, false);
        return true;
    }

    /* renamed from: b */
    private static boolean m14812b(vq3 vq3Var, byte[] bArr) {
        vq3Var.mo9884i();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((pq3) vq3Var).mo9882l(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }

    @RequiresNonNull({"trackOutput"})
    /* renamed from: c */
    private final int m14811c(vq3 vq3Var) {
        int i = this.f23685k;
        int i2 = i;
        if (i == 0) {
            try {
                vq3Var.mo9884i();
                ((pq3) vq3Var).mo9882l(this.f23681g, 0, 1, false);
                byte b = this.f23681g[0];
                if ((b & 131) > 0) {
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid padding bits for frame header ");
                    sb.append((int) b);
                    throw zzaha.zzb(sb.toString(), null);
                }
                int i3 = (b >> 3) & 15;
                boolean z = this.f23682h;
                if ((!z || (i3 >= 10 && i3 <= 13)) && (z || (i3 >= 12 && i3 <= 14))) {
                    String str = "WB";
                    if (true != z) {
                        str = "NB";
                    }
                    StringBuilder sb2 = new StringBuilder(str.length() + 35);
                    sb2.append("Illegal AMR ");
                    sb2.append(str);
                    sb2.append(" frame type ");
                    sb2.append(i3);
                    throw zzaha.zzb(sb2.toString(), null);
                }
                int i4 = z ? f23677c[i3] : f23676b[i3];
                this.f23684j = i4;
                this.f23685k = i4;
                int i5 = this.f23687m;
                int i6 = i5;
                if (i5 == -1) {
                    this.f23687m = i4;
                    i6 = i4;
                }
                i2 = i4;
                if (i6 == i4) {
                    this.f23688n++;
                    i2 = i4;
                }
            } catch (EOFException e) {
                return -1;
            }
        }
        int m9479a = wr3.m9479a(this.f23691q, vq3Var, i2, true);
        if (m9479a == -1) {
            return -1;
        }
        int i7 = this.f23685k - m9479a;
        this.f23685k = i7;
        if (i7 > 0) {
            return 0;
        }
        this.f23691q.mo8705c(this.f23683i, 1, this.f23684j, 0, null);
        this.f23683i += 20000;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: e */
    public final int mo9044e(vq3 vq3Var, rr3 rr3Var) {
        C7173y8.m8894e(this.f23691q);
        int i = C7101wa.f31475a;
        if (vq3Var.mo9465m() != 0 || m14813a(vq3Var)) {
            if (!this.f23693s) {
                this.f23693s = true;
                boolean z = this.f23682h;
                String str = true != z ? "audio/3gpp" : "audio/amr-wb";
                int i2 = true != z ? 8000 : 16000;
                yr3 yr3Var = this.f23691q;
                C6947s4 c6947s4 = new C6947s4();
                c6947s4.m11129n(str);
                c6947s4.m11128o(f23680f);
                c6947s4.m11175B(1);
                c6947s4.m11174C(i2);
                yr3Var.mo8704d(c6947s4.m11168I());
            }
            int m14811c = m14811c(vq3Var);
            if (this.f23686l) {
                return m14811c;
            }
            tr3 tr3Var = new tr3(-9223372036854775807L, 0L);
            this.f23692r = tr3Var;
            this.f23690p.mo8689r(tr3Var);
            this.f23686l = true;
            return m14811c;
        }
        throw zzaha.zzb("Could not find AMR header.", null);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: f */
    public final boolean mo9043f(vq3 vq3Var) {
        return m14813a(vq3Var);
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: g */
    public final void mo9042g(xq3 xq3Var) {
        this.f23690p = xq3Var;
        this.f23691q = xq3Var.mo8690o(0, 1);
        xq3Var.mo8688t();
    }

    @Override // com.google.android.gms.internal.ads.uq3
    /* renamed from: h */
    public final void mo9041h(long j, long j2) {
        this.f23683i = 0L;
        this.f23684j = 0;
        this.f23685k = 0;
        this.f23689o = 0L;
    }
}
