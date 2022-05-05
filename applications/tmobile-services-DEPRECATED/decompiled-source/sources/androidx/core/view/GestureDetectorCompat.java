package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* loaded from: classes-dex2jar.jar:androidx/core/view/GestureDetectorCompat.class */
public final class GestureDetectorCompat {

    /* renamed from: a */
    private final GestureDetectorCompatImpl f3229a;

    /* loaded from: classes-dex2jar.jar:androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImpl.class */
    interface GestureDetectorCompatImpl {
        /* renamed from: a */
        boolean mo19306a(MotionEvent motionEvent);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase.class */
    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {

        /* renamed from: v */
        private static final int f3230v = ViewConfiguration.getLongPressTimeout();

        /* renamed from: w */
        private static final int f3231w = ViewConfiguration.getTapTimeout();

        /* renamed from: x */
        private static final int f3232x = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: a */
        private int f3233a;

        /* renamed from: b */
        private int f3234b;

        /* renamed from: c */
        private int f3235c;

        /* renamed from: d */
        private int f3236d;

        /* renamed from: e */
        private final Handler f3237e;

        /* renamed from: f */
        final GestureDetector.OnGestureListener f3238f;

        /* renamed from: g */
        GestureDetector.OnDoubleTapListener f3239g;

        /* renamed from: h */
        boolean f3240h;

        /* renamed from: i */
        boolean f3241i;

        /* renamed from: j */
        private boolean f3242j;

        /* renamed from: k */
        private boolean f3243k;

        /* renamed from: l */
        private boolean f3244l;

        /* renamed from: m */
        MotionEvent f3245m;

        /* renamed from: n */
        private MotionEvent f3246n;

        /* renamed from: o */
        private boolean f3247o;

        /* renamed from: p */
        private float f3248p;

        /* renamed from: q */
        private float f3249q;

        /* renamed from: r */
        private float f3250r;

        /* renamed from: s */
        private float f3251s;

        /* renamed from: t */
        private boolean f3252t;

        /* renamed from: u */
        private VelocityTracker f3253u;

        /* loaded from: classes-dex2jar.jar:androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler.class */
        private class GestureHandler extends Handler {
            GestureHandler() {
            }

            GestureHandler(Handler handler) {
                super(handler.getLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase = GestureDetectorCompatImplBase.this;
                    gestureDetectorCompatImplBase.f3238f.onShowPress(gestureDetectorCompatImplBase.f3245m);
                } else if (i == 2) {
                    GestureDetectorCompatImplBase.this.m19310d();
                } else if (i == 3) {
                    GestureDetectorCompatImplBase gestureDetectorCompatImplBase2 = GestureDetectorCompatImplBase.this;
                    GestureDetector.OnDoubleTapListener onDoubleTapListener = gestureDetectorCompatImplBase2.f3239g;
                    if (onDoubleTapListener == null) {
                        return;
                    }
                    if (!gestureDetectorCompatImplBase2.f3240h) {
                        onDoubleTapListener.onSingleTapConfirmed(gestureDetectorCompatImplBase2.f3245m);
                    } else {
                        gestureDetectorCompatImplBase2.f3241i = true;
                    }
                } else {
                    throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        GestureDetectorCompatImplBase(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f3237e = new GestureHandler(handler);
            } else {
                this.f3237e = new GestureHandler();
            }
            this.f3238f = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                m19307g((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            m19309e(context);
        }

        /* renamed from: b */
        private void m19312b() {
            this.f3237e.removeMessages(1);
            this.f3237e.removeMessages(2);
            this.f3237e.removeMessages(3);
            this.f3253u.recycle();
            this.f3253u = null;
            this.f3247o = false;
            this.f3240h = false;
            this.f3243k = false;
            this.f3244l = false;
            this.f3241i = false;
            if (this.f3242j) {
                this.f3242j = false;
            }
        }

        /* renamed from: c */
        private void m19311c() {
            this.f3237e.removeMessages(1);
            this.f3237e.removeMessages(2);
            this.f3237e.removeMessages(3);
            this.f3247o = false;
            this.f3243k = false;
            this.f3244l = false;
            this.f3241i = false;
            if (this.f3242j) {
                this.f3242j = false;
            }
        }

        /* renamed from: e */
        private void m19309e(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            } else if (this.f3238f != null) {
                this.f3252t = true;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                this.f3235c = viewConfiguration.getScaledMinimumFlingVelocity();
                this.f3236d = viewConfiguration.getScaledMaximumFlingVelocity();
                this.f3233a = scaledTouchSlop * scaledTouchSlop;
                this.f3234b = scaledDoubleTapSlop * scaledDoubleTapSlop;
            } else {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
        }

        /* renamed from: f */
        private boolean m19308f(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            boolean z = false;
            if (!this.f3244l || motionEvent3.getEventTime() - motionEvent2.getEventTime() > f3232x) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            if ((x * x) + (y * y) < this.f3234b) {
                z = true;
            }
            return z;
        }

        /* JADX WARN: Code restructure failed: missing block: B:66:0x025b, code lost:
            if (java.lang.Math.abs(r0) >= 1.0f) goto L_0x025e;
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0432  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x045f  */
        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo19306a(android.view.MotionEvent r8) {
            /*
                Method dump skipped, instructions count: 1191
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImplBase.mo19306a(android.view.MotionEvent):boolean");
        }

        /* renamed from: d */
        void m19310d() {
            this.f3237e.removeMessages(3);
            this.f3241i = false;
            this.f3242j = true;
            this.f3238f.onLongPress(this.f3245m);
        }

        /* renamed from: g */
        public void m19307g(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f3239g = onDoubleTapListener;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/GestureDetectorCompat$GestureDetectorCompatImplJellybeanMr2.class */
    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {

        /* renamed from: a */
        private final GestureDetector f3255a;

        GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f3255a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        /* renamed from: a */
        public boolean mo19306a(MotionEvent motionEvent) {
            return this.f3255a.onTouchEvent(motionEvent);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f3229a = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
        } else {
            this.f3229a = new GestureDetectorCompatImplBase(context, onGestureListener, handler);
        }
    }

    /* renamed from: a */
    public boolean m19313a(MotionEvent motionEvent) {
        return this.f3229a.mo19306a(motionEvent);
    }
}
