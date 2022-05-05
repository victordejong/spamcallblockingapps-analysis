package android.support.v4.view;

import android.os.Build;
import android.view.VelocityTracker;
/* loaded from: classes-dex2jar.jar:android/support/v4/view/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    static final c f239a;

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/s$a.class */
    static final class a implements c {
        a() {
        }

        @Override // android.support.v4.view.s.c
        public final float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity();
        }

        @Override // android.support.v4.view.s.c
        public final float b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity();
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/s$b.class */
    static final class b implements c {
        b() {
        }

        @Override // android.support.v4.view.s.c
        public final float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity(i);
        }

        @Override // android.support.v4.view.s.c
        public final float b(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:android/support/v4/view/s$c.class */
    interface c {
        float a(VelocityTracker velocityTracker, int i);

        float b(VelocityTracker velocityTracker, int i);
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f239a = new b();
        } else {
            f239a = new a();
        }
    }

    public static float a(VelocityTracker velocityTracker, int i) {
        return f239a.a(velocityTracker, i);
    }

    public static float b(VelocityTracker velocityTracker, int i) {
        return f239a.b(velocityTracker, i);
    }
}
