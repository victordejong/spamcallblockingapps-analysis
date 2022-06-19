package p020b.p041h.p050l;

import android.view.MotionEvent;
/* renamed from: b.h.l.j */
/* loaded from: classes-dex2jar.jar:b/h/l/j.class */
public final class C1666j {
    @Deprecated
    /* renamed from: a */
    public static int m29391a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Deprecated
    /* renamed from: b */
    public static int m29390b(MotionEvent motionEvent) {
        return motionEvent.getActionIndex();
    }

    @Deprecated
    /* renamed from: c */
    public static int m29389c(MotionEvent motionEvent) {
        return motionEvent.getActionMasked();
    }

    @Deprecated
    /* renamed from: d */
    public static int m29388d(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    @Deprecated
    /* renamed from: e */
    public static float m29387e(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    @Deprecated
    /* renamed from: f */
    public static float m29386f(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }

    /* renamed from: g */
    public static boolean m29385g(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }
}
