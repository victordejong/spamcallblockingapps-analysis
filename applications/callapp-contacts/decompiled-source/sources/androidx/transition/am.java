package androidx.transition;

import android.os.Build;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/am.class */
class am extends al {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5780a = true;

    @Override // androidx.transition.ao
    public void a(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.a(view, i);
        } else if (f5780a) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f5780a = false;
            }
        }
    }
}
