package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* renamed from: androidx.core.view.d */
/* loaded from: classes-dex2jar.jar:androidx/core/view/d.class */
public final class C0903d {

    /* renamed from: a */
    public final AbstractC0904a f3716a;

    /* renamed from: androidx.core.view.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$a.class */
    public interface AbstractC0904a {
        /* renamed from: a */
        boolean mo44196a(MotionEvent motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$b.class */
    public static final class C0905b implements AbstractC0904a {

        /* renamed from: l */
        private static final int f3717l = ViewConfiguration.getLongPressTimeout();

        /* renamed from: m */
        private static final int f3718m = ViewConfiguration.getTapTimeout();

        /* renamed from: n */
        private static final int f3719n = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: a */
        final Handler f3720a;

        /* renamed from: b */
        final GestureDetector.OnGestureListener f3721b;

        /* renamed from: c */
        GestureDetector.OnDoubleTapListener f3722c;

        /* renamed from: d */
        boolean f3723d;

        /* renamed from: e */
        boolean f3724e;

        /* renamed from: f */
        boolean f3725f;

        /* renamed from: g */
        MotionEvent f3726g;

        /* renamed from: h */
        private int f3727h;

        /* renamed from: i */
        private int f3728i;

        /* renamed from: j */
        private int f3729j;

        /* renamed from: k */
        private int f3730k;

        /* renamed from: o */
        private boolean f3731o;

        /* renamed from: p */
        private boolean f3732p;

        /* renamed from: q */
        private MotionEvent f3733q;

        /* renamed from: r */
        private boolean f3734r;

        /* renamed from: s */
        private float f3735s;

        /* renamed from: t */
        private float f3736t;

        /* renamed from: u */
        private float f3737u;

        /* renamed from: v */
        private float f3738v;

        /* renamed from: w */
        private boolean f3739w;

        /* renamed from: x */
        private VelocityTracker f3740x;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.core.view.d$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/view/d$b$a.class */
        public final class HandlerC0906a extends Handler {
            HandlerC0906a() {
                C0905b.this = r4;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            HandlerC0906a(Handler handler) {
                super(handler.getLooper());
                C0905b.this = r4;
            }

            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    C0905b.this.f3721b.onShowPress(C0905b.this.f3726g);
                } else if (i == 2) {
                    C0905b c0905b = C0905b.this;
                    c0905b.f3720a.removeMessages(3);
                    c0905b.f3724e = false;
                    c0905b.f3725f = true;
                    c0905b.f3721b.onLongPress(c0905b.f3726g);
                } else if (i != 3) {
                    throw new RuntimeException("Unknown message ".concat(String.valueOf(message)));
                } else {
                    if (C0905b.this.f3722c == null) {
                        return;
                    }
                    if (!C0905b.this.f3723d) {
                        C0905b.this.f3722c.onSingleTapConfirmed(C0905b.this.f3726g);
                    } else {
                        C0905b.this.f3724e = true;
                    }
                }
            }
        }

        C0905b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.f3720a = new HandlerC0906a(handler);
            } else {
                this.f3720a = new HandlerC0906a();
            }
            this.f3721b = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                this.f3722c = (GestureDetector.OnDoubleTapListener) onGestureListener;
            }
            if (context != null) {
                if (onGestureListener == null) {
                    throw new IllegalArgumentException("OnGestureListener must not be null");
                }
                this.f3739w = true;
                ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
                int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
                int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
                this.f3729j = viewConfiguration.getScaledMinimumFlingVelocity();
                this.f3730k = viewConfiguration.getScaledMaximumFlingVelocity();
                this.f3727h = scaledTouchSlop * scaledTouchSlop;
                this.f3728i = scaledDoubleTapSlop * scaledDoubleTapSlop;
                return;
            }
            throw new IllegalArgumentException("Context must not be null");
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x02e3, code lost:
            if (java.lang.Math.abs(r0) >= 1.0f) goto L70;
         */
        /* JADX WARN: Removed duplicated region for block: B:118:0x04a0  */
        /* JADX WARN: Removed duplicated region for block: B:123:0x04f5  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0522  */
        @Override // androidx.core.view.C0903d.AbstractC0904a
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo44196a(android.view.MotionEvent r8) {
            /*
                Method dump skipped, instructions count: 1386
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.C0903d.C0905b.mo44196a(android.view.MotionEvent):boolean");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.view.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/view/d$c.class */
    public static final class C0907c implements AbstractC0904a {

        /* renamed from: a */
        private final GestureDetector f3742a;

        C0907c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f3742a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.C0903d.AbstractC0904a
        /* renamed from: a */
        public final boolean mo44196a(MotionEvent motionEvent) {
            return this.f3742a.onTouchEvent(motionEvent);
        }
    }

    public C0903d(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public C0903d(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f3716a = new C0907c(context, onGestureListener, handler);
        } else {
            this.f3716a = new C0905b(context, onGestureListener, handler);
        }
    }
}
