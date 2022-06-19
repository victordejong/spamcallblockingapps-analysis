package com.facebook.rebound;

import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Choreographer;
/* renamed from: com.facebook.rebound.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a.class */
abstract class AbstractC10406a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.a$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a$a.class */
    public static final class C10407a extends AbstractC10421j {

        /* renamed from: a */
        final Choreographer f34055a;

        /* renamed from: b */
        final Choreographer.FrameCallback f34056b = new Choreographer.FrameCallback() { // from class: com.facebook.rebound.a.a.1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                if (!C10407a.this.f34057c || C10407a.this.f34100e == null) {
                    return;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                C10407a.this.f34100e.m22855a(uptimeMillis - C10407a.this.f34058d);
                C10407a.this.f34058d = uptimeMillis;
                C10407a.this.f34055a.postFrameCallback(C10407a.this.f34056b);
            }
        };

        /* renamed from: c */
        boolean f34057c;

        /* renamed from: d */
        long f34058d;

        public C10407a(Choreographer choreographer) {
            this.f34055a = choreographer;
        }

        @Override // com.facebook.rebound.AbstractC10421j
        /* renamed from: a */
        public final void mo22828a() {
            if (this.f34057c) {
                return;
            }
            this.f34057c = true;
            this.f34058d = SystemClock.uptimeMillis();
            this.f34055a.removeFrameCallback(this.f34056b);
            this.f34055a.postFrameCallback(this.f34056b);
        }

        @Override // com.facebook.rebound.AbstractC10421j
        /* renamed from: b */
        public final void mo22826b() {
            this.f34057c = false;
            this.f34055a.removeFrameCallback(this.f34056b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.rebound.a$b */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/a$b.class */
    public static final class C10409b extends AbstractC10421j {

        /* renamed from: a */
        final Handler f34060a;

        /* renamed from: b */
        final Runnable f34061b = new Runnable() { // from class: com.facebook.rebound.a.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!C10409b.this.f34062c || C10409b.this.f34100e == null) {
                    return;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                C10409b.this.f34100e.m22855a(uptimeMillis - C10409b.this.f34063d);
                C10409b.this.f34063d = uptimeMillis;
                C10409b.this.f34060a.post(C10409b.this.f34061b);
            }
        };

        /* renamed from: c */
        boolean f34062c;

        /* renamed from: d */
        long f34063d;

        public C10409b(Handler handler) {
            this.f34060a = handler;
        }

        @Override // com.facebook.rebound.AbstractC10421j
        /* renamed from: a */
        public final void mo22828a() {
            if (this.f34062c) {
                return;
            }
            this.f34062c = true;
            this.f34063d = SystemClock.uptimeMillis();
            this.f34060a.removeCallbacks(this.f34061b);
            this.f34060a.post(this.f34061b);
        }

        @Override // com.facebook.rebound.AbstractC10421j
        /* renamed from: b */
        public final void mo22826b() {
            this.f34062c = false;
            this.f34060a.removeCallbacks(this.f34061b);
        }
    }

    AbstractC10406a() {
    }

    /* renamed from: a */
    public static AbstractC10421j m22857a() {
        return Build.VERSION.SDK_INT >= 16 ? new C10407a(Choreographer.getInstance()) : new C10409b(new Handler());
    }
}
