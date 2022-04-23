package com.google.android.exoplayer2.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.google.android.exoplayer2.util.af;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/g.class */
final class g {

    /* renamed from: a  reason: collision with root package name */
    final a f20756a;

    /* renamed from: b  reason: collision with root package name */
    int f20757b;

    /* renamed from: c  reason: collision with root package name */
    long f20758c;

    /* renamed from: d  reason: collision with root package name */
    long f20759d;
    long e;
    long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/audio/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final AudioTrack f20760a;

        /* renamed from: b  reason: collision with root package name */
        final AudioTimestamp f20761b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        long f20762c;

        /* renamed from: d  reason: collision with root package name */
        long f20763d;
        long e;

        public a(AudioTrack audioTrack) {
            this.f20760a = audioTrack;
        }

        public final long a() {
            return this.f20761b.nanoTime / 1000;
        }
    }

    public g(AudioTrack audioTrack) {
        if (af.f22275a >= 19) {
            this.f20756a = new a(audioTrack);
            a();
            return;
        }
        this.f20756a = null;
        a(3);
    }

    public final void a() {
        if (this.f20756a != null) {
            a(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f20757b = i;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.f20758c = System.nanoTime() / 1000;
            this.f20759d = 10000L;
        } else if (i == 1) {
            this.f20759d = 10000L;
        } else if (i == 2 || i == 3) {
            this.f20759d = 10000000L;
        } else if (i == 4) {
            this.f20759d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    public final long b() {
        a aVar = this.f20756a;
        if (aVar != null) {
            return aVar.a();
        }
        return -9223372036854775807L;
    }

    public final long c() {
        a aVar = this.f20756a;
        if (aVar != null) {
            return aVar.e;
        }
        return -1L;
    }
}
