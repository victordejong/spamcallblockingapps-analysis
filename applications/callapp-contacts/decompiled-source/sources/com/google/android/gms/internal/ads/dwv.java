package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwv.class */
public class dwv {

    /* renamed from: a  reason: collision with root package name */
    protected AudioTrack f27336a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27337b;

    /* renamed from: c  reason: collision with root package name */
    private int f27338c;

    /* renamed from: d  reason: collision with root package name */
    private long f27339d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;

    private dwv() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ dwv(dws dwsVar) {
        this();
    }

    public final void a(long j) {
        this.h = e();
        this.g = SystemClock.elapsedRealtime() * 1000;
        this.i = j;
        this.f27336a.stop();
    }

    public void a(AudioTrack audioTrack, boolean z) {
        this.f27336a = audioTrack;
        this.f27337b = z;
        this.g = -9223372036854775807L;
        this.f27339d = 0L;
        this.e = 0L;
        this.f = 0L;
        if (audioTrack != null) {
            this.f27338c = audioTrack.getSampleRate();
        }
    }

    public boolean a() {
        return false;
    }

    public long b() {
        throw new UnsupportedOperationException();
    }

    public long c() {
        throw new UnsupportedOperationException();
    }

    public final void d() {
        if (this.g == -9223372036854775807L) {
            this.f27336a.pause();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long e() {
        /*
            r7 = this;
            r0 = r7
            long r0 = r0.g
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0030
            long r0 = android.os.SystemClock.elapsedRealtime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r1 = r7
            long r1 = r1.g
            long r0 = r0 - r1
            r1 = r7
            int r1 = r1.f27338c
            long r1 = (long) r1
            long r0 = r0 * r1
            r1 = 1000000(0xf4240, double:4.940656E-318)
            long r0 = r0 / r1
            r8 = r0
            r0 = r7
            long r0 = r0.i
            r1 = r7
            long r1 = r1.h
            r2 = r8
            long r1 = r1 + r2
            long r0 = java.lang.Math.min(r0, r1)
            return r0
        L_0x0030:
            r0 = r7
            android.media.AudioTrack r0 = r0.f27336a
            int r0 = r0.getPlayState()
            r10 = r0
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L_0x003f
            r0 = 0
            return r0
        L_0x003f:
            r0 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r1 = r7
            android.media.AudioTrack r1 = r1.f27336a
            int r1 = r1.getPlaybackHeadPosition()
            long r1 = (long) r1
            long r0 = r0 & r1
            r11 = r0
            r0 = r11
            r8 = r0
            r0 = r7
            boolean r0 = r0.f27337b
            if (r0 == 0) goto L_0x0073
            r0 = r10
            r1 = 2
            if (r0 != r1) goto L_0x006b
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006b
            r0 = r7
            r1 = r7
            long r1 = r1.f27339d
            r0.f = r1
        L_0x006b:
            r0 = r11
            r1 = r7
            long r1 = r1.f
            long r0 = r0 + r1
            r8 = r0
        L_0x0073:
            r0 = r7
            long r0 = r0.f27339d
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0086
            r0 = r7
            r1 = r7
            long r1 = r1.e
            r2 = 1
            long r1 = r1 + r2
            r0.e = r1
        L_0x0086:
            r0 = r7
            r1 = r8
            r0.f27339d = r1
            r0 = r8
            r1 = r7
            long r1 = r1.e
            r2 = 32
            long r1 = r1 << r2
            long r0 = r0 + r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dwv.e():long");
    }

    public final long f() {
        return (e() * 1000000) / this.f27338c;
    }
}
