package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvi.class */
public abstract class dvi implements dvy, dwc {

    /* renamed from: a */
    private final int f47649a;

    /* renamed from: b */
    private dwb f47650b;

    /* renamed from: c */
    private int f47651c;

    /* renamed from: d */
    private int f47652d;

    /* renamed from: e */
    private ebc f47653e;

    /* renamed from: f */
    private long f47654f;

    /* renamed from: g */
    private boolean f47655g = true;

    /* renamed from: h */
    private boolean f47656h;

    public dvi(int i) {
        this.f47649a = i;
    }

    @Override // com.google.android.gms.internal.ads.dvy, com.google.android.gms.internal.ads.dwc
    /* renamed from: a */
    public final int mo15576a() {
        return this.f47649a;
    }

    /* renamed from: a */
    public final int m15662a(dvw dvwVar, dxm dxmVar, boolean z) {
        int mo15320a = this.f47653e.mo15320a(dvwVar, dxmVar, z);
        if (mo15320a == -4) {
            if (dxmVar.m15522c()) {
                this.f47655g = true;
                return this.f47656h ? -4 : -3;
            }
            dxmVar.f47975d += this.f47654f;
        } else if (mo15320a == -5) {
            zzht zzhtVar = dvwVar.f47756a;
            if (zzhtVar.zzaid != Long.MAX_VALUE) {
                dvwVar.f47756a = zzhtVar.zzds(zzhtVar.zzaid + this.f47654f);
            }
        }
        return mo15320a;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: a */
    public final void mo15593a(int i) {
        this.f47651c = i;
    }

    @Override // com.google.android.gms.internal.ads.dvn
    /* renamed from: a */
    public void mo15173a(int i, Object obj) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: a */
    public final void mo15592a(long j) throws zzhe {
        this.f47656h = false;
        this.f47655g = false;
        mo15171a(j, false);
    }

    /* renamed from: a */
    protected void mo15171a(long j, boolean z) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: a */
    public final void mo15591a(dwb dwbVar, zzht[] zzhtVarArr, ebc ebcVar, long j, boolean z, long j2) throws zzhe {
        ecr.m15247b(this.f47652d == 0);
        this.f47650b = dwbVar;
        this.f47652d = 1;
        mo15162a(z);
        mo15590a(zzhtVarArr, ebcVar, j2);
        mo15171a(j, z);
    }

    /* renamed from: a */
    protected void mo15162a(boolean z) throws zzhe {
    }

    /* renamed from: a */
    public void mo15160a(zzht[] zzhtVarArr, long j) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: a */
    public final void mo15590a(zzht[] zzhtVarArr, ebc ebcVar, long j) throws zzhe {
        ecr.m15247b(!this.f47656h);
        this.f47653e = ebcVar;
        this.f47655g = false;
        this.f47654f = j;
        mo15160a(zzhtVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: b */
    public final dwc mo15589b() {
        return this;
    }

    /* renamed from: b */
    public final void m15661b(long j) {
        this.f47653e.mo15321a(j - this.f47654f);
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: c */
    public ecv mo15539c() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: d */
    public final int mo15588d() {
        return this.f47652d;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: e */
    public final void mo15587e() throws zzhe {
        boolean z = true;
        if (this.f47652d != 1) {
            z = false;
        }
        ecr.m15247b(z);
        this.f47652d = 2;
        mo15152n();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: f */
    public final ebc mo15586f() {
        return this.f47653e;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: g */
    public final boolean mo15585g() {
        return this.f47655g;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: h */
    public final void mo15584h() {
        this.f47656h = true;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: i */
    public final boolean mo15583i() {
        return this.f47656h;
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: j */
    public final void mo15582j() throws IOException {
        this.f47653e.mo15319b();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: k */
    public final void mo15581k() throws zzhe {
        ecr.m15247b(this.f47652d == 2);
        this.f47652d = 1;
        mo15151o();
    }

    @Override // com.google.android.gms.internal.ads.dvy
    /* renamed from: l */
    public final void mo15580l() {
        boolean z = true;
        if (this.f47652d != 1) {
            z = false;
        }
        ecr.m15247b(z);
        this.f47652d = 0;
        this.f47653e = null;
        this.f47656h = false;
        mo15150p();
    }

    @Override // com.google.android.gms.internal.ads.dwc
    /* renamed from: m */
    public int mo15398m() throws zzhe {
        return 0;
    }

    /* renamed from: n */
    protected void mo15152n() throws zzhe {
    }

    /* renamed from: o */
    protected void mo15151o() throws zzhe {
    }

    /* renamed from: p */
    protected void mo15150p() {
    }

    /* renamed from: q */
    public final dwb m15660q() {
        return this.f47650b;
    }

    /* renamed from: r */
    public final int m15659r() {
        return this.f47651c;
    }

    /* renamed from: s */
    public final boolean m15658s() {
        return this.f47655g ? this.f47656h : this.f47653e.mo15322a();
    }
}
