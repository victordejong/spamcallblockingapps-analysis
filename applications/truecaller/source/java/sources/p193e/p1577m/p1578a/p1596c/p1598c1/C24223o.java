package p193e.p1577m.p1578a.p1596c.p1598c1;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.c1.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/o.class */
public final class C24223o {

    /* renamed from: a */
    public final C24224a f67029a;

    /* renamed from: b */
    public int f67030b;

    /* renamed from: c */
    public long f67031c;

    /* renamed from: d */
    public long f67032d;

    /* renamed from: e */
    public long f67033e;

    /* renamed from: f */
    public long f67034f;

    /* renamed from: e.m.a.c.c1.o$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/c1/o$a.class */
    public static final class C24224a {

        /* renamed from: a */
        public final AudioTrack f67035a;

        /* renamed from: b */
        public final AudioTimestamp f67036b = new AudioTimestamp();

        /* renamed from: c */
        public long f67037c;

        /* renamed from: d */
        public long f67038d;

        /* renamed from: e */
        public long f67039e;

        public C24224a(AudioTrack audioTrack) {
            this.f67035a = audioTrack;
        }
    }

    public C24223o(AudioTrack audioTrack) {
        if (C24773d0.f69427a >= 19) {
            this.f67029a = new C24224a(audioTrack);
            m5441a();
            return;
        }
        this.f67029a = null;
        m5440b(3);
    }

    /* renamed from: a */
    public void m5441a() {
        if (this.f67029a != null) {
            m5440b(0);
        }
    }

    /* renamed from: b */
    public final void m5440b(int i) {
        this.f67030b = i;
        if (i == 0) {
            this.f67033e = 0L;
            this.f67034f = -1L;
            this.f67031c = System.nanoTime() / 1000;
            this.f67032d = 5000L;
        } else if (i == 1) {
            this.f67032d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f67032d = 10000000L;
        } else if (i != 4) {
            throw new IllegalStateException();
        } else {
            this.f67032d = 500000L;
        }
    }
}
