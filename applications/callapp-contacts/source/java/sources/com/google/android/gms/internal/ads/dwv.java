package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dwv.class */
public class dwv {

    /* renamed from: a */
    protected AudioTrack f47878a;

    /* renamed from: b */
    private boolean f47879b;

    /* renamed from: c */
    private int f47880c;

    /* renamed from: d */
    private long f47881d;

    /* renamed from: e */
    private long f47882e;

    /* renamed from: f */
    private long f47883f;

    /* renamed from: g */
    private long f47884g;

    /* renamed from: h */
    private long f47885h;

    /* renamed from: i */
    private long f47886i;

    private dwv() {
    }

    public /* synthetic */ dwv(dws dwsVar) {
        this();
    }

    /* renamed from: a */
    public final void m15548a(long j) {
        this.f47885h = m15543e();
        this.f47884g = SystemClock.elapsedRealtime() * 1000;
        this.f47886i = j;
        this.f47878a.stop();
    }

    /* renamed from: a */
    public void mo15547a(AudioTrack audioTrack, boolean z) {
        this.f47878a = audioTrack;
        this.f47879b = z;
        this.f47884g = -9223372036854775807L;
        this.f47881d = 0L;
        this.f47882e = 0L;
        this.f47883f = 0L;
        if (audioTrack != null) {
            this.f47880c = audioTrack.getSampleRate();
        }
    }

    /* renamed from: a */
    public boolean mo15549a() {
        return false;
    }

    /* renamed from: b */
    public long mo15546b() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public long mo15545c() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final void m15544d() {
        if (this.f47884g != -9223372036854775807L) {
            return;
        }
        this.f47878a.pause();
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: e */
    public final long m15543e() {
        if (this.f47884g != -9223372036854775807L) {
            return Math.min(this.f47886i, this.f47885h + ((((SystemClock.elapsedRealtime() * 1000) - this.f47884g) * this.f47880c) / 1000000));
        }
        int playState = this.f47878a.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = 4294967295L & this.f47878a.getPlaybackHeadPosition();
        char c = playbackHeadPosition;
        if (this.f47879b) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.f47883f = this.f47881d;
            }
            c = playbackHeadPosition + this.f47883f;
        }
        if (this.f47881d > c) {
            this.f47882e++;
        }
        this.f47881d = c;
        return c + (this.f47882e << 32);
    }

    /* renamed from: f */
    public final long m15542f() {
        return (m15543e() * 1000000) / this.f47880c;
    }
}
