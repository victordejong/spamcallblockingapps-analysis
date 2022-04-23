package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/core/view/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final a f1991a;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$a.class */
    public interface a {
        boolean a(MotionEvent motionEvent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$b.class */
    static final class b implements a {
        private static final int l = ViewConfiguration.getLongPressTimeout();
        private static final int m = ViewConfiguration.getTapTimeout();
        private static final int n = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: a  reason: collision with root package name */
        final Handler f1992a;

        /* renamed from: b  reason: collision with root package name */
        final GestureDetector.OnGestureListener f1993b;

        /* renamed from: c  reason: collision with root package name */
        GestureDetector.OnDoubleTapListener f1994c;

        /* renamed from: d  reason: collision with root package name */
        boolean f1995d;
        boolean e;
        boolean f;
        MotionEvent g;
        private int h;
        private int i;
        private int j;
        private int k;
        private boolean o;
        private boolean p;
        private MotionEvent q;
        private boolean r;
        private float s;
        private float t;
        private float u;
        private float v;
        private boolean w;
        private VelocityTracker x;

        /* loaded from: classes-dex2jar.jar:androidx/core/view/d$b$a.class */
        final class a extends Handler {
            a() {
            }

            a(Handler handler) {
                super(handler.getLooper());
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    b.this.f1993b.onShowPress(b.this.g);
                } else if (i == 2) {
                    b bVar = b.this;
                    bVar.f1992a.removeMessages(3);
                    bVar.e = false;
                    bVar.f = true;
                    bVar.f1993b.onLongPress(bVar.g);
                } else if (i != 3) {
                    throw new RuntimeException("Unknown message ".concat(String.valueOf(message)));
                } else if (b.this.f1994c == null) {
                } else {
                    if (!b.this.f1995d) {
                        b.this.f1994c.onSingleTapConfirmed(b.this.g);
                    } else {
                        b.this.e = true;
                    }
                }
            }
        }

        b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f1992a = new a(handler);
            } else {
                this.f1992a = new a();
            }
            this.f1993b = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                this.f1994c = (GestureDetector.OnDoubleTapListener) onGestureListener;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            } else if (onGestureListener != null) {
                this.w = true;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                this.j = viewConfiguration.getScaledMinimumFlingVelocity();
                this.k = viewConfiguration.getScaledMaximumFlingVelocity();
                this.h = scaledTouchSlop * scaledTouchSlop;
                this.i = scaledDoubleTapSlop * scaledDoubleTapSlop;
            } else {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x02e3, code lost:
            if (java.lang.Math.abs(r0) >= 1.0f) goto L_0x02e6;
         */
        /* JADX WARN: Removed duplicated region for block: B:118:0x04a0  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x04f5  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0522  */
        @Override // androidx.core.view.d.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(android.view.MotionEvent r8) {
            /*
                Method dump skipped, instructions count: 1386
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.d.b.a(android.view.MotionEvent):boolean");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$c.class */
    static final class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private final GestureDetector f1997a;

        c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f1997a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.d.a
        public final boolean a(MotionEvent motionEvent) {
            return this.f1997a.onTouchEvent(motionEvent);
        }
    }

    public d(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public d(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f1991a = new c(context, onGestureListener, handler);
        } else {
            this.f1991a = new b(context, onGestureListener, handler);
        }
    }
}
