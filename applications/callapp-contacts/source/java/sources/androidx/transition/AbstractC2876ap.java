package androidx.transition;

import android.view.View;
/* renamed from: androidx.transition.ap */
/* loaded from: classes-dex2jar.jar:androidx/transition/ap.class */
public abstract class AbstractC2876ap extends AbstractC2911v {

    /* renamed from: a */
    private static final String[] f10846a = {"android:visibilityPropagation:visibility", "android:visibilityPropagation:center"};

    /* renamed from: a */
    private static int m39724a(C2914x c2914x, int i) {
        int[] iArr;
        if (c2914x == null || (iArr = (int[]) c2914x.f10933a.get("android:visibilityPropagation:center")) == null) {
            return -1;
        }
        return iArr[i];
    }

    /* renamed from: b */
    public static int m39723b(C2914x c2914x) {
        Integer num;
        if (c2914x == null || (num = (Integer) c2914x.f10933a.get("android:visibilityPropagation:visibility")) == null) {
            return 8;
        }
        return num.intValue();
    }

    /* renamed from: c */
    public static int m39722c(C2914x c2914x) {
        return m39724a(c2914x, 0);
    }

    /* renamed from: d */
    public static int m39721d(C2914x c2914x) {
        return m39724a(c2914x, 1);
    }

    @Override // androidx.transition.AbstractC2911v
    /* renamed from: a */
    public final void mo39676a(C2914x c2914x) {
        View view = c2914x.f10934b;
        Integer num = (Integer) c2914x.f10933a.get("android:visibility:visibility");
        Integer num2 = num;
        if (num == null) {
            num2 = Integer.valueOf(view.getVisibility());
        }
        c2914x.f10933a.put("android:visibilityPropagation:visibility", num2);
        view.getLocationOnScreen(r0);
        int[] iArr = {iArr[0] + Math.round(view.getTranslationX())};
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = iArr[1] + (view.getHeight() / 2);
        c2914x.f10933a.put("android:visibilityPropagation:center", iArr);
    }

    @Override // androidx.transition.AbstractC2911v
    /* renamed from: a */
    public final String[] mo39678a() {
        return f10846a;
    }
}
