package androidx.transition;

import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/transition/ap.class */
public abstract class ap extends v {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5785a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    private static int a(x xVar, int i) {
        int[] iArr;
        if (xVar == null || (iArr = (int[]) xVar.f5852a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    public static int b(x xVar) {
        Integer num;
        if (xVar == null || (num = (Integer) xVar.f5852a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    public static int c(x xVar) {
        return a(xVar, 0);
    }

    public static int d(x xVar) {
        return a(xVar, 1);
    }

    @Override // androidx.transition.v
    public final void a(x xVar) {
        View view = xVar.f5853b;
        Integer num = (Integer) xVar.f5852a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        xVar.f5852a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        xVar.f5852a.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.v
    public final String[] a() {
        return f5785a;
    }
}
