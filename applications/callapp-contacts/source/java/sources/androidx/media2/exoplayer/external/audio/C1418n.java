package androidx.media2.exoplayer.external.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media2.exoplayer.external.util.C1996ac;
/* renamed from: androidx.media2.exoplayer.external.audio.n */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/n.class */
final class C1418n {

    /* renamed from: a */
    final C1419a f5338a;

    /* renamed from: b */
    int f5339b;

    /* renamed from: c */
    long f5340c;

    /* renamed from: d */
    long f5341d;

    /* renamed from: e */
    long f5342e;

    /* renamed from: f */
    long f5343f;

    /* renamed from: androidx.media2.exoplayer.external.audio.n$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/n$a.class */
    public static final class C1419a {

        /* renamed from: a */
        final AudioTrack f5344a;

        /* renamed from: b */
        final AudioTimestamp f5345b = new AudioTimestamp();

        /* renamed from: c */
        long f5346c;

        /* renamed from: d */
        long f5347d;

        /* renamed from: e */
        long f5348e;

        public C1419a(AudioTrack audioTrack) {
            this.f5344a = audioTrack;
        }

        /* renamed from: a */
        public final long m42996a() {
            return this.f5345b.nanoTime / 1000;
        }
    }

    public C1418n(AudioTrack audioTrack) {
        if (C1996ac.f8062a >= 19) {
            this.f5338a = new C1419a(audioTrack);
            m43000a();
            return;
        }
        this.f5338a = null;
        m42999a(3);
    }

    /* renamed from: a */
    public final void m43000a() {
        if (this.f5338a != null) {
            m42999a(0);
        }
    }

    /* renamed from: a */
    public final void m42999a(int i) {
        this.f5339b = i;
        if (i == 0) {
            this.f5342e = 0L;
            this.f5343f = -1L;
            this.f5340c = System.nanoTime() / 1000;
            this.f5341d = 5000L;
        } else if (i == 1) {
            this.f5341d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f5341d = 10000000L;
        } else if (i != 4) {
            throw new IllegalStateException();
        } else {
            this.f5341d = 500000L;
        }
    }

    /* renamed from: b */
    public final long m42998b() {
        C1419a c1419a = this.f5338a;
        if (c1419a != null) {
            return c1419a.m42996a();
        }
        return -9223372036854775807L;
    }

    /* renamed from: c */
    public final long m42997c() {
        C1419a c1419a = this.f5338a;
        if (c1419a != null) {
            return c1419a.f5348e;
        }
        return -1L;
    }
}
