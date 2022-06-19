package com.google.android.gms.internal.ads;

import android.util.Log;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sw3.class */
public final class sw3 implements gw3 {

    /* renamed from: b */
    private yr3 f29717b;

    /* renamed from: c */
    private boolean f29718c;

    /* renamed from: e */
    private int f29720e;

    /* renamed from: f */
    private int f29721f;

    /* renamed from: a */
    private final C6694la f29716a = new C6694la(10);

    /* renamed from: d */
    private long f29719d = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: a */
    public final void mo8681a() {
        int i;
        C7173y8.m8894e(this.f29717b);
        if (!this.f29718c || (i = this.f29720e) == 0 || this.f29721f != i) {
            return;
        }
        long j = this.f29719d;
        if (j != -9223372036854775807L) {
            this.f29717b.mo8705c(j, 1, i, 0, null);
        }
        this.f29718c = false;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: b */
    public final void mo8680b(xq3 xq3Var, tx3 tx3Var) {
        tx3Var.m10475a();
        yr3 mo8690o = xq3Var.mo8690o(tx3Var.m10474b(), 5);
        this.f29717b = mo8690o;
        C6947s4 c6947s4 = new C6947s4();
        c6947s4.m11144d(tx3Var.m10473c());
        c6947s4.m11129n("application/id3");
        mo8690o.mo8704d(c6947s4.m11168I());
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: c */
    public final void mo8679c(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f29718c = true;
        if (j != -9223372036854775807L) {
            this.f29719d = j;
        }
        this.f29720e = 0;
        this.f29721f = 0;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    /* renamed from: d */
    public final void mo8678d(C6694la c6694la) {
        C7173y8.m8894e(this.f29717b);
        if (!this.f29718c) {
            return;
        }
        int m13639l = c6694la.m13639l();
        int i = this.f29721f;
        if (i < 10) {
            int min = Math.min(m13639l, 10 - i);
            System.arraycopy(c6694la.m13634q(), c6694la.m13636o(), this.f29716a.m13634q(), this.f29721f, min);
            if (this.f29721f + min == 10) {
                this.f29716a.m13635p(0);
                if (this.f29716a.m13629v() != 73 || this.f29716a.m13629v() != 68 || this.f29716a.m13629v() != 51) {
                    Log.w("Id3Reader", "Discarding invalid ID3 tag");
                    this.f29718c = false;
                    return;
                }
                this.f29716a.m13632s(3);
                this.f29720e = this.f29716a.m13650a() + 10;
            }
        }
        int min2 = Math.min(m13639l, this.f29720e - this.f29721f);
        wr3.m9478b(this.f29717b, c6694la, min2);
        this.f29721f += min2;
    }

    @Override // com.google.android.gms.internal.ads.gw3
    public final void zza() {
        this.f29718c = false;
        this.f29719d = -9223372036854775807L;
    }
}
