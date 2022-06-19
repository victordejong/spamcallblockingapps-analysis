package androidx.transition;

import android.view.View;
/* renamed from: androidx.transition.q0 */
/* loaded from: classes-dex2jar.jar:androidx/transition/q0.class */
public abstract class AbstractC1161q0 extends AbstractC1172w {

    /* renamed from: a */
    private static final String[] f4964a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: d */
    private static int m30840d(C1175y c1175y, int i) {
        int[] iArr;
        if (c1175y == null || (iArr = (int[]) c1175y.f4995a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.AbstractC1172w
    /* renamed from: a */
    public void mo30820a(C1175y c1175y) {
        View view = c1175y.f4996b;
        Integer num = (Integer) c1175y.f4995a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        c1175y.f4995a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        c1175y.f4995a.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.AbstractC1172w
    /* renamed from: b */
    public String[] mo30819b() {
        return f4964a;
    }

    /* renamed from: e */
    public int m30839e(C1175y c1175y) {
        Integer num;
        if (c1175y == null || (num = (Integer) c1175y.f4995a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    /* renamed from: f */
    public int m30838f(C1175y c1175y) {
        return m30840d(c1175y, 0);
    }

    /* renamed from: g */
    public int m30837g(C1175y c1175y) {
        return m30840d(c1175y, 1);
    }
}
