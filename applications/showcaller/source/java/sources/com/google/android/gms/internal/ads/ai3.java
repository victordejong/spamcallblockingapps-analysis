package com.google.android.gms.internal.ads;

import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ai3.class */
public final class ai3 implements dl3 {

    /* renamed from: a */
    private final br3 f19961a;

    /* renamed from: b */
    private uq3 f19962b;

    /* renamed from: c */
    private vq3 f19963c;

    public ai3(br3 br3Var) {
        this.f19961a = br3Var;
    }

    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: a */
    public final int mo15774a(rr3 rr3Var) {
        uq3 uq3Var = this.f19962b;
        Objects.requireNonNull(uq3Var);
        vq3 vq3Var = this.f19963c;
        Objects.requireNonNull(vq3Var);
        return uq3Var.mo9044e(vq3Var, rr3Var);
    }

    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: b */
    public final void mo15773b() {
        if (this.f19962b != null) {
            this.f19962b = null;
        }
        this.f19963c = null;
    }

    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: c */
    public final void mo15772c() {
        uq3 uq3Var = this.f19962b;
        if (uq3Var instanceof st3) {
            ((st3) uq3Var).m10913a();
        }
    }

    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: d */
    public final void mo15771d(long j, long j2) {
        uq3 uq3Var = this.f19962b;
        Objects.requireNonNull(uq3Var);
        uq3Var.mo9041h(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: e */
    public final long mo15770e() {
        vq3 vq3Var = this.f19963c;
        if (vq3Var != null) {
            return vq3Var.mo9465m();
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        if (r0.mo9465m() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0096, code lost:
        if (r0.mo9465m() == r12) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bb, code lost:
        if (r0.mo9465m() != r12) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
        r0 = false;
     */
    @Override // com.google.android.gms.internal.ads.dl3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo15769f(com.google.android.gms.internal.ads.AbstractC7207z5 r9, android.net.Uri r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11, long r12, long r14, com.google.android.gms.internal.ads.xq3 r16) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ai3.mo15769f(com.google.android.gms.internal.ads.z5, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.xq3):void");
    }
}
