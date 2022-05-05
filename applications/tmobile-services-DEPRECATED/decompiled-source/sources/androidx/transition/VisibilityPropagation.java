package androidx.transition;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/VisibilityPropagation.class */
public abstract class VisibilityPropagation extends TransitionPropagation {

    /* renamed from: a */
    private static final String[] f5335a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: d */
    private static int m16655d(TransitionValues transitionValues, int i) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.f5271a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.TransitionPropagation
    /* renamed from: a */
    public void mo16657a(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        Integer num = (Integer) transitionValues.f5271a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        transitionValues.f5271a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        transitionValues.f5271a.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.TransitionPropagation
    /* renamed from: b */
    public String[] mo16656b() {
        return f5335a;
    }

    /* renamed from: e */
    public int m16654e(TransitionValues transitionValues) {
        Integer num;
        if (transitionValues == null || (num = (Integer) transitionValues.f5271a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    /* renamed from: f */
    public int m16653f(TransitionValues transitionValues) {
        return m16655d(transitionValues, 0);
    }

    /* renamed from: g */
    public int m16652g(TransitionValues transitionValues) {
        return m16655d(transitionValues, 1);
    }
}
