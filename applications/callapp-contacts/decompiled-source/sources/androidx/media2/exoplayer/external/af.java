package androidx.media2.exoplayer.external;

import android.os.Handler;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    final b f2813a;

    /* renamed from: b  reason: collision with root package name */
    final al f2814b;

    /* renamed from: c  reason: collision with root package name */
    int f2815c;

    /* renamed from: d  reason: collision with root package name */
    Object f2816d;
    Handler e;
    int f;
    long g = -9223372036854775807L;
    boolean h = true;
    private final a i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af$a.class */
    public interface a {
        void a(af afVar);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/af$b.class */
    public interface b {
        void a(int i, Object obj) throws ExoPlaybackException;
    }

    public af(a aVar, b bVar, al alVar, int i, Handler handler) {
        this.i = aVar;
        this.f2813a = bVar;
        this.f2814b = alVar;
        this.e = handler;
        this.f = i;
    }

    public final af a() {
        androidx.media2.exoplayer.external.util.a.b(!this.j);
        if (this.g == -9223372036854775807L) {
            androidx.media2.exoplayer.external.util.a.a(this.h);
        }
        this.j = true;
        this.i.a(this);
        return this;
    }

    public final af a(int i) {
        androidx.media2.exoplayer.external.util.a.b(!this.j);
        this.f2815c = i;
        return this;
    }

    public final af a(Object obj) {
        androidx.media2.exoplayer.external.util.a.b(!this.j);
        this.f2816d = obj;
        return this;
    }

    public final void a(boolean z) {
        synchronized (this) {
            this.k = z | this.k;
            this.l = true;
            notifyAll();
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.m;
        }
        return z;
    }

    public final boolean c() throws InterruptedException {
        boolean z;
        synchronized (this) {
            androidx.media2.exoplayer.external.util.a.b(this.j);
            androidx.media2.exoplayer.external.util.a.b(this.e.getLooper().getThread() != Thread.currentThread());
            while (!this.l) {
                wait();
            }
            z = this.k;
        }
        return z;
    }
}
