package androidx.transition;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/al.class */
class al extends ak {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5779a = true;

    @Override // androidx.transition.ao
    public void a(View view, int i, int i2, int i3, int i4) {
        if (f5779a) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f5779a = false;
            }
        }
    }
}
