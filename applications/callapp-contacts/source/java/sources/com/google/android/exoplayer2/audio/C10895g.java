package com.google.android.exoplayer2.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.util.C11599af;
/* renamed from: com.google.android.exoplayer2.audio.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/g.class */
final class C10895g {

    /* renamed from: a */
    final C10896a f35153a;

    /* renamed from: b */
    int f35154b;

    /* renamed from: c */
    long f35155c;

    /* renamed from: d */
    long f35156d;

    /* renamed from: e */
    long f35157e;

    /* renamed from: f */
    long f35158f;

    /* renamed from: com.google.android.exoplayer2.audio.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/g$a.class */
    public static final class C10896a {

        /* renamed from: a */
        final AudioTrack f35159a;

        /* renamed from: b */
        final AudioTimestamp f35160b = new AudioTimestamp();

        /* renamed from: c */
        long f35161c;

        /* renamed from: d */
        long f35162d;

        /* renamed from: e */
        long f35163e;

        public C10896a(AudioTrack audioTrack) {
            this.f35159a = audioTrack;
        }

        /* renamed from: a */
        public final long m22035a() {
            return this.f35160b.nanoTime / 1000;
        }
    }

    public C10895g(AudioTrack audioTrack) {
        if (C11599af.f38648a >= 19) {
            this.f35153a = new C10896a(audioTrack);
            m22039a();
            return;
        }
        this.f35153a = null;
        m22038a(3);
    }

    /* renamed from: a */
    public final void m22039a() {
        if (this.f35153a != null) {
            m22038a(0);
        }
    }

    /* renamed from: a */
    public final void m22038a(int i) {
        this.f35154b = i;
        if (i == 0) {
            this.f35157e = 0L;
            this.f35158f = -1L;
            this.f35155c = System.nanoTime() / 1000;
            this.f35156d = 10000L;
        } else if (i == 1) {
            this.f35156d = 10000L;
        } else if (i == 2 || i == 3) {
            this.f35156d = 10000000L;
        } else if (i != 4) {
            throw new IllegalStateException();
        } else {
            this.f35156d = 500000L;
        }
    }

    /* renamed from: b */
    public final long m22037b() {
        C10896a c10896a = this.f35153a;
        if (c10896a != null) {
            return c10896a.m22035a();
        }
        return -9223372036854775807L;
    }

    /* renamed from: c */
    public final long m22036c() {
        C10896a c10896a = this.f35153a;
        if (c10896a != null) {
            return c10896a.f35163e;
        }
        return -1L;
    }
}
