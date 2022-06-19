package androidx.core.view;

import android.view.MotionEvent;
/* renamed from: androidx.core.view.i */
/* loaded from: classes-dex2jar.jar:androidx/core/view/i.class */
public final class C0913i {
    private C0913i() {
    }

    @Deprecated
    /* renamed from: a */
    public static int m44183a(MotionEvent motionEvent) {
        return motionEvent.getActionIndex();
    }

    @Deprecated
    /* renamed from: a */
    public static int m44182a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Deprecated
    /* renamed from: b */
    public static int m44180b(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    /* renamed from: b */
    public static boolean m44181b(MotionEvent motionEvent) {
        return (motionEvent.getSource() & 8194) == 8194;
    }

    @Deprecated
    /* renamed from: c */
    public static float m44179c(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }
}
