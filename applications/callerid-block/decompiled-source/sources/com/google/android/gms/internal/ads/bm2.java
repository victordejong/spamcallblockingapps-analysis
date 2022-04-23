package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bm2.class */
public class bm2 {

    /* renamed from: a */
    protected AudioTrack f6171a;

    /* renamed from: b */
    private boolean f6172b;

    /* renamed from: c */
    private int f6173c;

    /* renamed from: d */
    private long f6174d;

    /* renamed from: e */
    private long f6175e;

    /* renamed from: f */
    private long f6176f;

    /* renamed from: g */
    private long f6177g;

    /* renamed from: h */
    private long f6178h;

    /* renamed from: i */
    private long f6179i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ bm2(am2 am2Var) {
    }

    /* renamed from: a */
    public void m7954a(AudioTrack audioTrack, boolean z) {
        this.f6171a = audioTrack;
        this.f6172b = z;
        this.f6177g = -9223372036854775807L;
        this.f6174d = 0L;
        this.f6175e = 0L;
        this.f6176f = 0L;
        if (audioTrack != null) {
            this.f6173c = audioTrack.getSampleRate();
        }
    }

    /* renamed from: b */
    public final void m7953b(long j) {
        this.f6178h = m7951d();
        this.f6177g = SystemClock.elapsedRealtime() * 1000;
        this.f6179i = j;
        this.f6171a.stop();
    }

    /* renamed from: c */
    public final void m7952c() {
        if (this.f6177g == -9223372036854775807L) {
            this.f6171a.pause();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m7951d() {
        /*
            r9 = this;
            r0 = r9
            long r0 = r0.f6177g
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0036
            long r0 = android.os.SystemClock.elapsedRealtime()
            r10 = r0
            r0 = r9
            long r0 = r0.f6177g
            r12 = r0
            r0 = r9
            int r0 = r0.f6173c
            r14 = r0
            r0 = r9
            long r0 = r0.f6179i
            r1 = r9
            long r1 = r1.f6178h
            r2 = r10
            r3 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 * r3
            r3 = r12
            long r2 = r2 - r3
            r3 = r14
            long r3 = (long) r3
            long r2 = r2 * r3
            r3 = 1000000(0xf4240, double:4.940656E-318)
            long r2 = r2 / r3
            long r1 = r1 + r2
            long r0 = java.lang.Math.min(r0, r1)
            return r0
        L_0x0036:
            r0 = r9
            android.media.AudioTrack r0 = r0.f6171a
            int r0 = r0.getPlayState()
            r14 = r0
            r0 = r14
            r1 = 1
            if (r0 != r1) goto L_0x0047
            r0 = 0
            return r0
        L_0x0047:
            r0 = r9
            android.media.AudioTrack r0 = r0.f6171a
            int r0 = r0.getPlaybackHeadPosition()
            long r0 = (long) r0
            r1 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            boolean r0 = r0.f6172b
            if (r0 == 0) goto L_0x0078
            r0 = r14
            r1 = 2
            if (r0 != r1) goto L_0x0071
            r0 = r10
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0071
            r0 = r9
            r1 = r9
            long r1 = r1.f6174d
            r0.f6176f = r1
        L_0x0071:
            r0 = r10
            r1 = r9
            long r1 = r1.f6176f
            long r0 = r0 + r1
            r12 = r0
        L_0x0078:
            r0 = r9
            long r0 = r0.f6174d
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x008b
            r0 = r9
            r1 = r9
            long r1 = r1.f6175e
            r2 = 1
            long r1 = r1 + r2
            r0.f6175e = r1
        L_0x008b:
            r0 = r9
            r1 = r12
            r0.f6174d = r1
            r0 = r12
            r1 = r9
            long r1 = r1.f6175e
            r2 = 32
            long r1 = r1 << r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.bm2.m7951d():long");
    }

    /* renamed from: e */
    public final long m7950e() {
        return (m7951d() * 1000000) / this.f6173c;
    }

    /* renamed from: f */
    public boolean m7949f() {
        return false;
    }

    /* renamed from: g */
    public long m7948g() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public long m7947h() {
        throw new UnsupportedOperationException();
    }
}
