package androidx.transition;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.transition.am */
/* loaded from: classes-dex2jar.jar:androidx/transition/am.class */
class C2873am extends C2872al {

    /* renamed from: a */
    private static boolean f10840a = true;

    @Override // androidx.transition.C2875ao
    /* renamed from: a */
    public void mo39731a(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo39731a(view, i);
        } else if (!f10840a) {
        } else {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError e) {
                f10840a = false;
            }
        }
    }
}
