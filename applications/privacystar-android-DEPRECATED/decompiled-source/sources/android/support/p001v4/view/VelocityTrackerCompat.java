package android.support.p001v4.view;

import android.view.VelocityTracker;
@Deprecated
/* renamed from: android.support.v4.view.VelocityTrackerCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/view/VelocityTrackerCompat.class */
public final class VelocityTrackerCompat {
    private VelocityTrackerCompat() {
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getXVelocity(i);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return velocityTracker.getYVelocity(i);
    }
}
