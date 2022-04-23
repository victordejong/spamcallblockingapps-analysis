package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/edd.class */
public final class edd implements ecv {

    /* renamed from: a  reason: collision with root package name */
    private boolean f27660a;

    /* renamed from: b  reason: collision with root package name */
    private long f27661b;

    /* renamed from: c  reason: collision with root package name */
    private long f27662c;

    /* renamed from: d  reason: collision with root package name */
    private dvz f27663d = dvz.f27282a;

    @Override // com.google.android.gms.internal.ads.ecv
    public final dvz a(dvz dvzVar) {
        if (this.f27660a) {
            a(y());
        }
        this.f27663d = dvzVar;
        return dvzVar;
    }

    public final void a() {
        if (!this.f27660a) {
            this.f27662c = SystemClock.elapsedRealtime();
            this.f27660a = true;
        }
    }

    public final void a(long j) {
        this.f27661b = j;
        if (this.f27660a) {
            this.f27662c = SystemClock.elapsedRealtime();
        }
    }

    public final void a(ecv ecvVar) {
        a(ecvVar.y());
        this.f27663d = ecvVar.z();
    }

    public final void b() {
        if (this.f27660a) {
            a(y());
            this.f27660a = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.google.android.gms.internal.ads.ecv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long y() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f27661b
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r5
            boolean r0 = r0.f27660a
            if (r0 == 0) goto L_0x003a
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = r5
            long r1 = r1.f27662c
            long r0 = r0 - r1
            r8 = r0
            r0 = r5
            com.google.android.gms.internal.ads.dvz r0 = r0.f27663d
            float r0 = r0.f27283b
            r1 = 1065353216(0x3f800000, float:1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002b
            r0 = r8
            long r0 = com.google.android.gms.internal.ads.dvj.b(r0)
            r8 = r0
            goto L_0x0036
        L_0x002b:
            r0 = r8
            r1 = r5
            com.google.android.gms.internal.ads.dvz r1 = r1.f27663d
            int r1 = r1.f27285d
            long r1 = (long) r1
            long r0 = r0 * r1
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.edd.y():long");
    }

    @Override // com.google.android.gms.internal.ads.ecv
    public final dvz z() {
        return this.f27663d;
    }
}
