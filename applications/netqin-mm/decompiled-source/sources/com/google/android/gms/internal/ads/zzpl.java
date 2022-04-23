package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzpl.class */
public final class zzpl implements zzpd {

    /* renamed from: a */
    public boolean f28782a;

    /* renamed from: b */
    public long f28783b;

    /* renamed from: c */
    public long f28784c;

    /* renamed from: d */
    public zzhu f28785d = zzhu.f28294d;

    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: a */
    public final zzhu mo11639a() {
        return this.f28785d;
    }

    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: a */
    public final zzhu mo11637a(zzhu zzhuVar) {
        if (this.f28782a) {
            m11638a(mo11633o());
        }
        this.f28785d = zzhuVar;
        return zzhuVar;
    }

    /* renamed from: a */
    public final void m11638a(long j) {
        this.f28783b = j;
        if (this.f28782a) {
            this.f28784c = SystemClock.elapsedRealtime();
        }
    }

    /* renamed from: a */
    public final void m11636a(zzpd zzpdVar) {
        m11638a(zzpdVar.mo11633o());
        this.f28785d = zzpdVar.mo11639a();
    }

    /* renamed from: b */
    public final void m11635b() {
        if (!this.f28782a) {
            this.f28784c = SystemClock.elapsedRealtime();
            this.f28782a = true;
        }
    }

    /* renamed from: c */
    public final void m11634c() {
        if (this.f28782a) {
            m11638a(mo11633o());
            this.f28782a = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.zzpd
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo11633o() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f28783b
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f28782a
            if (r0 == 0) goto L_0x003a
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = r5
            long r1 = r1.f28784c
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzhu r0 = r0.f28785d
            r10 = r0
            r0 = r10
            float r0 = r0.f28295a
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002f
            r0 = r8
            long r0 = com.google.android.gms.internal.ads.zzha.m12066b(r0)
            r8 = r0
            goto L_0x0036
        L_0x002f:
            r0 = r10
            r1 = r8
            long r0 = r0.m12016a(r1)
            r8 = r0
        L_0x0036:
            r0 = r6
            r1 = r8
            long r0 = r0 + r1
            r8 = r0
        L_0x003a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpl.mo11633o():long");
    }
}
