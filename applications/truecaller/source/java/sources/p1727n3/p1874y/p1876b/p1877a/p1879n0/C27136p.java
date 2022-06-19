package p1727n3.p1874y.p1876b.p1877a.p1879n0;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.n0.p */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/p.class */
public final class C27136p {

    /* renamed from: a */
    public final C27137a f75856a;

    /* renamed from: b */
    public int f75857b;

    /* renamed from: c */
    public long f75858c;

    /* renamed from: d */
    public long f75859d;

    /* renamed from: e */
    public long f75860e;

    /* renamed from: f */
    public long f75861f;

    /* renamed from: n3.y.b.a.n0.p$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/n0/p$a.class */
    public static final class C27137a {

        /* renamed from: a */
        public final AudioTrack f75862a;

        /* renamed from: b */
        public final AudioTimestamp f75863b = new AudioTimestamp();

        /* renamed from: c */
        public long f75864c;

        /* renamed from: d */
        public long f75865d;

        /* renamed from: e */
        public long f75866e;

        public C27137a(AudioTrack audioTrack) {
            this.f75862a = audioTrack;
        }
    }

    public C27136p(AudioTrack audioTrack) {
        if (C27445x.f77229a >= 19) {
            this.f75856a = new C27137a(audioTrack);
            m827a();
            return;
        }
        this.f75856a = null;
        m826b(3);
    }

    /* renamed from: a */
    public void m827a() {
        if (this.f75856a != null) {
            m826b(0);
        }
    }

    /* renamed from: b */
    public final void m826b(int i) {
        this.f75857b = i;
        if (i == 0) {
            this.f75860e = 0L;
            this.f75861f = -1L;
            this.f75858c = System.nanoTime() / 1000;
            this.f75859d = 5000L;
        } else if (i == 1) {
            this.f75859d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f75859d = 10000000L;
        } else if (i != 4) {
            throw new IllegalStateException();
        } else {
            this.f75859d = 500000L;
        }
    }
}
