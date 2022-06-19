package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmf.class */
public class dmf {

    /* renamed from: a */
    protected AudioTrack f14776a;

    /* renamed from: b */
    private boolean f14777b;

    /* renamed from: c */
    private int f14778c;

    /* renamed from: d */
    private long f14779d;

    /* renamed from: e */
    private long f14780e;

    /* renamed from: f */
    private long f14781f;

    /* renamed from: g */
    private long f14782g;

    /* renamed from: h */
    private long f14783h;

    /* renamed from: i */
    private long f14784i;

    private dmf() {
    }

    public /* synthetic */ dmf(dmc dmcVar) {
        this();
    }

    /* renamed from: a */
    public final void m9145a(long j) {
        this.f14783h = m9140e();
        this.f14782g = SystemClock.elapsedRealtime() * 1000;
        this.f14784i = j;
        this.f14776a.stop();
    }

    /* renamed from: a */
    public void mo9144a(AudioTrack audioTrack, boolean z) {
        this.f14776a = audioTrack;
        this.f14777b = z;
        this.f14782g = -9223372036854775807L;
        this.f14779d = 0L;
        this.f14780e = 0L;
        this.f14781f = 0L;
        if (audioTrack != null) {
            this.f14778c = audioTrack.getSampleRate();
        }
    }

    /* renamed from: a */
    public boolean mo9146a() {
        return false;
    }

    /* renamed from: b */
    public long mo9143b() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: c */
    public long mo9142c() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public final void m9141d() {
        if (this.f14782g != -9223372036854775807L) {
            return;
        }
        this.f14776a.pause();
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: e */
    public final long m9140e() {
        char c;
        if (this.f14782g != -9223372036854775807L) {
            c = Math.min(this.f14784i, ((((SystemClock.elapsedRealtime() * 1000) - this.f14782g) * this.f14778c) / 1000000) + this.f14783h);
        } else {
            int playState = this.f14776a.getPlayState();
            if (playState == 1) {
                c = 0;
            } else {
                ?? playbackHeadPosition = 4294967295L & this.f14776a.getPlaybackHeadPosition();
                char c2 = playbackHeadPosition;
                if (this.f14777b) {
                    if (playState == 2 && playbackHeadPosition == 0) {
                        this.f14781f = this.f14779d;
                    }
                    c2 = playbackHeadPosition + this.f14781f;
                }
                if (this.f14779d > c2) {
                    this.f14780e++;
                }
                this.f14779d = c2;
                c = c2 + (this.f14780e << 32);
            }
        }
        return c;
    }

    /* renamed from: f */
    public final long m9139f() {
        return (m9140e() * 1000000) / this.f14778c;
    }
}
