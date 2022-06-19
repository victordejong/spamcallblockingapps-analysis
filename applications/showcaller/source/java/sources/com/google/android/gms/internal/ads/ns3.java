package com.google.android.gms.internal.ads;

import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ns3.class */
final class ns3 extends rs3 {

    /* renamed from: b */
    private static final int[] f27282b = {5512, 11025, 22050, 44100};

    /* renamed from: c */
    private boolean f27283c;

    /* renamed from: d */
    private boolean f27284d;

    /* renamed from: e */
    private int f27285e;

    public ns3(yr3 yr3Var) {
        super(yr3Var);
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: a */
    protected final boolean mo10915a(C6694la c6694la) {
        if (this.f27283c) {
            c6694la.m13632s(1);
            return true;
        }
        int m13629v = c6694la.m13629v();
        int i = m13629v >> 4;
        this.f27285e = i;
        if (i == 2) {
            int i2 = f27282b[(m13629v >> 2) & 3];
            C6947s4 c6947s4 = new C6947s4();
            c6947s4.m11129n("audio/mpeg");
            c6947s4.m11175B(1);
            c6947s4.m11174C(i2);
            this.f29219a.mo8704d(c6947s4.m11168I());
            this.f27284d = true;
        } else if (i == 7 || i == 8) {
            String str = i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
            C6947s4 c6947s42 = new C6947s4();
            c6947s42.m11129n(str);
            c6947s42.m11175B(1);
            c6947s42.m11174C(8000);
            this.f29219a.mo8704d(c6947s42.m11168I());
            this.f27284d = true;
        } else if (i != 10) {
            StringBuilder sb = new StringBuilder(39);
            sb.append("Audio format not supported: ");
            sb.append(i);
            throw new zzpp(sb.toString());
        }
        this.f27283c = true;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.rs3
    /* renamed from: b */
    protected final boolean mo10914b(C6694la c6694la, long j) {
        if (this.f27285e == 2) {
            int m13639l = c6694la.m13639l();
            this.f29219a.mo8706b(c6694la, m13639l);
            this.f29219a.mo8705c(j, 1, m13639l, 0, null);
            return true;
        }
        int m13629v = c6694la.m13629v();
        if (m13629v != 0 || this.f27284d) {
            if (this.f27285e == 10 && m13629v != 1) {
                return false;
            }
            int m13639l2 = c6694la.m13639l();
            this.f29219a.mo8706b(c6694la, m13639l2);
            this.f29219a.mo8705c(j, 1, m13639l2, 0, null);
            return true;
        }
        int m13639l3 = c6694la.m13639l();
        byte[] bArr = new byte[m13639l3];
        c6694la.m13630u(bArr, 0, m13639l3);
        vp3 m9089a = xp3.m9089a(bArr);
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11129n("audio/mp4a-latm");
        c6947s4.m11132k(m9089a.f31290c);
        c6947s4.m11175B(m9089a.f31289b);
        c6947s4.m11174C(m9089a.f31288a);
        c6947s4.m11127p(Collections.singletonList(bArr));
        this.f29219a.mo8704d(c6947s4.m11168I());
        this.f27284d = true;
        return false;
    }
}
