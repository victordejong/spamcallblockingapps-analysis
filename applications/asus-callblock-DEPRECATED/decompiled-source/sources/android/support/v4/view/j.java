package android.support.v4.view;

import android.os.Build;
import android.view.MotionEvent;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    static final e f233a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/j$a.class */
    static class a implements e {
        a() {
        }

        @Override // android.support.v4.view.j.e
        public int a(MotionEvent motionEvent) {
            return 1;
        }

        @Override // android.support.v4.view.j.e
        public int a(MotionEvent motionEvent, int i) {
            return i == 0 ? 0 : -1;
        }

        @Override // android.support.v4.view.j.e
        public int b(MotionEvent motionEvent) {
            return 0;
        }

        @Override // android.support.v4.view.j.e
        public int b(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return 0;
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        @Override // android.support.v4.view.j.e
        public float c(MotionEvent motionEvent) {
            return 0.0f;
        }

        @Override // android.support.v4.view.j.e
        public float c(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return motionEvent.getX();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }

        @Override // android.support.v4.view.j.e
        public float d(MotionEvent motionEvent, int i) {
            if (i == 0) {
                return motionEvent.getY();
            }
            throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/j$b.class */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final int a(MotionEvent motionEvent) {
            return motionEvent.getPointerCount();
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final int a(MotionEvent motionEvent, int i) {
            return motionEvent.findPointerIndex(i);
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final int b(MotionEvent motionEvent, int i) {
            return motionEvent.getPointerId(i);
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final float c(MotionEvent motionEvent, int i) {
            return motionEvent.getX(i);
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final float d(MotionEvent motionEvent, int i) {
            return motionEvent.getY(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/j$c.class */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final int b(MotionEvent motionEvent) {
            return motionEvent.getSource();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/j$d.class */
    static final class d extends c {
        d() {
        }

        @Override // android.support.v4.view.j.a, android.support.v4.view.j.e
        public final float c(MotionEvent motionEvent) {
            return motionEvent.getAxisValue(9);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/j$e.class */
    interface e {
        int a(MotionEvent motionEvent);

        int a(MotionEvent motionEvent, int i);

        int b(MotionEvent motionEvent);

        int b(MotionEvent motionEvent, int i);

        float c(MotionEvent motionEvent);

        float c(MotionEvent motionEvent, int i);

        float d(MotionEvent motionEvent, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 12) {
            f233a = new d();
        } else if (Build.VERSION.SDK_INT >= 9) {
            f233a = new c();
        } else if (Build.VERSION.SDK_INT >= 5) {
            f233a = new b();
        } else {
            f233a = new a();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public static int a(MotionEvent motionEvent, int i) {
        return f233a.a(motionEvent, i);
    }

    public static int b(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    public static int b(MotionEvent motionEvent, int i) {
        return f233a.b(motionEvent, i);
    }

    public static float c(MotionEvent motionEvent, int i) {
        return f233a.c(motionEvent, i);
    }

    public static int c(MotionEvent motionEvent) {
        return f233a.a(motionEvent);
    }

    public static float d(MotionEvent motionEvent, int i) {
        return f233a.d(motionEvent, i);
    }

    public static int d(MotionEvent motionEvent) {
        return f233a.b(motionEvent);
    }

    public static float e(MotionEvent motionEvent) {
        return f233a.c(motionEvent);
    }
}
