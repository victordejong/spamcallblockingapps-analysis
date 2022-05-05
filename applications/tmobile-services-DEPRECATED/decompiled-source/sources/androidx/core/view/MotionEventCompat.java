package androidx.core.view;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:androidx/core/view/MotionEventCompat.class */
public final class MotionEventCompat {
    private MotionEventCompat() {
    }

    @Deprecated
    /* renamed from: a */
    public static int m19281a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Deprecated
    /* renamed from: b */
    public static int m19280b(MotionEvent motionEvent) {
        return motionEvent.getActionIndex();
    }

    @Deprecated
    /* renamed from: c */
    public static int m19279c(MotionEvent motionEvent) {
        return motionEvent.getActionMasked();
    }

    @Deprecated
    /* renamed from: d */
    public static float m19278d(MotionEvent motionEvent, int i) {
        return motionEvent.getAxisValue(i);
    }

    @Deprecated
    /* renamed from: e */
    public static int m19277e(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    @Deprecated
    /* renamed from: f */
    public static int m19276f(MotionEvent motionEvent) {
        return motionEvent.getSource();
    }

    @Deprecated
    /* renamed from: g */
    public static float m19275g(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    @Deprecated
    /* renamed from: h */
    public static float m19274h(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }

    /* renamed from: i */
    public static boolean m19273i(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
