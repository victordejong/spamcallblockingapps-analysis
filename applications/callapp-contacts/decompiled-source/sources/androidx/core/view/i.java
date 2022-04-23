package androidx.core.view;

import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:androidx/core/view/i.class */
public final class i {
    private i() {
    }

    @Deprecated
    public static int a(MotionEvent motionEvent) {
        return motionEvent.getActionIndex();
    }

    @Deprecated
    public static int a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Deprecated
    public static int b(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    public static boolean b(MotionEvent motionEvent) {
        return (motionEvent.getSource() & 8194) == 8194;
    }

    @Deprecated
    public static float c(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }
}
