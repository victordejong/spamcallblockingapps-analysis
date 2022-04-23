package com.facebook.rebound;

import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a.class */
abstract class a {

    /* renamed from: com.facebook.rebound.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a$a.class */
    static final class C0406a extends j {

        /* renamed from: a  reason: collision with root package name */
        final Choreographer f20111a;

        /* renamed from: b  reason: collision with root package name */
        final Choreographer.FrameCallback f20112b = new Choreographer.FrameCallback() { // from class: com.facebook.rebound.a.a.1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                if (C0406a.this.f20113c && C0406a.this.e != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    C0406a.this.e.a(uptimeMillis - C0406a.this.f20114d);
                    C0406a.this.f20114d = uptimeMillis;
                    C0406a.this.f20111a.postFrameCallback(C0406a.this.f20112b);
                }
            }
        };

        /* renamed from: c  reason: collision with root package name */
        boolean f20113c;

        /* renamed from: d  reason: collision with root package name */
        long f20114d;

        public C0406a(Choreographer choreographer) {
            this.f20111a = choreographer;
        }

        @Override // com.facebook.rebound.j
        public final void a() {
            if (!this.f20113c) {
                this.f20113c = true;
                this.f20114d = SystemClock.uptimeMillis();
                this.f20111a.removeFrameCallback(this.f20112b);
                this.f20111a.postFrameCallback(this.f20112b);
            }
        }

        @Override // com.facebook.rebound.j
        public final void b() {
            this.f20113c = false;
            this.f20111a.removeFrameCallback(this.f20112b);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a$b.class */
    static final class b extends j {

        /* renamed from: a  reason: collision with root package name */
        final Handler f20116a;

        /* renamed from: b  reason: collision with root package name */
        final Runnable f20117b = new Runnable() { // from class: com.facebook.rebound.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (b.this.f20118c && b.this.e != null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    b.this.e.a(uptimeMillis - b.this.f20119d);
                    b.this.f20119d = uptimeMillis;
                    b.this.f20116a.post(b.this.f20117b);
                }
            }
        };

        /* renamed from: c  reason: collision with root package name */
        boolean f20118c;

        /* renamed from: d  reason: collision with root package name */
        long f20119d;

        public b(Handler handler) {
            this.f20116a = handler;
        }

        @Override // com.facebook.rebound.j
        public final void a() {
            if (!this.f20118c) {
                this.f20118c = true;
                this.f20119d = SystemClock.uptimeMillis();
                this.f20116a.removeCallbacks(this.f20117b);
                this.f20116a.post(this.f20117b);
            }
        }

        @Override // com.facebook.rebound.j
        public final void b() {
            this.f20118c = false;
            this.f20116a.removeCallbacks(this.f20117b);
        }
    }

    a() {
    }

    public static j a() {
        return Build.VERSION.SDK_INT >= 16 ? new C0406a(Choreographer.getInstance()) : new b(new Handler());
    }
}
