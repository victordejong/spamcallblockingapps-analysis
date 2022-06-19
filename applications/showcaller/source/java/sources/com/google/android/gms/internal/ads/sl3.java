package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sl3.class */
public final class sl3 extends dg3 implements jl3 {

    /* renamed from: g */
    private final C6615j5 f29569g;

    /* renamed from: h */
    private final C6577i5 f29570h;

    /* renamed from: i */
    private final AbstractC7171y6 f29571i;

    /* renamed from: j */
    private final cl3 f29572j;

    /* renamed from: k */
    private final go2 f29573k;

    /* renamed from: l */
    private final int f29574l;

    /* renamed from: m */
    private boolean f29575m = true;

    /* renamed from: n */
    private long f29576n = -9223372036854775807L;

    /* renamed from: o */
    private boolean f29577o;

    /* renamed from: p */
    private boolean f29578p;

    /* renamed from: q */
    private AbstractC6816ol f29579q;

    /* renamed from: r */
    private final zn3 f29580r;

    public /* synthetic */ sl3(C6615j5 c6615j5, AbstractC7171y6 abstractC7171y6, cl3 cl3Var, go2 go2Var, zn3 zn3Var, int i, rl3 rl3Var, byte[] bArr) {
        C6577i5 c6577i5 = c6615j5.f24784d;
        Objects.requireNonNull(c6577i5);
        this.f29570h = c6577i5;
        this.f29569g = c6615j5;
        this.f29571i = abstractC7171y6;
        this.f29572j = cl3Var;
        this.f29573k = go2Var;
        this.f29580r = zn3Var;
        this.f29574l = i;
    }

    /* renamed from: x */
    private final void m10987x() {
        long j = this.f29576n;
        boolean z = this.f29577o;
        boolean z2 = this.f29578p;
        C6615j5 c6615j5 = this.f29569g;
        ol3 fm3Var = new fm3(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, c6615j5, z2 ? c6615j5.f24785e : null);
        if (this.f29575m) {
            fm3Var = new ol3(this, fm3Var);
        }
        m15827r(fm3Var);
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: c */
    public final void mo10991c(lk3 lk3Var) {
        ((nl3) lk3Var).m12867S();
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: e */
    public final lk3 mo10990e(mk3 mk3Var, tn3 tn3Var, long j) {
        AbstractC7098w7 zza = this.f29571i.zza();
        AbstractC6816ol abstractC6816ol = this.f29579q;
        if (abstractC6816ol != null) {
            zza.mo8765f(abstractC6816ol);
        }
        Uri uri = this.f29570h.f24142a;
        dl3 zza2 = this.f29572j.zza();
        go2 go2Var = this.f29573k;
        gj2 m15824u = m15824u(mk3Var);
        zn3 zn3Var = this.f29580r;
        vk3 m15826s = m15826s(mk3Var);
        String str = this.f29570h.f24145d;
        return new nl3(uri, zza, zza2, go2Var, m15824u, zn3Var, m15826s, this, tn3Var, null, this.f29574l, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // com.google.android.gms.internal.ads.jl3
    /* renamed from: j */
    public final void mo10989j(long j, boolean z, boolean z2) {
        char c = j;
        if (j == -9223372036854775807L) {
            c = this.f29576n;
        }
        if (!this.f29575m && this.f29576n == c && this.f29577o == z && this.f29578p == z2) {
            return;
        }
        this.f29576n = c;
        this.f29577o = z;
        this.f29578p = z2;
        this.f29575m = false;
        m10987x();
    }

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: m */
    protected final void mo9578m(AbstractC6816ol abstractC6816ol) {
        this.f29579q = abstractC6816ol;
        m10987x();
    }

    @Override // com.google.android.gms.internal.ads.dg3
    /* renamed from: p */
    protected final void mo9576p() {
    }

    @Override // com.google.android.gms.internal.ads.ok3
    /* renamed from: q */
    public final C6615j5 mo10988q() {
        return this.f29569g;
    }

    @Override // com.google.android.gms.internal.ads.ok3
    public final void zzu() {
    }
}
