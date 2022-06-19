package p101g3;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.view.View;
/* renamed from: g3.f */
/* loaded from: classes-dex2jar.jar:g3/f.class */
public class C2810f {

    /* renamed from: a */
    public static final int[] f9549a = {16843848};

    /* renamed from: a */
    public static void m2971a(View view, float f) {
        int integer = view.getResources().getInteger(2131361794);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842910, 2130969625, -2130969626}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{16842910}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
