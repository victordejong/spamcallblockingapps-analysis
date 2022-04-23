package androidx.media2.exoplayer.external.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media2.exoplayer.external.util.ac;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/n.class */
final class n {

    /* renamed from: a  reason: collision with root package name */
    final a f2902a;

    /* renamed from: b  reason: collision with root package name */
    int f2903b;

    /* renamed from: c  reason: collision with root package name */
    long f2904c;

    /* renamed from: d  reason: collision with root package name */
    long f2905d;
    long e;
    long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/n$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final AudioTrack f2906a;

        /* renamed from: b  reason: collision with root package name */
        final AudioTimestamp f2907b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        long f2908c;

        /* renamed from: d  reason: collision with root package name */
        long f2909d;
        long e;

        public a(AudioTrack audioTrack) {
            this.f2906a = audioTrack;
        }

        public final long a() {
            return this.f2907b.nanoTime / 1000;
        }
    }

    public n(AudioTrack audioTrack) {
        if (ac.f4119a >= 19) {
            this.f2902a = new a(audioTrack);
            a();
            return;
        }
        this.f2902a = null;
        a(3);
    }

    public final void a() {
        if (this.f2902a != null) {
            a(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i) {
        this.f2903b = i;
        if (i == 0) {
            this.e = 0L;
            this.f = -1L;
            this.f2904c = System.nanoTime() / 1000;
            this.f2905d = 5000L;
        } else if (i == 1) {
            this.f2905d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f2905d = 10000000L;
        } else if (i == 4) {
            this.f2905d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    public final long b() {
        a aVar = this.f2902a;
        if (aVar != null) {
            return aVar.a();
        }
        return -9223372036854775807L;
    }

    public final long c() {
        a aVar = this.f2902a;
        if (aVar != null) {
            return aVar.e;
        }
        return -1L;
    }
}
