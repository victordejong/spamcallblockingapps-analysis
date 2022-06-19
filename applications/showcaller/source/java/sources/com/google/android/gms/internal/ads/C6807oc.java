package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* renamed from: com.google.android.gms.internal.ads.oc */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/oc.class */
class C6807oc {

    /* renamed from: a */
    protected AudioTrack f27490a;

    /* renamed from: b */
    private boolean f27491b;

    /* renamed from: c */
    private int f27492c;

    /* renamed from: d */
    private long f27493d;

    /* renamed from: e */
    private long f27494e;

    /* renamed from: f */
    private long f27495f;

    /* renamed from: g */
    private long f27496g;

    /* renamed from: h */
    private long f27497h;

    /* renamed from: i */
    private long f27498i;

    public /* synthetic */ C6807oc(C6918rc c6918rc) {
    }

    /* renamed from: a */
    public void mo12315a(AudioTrack audioTrack, boolean z) {
        this.f27490a = audioTrack;
        this.f27491b = z;
        this.f27496g = -9223372036854775807L;
        this.f27493d = 0L;
        this.f27494e = 0L;
        this.f27495f = 0L;
        if (audioTrack != null) {
            this.f27492c = audioTrack.getSampleRate();
        }
    }

    /* renamed from: b */
    public final void m12701b(long j) {
        this.f27497h = m12699d();
        this.f27496g = SystemClock.elapsedRealtime() * 1000;
        this.f27498i = j;
        this.f27490a.stop();
    }

    /* renamed from: c */
    public final void m12700c() {
        if (this.f27496g != -9223372036854775807L) {
            return;
        }
        this.f27490a.pause();
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* renamed from: d */
    public final long m12699d() {
        if (this.f27496g != -9223372036854775807L) {
            return Math.min(this.f27498i, this.f27497h + ((((SystemClock.elapsedRealtime() * 1000) - this.f27496g) * this.f27492c) / 1000000));
        }
        int playState = this.f27490a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = this.f27490a.getPlaybackHeadPosition() & 4294967295L;
        char c = playbackHeadPosition;
        if (this.f27491b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f27495f = this.f27493d;
            }
            c = playbackHeadPosition + this.f27495f;
        }
        if (this.f27493d > c) {
            this.f27494e++;
        }
        this.f27493d = c;
        return c + (this.f27494e << 32);
    }

    /* renamed from: e */
    public final long m12698e() {
        return (m12699d() * 1000000) / this.f27492c;
    }

    /* renamed from: f */
    public boolean mo12314f() {
        return false;
    }

    /* renamed from: g */
    public long mo12313g() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public long mo12312h() {
        throw new UnsupportedOperationException();
    }
}
