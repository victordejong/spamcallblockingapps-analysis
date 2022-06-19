package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pw3.class */
public final class pw3 implements gw3 {

    /* renamed from: a */
    private final ix3 f28191a;

    /* renamed from: e */
    private long f28195e;

    /* renamed from: g */
    private String f28197g;

    /* renamed from: h */
    private yr3 f28198h;

    /* renamed from: i */
    private ow3 f28199i;

    /* renamed from: j */
    private boolean f28200j;

    /* renamed from: l */
    private boolean f28202l;

    /* renamed from: f */
    private final boolean[] f28196f = new boolean[3];

    /* renamed from: b */
    private final vw3 f28192b = new vw3(7, 128);

    /* renamed from: c */
    private final vw3 f28193c = new vw3(8, 128);

    /* renamed from: d */
    private final vw3 f28194d = new vw3(6, 128);

    /* renamed from: k */
    private long f28201k = -9223372036854775807L;

    /* renamed from: m */
    private final C6694la f28203m = new C6694la();

    public pw3(ix3 ix3Var, boolean z, boolean z2) {
        this.f28191a = ix3Var;
    }

    @RequiresNonNull({"sampleReader"})
    /* renamed from: e */
    private final void m12105e(byte[] bArr, int i, int i2) {
        if (!this.f28200j) {
            this.f28192b.m9845d(bArr, i, i2);
            this.f28193c.m9845d(bArr, i, i2);
        }
        this.f28194d.m9845d(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        this.f28197g = tx3Var.m10473c();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 2);
        this.f28198h = mo8690o;
        this.f28199i = new ow3(mo8690o, false, false);
        this.f28191a.m14255a(xq3Var, tx3Var);
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if (j != -9223372036854775807L) {
            this.f28201k = j;
        }
        this.f28202l |= (i & 2) != 0;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        C7173y8.m8894e(this.f28198h);
        int i = C7101wa.f31475a;
        int m13636o = c6694la.m13636o();
        int m13638m = c6694la.m13638m();
        byte[] m13634q = c6694la.m13634q();
        this.f28195e += c6694la.m13639l();
        wr3.m9478b(this.f28198h, c6694la, c6694la.m13639l());
        while (true) {
            int m16420d = C6322ba.m16420d(m13634q, m13636o, m13638m, this.f28196f);
            if (m16420d == m13638m) {
                m12105e(m13634q, m13636o, m13638m);
                return;
            }
            int i2 = m16420d + 3;
            int i3 = m13634q[i2] & 31;
            int i4 = m16420d - m13636o;
            if (i4 > 0) {
                m12105e(m13634q, m13636o, m16420d);
            }
            int i5 = m13638m - m16420d;
            long j = this.f28195e - i5;
            int i6 = i4 < 0 ? -i4 : 0;
            long j2 = this.f28201k;
            if (!this.f28200j) {
                this.f28192b.m9844e(i6);
                this.f28193c.m9844e(i6);
                if (!this.f28200j) {
                    if (this.f28192b.m9847b() && this.f28193c.m9847b()) {
                        ArrayList arrayList = new ArrayList();
                        vw3 vw3Var = this.f28192b;
                        arrayList.add(Arrays.copyOf(vw3Var.f31393d, vw3Var.f31394e));
                        vw3 vw3Var2 = this.f28193c;
                        arrayList.add(Arrays.copyOf(vw3Var2.f31393d, vw3Var2.f31394e));
                        vw3 vw3Var3 = this.f28192b;
                        C6285aa m16422b = C6322ba.m16422b(vw3Var3.f31393d, 3, vw3Var3.f31394e);
                        vw3 vw3Var4 = this.f28193c;
                        C7211z9 m16421c = C6322ba.m16421c(vw3Var4.f31393d, 3, vw3Var4.f31394e);
                        String m16673a = C6284a9.m16673a(m16422b.f19859a, m16422b.f19860b, m16422b.f19861c);
                        yr3 yr3Var = this.f28198h;
                        C6947s4 c6947s4 = new C6947s4();
                        c6947s4.m11144d(this.f28197g);
                        c6947s4.m11129n("video/avc");
                        c6947s4.m11132k(m16673a);
                        c6947s4.m11124s(m16422b.f19863e);
                        c6947s4.m11123t(m16422b.f19864f);
                        c6947s4.m11120w(m16422b.f19865g);
                        c6947s4.m11127p(arrayList);
                        yr3Var.mo8704d(c6947s4.m11168I());
                        this.f28200j = true;
                        this.f28199i.m12484a(m16422b);
                        this.f28199i.m12483b(m16421c);
                        this.f28192b.m9848a();
                        this.f28193c.m9848a();
                    }
                } else if (this.f28192b.m9847b()) {
                    vw3 vw3Var5 = this.f28192b;
                    this.f28199i.m12484a(C6322ba.m16422b(vw3Var5.f31393d, 3, vw3Var5.f31394e));
                    this.f28192b.m9848a();
                } else if (this.f28193c.m9847b()) {
                    vw3 vw3Var6 = this.f28193c;
                    this.f28199i.m12483b(C6322ba.m16421c(vw3Var6.f31393d, 3, vw3Var6.f31394e));
                    this.f28193c.m9848a();
                }
            }
            if (this.f28194d.m9844e(i6)) {
                vw3 vw3Var7 = this.f28194d;
                this.f28203m.m13641j(this.f28194d.f31393d, C6322ba.m16423a(vw3Var7.f31393d, vw3Var7.f31394e));
                this.f28203m.m13635p(4);
                this.f28191a.m14254b(j2, this.f28203m);
            }
            if (this.f28199i.m12480e(j, i5, this.f28200j, this.f28202l)) {
                this.f28202l = false;
            }
            long j3 = this.f28201k;
            if (!this.f28200j) {
                this.f28192b.m9846c(i3);
                this.f28193c.m9846c(i3);
            }
            this.f28194d.m9846c(i3);
            this.f28199i.m12481d(j, i3, j3);
            m13636o = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f28195e = 0L;
        this.f28202l = false;
        this.f28201k = -9223372036854775807L;
        C6322ba.m16419e(this.f28196f);
        this.f28192b.m9848a();
        this.f28193c.m9848a();
        this.f28194d.m9848a();
        ow3 ow3Var = this.f28199i;
        if (ow3Var != null) {
            ow3Var.m12482c();
        }
    }
}
