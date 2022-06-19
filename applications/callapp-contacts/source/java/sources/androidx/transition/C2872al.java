package androidx.transition;

import android.view.View;
/* renamed from: androidx.transition.al */
/* loaded from: classes-dex2jar.jar:androidx/transition/al.class */
class C2872al extends C2871ak {

    /* renamed from: a */
    private static boolean f10839a = true;

    @Override // androidx.transition.C2875ao
    /* renamed from: a */
    public void mo39730a(View view, int i, int i2, int i3, int i4) {
        if (f10839a) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError e) {
                f10839a = false;
            }
        }
    }
}
