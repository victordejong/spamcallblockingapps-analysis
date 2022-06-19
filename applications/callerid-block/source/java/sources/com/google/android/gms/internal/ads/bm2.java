package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
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
        if (this.f6177g != -9223372036854775807L) {
            return;
        }
        this.f6171a.pause();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: d */
    public final long m7951d() {
        if (this.f6177g != -9223372036854775807L) {
            return Math.min(this.f6179i, this.f6178h + ((((SystemClock.elapsedRealtime() * 1000) - this.f6177g) * this.f6173c) / 1000000));
        }
        int playState = this.f6171a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = this.f6171a.getPlaybackHeadPosition() & 4294967295L;
        char c = playbackHeadPosition;
        if (this.f6172b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f6176f = this.f6174d;
            }
            c = playbackHeadPosition + this.f6176f;
        }
        if (this.f6174d > c) {
            this.f6175e++;
        }
        this.f6174d = c;
        return c + (this.f6175e << 32);
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
